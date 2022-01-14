#include <EEPROM.h>
#include <ESP8266WebServer.h>
#include <ESP8266WiFi.h>
#include <time.h>
#include <ArduinoOTA.h>


#define MAX_WIFI_RETRY 20
#define MAX_STR_LEN 64
#define SSID_LOCATION 2
#define PASS_LOCATION (SSID_LOCATION + MAX_STR_LEN)


#define DATA_PIN 3
#define EXTRA_LED_PIN 4
#define SHIFT_CLK_PIN 15
#define STORE_CLK_PIN 2
// taken from europe/stockholm https://github.com/nayarsystems/posix_tz_db/blob/master/zones.csv
#define TZ_INFO "CET-1CEST,M3.5.0,M10.5.0/3"
#define NTP_SERVER "ntp.se"
#define BINUHR_TINY_HOSTNAME "binuhr_tiny"

void store_data(int data);
void update_ntp();
void update_display();

void handle_index();
void handle_set_utc_offset();
void handle_set_wifi();

void try_connect_wifi();
String read_string_from_eeprom(int addr, int len);

time_t t1, t2;
time_t *now, *last_update;
tm tm_now, tm_last;

long int hour_map[] = {15, 14, 13, 9, 8};
long int minute_map[] = {5, 6, 7, 12, 11, 10};
long int second_map[] = {16, 0, 1, 2, 3, 4}; // s0 is taken care of by the extra pin

ESP8266WebServer server(80);

long last_led_update_ms = millis();
int wifi_connected = 0;

int no_wifi_data = 0;
int no_wifi_retry_counter = 0;

void setup()
{
  now = &t1;
  last_update = &t2;
  Serial.begin(115200);
  EEPROM.begin(512);
  
  configTime(TZ_INFO, NTP_SERVER);
  try_connect_wifi();

  WiFi.hostname(BINUHR_TINY_HOSTNAME);
  
  pinMode(EXTRA_LED_PIN, OUTPUT);
  pinMode(DATA_PIN, OUTPUT);
  pinMode(SHIFT_CLK_PIN, OUTPUT);
  pinMode(STORE_CLK_PIN, OUTPUT);
  
  digitalWrite(DATA_PIN, 0);
  digitalWrite(SHIFT_CLK_PIN, 0);
  digitalWrite(STORE_CLK_PIN, 0);
  
  // config OTA
  ArduinoOTA.setHostname(BINUHR_TINY_HOSTNAME);
  ArduinoOTA.onStart([]() {
    Serial.println("Start");
  });
  ArduinoOTA.onEnd([]() {
    Serial.println("\nEnd");
  });
  ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
    Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
  });
  ArduinoOTA.onError([](ota_error_t error) {
    Serial.printf("Error[%u]: ", error);
    if (error == OTA_AUTH_ERROR) Serial.println("Auth Failed");
    else if (error == OTA_BEGIN_ERROR) Serial.println("Begin Failed");
    else if (error == OTA_CONNECT_ERROR) Serial.println("Connect Failed");
    else if (error == OTA_RECEIVE_ERROR) Serial.println("Receive Failed");
    else if (error == OTA_END_ERROR) Serial.println("End Failed");
  });
  ArduinoOTA.begin();

  update_display();
  
  server.on("/", handle_index);
  server.on("/set_wifi", handle_set_wifi);
  Serial.println(WiFi.localIP());
  
}

void loop() {
  // handle updating the clock
  time(now);
  localtime_r(now, &tm_now);
  if (tm_now.tm_sec != tm_last.tm_sec) {
    if (wifi_connected) {
      update_display();
    } else {
      // blink display as error
      store_data(no_wifi_data);
      digitalWrite(EXTRA_LED_PIN, no_wifi_data & 1);
      no_wifi_data = ~no_wifi_data;
      no_wifi_retry_counter++;
      if (no_wifi_retry_counter > 60) {
        no_wifi_retry_counter = 0;
        try_connect_wifi();
      }
    }
    
    last_update = now;
    localtime_r(last_update, &tm_last);
  }
  server.handleClient();
  ArduinoOTA.handle();
}

void update_display() {
  long int data = 0;
  for (int i = 0; i < 5; i++) {
    data |= ((tm_now.tm_hour & (1 << i)) >> i) << hour_map[i];
  }
  for (int i = 0; i < 6; i++) {
    data |= ((tm_now.tm_min & (1 << i)) >> i) << minute_map[i];
  }
  for (int i = 0; i < 6; i++) {
    data |= ((tm_now.tm_sec & (1 << i)) >> i) << second_map[i];
  }
  store_data(data);
  digitalWrite(EXTRA_LED_PIN, tm_now.tm_sec & 1);
}

void store_data(int data) {
  for (int i = 0; i < 16; i++) {
    digitalWrite(SHIFT_CLK_PIN, 0);
    digitalWrite(DATA_PIN, (data >> i) & 1);
    digitalWrite(SHIFT_CLK_PIN, 1);
  }
  digitalWrite(SHIFT_CLK_PIN, 0);
  digitalWrite(STORE_CLK_PIN, 1);
  digitalWrite(STORE_CLK_PIN, 0);
}


void handle_index() {
  String message;
  
  message = "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"></head><body>";
  message += "<h1>BinUhrTiny</h1>";
  message += "<form action=\"/set_wifi\">";
  message += "<label for=\"ssid\">SSID: </label><input id=\"ssid\" name=\"ssid\" /><br>";
  message += "<label for=\"pass\">Password: </label><input id=\"password\" type=\"password\" name=\"pass\" />";
  message += "<input type=\"submit\" value=\"Update\"/></form>";
  message += "</body></html>";
  server.send(200, "text/html", message);
}

void handle_set_wifi() {
  String ssid, pass;
  int has_pass = 0, has_ssid = 0;
  for (int i = 0; i < server.args(); i++) {
    if (server.argName(i) == "ssid") {
      ssid = server.arg(i);
      has_ssid = 1;
    } else if (server.argName(i) == "pass") {
      pass = server.arg(i);
      has_pass = 1;
    }
  }
  if (has_ssid && has_pass) {
    write_string_to_eeprom(SSID_LOCATION, ssid);
    write_string_to_eeprom(PASS_LOCATION, pass);
    try_connect_wifi();
  }
  server.sendHeader("Location", String("/"), true);
  server.send(302, "text/plain", "");
}

void try_connect_wifi() {
  int retry_count = 0;
  String ssid = read_string_from_eeprom(SSID_LOCATION);
  String pass = read_string_from_eeprom(PASS_LOCATION);
  
  WiFi.begin(ssid, pass);
  Serial.print("Connecting");
  while (WiFi.status() != WL_CONNECTED && retry_count < MAX_WIFI_RETRY)
  {
    delay(500);
    Serial.print(".");
    retry_count++;
  }
  Serial.println();
  
  if (WiFi.status() == WL_CONNECTED) {
    Serial.print("Connected, IP address: ");
    Serial.println(WiFi.localIP());
    wifi_connected = 1;
  } else {
    wifi_connected = 0;
    Serial.print("could not connect to wifi. SSID: ");
    Serial.println(ssid);
    WiFi.softAP("bin_uhr_tiny");
  }  
}

String read_string_from_eeprom(int addr) {
  char str[MAX_STR_LEN];
  int i;
  for (i = 0; i < MAX_STR_LEN; i++) {
    str[i] = EEPROM.read(addr + i);
    if (!str[i]) {
      break;
    }
  }
  str[i] = 0;
  return String(str);
}

void write_string_to_eeprom(int addr, String s) {
  int i;
  for (i = 0; i < MAX_STR_LEN && i < s.length(); i++) {
    EEPROM.write(addr + i, s[i]);
  }
  EEPROM.write(addr + i, 0);
  EEPROM.commit();
}

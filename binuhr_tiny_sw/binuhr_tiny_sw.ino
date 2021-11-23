#include <EEPROM.h>
#include <ESP8266WebServer.h>
#include <NTPClient.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>

#define MAX_WIFI_RETRY 20
#define MAX_STR_LEN 64
#define SSID_LOCATION 2
#define PASS_LOCATION (SSID_LOCATION + MAX_STR_LEN)


#define DATA_PIN 3
#define EXTRA_LED_PIN 4
#define SHIFT_CLK_PIN 15
#define STORE_CLK_PIN 2

// Define NTP Client to get time
WiFiUDP ntp_udp;
NTPClient timeClient(ntp_udp);

void store_data(int data);
void update_ntp();
void update_display();

void handle_index();
void handle_set_utc_offset();
void handle_set_wifi();

void try_connect_wifi();
String read_string_from_eeprom(int addr, int len);

long int minute=0, hour=0, second=0;

long int hour_map[] = {15, 14, 13, 9, 8};
long int minute_map[] = {5, 6, 7, 12, 11, 10};
long int second_map[] = {16, 0, 1, 2, 3, 4}; // s0 is taken care of by the extra pin

ESP8266WebServer server(80);

long last_led_update_ms = millis();
int utc_offset_seconds = 0;
int wifi_connected = 0;

int no_wifi_data = 0;
int no_wifi_retry_counter = 0;

void setup()
{
  Serial.begin(115200);
  EEPROM.begin(512);
  utc_offset_seconds = (EEPROM.read(0) << 8) + EEPROM.read(1);
  
  try_connect_wifi();
  Serial.println(EEPROM.read(0));
  Serial.println(EEPROM.read(1));
  
  timeClient.setPoolServerName("ntp.se");
  timeClient.setTimeOffset(utc_offset_seconds);
  timeClient.begin();
  WiFi.hostname("bin_uhr_tiny");
  
  pinMode(EXTRA_LED_PIN, OUTPUT);
  pinMode(DATA_PIN, OUTPUT);
  pinMode(SHIFT_CLK_PIN, OUTPUT);
  pinMode(STORE_CLK_PIN, OUTPUT);
  
  digitalWrite(DATA_PIN, 0);
  digitalWrite(SHIFT_CLK_PIN, 0);
  digitalWrite(STORE_CLK_PIN, 0);

  update_ntp();
  update_display();
  
  server.on("/", handle_index);
  server.on("/set_utc", handle_set_utc_offset);
  server.on("/set_wifi", handle_set_wifi);
  server.begin();
}

void loop() {
  long current_time = millis();
  // handle updating the clock
  if (last_led_update_ms + 1000 < current_time) {
    if (wifi_connected) {
      // update clock
      if (second == 60) {
        update_ntp();
      }
      update_display();
      second++;  
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
    
    last_led_update_ms = current_time;
  }
  server.handleClient();
}

void update_display() {
  long int data = 0;
  for (int i = 0; i < 5; i++) {
    data |= ((hour & (1 << i)) >> i) << hour_map[i];
  }
  for (int i = 0; i < 6; i++) {
    data |= ((minute & (1 << i)) >> i) << minute_map[i];
  }
  for (int i = 0; i < 6; i++) {
    data |= ((second & (1 << i)) >> i) << second_map[i];
  }
  store_data(data);
  digitalWrite(EXTRA_LED_PIN, second & 1);
}

void update_ntp() {
  timeClient.update();
  second = timeClient.getSeconds();
  minute = timeClient.getMinutes();
  hour = timeClient.getHours();
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
  if (wifi_connected) {
    // sorry about this mess, its a form for chaning the utc offset
    message += "<form action=\"/set_utc\">";
    message += "<label for=\"utc_in\">Offset in hours: </label><input name=\"utc_in\" id=\"utc_in\" type=\"number\" value=\"" + String(utc_offset_seconds/60/60) + "\">";
    message += "<input type=\"submit\" value=\"Update\"/></form>";
  } else {
      message += "<form action=\"/set_wifi\">";
      message += "<label for=\"ssid\">SSID: </label><input id=\"ssid\" name=\"ssid\" /><br>";
      message += "<label for=\"pass\">Password: </label><input id=\"password\" type=\"password\" name=\"pass\" />";
      message += "<input type=\"submit\" value=\"Update\"/></form>";
  }
  message += "</body></html>";
  server.send(200, "text/html", message);
}

void handle_set_utc_offset() {
  // find the utc arg
  for (int i = 0; i < server.args(); i++) {
    if (server.argName(i) == "utc_in") {
      String val = server.arg(i);
      int intval = -1;
      if (val == "0") {
        intval = 0;
      } else {
        int parsed_value = val.toInt();
        if (parsed_value) {
          intval = parsed_value * 60 * 60;
        }
      }
      if (intval != -1) {
        EEPROM.write(0, (intval & 0xFF00) >> 8);
        EEPROM.write(1, intval & 0xFF);
        EEPROM.commit();
        utc_offset_seconds = intval;
        timeClient.setTimeOffset(utc_offset_seconds);
        update_ntp();
      }
    }
  }
  server.sendHeader("Location", String("/"), true);
  server.send(302, "text/plain", "");
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

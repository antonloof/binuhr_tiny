#include <NTPClient.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>

#define WIFI_SSID "Antons_phone"
#define WIFI_PASS "ostmacka"

#define DATA_PIN 3
#define EXTRA_LED_PIN 4
#define SHIFT_CLK_PIN 15
#define STORE_CLK_PIN 2

long utcOffsetInSeconds = 3600;

// Define NTP Client to get time
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "ntp.se", utcOffsetInSeconds);

void store_data(int data);
void update_ntp();
void update_display();

long int minute=0, hour=0, second=0;

long int hour_map[] = {15, 14, 13, 9, 8};
long int minute_map[] = {5, 6, 7, 12, 11, 10};
long int second_map[] = {16, 0, 1, 2, 3, 4}; // s0 is taken care of by the extra pin

void setup()
{
  Serial.begin(115200);
  WiFi.begin(WIFI_SSID, WIFI_PASS);

  Serial.print("Connecting");
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println();

  Serial.print("Connected, IP address: ");
  Serial.println(WiFi.localIP());
  timeClient.begin();
  
  pinMode(EXTRA_LED_PIN, OUTPUT);
  pinMode(DATA_PIN, OUTPUT);
  pinMode(SHIFT_CLK_PIN, OUTPUT);
  pinMode(STORE_CLK_PIN, OUTPUT);
  
  digitalWrite(DATA_PIN, 0);
  digitalWrite(SHIFT_CLK_PIN, 0);
  digitalWrite(STORE_CLK_PIN, 0);
  
  update_ntp();
}

void loop() {
  if (second == 60) {
    update_ntp();
  }
  update_display();
  second++;
  delay(1000); // time will be off by some amount but w.e.
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

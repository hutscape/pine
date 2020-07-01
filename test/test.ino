#include "Adafruit_Si7021.h"
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include "./data.h"

#define LED 13

Adafruit_Si7021 sensor = Adafruit_Si7021();

IRsendRaw mySender;

void setup() {
  pinMode(LED, OUTPUT);

  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(1000);

  SerialUSB.println("Starting Pine design verification test!");
  SerialUSB.println("-------------------------------------\n");

  SerialUSB.println("\n\nTest 1: It expects to turn ON and OFF the LED");
  blink(10);
  delay(1000);

  SerialUSB.println("\n\nTest 2: It expects to measure the humidity and temp");
  if (initSensor()) {
    SerialUSB.print("\nHumidity: ");
    SerialUSB.print(sensor.readHumidity(), 2);
    SerialUSB.println(" RH%");

    SerialUSB.print("\nTemperature: ");
    SerialUSB.print(sensor.readTemperature(), 2);
    SerialUSB.println(" C");
  }
  delay(1000);

  SerialUSB.println("\n\nTest 3: (Point to AC) It expects to turn ON the aircon");
  mySender.send(rawDataON, RAW_DATA_LEN, 38);
  SerialUSB.println("Sent Turn ON Aircon");
  delay(1000);

  SerialUSB.println("\n\nTest 4: (Point to AC) It expects to turn OFF the aircon");
  mySender.send(rawDataOFF, RAW_DATA_LEN, 38);
  SerialUSB.println("Sent Turn OFF Aircon");
  delay(1000);

  SerialUSB.println("\n\nTest 5: It expects to send message to the browser");
  delay(1000);

  SerialUSB.println("\n\nTest 6: It expects to send message from the browser");
  delay(1000);

  SerialUSB.println("\n\nTest 8: It expects to go to sleep and wake up");
  delay(1000);
}

void loop() { }

void blink(int num) {
  for (int i=0; i < num; i++) {
    SerialUSB.print(i+1);
    SerialUSB.print("  ");

    digitalWrite(LED, LOW);
    delay(500);
    digitalWrite(LED, HIGH);
    delay(500);
  }
}

bool initSensor() {
  if (!sensor.begin()) {
    SerialUSB.println("\nERROR: Did not find Si7021 sensor!");
    return false;
  }

  return true;
}

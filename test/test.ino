#include "Adafruit_Si7021.h"
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include <IRLibRecvPCI.h>
#include <WebUSB.h>
#include "./data.h"

#define LED 13
// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L38-L39
// For SAMD21 boards: We are recommending using Pin 5 for receiving
#define IR_RECEIVE_PIN 5

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L40-L41
// For SAMD21 boards: For sending, default pin is 9
#define IR_EMIT_PIN 9

Adafruit_Si7021 sensor = Adafruit_Si7021();
WebUSB WebUSBSerial(1, "webusb.github.io/arduino/demos/console");
IRrecvPCI myReceiver(IR_RECEIVE_PIN);
IRsendRaw mySender;

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(1000);

  pinMode(LED, OUTPUT);
  myReceiver.enableIRIn();

  SerialUSB.println("Starting Pine design verification test!");
  SerialUSB.println("-------------------------------------");

  SerialUSB.println("\n\nTest 1: It expects to turn ON and OFF the LED");
  blink(5);
  delay(1000);

  SerialUSB.println("\n\nTest 2: It expects to measure the humidity and temp");
  if (initSensor()) {
    SerialUSB.print("Humidity: ");
    SerialUSB.print(sensor.readHumidity(), 2);
    SerialUSB.println(" RH%");

    SerialUSB.print("Temperature: ");
    SerialUSB.print(sensor.readTemperature(), 2);
    SerialUSB.println(" C");
  }
  delay(1000);

  SerialUSB.println("\n\nTest 3: It expects to turn ON the aircon");
  mySender.send(rawDataON, RAW_DATA_LEN, 38);
  SerialUSB.println("Sent Turn ON Aircon");
  delay(2000);

  SerialUSB.println("\n\nTest 4: It expects to turn OFF the aircon");
  mySender.send(rawDataOFF, RAW_DATA_LEN, 38);
  SerialUSB.println("Sent Turn OFF Aircon");
  delay(2000);

  SerialUSB.println("\n\nTest 5: It expects to receive IR signals");
  delay(2000);
}

void loop() {
  if (myReceiver.getResults()) {
    SerialUSB.print("Received IR signal length: ");
    SerialUSB.println(recvGlobal.recvLength, DEC);
    myReceiver.enableIRIn();
  }
}

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

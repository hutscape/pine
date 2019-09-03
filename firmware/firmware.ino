#include <IRLibAll.h>
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include "Adafruit_Si7021.h"
#include <FlashStorage.h>
#include "./data.h"

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L38-L39
// For SAMD21 boards: We are recommending using Pin 5 for receiving
#define IR_RECEIVE_PIN 5

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L40-L41
// For SAMD21 boards: For sending, default pin is 9
#define IR_EMIT_PIN 9

IRrecvPCI myReceiver(IR_RECEIVE_PIN);
IRsendRaw mySender;
Adafruit_Si7021 sensor = Adafruit_Si7021();

typedef struct {
  int sizeofON;
  uint16_t rawDataON[400];
  int sizeofOFF;
  uint16_t rawDataOFF[400];
} IRRawCode;
FlashStorage(my_flash_store, IRRawCode);

void setup() {
  initSerial();

  if (initSensor()) {
    readSensor();
  }

  initIR();
}

void loop() {
  // IR Receive
  if (myReceiver.getResults()) {
    SerialUSB.println(F("Do a cut-and-paste of the following lines into the "));
    SerialUSB.println(F("designated location in rawSend.ino"));
    SerialUSB.print(F("\n#define RAW_DATA_LEN "));
    SerialUSB.println(recvGlobal.recvLength, DEC);
    SerialUSB.print(F("uint16_t rawData[RAW_DATA_LEN]={\n"));
    for (bufIndex_t i = 1; i < recvGlobal.recvLength; i++) {
      SerialUSB.print(recvGlobal.recvBuffer[i], DEC);
      SerialUSB.print(F(", "));
      if ((i % 8) == 0) {
        SerialUSB.print(F("\n"));
      }
    }
    SerialUSB.println(F("1000};"));
    myReceiver.enableIRIn();
  }

  // IR Emit
  char input = SerialUSB.read();

  if (SerialUSB.read() == '1') {
    mySender.send(rawDataON, RAW_DATA_LEN, 36);
    SerialUSB.println("Sent Turn ON Aircon");
  } else if (SerialUSB.read() == '0') {
    mySender.send(rawDataOFF, RAW_DATA_LEN, 36);
    SerialUSB.println("Sent Turn OFF Aircon");
  }
}

void initSerial() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }
  delay(100);
  SerialUSB.println("Start!");
}

bool initSensor() {
  if (!sensor.begin()) {
    SerialUSB.println("Did not find Si7021 sensor!");
    return false;
  }

  return true;
}

void initIR() {
  myReceiver.enableIRIn();
  SerialUSB.println("\nReady to receive and send IR signals...");
}

void readSensor() {
  SerialUSB.print("Humidity: ");
  SerialUSB.print(sensor.readHumidity(), 2);
  SerialUSB.println(" RH%");

  SerialUSB.print("Temperature: ");
  SerialUSB.print(sensor.readTemperature(), 2);
  SerialUSB.println(" C");
}

void storeIRCode() {
  IRRawCode airconCode;
  IRRawCode airconCodeRead;

  for (int i = 0; i < RAW_DATA_LEN; i++) {
    airconCode.rawDataON[i] = rawDataON[i];
    airconCode.rawDataOFF[i] = rawDataOFF[i];
  }

  airconCode.sizeofON = RAW_DATA_LEN;
  airconCode.sizeofOFF = RAW_DATA_LEN;

  my_flash_store.write(airconCode);
  SerialUSB.println("Writing in flash completed.");

  airconCodeRead = my_flash_store.read();

  SerialUSB.print("\nLength of rawDataON: ");
  SerialUSB.println(airconCodeRead.sizeofON);
  SerialUSB.print("\nLength of rawDataOFF: ");
  SerialUSB.println(airconCodeRead.sizeofOFF);

  SerialUSB.println("\nrawDataON array: ");
  for (int i = 0; i < RAW_DATA_LEN; i++) {
    SerialUSB.print(airconCodeRead.rawDataON[i]);
    SerialUSB.print(", ");
  }

  SerialUSB.println("\nrawDataOFF array: ");
  for (int i = 0; i < RAW_DATA_LEN; i++) {
    SerialUSB.print(airconCodeRead.rawDataOFF[i]);
    SerialUSB.print(", ");
  }

  SerialUSB.println("\n\n");
}

#include <IRLibAll.h>
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include "Adafruit_Si7021.h"
#include <FlashStorage.h>
#include "./data.h"
#include <WebUSB.h>

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
  int interval;
  int duration;
  int temperature;
} IRRawCode;
FlashStorage(my_flash_store, IRRawCode);
IRRawCode userConfig;
IRRawCode userConfigRead;

WebUSB WebUSBSerial(1, "hutscape.com/pine/webusb/");
int config[3];
int configIndex;
bool isRecordingON = false;
bool isRecordingOFF = true;

void setup() {
  initSerial();
  initWebUSBSerial();

  if (initSensor()) {
    readSensor();
  }

  initIR();
}

void loop() {
  // IR Receive
  if (myReceiver.getResults()) {
    if (isValidIRCode()) {
      SerialUSB.println("\n\nReceived user IR code...");
      SerialUSB.print(F("#define RAW_DATA_LEN "));
      SerialUSB.println(recvGlobal.recvLength, DEC);
      SerialUSB.print(F("uint16_t rawData[RAW_DATA_LEN]={\n"));

      for (bufIndex_t i = 1; i < recvGlobal.recvLength; i++) {
        SerialUSB.print(recvGlobal.recvBuffer[i], DEC);
        SerialUSB.print(F(", "));
        if ((i % 8) == 0) {
          SerialUSB.print(F("\n"));
        }
      }

      if (isRecordingON) {
        for (bufIndex_t i = 1; i < recvGlobal.recvLength; i++) {
          userConfig.rawDataON[i] = recvGlobal.recvBuffer[i];
        }

        recvGlobal.recvBuffer[recvGlobal.recvLength] = 1000;
        userConfig.sizeofON = RAW_DATA_LEN;
        userConfig.sizeofOFF = RAW_DATA_LEN;

        isRecordingON = false;

        SerialUSB.println("***************************");
        SerialUSB.println("Recoded ON command:");

        SerialUSB.print(F("uint16_t rawData[RAW_DATA_LEN]={\n"));
        for (bufIndex_t i = 1; i < recvGlobal.recvLength; i++) {
          SerialUSB.print(userConfig.rawDataON[i], DEC);
          SerialUSB.print(F(", "));
          if ((i % 8) == 0) {
            SerialUSB.print(F("\n"));
          }
        }
        SerialUSB.println("***************************");
      }

      WebUSBSerial.write((const uint8_t *)recvGlobal.recvBuffer,
        recvGlobal.recvLength*2);
      SerialUSB.println(F("1000};"));
      WebUSBSerial.flush();
    }

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

  // Read user config from browser
  if (WebUSBSerial && WebUSBSerial.available()) {
    int byte = WebUSBSerial.read();

    if (byte == 'A') {
      SerialUSB.println("Recording ON IR command");
      isRecordingON = true;
    } else if (byte == 'B') {
      SerialUSB.println("Recording OFF IR command");
      isRecordingOFF = true;
    } else {
      config[configIndex++] = byte;
      if (configIndex == 3) {
        SerialUSB.println("\nReceived user config...");
        SerialUSB.print("Interval: ");
        SerialUSB.print(config[0]);
        SerialUSB.println(" minutes");
        userConfig.interval = config[0];

        SerialUSB.print("Duration: ");
        SerialUSB.print(config[1]);
        SerialUSB.println(" hours");
        userConfig.duration = config[1];

        SerialUSB.print("Ideal temperature: ");
        SerialUSB.print(config[2]);
        SerialUSB.println(" C");
        userConfig.temperature = config[2];

        WebUSBSerial.print("Received interval, duration and ideal temperature:");
        WebUSBSerial.flush();
        configIndex = 0;

        // storeIRCode();
      }
    }
  }
}

void initSerial() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(100);

  SerialUSB.println("Start!");
}

void initWebUSBSerial() {
  WebUSBSerial.begin(9600);
  delay(100);

  WebUSBSerial.flush();
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
  SerialUSB.println("\nReady to receive user config...");
}

void readSensor() {
  SerialUSB.println("\nReading sensor data... ");

  SerialUSB.print("Humidity: ");
  SerialUSB.print(sensor.readHumidity(), 2);
  SerialUSB.println(" RH%");

  SerialUSB.print("Temperature: ");
  SerialUSB.print(sensor.readTemperature(), 2);
  SerialUSB.println(" C");
}

bool isValidIRCode() {
  // Total array length of the raw IR code should be more than 10
  // First array element of the raw IR code should be more than 3000
  if ((int) recvGlobal.recvLength > 10 && (int) recvGlobal.recvBuffer[1] > 3000) {
    return true;
  }

  return false;
}

void storeIRCode() {
  for (int i = 0; i < RAW_DATA_LEN; i++) {
    userConfig.rawDataON[i] = rawDataON[i];
    userConfig.rawDataOFF[i] = rawDataOFF[i];
  }

  userConfig.sizeofON = RAW_DATA_LEN;
  userConfig.sizeofOFF = RAW_DATA_LEN;

  my_flash_store.write(userConfig);
  SerialUSB.println("Writing in flash completed.");

  userConfigRead = my_flash_store.read();

  SerialUSB.print("\nLength of rawDataON: ");
  SerialUSB.println(userConfigRead.sizeofON);
  SerialUSB.print("\nLength of rawDataOFF: ");
  SerialUSB.println(userConfigRead.sizeofOFF);

  SerialUSB.println("\nrawDataON array: ");
  for (int i = 0; i < RAW_DATA_LEN; i++) {
    SerialUSB.print(userConfigRead.rawDataON[i]);
    SerialUSB.print(", ");
  }

  SerialUSB.println("\nrawDataOFF array: ");
  for (int i = 0; i < RAW_DATA_LEN; i++) {
    SerialUSB.print(userConfigRead.rawDataOFF[i]);
    SerialUSB.print(", ");
  }

  SerialUSB.println("\n\n");
}

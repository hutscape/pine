#define DEBUG

#include "DebugUtils.h"
#include "src/sensor/sensor.h"
#include "src/webusb/webusb.h"
#include <IRLibAll.h>
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
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

int config[3];
int configIndex;
bool isRecordingON = false;
bool isRecordingOFF = true;

void setup() {
  #ifdef DEBUG
  initSerial();
  #endif

  initWebUSBSerial();

  if (initSensor()) {
    DEBUG_PRINT(readTemperature());
    DEBUG_PRINT(readHumidity());
  } else {
    DEBUG_TITLE("Error: Si7021 Sensor not found.")
  }

  initIR();
  DEBUG_TITLE("Waiting for user config at hutscape.com/pine/webusb")
}

void loop() {
  // IR Receive
  if (myReceiver.getResults()) {
    if (isValidIRCode()) {
      DEBUG_TITLE("Received user IR code...");

      #ifdef DEBUG
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

      SerialUSB.println(F("1000};\n"));
      #endif

      writeWebUSB((const uint8_t *)recvGlobal.recvBuffer,
        recvGlobal.recvLength*2);
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
  if (isWebUSBAvailable()) {
    int byte = readWebUSB();

    if (byte == 'A') {
      DEBUG_TITLE("Recording ON IR command");
      isRecordingON = true;
    } else if (byte == 'B') {
      DEBUG_TITLE("Recording OFF IR command");
      isRecordingOFF = true;
    } else {
      config[configIndex++] = byte;
      if (configIndex == 3) {
        configIndex = 0;

        DEBUG_PRINT(config[0]);
        userConfig.interval = config[0];

        DEBUG_PRINT(config[1]);
        userConfig.duration = config[1];

        DEBUG_PRINT(config[2]);
        userConfig.temperature = config[2];

        printWebUSB("Received interval, duration and ideal temperature:");
        // TODO: storeIRCode();
      }
    }
  }
}

void initSerial() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(100);

  DEBUG_TITLE("Start Pine debugging...");
}

void initIR() {
  myReceiver.enableIRIn();
  DEBUG_TRACE();
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

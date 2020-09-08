#define DEBUG

#include "DebugUtils.h"
#include "src/sensor/sensor.h"
#include "src/webusb/webusb.h"
#include "src/infrared/infrared.h"
#include <FlashStorage.h>
#include "./data.h"

#define IR_LEN 292
typedef struct {
  int sizeofON;
  uint16_t rawDataON[400];
  int sizeofOFF;
  uint16_t rawDataOFF[400];
  int interval;
  int duration;
  int temperature;
} IRRawCode;
IRRawCode userConfig;

int config[3];
int configIndex = 0;
bool isRecordingON = false;
bool isRecordingOFF = false;

void setup() {
  #ifdef DEBUG
  initSerial();
  SerialUSB.println("Start Pine debugging...");
  #endif

  initWebUSBSerial();

  if (initSensor()) {
    DEBUG_PRINT(readTemperature());
    DEBUG_PRINT(readHumidity());
  } else {
    DEBUG_TITLE("Error: Si7021 Sensor not found.")
  }

  initIR();
  DEBUG_TITLE("Waiting for user config at https://hutscape.com/pine/webusb")
}

void loop() {
  // Record IR raw code from the user
  if (receiveIR()) {
    if (isValidIRCode()) {
      receiveIRByUser();
    }
    enableIR();
  }

  // Record other configurations from the user
  if (isWebUSBAvailable()) {
    sendConfigByUser(readWebUSB());
  }

  // Emit IR code to control the aircon
  sendIRByUser(SerialUSB.read());
}

void initSerial() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(100);
}

void receiveIRByUser() {
  int irSize = getIRcodeSize();
  uint16_t irCode[IR_LEN];
  getIRCode(irCode, IR_LEN);

  DEBUG_TITLE("Received user IR code...");

  #ifdef DEBUG
  SerialUSB.print(F("\n#define RAW_DATA_LEN "));
  SerialUSB.println(irSize, DEC);
  SerialUSB.print(F("uint16_t rawData[RAW_DATA_LEN]={\n"));

  for (int i = 1; i < irSize; i++) {
    SerialUSB.print(irCode[i], DEC);
    SerialUSB.print(F(", "));
  }

  SerialUSB.println(F("1000};\n"));
  #endif

  if (isRecordingON) {
    for (int i = 0; i < IR_LEN - 1; i++) {
      userConfig.rawDataON[i] = irCode[i+1];
    }
    userConfig.rawDataON[IR_LEN - 1] = 1000;
    isRecordingON = false;
  } else if (isRecordingOFF) {
    for (int i = 0; i < IR_LEN - 1; i++) {
      userConfig.rawDataOFF[i] = irCode[i+1];
    }
    userConfig.rawDataOFF[IR_LEN - 1] = 1000;
    isRecordingOFF = false;
  }

  writeWebUSB((const uint8_t *)irCode, irSize*2);
}

void sendIRByUser(int readChar) {
  if (readChar == '1') {
    sendIR(rawDataON, RAW_DATA_LEN, 36);
    DEBUG_TITLE("Sent Turn ON Aircon");
  } else if (readChar == '0') {
    sendIR(rawDataOFF, RAW_DATA_LEN, 36);
    DEBUG_TITLE("Sent Turn OFF Aircon");
  }
}

void sendConfigByUser(int byte) {
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

      userConfig.interval = config[0];
      DEBUG_PRINT(userConfig.interval);

      userConfig.duration = config[1];
      DEBUG_PRINT(userConfig.duration);

      userConfig.temperature = config[2];
      DEBUG_PRINT(userConfig.temperature);

      printWebUSB("Received interval, duration and ideal temperature:");
      storeUserConfig();
    }
  }
}

void storeUserConfig() {
  FlashStorage(my_flash_store, IRRawCode);
  my_flash_store.write(userConfig);
}

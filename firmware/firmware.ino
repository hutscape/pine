// #define DEBUG

#include "DebugUtils.h"
#include "src/serial/serial.h"
#include "src/sensor/sensor.h"
#include "src/webusb/webusb.h"
#include "src/infrared/infrared.h"
#include "src/led/led.h"
#include <FlashStorage.h>

#define MAX_IR_LEN 300
typedef struct {
  int sizeofON;
  uint16_t rawDataON[MAX_IR_LEN];
  int sizeofOFF;
  uint16_t rawDataOFF[MAX_IR_LEN];
  int interval;
  int duration;
  int temperature;
  bool valid;
} IRRawCode;
IRRawCode userConfig;
IRRawCode readConfig;

int config[3];
int configIndex = 0;
bool isRecordingON = false;
bool isRecordingOFF = false;
bool isConfigMode = false;
bool hasSentUserConfig = false;

FlashStorage(my_flash_store, IRRawCode);

void setup() {
  #ifdef DEBUG
  initSerial();
  SerialUSB.println("Start Pine...");
  #endif

  initWebUSBSerial();

  if (initSensor()) {
    DEBUG_PRINT(readTemperature());
    DEBUG_PRINT(readHumidity());
  } else {
    DEBUG_TITLE("Error: Si7021 Sensor not found.")
  }

  initIR();
  initLED();
  readConfig = my_flash_store.read();
}

void loop() {
  // Scenario: Very first setup
  if (!readConfig.valid && !isConfigMode) {
    DEBUG_TITLE("Add user config at https://hutscape.com/pine/webusb");
    blink();
  }

  // Scenario: Normal operation
  if (readConfig.valid && !isConfigMode) {
    DEBUG_TITLE("Do demo task: Turn on/off aircon every 5s");
    doTask();
  }

  // Scenario: Config mode
  if (isConfigMode) {
    if (!hasSentUserConfig && readConfig.valid) {
      DEBUG_TITLE("Sending user config to web browser");
      sendUserConfig();
      hasSentUserConfig = true;
    }

    if (receiveIR()) {
      if (isValidIRCode()) {
        receiveIRFromUser();
      }
      enableIR();
    }
  }

  // All scenarios: alway check if web usb is connected
  if (isWebUSBAvailable()) {
    receiveConfigFromUser(readWebUSB());
  }
}

// Print out raw IR code received from the user pressing a remote control
void receiveIRFromUser() {
  int irSize = getIRcodeSize();
  uint16_t irCode[MAX_IR_LEN];
  getIRCode(irCode, MAX_IR_LEN);

  DEBUG_TITLE("Received user IR code...");

  #ifdef DEBUG
  SerialUSB.print(F("#define RAW_DATA_LEN "));
  SerialUSB.println(irSize, DEC);
  SerialUSB.print(F("uint16_t rawData[RAW_DATA_LEN]={\n"));

  for (int i = 1; i < irSize; i++) {
    SerialUSB.print(irCode[i], DEC);
    SerialUSB.print(F(", "));
  }

  SerialUSB.println(F("1000};\n"));
  #endif

  // TODO: Abstract out into a single function
  if (isRecordingON) {
    userConfig.sizeofON = irSize;

    for (int i = 0; i < irSize - 1; i++) {
      userConfig.rawDataON[i] = irCode[i+1];
    }

    userConfig.rawDataON[irSize - 1] = 1000;
    isRecordingON = false;
  } else if (isRecordingOFF) {
    userConfig.sizeofOFF = irSize;

    for (int i = 0; i < irSize - 1; i++) {
      userConfig.rawDataOFF[i] = irCode[i+1];
    }

    userConfig.rawDataOFF[irSize - 1] = 1000;
    isRecordingOFF = false;
  }

  writeWebUSB((const uint8_t *)irCode, irSize*2);
}

// Emit IR code that is stored in the flash memory
void doTask() {
  delay(5000);
  sendIR(readConfig.rawDataON, readConfig.sizeofON, 36);
  DEBUG_TITLE("Sent Turn ON Aircon");

  delay(5000);
  sendIR(readConfig.rawDataOFF, readConfig.sizeofOFF, 36);
  DEBUG_TITLE("Sent Turn OFF Aircon");
}

// Read config values from the user and store in flash memory
void receiveConfigFromUser(int byte) {
  if (byte == 'A') {
    DEBUG_TITLE("Recording ON IR command");
    isRecordingON = true;
  } else if (byte == 'B') {
    DEBUG_TITLE("Recording OFF IR command");
    isRecordingOFF = true;
  } else if (byte == '1') {
    DEBUG_TITLE("Connected via Web USB");
    isConfigMode = true;
    hasSentUserConfig = false;
  } else {
    config[configIndex++] = byte;
    if (configIndex == 3) {
      configIndex = 0;
      DEBUG_TITLE("Received user config from the browser");

      userConfig.interval = config[0];
      DEBUG_PRINT(userConfig.interval);

      userConfig.duration = config[1];
      DEBUG_PRINT(userConfig.duration);

      userConfig.temperature = config[2];
      DEBUG_PRINT(userConfig.temperature);

      printWebUSB("From MCU: Received all user configurations.");
      userConfig.valid = true;
      isConfigMode = false;

      storeUserConfig();
    }
  }
}

void sendUserConfig() {
  DEBUG_PRINT(readConfig.interval);
  DEBUG_PRINT(readConfig.duration);
  DEBUG_PRINT(readConfig.temperature);

  // NOTE: Send to the web browser as a JSON string
  String config = "{\"interval\":"
    + String(readConfig.interval)
    + ", \"duration\":"
    + String(readConfig.duration)
    + ", \"temperature\":"
    + String(readConfig.temperature)
    + "}";

  printWebUSB(config);
}

void storeUserConfig() {
  my_flash_store.write(userConfig);
  readConfig = my_flash_store.read();
}

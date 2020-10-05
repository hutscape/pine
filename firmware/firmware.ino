#define DEBUG

#include "DebugUtils.h"
#include "src/sensor/sensor.h"
#include "src/webusb/webusb.h"
#include "src/infrared/infrared.h"
#include "src/led/led.h"
#include <FlashStorage.h>
// #include "./data.h"

#define IR_LEN 292
typedef struct {
  int sizeofON;
  uint16_t rawDataON[400];
  int sizeofOFF;
  uint16_t rawDataOFF[400];
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
bool isConnectedViaWebUSB = false;
bool hasSentUserConfig = false;

FlashStorage(my_flash_store, IRRawCode);

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
  initLED();
  readConfig = my_flash_store.read();
}

void loop() {
  // NEXT: 4 scenarios of web usb
  if (isConnectedViaWebUSB) {
    if (readConfig.valid && !hasSentUserConfig) {
      DEBUG_TITLE("IF: readConfig.valid && !hasSentUserConfig");
      displayUserString();
      hasSentUserConfig = true;
    }

    if (receiveIR()) {
      if (isValidIRCode()) {
        receiveIRFromUser();
      }
      enableIR();
    }

    if (isWebUSBAvailable()) {
      receiveConfigFromUser(readWebUSB());
    }
  } else {
    if (readConfig.valid) {
      doTask();
    } else {
      DEBUG_TITLE("Add user config at https://hutscape.com/pine/webusb");
      blink();
    }

    if (isWebUSBAvailable()) {
      receiveConfigFromUser(readWebUSB());
    }
  }

  if (isWebUSBAvailable()) {
    receiveConfigFromUser(readWebUSB());
  }
}

void initSerial() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(100);
}

// Print out raw IR code received from the user pressing a remote control
void receiveIRFromUser() {
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

// Emit IR code that is stored in the flash memory
void doTask() {
  // TODO: Read from flash only once and not every loop
  // TODO: Read from user string and not every 5 seconds
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
    isConnectedViaWebUSB = true;
    hasSentUserConfig = false;
  } else if (byte == '2') {
    DEBUG_TITLE("Disconnected via Web USB");
    isConnectedViaWebUSB = false;
    hasSentUserConfig = false;
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

      printWebUSB("From MCU: Received all user configurations.");
      userConfig.valid = true;
      storeUserConfig();
    }
  }
}

void displayUserString() {
  DEBUG_TITLE("Sending readConfig to web browser");
  printWebUSB("From MCU: Sending readConfig to web browser");
  // String interval = "{\"interval\":" + String(readConfig.interval) + "}";
  printWebUSB("{\"interval\":30}");
  // printWebUSB(String(readConfig.temperature));
  // printWebUSB(String(readConfig.duration));
}

void storeUserConfig() {
  my_flash_store.write(userConfig);
  readConfig = my_flash_store.read();
}

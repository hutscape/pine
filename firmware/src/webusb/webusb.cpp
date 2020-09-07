#include <WebUSB.h>

WebUSB WebUSBSerial(1, "hutscape.com/pine/webusb/");

void initWebUSBSerial() {
  WebUSBSerial.begin(9600);
  delay(100);

  WebUSBSerial.flush();
}

bool isWebUSBAvailable() {
    return WebUSBSerial && WebUSBSerial.available();
}

int readWebUSB() {
    int byte = WebUSBSerial.read();
    return byte;
}

void printWebUSB(String statement) {
    WebUSBSerial.print(statement);
    WebUSBSerial.flush();
}

void writeWebUSB(const uint8_t *buffer, int size) {
    WebUSBSerial.write((const uint8_t *)buffer, size);
    WebUSBSerial.flush();
}

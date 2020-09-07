#include "Arduino.h"

void initWebUSBSerial();
bool isWebUSBAvailable();
int readWebUSB();
void printWebUSB(String);
void writeWebUSB(const uint8_t *buffer, int size);

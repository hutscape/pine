#include "Arduino.h"

void initSerial() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  delay(100);
}

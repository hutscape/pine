#include "Arduino.h"

void initLED() {
    pinMode(LED_BUILTIN, OUTPUT);
}

void blink() {
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);

  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}

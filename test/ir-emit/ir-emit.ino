#define DEBUG

#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include "./data.h"

IRsendRaw mySender;

void setup() {
  #ifdef DEBUG
    SerialUSB.begin(9600);
    while (!SerialUSB) {}
    SerialUSB.println("Sending IR ON/OFF every 5 seconds");
  #endif
}

void loop() {
  delay(5000);
  mySender.send(rawDataON, RAW_DATA_LEN, 38);

  #ifdef DEBUG
    SerialUSB.println("Sent Turn ON Aircon");
  #endif

  delay(5000);
  mySender.send(rawDataOFF, RAW_DATA_LEN, 38);

  #ifdef DEBUG
    SerialUSB.println("Sent Turn OFF Aircon");
  #endif
}

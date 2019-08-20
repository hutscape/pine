#include <IRLibAll.h>
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include "./data.h"

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L38-L39
// For SAMD21 boards: We are recommending using Pin 5 for receiving
#define IR_RECEIVE_PIN 5

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L40-L41
// For SAMD21 boards: For sending, default pin is 9
#define IR_EMIT_PIN 9

IRrecvPCI myReceiver(IR_RECEIVE_PIN);
IRsendRaw mySender;

void setup() {
  SerialUSB.begin(9600);
  delay(100);
  SerialUSB.println("Start!");

  myReceiver.enableIRIn();
  SerialUSB.println("Ready to receive IR signals...");
}

void loop() {
  // IR Receive
  if (myReceiver.getResults()) {
    SerialUSB.println(F("Do a cut-and-paste of the following lines into the "));
    SerialUSB.println(F("designated location in rawSend.ino"));
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
    SerialUSB.println(F("1000};"));
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
}

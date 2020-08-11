#include <IRLibRecvPCI.h>

IRrecvPCI myReceiver(5);  // Arduino ZERO pin 5

#define DEBUG 1

void setup() {
  #ifdef DEBUG
    SerialUSB.begin(9600);
    while (!SerialUSB) {}

    SerialUSB.println("Ready to receive IR signals");
    SerialUSB.println("Point the remote controller to the IR receiver and press!");
  #endif

  myReceiver.enableIRIn();
}

void loop() {
  if (myReceiver.getResults()) {
    #ifdef DEBUG
      if (recvGlobal.recvLength > 100) {
        SerialUSB.print("Received IR signal length: ");
        SerialUSB.println(recvGlobal.recvLength, DEC);
      }
    #endif

    myReceiver.enableIRIn();
  }
}

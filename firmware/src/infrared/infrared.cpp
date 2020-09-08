#include <IRLibAll.h>
#include <IRLibRecvPCI.h>
#include <IRLibSendBase.h>
#include <IRLib_HashRaw.h>
#include <IRLibGlobals.h>

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L38-L39
// For SAMD21 boards: We are recommending using Pin 5 for receiving
#define IR_RECEIVE_PIN 5

// https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibSAMD21.h#L40-L41
// For SAMD21 boards: For sending, default pin is 9
#define IR_EMIT_PIN 9

IRrecvPCI myReceiver(IR_RECEIVE_PIN);
IRsendRaw mySender;

void initIR() {
  myReceiver.enableIRIn();
}

void receiveIR() {
    myReceiver.getResults();
}

bool isValidIRCode() {
  // Total array length of the raw IR code should be more than 10
  // First array element of the raw IR code should be more than 3000
  if ((int) recvGlobal.recvLength > 10 && (int) recvGlobal.recvBuffer[1] > 3000) {
    return true;
  }

  return false;
}

int getIRcodeSize() {
    return recvGlobal.recvLength;
}

void getIRCode(uint16_t irArray[], int size) {
    for (int i = 1; i < size; i++) {
        irArray[i] = recvGlobal.recvBuffer[i];
    }
}

void sendIR(uint16_t data[], int size, int frequency) {
    mySender.send(data, size, frequency);
}

void enableIR() {
    myReceiver.enableIRIn();
}

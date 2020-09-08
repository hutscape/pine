#include "Arduino.h"

void initIR();
bool receiveIR();
void sendIR(uint16_t[], int, int);
int getIRcodeSize();
void getIRCode(uint16_t [], int);
void enableIR();
bool isValidIRCode();

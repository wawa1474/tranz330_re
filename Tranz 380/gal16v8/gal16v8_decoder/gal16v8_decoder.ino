/*
permutate through all inputs and figure out outputs
type up csv file
*/
#include "Keyboard.h"

//#define U12
//#define U11
#define U7

#ifdef U12
String inputNames[] = {"A4","A6","?I1","/WR","?I2","/RST","A5","/IORQ","/RD","A7"};
String outputNames[] = {"MODEM_WR","MODEM_RD","?O1","/RTC_CE","/CTC_CE","U11_7","/PIO_CE","/SIO_CE"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,10,11};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 10;
int numOutput = 8;
int endAddress = 1024;
#endif

#ifdef U11
String inputNames[] = {"CLK","MODEM_RxCLK","MODEM_TxCLK","CARD_RD","PIO_PB6","?I1","U12_4","/RST","CTC_RxTxCA","?I2"};
String outputNames[] = {"PIO_PA7","RST","RTC_ALE","?O1","?O2","MODEM_ALE","TxCA","RxCA"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,10,11};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 10;
int numOutput = 8;
int endAddress = 1024;
#endif

#ifdef U7
String inputNames[] = {"/MREQ","/IORQ","/RD","/WR","A19","A18","A17","A15","?I1","A16","?I2"};
String outputNames[] = {"/RTC_RD","/RAM_CE","/RTC_WR","/U22_CE","/RAM_WE","/RAM_OE","/ROM_CE"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,10,11,A0};
int outputNumbers[] = {12,13,A1,A2,A3,A4,A5};
int numInput = 11;
int numOutput = 7;
int endAddress = 2048;
#endif

int address = 0;

void setup()
{
  for(int i = 0; i < numInput; i++){
    pinMode(inputNumbers[i],OUTPUT);
  }

  for(int i = 0; i < numOutput; i++){
    pinMode(outputNumbers[i],INPUT);
  }
  
  Keyboard.begin();
  delay(1000);

  printHeader();
  while(address < endAddress){
    writeAddress();
    printData();
    address++;
    delay(50);
  }
}

void loop(){
  //wait forever
}

void printHeader(){
  for(int i = 0; i < numInput; i++){
    Keyboard.print(inputNames[i]);delay(10);
    Keyboard.print(',');delay(10);
  }
  Keyboard.print(',');delay(10);
  for(int i = 0; i < numOutput; i++){
    Keyboard.print(outputNames[i]);delay(10);
    if(i < numOutput - 1){
      Keyboard.print(',');delay(10);
    }
  }
  Keyboard.println();delay(10);
}

void writeAddress(){
  for(int i = 0; i < numInput; i++){
    digitalWrite(inputNumbers[i], (address & (1<<i))?HIGH:LOW);delay(5);
  }
}

void printData(){
  for(int i = 0; i < numInput; i++){
    (address & (1<<i))?Keyboard.print("1"):Keyboard.print("0");delay(5);
    Keyboard.print(',');delay(5);
  }
  Keyboard.print(',');delay(5);
  for(int i = 0; i < numOutput; i++){
    (digitalRead(outputNumbers[i]))?Keyboard.print("1"):Keyboard.print("0");delay(5);
    if(i < numOutput - 1){
      Keyboard.print(',');delay(5);
    }
  }
  Keyboard.println();delay(5);
}

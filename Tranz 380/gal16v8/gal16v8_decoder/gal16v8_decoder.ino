/*
permutate through all inputs and figure out outputs
type up csv file
*/
#include "Keyboard.h"

//#define U12
#define U11_2
//#define U7

#ifdef U12
String inputNames[] = {"A4","A6","?I1","/WR","?I2","/RST","A5","/IORQ","/RD","A7"};
String outputNames[] = {"MODEM_WR","MODEM_RD","?O1","/RTC_CE","/CTC_CE","U11_7","/PIO_CE","/SIO_CE"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,10,11};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 10;
int numOutput = 8;
int endAddress = 1024;
#endif

#ifdef U11_wrong
String inputNames[] = {"CLK","MODEM_RxCLK","MODEM_TxCLK","CARD_RD","PIO_PB6","?I1","U12_4","/RST","CTC_RxTxCA","?I2"};
String outputNames[] = {"PIO_PA7","RST","RTC_ALE","?O1","?O2","MODEM_ALE","TxCA","RxCA"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,10,11};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 10;
int numOutput = 8;
int endAddress = 1024;
#endif

#ifdef U11_2
String inputNames[] = {"MODEM_RxCLK","MODEM_TxCLK","CARD_RD","PIO_PB6","?I1","U12_4","/RST","CTC_RxTxCA"};
String outputNames[] = {"PIO_PA7","RST","RTC_ALE","?O1","?O2","MODEM_ALE","TxCA","RxCA"};
int inputNumbers[] = {3,4,5,6,7,8,9,10};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 8;
int numOutput = 8;
int endAddress = 256;
#endif

#ifdef U11
String inputNames[] = {"MODEM_RxCLK","MODEM_TxCLK","CARD_RD","PIO_PB6","?I1","U12_4","/RST","CTC_RxTxCA"};
String outputNames[] = {"PIO_PA7","RST","RTC_ALE","?O1","?O2","MODEM_ALE","TxCA","RxCA"};
int inputNumbers[] = {3,4,5,6,7,8,9,10};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 8;
int numOutput = 8;
int endAddress = 256;
int U11_clk = 2;
int U11_oe = 11;
bool clk = false;
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

  #ifdef U11
    pinMode(U11_clk,OUTPUT);
    pinMode(U11_oe,OUTPUT);
    pinMode(U11_oe,LOW);//grounded on board, no reason to even test
  #endif
  
  Keyboard.begin();
  delay(1000);

  printHeader();
  while(address < endAddress){
    writeAddress();
    #ifdef U11
      for(int i = 0; i < 4; i++){
        digitalWrite(U11_clk,clk);
        clk = !clk;
        printData();
      }
    #else
      printData();
    #endif
    address++;
    delay(50);
  }
}

void loop(){
  //wait forever
}

void printHeader(){
  #ifdef U11
    Keyboard.print("clk");delay(10);
    Keyboard.print(',');delay(10);
  #endif
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
  #ifdef U11
    (clk)?Keyboard.print("1"):Keyboard.print("0");delay(5);
    Keyboard.print(',');delay(5);
  #endif
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

/*
permutate through all inputs and figure out outputs
type up csv file
*/
#include "Keyboard.h"

//#define U12
//#define U12_2
//#define U11_2
//#define U11_3
//#define U7
//#define U7_2
//#define U7_3I
#define U7_3O

#ifdef U12
String inputNames[] = {"A4","A6","?I1","/WR","?I2","/RST","A5","/IORQ","/RD","A7"};
String outputNames[] = {"MODEM_WR","MODEM_RD","?O1","/RTC_CE","/CTC_CE","U11_7","/PIO_CE","/SIO_CE"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,10,11};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 10;
int numOutput = 8;
int endAddress = 1024;
#endif

#ifdef U12_2
String inputNames[] = {"A4","A6","/WR","/RST","A5","/IORQ","/RD","A7"};
String outputNames[] = {"MODEM_WR","MODEM_RD","/RTC_CE","/CTC_CE","U11_7","/PIO_CE","/SIO_CE"};
int inputNumbers[] = {2,3,5,7,8,9,10,11};
int outputNumbers[] = {12,13,A1,A2,A3,A4,A5};
int numInput = 8;
int numOutput = 7;
int endAddress = 256;
int U12_I1 = 4;
int U12_I2 = 6;
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

#ifdef U11_2
String inputNames[] = {"MODEM_RxCLK","MODEM_TxCLK","CARD_RD","PIO_PB6","?I1","U12_4","/RST","CTC_RxTxCA"};
String outputNames[] = {"PIO_PA7","RST","RTC_ALE","?O1","?O2","MODEM_ALE","TxCA","RxCA"};
int inputNumbers[] = {3,4,5,6,7,8,9,10};
int outputNumbers[] = {12,13,A0,A1,A2,A3,A4,A5};
int numInput = 8;
int numOutput = 8;
int endAddress = 256;
#endif

#ifdef U11_3
String inputNames[] = {"CLK","MODEM_RxCLK","MODEM_TxCLK","CARD_RD","PIO_PB6","U12_4","/RST","CTC_RxTxCA"};
String outputNames[] = {"PIO_PA7","RST","RTC_ALE","MODEM_ALE","TxCA","RxCA"};
int inputNumbers[] = {2,3,4,5,6,8,9,10};
int outputNumbers[] = {12,13,A0,A3,A4,A5};
int numInput = 8;
int numOutput = 6;
int endAddress = 256;
int U11_oe = 11;
int U11_I1 = 7;
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

#ifdef U7_2
String inputNames[] = {"/MREQ","/IORQ","/RD","/WR","A19","A18","A17","A15","A16"};
String outputNames[] = {"/RTC_RD","/RAM_CE","/RTC_WR","/U22_CE","/RAM_WE","/RAM_OE","/ROM_CE"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,11};
int outputNumbers[] = {12,13,A1,A2,A3,A4,A5};
int numInput = 9;
int numOutput = 7;
int endAddress = 512;
int U7_I1 = 10;
int U7_I2 = A0;
#endif

#ifdef U7_3I
String inputNames[] = {"/MREQ","/IORQ","/RD","/WR","A19","A18","A17","A15","A16","I2"};
String outputNames[] = {"/RTC_RD","/RAM_CE","/RTC_WR","/U22_CE","/RAM_WE","/RAM_OE","/ROM_CE"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,11,A0};
int outputNumbers[] = {12,13,A1,A2,A3,A4,A5};
int numInput = 10;
int numOutput = 7;
int endAddress = 1024;
int U7_I1 = 10;
#endif

#ifdef U7_3O
String inputNames[] = {"/MREQ","/IORQ","/RD","/WR","A19","A18","A17","A15","A16"};
String outputNames[] = {"/RTC_RD","/RAM_CE","/RTC_WR","/U22_CE","/RAM_WE","/RAM_OE","/ROM_CE","I2"};
int inputNumbers[] = {2,3,4,5,6,7,8,9,11};
int outputNumbers[] = {12,13,A1,A2,A3,A4,A5,A0};
int numInput = 9;
int numOutput = 8;
int endAddress = 512;
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

  #ifdef U11_3
    pinMode(U11_oe,OUTPUT);
    pinMode(U11_oe,LOW);//grounded on board, no reason to even test
    pinMode(U11_I1,OUTPUT);
    pinMode(U11_I1,HIGH);//pulled to vcc on board, no reason to even test
  #endif

  #ifdef U11_3
    pinMode(U12_I2,OUTPUT);
    pinMode(U12_I2,LOW);//grounded on board, no reason to even test
    pinMode(U12_I1,OUTPUT);
    pinMode(U12_I1,HIGH);//pulled to vcc on board, no reason to even test
  #endif

  #ifdef U7_2
    pinMode(U7_I2,OUTPUT);
    pinMode(U7_I2,HIGH);//grounded on board, no reason to even test
    pinMode(U7_I1,OUTPUT);
    pinMode(U7_I1,HIGH);//pulled to vcc on board, no reason to even test
  #endif

  #ifdef U7_3I
    pinMode(U7_I1,OUTPUT);
    pinMode(U7_I1,HIGH);//pulled to vcc on board, no reason to even test
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

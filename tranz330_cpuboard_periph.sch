EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:z80a
LIBS:tdk_modem
LIBS:oki_peripherals
LIBS:rs232drv
LIBS:tranz330_re-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z80DART U15
U 1 1 59587D19
P 1700 5050
F 0 "U15" H 1350 3700 60  0000 C CNN
F 1 "Z80DART" V 1700 5050 60  0000 C CNN
F 2 "" H 1650 4300 60  0001 C CNN
F 3 "" H 1650 4300 60  0001 C CNN
	1    1700 5050
	1    0    0    -1  
$EndComp
Entry Wire Line
	800  3800 900  3900
Entry Wire Line
	800  3900 900  4000
Entry Wire Line
	800  4000 900  4100
Entry Wire Line
	800  4100 900  4200
Entry Wire Line
	800  4200 900  4300
Entry Wire Line
	800  4300 900  4400
Entry Wire Line
	800  4400 900  4500
Entry Wire Line
	800  4500 900  4600
Text Label 900  4300 0    60   ~ 0
D4
Text Label 900  4400 0    60   ~ 0
D5
Text Label 900  4500 0    60   ~ 0
D6
Text Label 900  4600 0    60   ~ 0
D7
Text Label 900  4200 0    60   ~ 0
D3
Text Label 900  4100 0    60   ~ 0
D2
Text Label 900  4000 0    60   ~ 0
D1
Text Label 900  3900 0    60   ~ 0
D0
Text GLabel 850  4900 0    39   Input ~ 0
/M1
Text GLabel 850  5000 0    39   Input ~ 0
/IORQ
Text GLabel 850  5100 0    39   Input ~ 0
/RD
Text GLabel 850  5300 0    39   Input ~ 0
/INT
Text GLabel 650  3750 0    60   Input ~ 0
D
$Comp
L CONN_01X08 P4
U 1 1 595F5E08
P 5950 2100
F 0 "P4" H 5950 2550 50  0000 C CNN
F 1 "CONN_01X08" V 6050 2100 50  0000 C CNN
F 2 "" H 5950 2100 50  0000 C CNN
F 3 "" H 5950 2100 50  0000 C CNN
	1    5950 2100
	1    0    0    -1  
$EndComp
$Comp
L DS1489 U20
U 1 1 595F5EC3
P 4600 1950
F 0 "U20" H 4200 1650 60  0000 C CNN
F 1 "DS1489" H 4600 1950 60  0000 C CNN
F 2 "" H 4600 1950 60  0001 C CNN
F 3 "" H 4600 1950 60  0001 C CNN
	1    4600 1950
	-1   0    0    -1  
$EndComp
$Comp
L DS1489 U20
U 2 1 595F6215
P 4600 2900
F 0 "U20" H 4200 2600 60  0000 C CNN
F 1 "DS1489" H 4600 2900 60  0000 C CNN
F 2 "" H 4600 2900 60  0001 C CNN
F 3 "" H 4600 2900 60  0001 C CNN
	2    4600 2900
	-1   0    0    1   
$EndComp
Text Label 5500 2150 0    39   ~ 0
R_RxDB
Text Label 5500 2050 0    39   ~ 0
R_CTSB
$Comp
L DS1489 U20
U 4 1 595F6449
P 4600 950
F 0 "U20" H 4200 650 60  0000 C CNN
F 1 "DS1489" H 4600 950 60  0000 C CNN
F 2 "" H 4600 950 60  0001 C CNN
F 3 "" H 4600 950 60  0001 C CNN
	4    4600 950 
	-1   0    0    1   
$EndComp
Text Label 5500 1850 0    39   ~ 0
R_DCDB
$Comp
L DS14C88 U28
U 2 1 59604FB7
P 4700 3550
F 0 "U28" H 4250 3250 60  0000 C CNN
F 1 "DS14C88" H 4700 3550 60  0000 C CNN
F 2 "" H 4700 3550 60  0001 C CNN
F 3 "" H 4700 3550 60  0001 C CNN
	2    4700 3550
	1    0    0    -1  
$EndComp
Text Label 5500 2250 0    39   ~ 0
R_TxDB
Text GLabel 3950 3400 0    39   Input ~ 0
TxDB
$Comp
L +5V #PWR016
U 1 1 596054F6
P 4050 3600
F 0 "#PWR016" H 4050 3450 50  0001 C CNN
F 1 "+5V" H 4050 3740 50  0000 C CNN
F 2 "" H 4050 3600 50  0000 C CNN
F 3 "" H 4050 3600 50  0000 C CNN
	1    4050 3600
	1    0    0    -1  
$EndComp
Text GLabel 2500 5400 2    39   Output ~ 0
TxDB
Text GLabel 3800 950  0    39   Output ~ 0
/DCDB
Text GLabel 3800 1950 0    39   Output ~ 0
/CTSB
Text GLabel 3800 2900 0    39   Output ~ 0
RxDB
Text GLabel 2500 5200 2    39   Input ~ 0
RxDB
Text GLabel 2500 5900 2    39   Input ~ 0
/CTSB
Text GLabel 2500 6100 2    39   Input ~ 0
/DCDB
$Comp
L DS14C88 U28
U 4 1 59605C52
P 4700 4250
F 0 "U28" H 4250 3950 60  0000 C CNN
F 1 "DS14C88" H 4700 4250 60  0000 C CNN
F 2 "" H 4700 4250 60  0001 C CNN
F 3 "" H 4700 4250 60  0001 C CNN
	4    4700 4250
	1    0    0    -1  
$EndComp
Text Label 5500 1950 0    39   ~ 0
R_RTSB
Text GLabel 3950 4400 0    39   Input ~ 0
RTSB
$Comp
L GND #PWR017
U 1 1 596062DA
P 5450 1550
F 0 "#PWR017" H 5450 1300 50  0001 C CNN
F 1 "GND" H 5450 1400 50  0000 C CNN
F 2 "" H 5450 1550 50  0000 C CNN
F 3 "" H 5450 1550 50  0000 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Text Label 5600 1750 0    39   ~ 0
GND
NoConn ~ 5750 2350
NoConn ~ 5750 2450
$Comp
L GND #PWR018
U 1 1 596086C4
P 4800 2450
F 0 "#PWR018" H 4800 2200 50  0001 C CNN
F 1 "GND" H 4650 2350 50  0000 C CNN
F 2 "" H 4800 2450 50  0000 C CNN
F 3 "" H 4800 2450 50  0000 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 5960871B
P 4800 1450
F 0 "#PWR019" H 4800 1300 50  0001 C CNN
F 1 "+5V" H 4800 1590 50  0000 C CNN
F 2 "" H 4800 1450 50  0000 C CNN
F 3 "" H 4800 1450 50  0000 C CNN
	1    4800 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 59608B3C
P 1700 3450
F 0 "#PWR020" H 1700 3300 50  0001 C CNN
F 1 "+5V" H 1700 3590 50  0000 C CNN
F 2 "" H 1700 3450 50  0000 C CNN
F 3 "" H 1700 3450 50  0000 C CNN
	1    1700 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 59608BBE
P 1700 6550
F 0 "#PWR021" H 1700 6300 50  0001 C CNN
F 1 "GND" H 1550 6450 50  0000 C CNN
F 2 "" H 1700 6550 50  0000 C CNN
F 3 "" H 1700 6550 50  0000 C CNN
	1    1700 6550
	1    0    0    -1  
$EndComp
Text Notes 5800 1450 0    60   ~ 0
Serial\nDIN-8
$Comp
L CONN_01X06 P5
U 1 1 59611B6F
P 5700 6800
F 0 "P5" H 5700 7150 50  0000 C CNN
F 1 "CONN_01X06" V 5800 6800 50  0000 C CNN
F 2 "" H 5700 6800 50  0000 C CNN
F 3 "" H 5700 6800 50  0000 C CNN
	1    5700 6800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 59611C86
P 5100 6100
F 0 "#PWR022" H 5100 5950 50  0001 C CNN
F 1 "+5V" H 5100 6240 50  0000 C CNN
F 2 "" H 5100 6100 50  0000 C CNN
F 3 "" H 5100 6100 50  0000 C CNN
	1    5100 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 59611D61
P 5050 7300
F 0 "#PWR023" H 5050 7050 50  0001 C CNN
F 1 "GND" H 4900 7200 50  0000 C CNN
F 2 "" H 5050 7300 50  0000 C CNN
F 3 "" H 5050 7300 50  0000 C CNN
	1    5050 7300
	1    0    0    -1  
$EndComp
$Comp
L R R37
U 1 1 59611EF9
P 5100 6300
F 0 "R37" V 5180 6300 50  0000 C CNN
F 1 "4.7" V 5100 6300 50  0000 C CNN
F 2 "" V 5030 6300 50  0000 C CNN
F 3 "" H 5100 6300 50  0000 C CNN
	1    5100 6300
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR024
U 1 1 596120A0
P 4900 7100
F 0 "#PWR024" H 4900 6950 50  0001 C CNN
F 1 "+9V" H 4900 7240 50  0000 C CNN
F 2 "" H 4900 7100 50  0000 C CNN
F 3 "" H 4900 7100 50  0000 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
$Comp
L DS14C88 U28
U 1 1 59612132
P 3100 7050
F 0 "U28" H 2650 6750 60  0000 C CNN
F 1 "DS14C88" H 3100 7050 60  0000 C CNN
F 2 "" H 3100 7050 60  0001 C CNN
F 3 "" H 3100 7050 60  0001 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L DS14C88 U28
U 3 1 596121B5
P 4700 5050
F 0 "U28" H 4250 4750 60  0000 C CNN
F 1 "DS14C88" H 4700 5050 60  0000 C CNN
F 2 "" H 4700 5050 60  0001 C CNN
F 3 "" H 4700 5050 60  0001 C CNN
	3    4700 5050
	1    0    0    -1  
$EndComp
Text Label 5250 6850 0    39   ~ 0
PINTX
NoConn ~ 5250 5050
$Comp
L GND #PWR025
U 1 1 5961253A
P 4050 5350
F 0 "#PWR025" H 4050 5100 50  0001 C CNN
F 1 "GND" H 4050 5200 50  0000 C CNN
F 2 "" H 4050 5350 50  0000 C CNN
F 3 "" H 4050 5350 50  0000 C CNN
	1    4050 5350
	1    0    0    -1  
$EndComp
$Comp
L DS1489 U20
U 3 1 5961266F
P 4200 6650
F 0 "U20" H 3800 6350 60  0000 C CNN
F 1 "DS1489" H 4200 6650 60  0000 C CNN
F 2 "" H 4200 6650 60  0001 C CNN
F 3 "" H 4200 6650 60  0001 C CNN
	3    4200 6650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5961294A
P 2850 7600
F 0 "#PWR026" H 2850 7350 50  0001 C CNN
F 1 "GND" H 2700 7500 50  0000 C CNN
F 2 "" H 2850 7600 50  0000 C CNN
F 3 "" H 2850 7600 50  0000 C CNN
	1    2850 7600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 59612A8C
P 3050 6500
F 0 "#PWR027" H 3050 6350 50  0001 C CNN
F 1 "+5V" H 3050 6640 50  0000 C CNN
F 2 "" H 3050 6500 50  0000 C CNN
F 3 "" H 3050 6500 50  0000 C CNN
	1    3050 6500
	1    0    0    -1  
$EndComp
Text GLabel 2000 7050 0    60   BiDi ~ 0
PINTX_BARCODE
Text GLabel 3450 6650 0    60   Output ~ 0
/RIB
Text Label 5250 6750 0    39   ~ 0
PINRX
Text Label 5250 6650 0    39   ~ 0
BARCODE
$Comp
L R R47
U 1 1 596130F6
P 2200 6750
F 0 "R47" V 2280 6750 50  0000 C CNN
F 1 "10k" V 2200 6750 50  0000 C CNN
F 2 "" V 2130 6750 50  0000 C CNN
F 3 "" H 2200 6750 50  0000 C CNN
	1    2200 6750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 5961326F
P 2200 6550
F 0 "#PWR028" H 2200 6400 50  0001 C CNN
F 1 "+5V" H 2200 6690 50  0000 C CNN
F 2 "" H 2200 6550 50  0000 C CNN
F 3 "" H 2200 6550 50  0000 C CNN
	1    2200 6550
	1    0    0    -1  
$EndComp
$Comp
L ZENER D16
U 1 1 59613384
P 2200 7350
F 0 "D16" H 2200 7450 50  0000 C CNN
F 1 "ZENER" H 2200 7250 50  0000 C CNN
F 2 "" H 2200 7350 50  0000 C CNN
F 3 "" H 2200 7350 50  0000 C CNN
	1    2200 7350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 59613431
P 2200 7600
F 0 "#PWR029" H 2200 7350 50  0001 C CNN
F 1 "GND" H 2050 7500 50  0000 C CNN
F 2 "" H 2200 7600 50  0000 C CNN
F 3 "" H 2200 7600 50  0000 C CNN
	1    2200 7600
	1    0    0    -1  
$EndComp
Text GLabel 2500 5500 2    39   Input ~ 0
/RIB
Text Notes 5300 6300 0    59   ~ 0
PIN pad\nand barcode\nDIN-6
Text Label 5250 6550 0    39   ~ 0
P_5V
Text Label 5250 6950 0    39   ~ 0
P_GND
Text Label 5250 7050 0    39   ~ 0
P_9V
$Comp
L 73K212AL U30
U 1 1 59614C17
P 1850 1750
F 0 "U30" H 1650 650 60  0000 C CNN
F 1 "73K212AL" V 1850 1800 60  0000 C CNN
F 2 "" H 1850 1800 60  0001 C CNN
F 3 "" H 1850 1800 60  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
Entry Wire Line
	1050 950  1150 1050
Entry Wire Line
	1050 1050 1150 1150
Entry Wire Line
	1050 1150 1150 1250
Entry Wire Line
	1050 1250 1150 1350
Entry Wire Line
	1050 1350 1150 1450
Entry Wire Line
	1050 1450 1150 1550
Entry Wire Line
	1050 1550 1150 1650
Entry Wire Line
	1050 1650 1150 1750
Text Label 1150 1450 0    60   ~ 0
D4
Text Label 1150 1550 0    60   ~ 0
D5
Text Label 1150 1650 0    60   ~ 0
D6
Text Label 1150 1750 0    60   ~ 0
D7
Text Label 1150 1350 0    60   ~ 0
D3
Text Label 1150 1250 0    60   ~ 0
D2
Text Label 1150 1150 0    60   ~ 0
D1
Text Label 1150 1050 0    60   ~ 0
D0
Text GLabel 900  900  0    60   Input ~ 0
D
Text GLabel 1100 1950 0    39   Input ~ 0
MODEM_ALE
Text GLabel 1100 2150 0    39   Input ~ 0
/MODEM_RD
Text GLabel 1100 2050 0    39   Input ~ 0
/MODEM_WR
NoConn ~ 2400 1050
NoConn ~ 2400 1150
$Comp
L GND #PWR030
U 1 1 596153FE
P 2450 1250
F 0 "#PWR030" H 2450 1000 50  0001 C CNN
F 1 "GND" H 2450 1100 50  0000 C CNN
F 2 "" H 2450 1250 50  0000 C CNN
F 3 "" H 2450 1250 50  0000 C CNN
	1    2450 1250
	1    0    0    -1  
$EndComp
NoConn ~ 1300 2650
Text GLabel 2650 1550 2    39   Input ~ 0
TxDA
Text GLabel 2650 1450 2    39   Output ~ 0
RxDA
$Comp
L +5V #PWR031
U 1 1 59615BAF
P 1850 700
F 0 "#PWR031" H 1850 550 50  0001 C CNN
F 1 "+5V" H 1850 840 50  0000 C CNN
F 2 "" H 1850 700 50  0000 C CNN
F 3 "" H 1850 700 50  0000 C CNN
	1    1850 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 59615BF6
P 1850 3000
F 0 "#PWR032" H 1850 2750 50  0001 C CNN
F 1 "GND" H 2000 2950 50  0000 C CNN
F 2 "" H 1850 3000 50  0000 C CNN
F 3 "" H 1850 3000 50  0000 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Text GLabel 2650 1950 2    39   UnSpc ~ 0
MODEM_RXA
Text GLabel 2650 2050 2    39   UnSpc ~ 0
MODEM_TXA
$Comp
L Crystal Y4
U 1 1 59616EC8
P 2850 2300
F 0 "Y4" H 2850 2150 50  0000 C CNN
F 1 "11.0592M" H 2900 2450 50  0000 C CNN
F 2 "" H 2850 2300 50  0000 C CNN
F 3 "" H 2850 2300 50  0000 C CNN
	1    2850 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3700 4150 3700
Wire Wire Line
	4050 3600 4050 4100
Wire Wire Line
	3950 3400 4150 3400
Wire Wire Line
	900  4100 1050 4100
Wire Wire Line
	900  4300 1050 4300
Wire Wire Line
	900  4200 1050 4200
Wire Wire Line
	900  4400 1050 4400
Wire Wire Line
	900  4500 1050 4500
Wire Wire Line
	900  4600 1050 4600
Wire Wire Line
	900  4000 1050 4000
Wire Wire Line
	900  3900 1050 3900
Wire Bus Line
	650  3750 800  3750
Wire Bus Line
	800  3750 800  4500
Wire Wire Line
	850  4900 1050 4900
Wire Wire Line
	850  5000 1050 5000
Wire Wire Line
	850  5100 1050 5100
Wire Wire Line
	850  5300 1050 5300
Wire Wire Line
	5150 2050 5750 2050
Wire Wire Line
	5750 2150 5150 2150
Wire Wire Line
	5350 1850 5750 1850
Wire Wire Line
	5250 2250 5750 2250
Wire Wire Line
	2350 5400 2500 5400
Wire Wire Line
	2350 5900 2500 5900
Wire Wire Line
	2500 6100 2350 6100
Wire Wire Line
	2350 5200 2500 5200
Wire Wire Line
	5450 1550 5550 1550
Wire Wire Line
	5550 1550 5550 1750
Wire Wire Line
	5550 1750 5750 1750
Wire Wire Line
	5150 2150 5150 2900
Wire Wire Line
	5750 1950 5350 1950
Wire Wire Line
	5250 2250 5250 3550
Wire Wire Line
	5150 2900 5100 2900
Wire Wire Line
	5100 1950 5150 1950
Wire Wire Line
	5150 1950 5150 2050
Wire Wire Line
	3900 1950 3800 1950
Wire Wire Line
	3800 2900 3900 2900
Wire Wire Line
	5350 950  5350 1850
Wire Wire Line
	4800 2400 4800 2450
Wire Wire Line
	4800 1450 4800 1500
Wire Wire Line
	5100 950  5350 950 
Wire Wire Line
	3800 950  3900 950 
Wire Wire Line
	4050 4100 4150 4100
Connection ~ 4050 3700
Wire Wire Line
	3950 4400 4150 4400
Wire Wire Line
	5250 4250 5350 4250
Wire Wire Line
	5350 4250 5350 1950
Wire Wire Line
	1700 6550 1700 6500
Wire Wire Line
	1700 3450 1700 3500
Wire Notes Line
	5400 1200 5400 2600
Wire Notes Line
	5400 2600 6200 2600
Wire Notes Line
	6200 2600 6200 1200
Wire Notes Line
	6200 1200 5400 1200
Wire Wire Line
	5100 6550 5500 6550
Wire Wire Line
	5050 6950 5500 6950
Wire Wire Line
	5150 7050 5500 7050
Wire Wire Line
	4050 4900 4050 5350
Wire Wire Line
	4050 4900 4150 4900
Wire Wire Line
	4150 5200 4050 5200
Connection ~ 4050 5200
Wire Wire Line
	3650 7050 4800 7050
Wire Wire Line
	4800 7050 4800 6850
Wire Wire Line
	4800 6850 5500 6850
Wire Wire Line
	4700 6650 4800 6650
Wire Wire Line
	4800 6650 4800 6750
Wire Wire Line
	4800 6750 5500 6750
Wire Wire Line
	3050 6500 3050 6550
Wire Wire Line
	2000 7050 2550 7050
Wire Wire Line
	5500 6650 4950 6650
Wire Wire Line
	4950 6650 4950 6250
Wire Wire Line
	4950 6250 2400 6250
Wire Wire Line
	2400 6250 2400 7050
Connection ~ 2400 7050
Wire Wire Line
	2850 7550 2850 7600
Wire Wire Line
	3450 6650 3500 6650
Wire Wire Line
	2200 6550 2200 6600
Wire Wire Line
	2200 6900 2200 7150
Connection ~ 2200 7050
Wire Wire Line
	2200 7550 2200 7600
Wire Wire Line
	2350 5500 2500 5500
Wire Wire Line
	5050 6950 5050 7300
Wire Wire Line
	5150 7050 5150 7150
Wire Wire Line
	5150 7150 4900 7150
Wire Wire Line
	4900 7150 4900 7100
Wire Wire Line
	5100 6550 5100 6450
Wire Wire Line
	5100 6100 5100 6150
Wire Notes Line
	5200 6000 5200 7150
Wire Notes Line
	5200 7150 5900 7150
Wire Notes Line
	5900 7150 5900 6000
Wire Notes Line
	5900 6000 5200 6000
Wire Wire Line
	1150 1250 1300 1250
Wire Wire Line
	1150 1450 1300 1450
Wire Wire Line
	1150 1350 1300 1350
Wire Wire Line
	1150 1550 1300 1550
Wire Wire Line
	1150 1650 1300 1650
Wire Wire Line
	1150 1750 1300 1750
Wire Wire Line
	1150 1150 1300 1150
Wire Wire Line
	1150 1050 1300 1050
Wire Bus Line
	900  900  1050 900 
Wire Bus Line
	1050 900  1050 1650
Wire Wire Line
	1100 1950 1300 1950
Wire Wire Line
	1100 2050 1300 2050
Wire Wire Line
	1100 2150 1300 2150
Wire Wire Line
	2400 1250 2450 1250
Wire Wire Line
	2400 1450 2650 1450
Wire Wire Line
	2650 1550 2400 1550
Wire Wire Line
	1850 700  1850 750 
Wire Wire Line
	1850 2950 1850 3000
Wire Wire Line
	2400 1950 2650 1950
Wire Wire Line
	2400 2050 2650 2050
Wire Wire Line
	2500 2250 2500 2150
Wire Wire Line
	2500 2150 3100 2150
Wire Wire Line
	2500 2350 2500 2450
Wire Wire Line
	2500 2450 2850 2450
$Comp
L C C57
U 1 1 596174B3
P 2850 2650
F 0 "C57" H 2700 2750 50  0000 L CNN
F 1 "C" H 2875 2550 50  0000 L CNN
F 2 "" H 2888 2500 50  0000 C CNN
F 3 "" H 2850 2650 50  0000 C CNN
	1    2850 2650
	1    0    0    -1  
$EndComp
$Comp
L C C56
U 1 1 59617522
P 3100 2650
F 0 "C56" H 3125 2750 50  0000 L CNN
F 1 "C" H 3125 2550 50  0000 L CNN
F 2 "" H 3138 2500 50  0000 C CNN
F 3 "" H 3100 2650 50  0000 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59617673
P 3000 2850
F 0 "#PWR?" H 3000 2600 50  0001 C CNN
F 1 "GND" H 2850 2750 50  0000 C CNN
F 2 "" H 3000 2850 50  0000 C CNN
F 3 "" H 3000 2850 50  0000 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2800 3100 2800
Wire Wire Line
	3000 2850 3000 2800
Connection ~ 3000 2800
Wire Wire Line
	2850 2450 2850 2500
Wire Wire Line
	3100 2150 3100 2500
Connection ~ 2850 2150
Text GLabel 2500 4300 2    39   Input ~ 0
MODEM_RING
Wire Wire Line
	2350 4300 2500 4300
Text GLabel 2500 5800 2    39   Output ~ 0
SPKR_INH
Wire Wire Line
	2350 5800 2500 5800
Text GLabel 2500 5300 2    39   Input ~ 0
/RXTXCB
Wire Wire Line
	2350 5300 2500 5300
Entry Wire Line
	800  5600 900  5700
Entry Wire Line
	800  5700 900  5800
Wire Bus Line
	800  5500 800  5700
Wire Bus Line
	800  5500 650  5500
Text GLabel 650  5500 0    59   Input ~ 0
A
Wire Wire Line
	900  5700 1050 5700
Wire Wire Line
	900  5800 1050 5800
Text Label 900  5700 0    59   ~ 0
A0
Text Label 900  5800 0    59   ~ 0
A1
$Comp
L CONN_01X20 P1
U 1 1 59621545
P 10050 2000
F 0 "P1" H 10050 3050 50  0000 C CNN
F 1 "CONN_01X20" V 10150 2000 50  0000 C CNN
F 2 "" H 10050 2000 50  0000 C CNN
F 3 "" H 10050 2000 50  0000 C CNN
	1    10050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1750 9850 1750
Wire Wire Line
	9650 1650 9850 1650
Wire Wire Line
	9850 1550 9650 1550
Wire Wire Line
	9650 1450 9850 1450
Wire Wire Line
	9650 1050 9850 1050
Wire Wire Line
	9850 1150 9650 1150
Wire Wire Line
	9650 1250 9850 1250
Wire Wire Line
	9850 1350 9650 1350
$Comp
L 74HC04 U11
U 6 1 59621554
P 8950 1950
F 0 "U11" H 9100 2050 50  0000 C CNN
F 1 "74HC04" H 9150 1850 50  0000 C CNN
F 2 "" H 8950 1950 50  0000 C CNN
F 3 "" H 8950 1950 50  0000 C CNN
	6    8950 1950
	-1   0    0    1   
$EndComp
Text GLabel 9650 1050 0    39   BiDi ~ 0
KP_R0
Text GLabel 9650 1150 0    39   BiDi ~ 0
KP_R1
Text GLabel 9650 1250 0    39   BiDi ~ 0
KP_R2
Text GLabel 9650 1350 0    39   BiDi ~ 0
KP_R3
Text GLabel 9650 1450 0    39   BiDi ~ 0
KP_C3
Text GLabel 9650 1550 0    39   BiDi ~ 0
KP_C2
Text GLabel 9650 1650 0    39   BiDi ~ 0
KP_C1
Text GLabel 9650 1750 0    39   BiDi ~ 0
KP_C0
Text Label 9500 2150 0    39   ~ 0
CARD_READ
Wire Wire Line
	9850 2150 9500 2150
Wire Wire Line
	9500 2150 9500 1950
Wire Wire Line
	9500 1950 9400 1950
NoConn ~ 9850 1850
NoConn ~ 9850 1950
NoConn ~ 9850 2050
Text GLabel 9650 2250 0    39   Input ~ 0
DISP_RST
Wire Wire Line
	9650 2250 9850 2250
Text GLabel 9650 2350 0    39   Input ~ 0
DISP_DAT
Text GLabel 9650 2450 0    39   Input ~ 0
DISP_CLK
Wire Wire Line
	9650 2350 9850 2350
Wire Wire Line
	9650 2450 9850 2450
Text GLabel 9650 2650 0    39   Input ~ 0
SPKR
Wire Wire Line
	9650 2650 9850 2650
Text GLabel 9650 2850 0    39   Input ~ 0
SPKR_INH
Wire Wire Line
	9650 2850 9850 2850
$Comp
L GND #PWR?
U 1 1 59621575
P 9650 3000
F 0 "#PWR?" H 9650 2750 50  0001 C CNN
F 1 "GND" H 9650 2850 50  0000 C CNN
F 2 "" H 9650 3000 50  0000 C CNN
F 3 "" H 9650 3000 50  0000 C CNN
	1    9650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3000 9650 2950
Wire Wire Line
	9650 2950 9850 2950
$Comp
L +5V #PWR?
U 1 1 5962157D
P 9200 2500
F 0 "#PWR?" H 9200 2350 50  0001 C CNN
F 1 "+5V" H 9200 2640 50  0000 C CNN
F 2 "" H 9200 2500 50  0000 C CNN
F 3 "" H 9200 2500 50  0000 C CNN
	1    9200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2500 9200 2550
Wire Wire Line
	9200 2550 9850 2550
$Comp
L Z80PIO U9
U 1 1 59621A2A
P 7600 2250
F 0 "U9" H 7250 900 60  0000 C CNN
F 1 "Z80PIO" V 7600 2250 60  0000 C CNN
F 2 "" H 7550 1500 60  0001 C CNN
F 3 "" H 7550 1500 60  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
Entry Wire Line
	6700 1000 6800 1100
Entry Wire Line
	6700 1100 6800 1200
Entry Wire Line
	6700 1200 6800 1300
Entry Wire Line
	6700 1300 6800 1400
Entry Wire Line
	6700 1400 6800 1500
Entry Wire Line
	6700 1500 6800 1600
Entry Wire Line
	6700 1600 6800 1700
Entry Wire Line
	6700 1700 6800 1800
Text Label 6800 1100 0    60   ~ 0
D0
Text Label 6800 1200 0    60   ~ 0
D1
Text Label 6800 1300 0    60   ~ 0
D2
Text Label 6800 1400 0    60   ~ 0
D3
Text Label 6800 1500 0    60   ~ 0
D4
Text Label 6800 1600 0    60   ~ 0
D5
Text Label 6800 1700 0    60   ~ 0
D6
Text Label 6800 1800 0    60   ~ 0
D7
Text GLabel 6550 900  0    60   BiDi ~ 0
D
Text GLabel 6750 2400 0    39   Input ~ 0
/M1
Text GLabel 6750 2500 0    39   Input ~ 0
/IORQ
Text GLabel 6750 2600 0    39   Input ~ 0
/RD
Text GLabel 6750 3100 0    39   Input ~ 0
/INT
Text GLabel 6750 2300 0    39   Input ~ 0
/PIO_CE
Wire Wire Line
	6800 1100 6950 1100
Wire Wire Line
	6800 1200 6950 1200
Wire Wire Line
	6800 1300 6950 1300
Wire Wire Line
	6800 1400 6950 1400
Wire Wire Line
	6800 1500 6950 1500
Wire Wire Line
	6800 1600 6950 1600
Wire Wire Line
	6800 1700 6950 1700
Wire Wire Line
	6800 1800 6950 1800
Wire Bus Line
	6700 900  6700 1700
Wire Wire Line
	6750 2400 6950 2400
Wire Wire Line
	6750 2500 6950 2500
Wire Wire Line
	6750 2600 6950 2600
Wire Wire Line
	6750 3100 6950 3100
Wire Bus Line
	6700 900  6550 900 
Wire Wire Line
	6950 2300 6750 2300
Text GLabel 8500 3000 2    39   BiDi ~ 0
PINTX_BARCODE
Wire Wire Line
	8250 3000 8500 3000
Text GLabel 8500 2800 2    39   Output ~ 0
MODEM_?
Wire Wire Line
	8250 2800 8500 2800
Text GLabel 8500 2700 2    39   Output ~ 0
MODEM_?
Wire Wire Line
	8250 2700 8500 2700
Text GLabel 8500 2900 2    39   Output ~ 0
MODEM_?
Wire Wire Line
	8250 2900 8500 2900
Text GLabel 8500 1100 2    39   BiDi ~ 0
KP_C0
Wire Wire Line
	8250 1100 8500 1100
Text GLabel 8500 1200 2    39   BiDi ~ 0
KP_C1
Text GLabel 8500 1300 2    39   BiDi ~ 0
KP_C2
Text GLabel 8500 1400 2    39   BiDi ~ 0
KP_C3
Wire Wire Line
	8250 1200 8500 1200
Wire Wire Line
	8500 1300 8250 1300
Wire Wire Line
	8250 1400 8500 1400
Text GLabel 8500 2600 2    39   BiDi ~ 0
KP_R3
Text GLabel 8500 2500 2    39   BiDi ~ 0
KP_R2
Text GLabel 8500 2400 2    39   BiDi ~ 0
KP_R1
Text GLabel 8500 2300 2    39   BiDi ~ 0
KP_R0
Wire Wire Line
	8250 2300 8500 2300
Wire Wire Line
	8250 2400 8500 2400
Wire Wire Line
	8250 2500 8500 2500
Wire Wire Line
	8250 2600 8500 2600
Text GLabel 8500 1500 2    39   Output ~ 0
DISP_RST
Wire Wire Line
	8250 1500 8500 1500
Text GLabel 8500 1600 2    39   Output ~ 0
DISP_DAT
Text GLabel 8500 1700 2    39   Output ~ 0
DISP_CLK
Wire Wire Line
	8250 1600 8500 1600
Wire Wire Line
	8250 1700 8500 1700
Entry Wire Line
	6700 1900 6800 2000
Entry Wire Line
	6700 2000 6800 2100
Wire Wire Line
	6800 2000 6950 2000
Wire Wire Line
	6950 2100 6800 2100
Wire Bus Line
	6700 1800 6700 2000
Wire Bus Line
	6700 1800 6550 1800
Text GLabel 6550 1800 0    59   Input ~ 0
A
Text Label 6800 2000 0    59   ~ 0
A0
Text Label 6800 2100 0    59   ~ 0
A1
Text GLabel 6750 2900 0    39   Input ~ 0
CLK
Wire Wire Line
	6750 2900 6950 2900
Wire Wire Line
	8250 1800 8500 1800
Wire Wire Line
	8500 1800 8500 1950
$Comp
L Z80CTC U4
U 1 1 59622207
P 9850 4850
F 0 "U4" H 9500 3650 60  0000 C CNN
F 1 "Z80CTC" V 9850 4650 60  0000 C CNN
F 2 "" H 9800 3900 60  0001 C CNN
F 3 "" H 9800 3900 60  0001 C CNN
	1    9850 4850
	1    0    0    -1  
$EndComp
Text GLabel 10750 4600 2    39   Output ~ 0
SPKR
Wire Wire Line
	10500 4600 10750 4600
Wire Wire Line
	10500 4800 10600 4800
Wire Wire Line
	10600 4800 10600 4600
Connection ~ 10600 4600
Text GLabel 10750 3900 2    39   Input ~ 0
CLK/2
Wire Wire Line
	10500 3900 10750 3900
Text GLabel 10750 4300 2    39   Output ~ 0
/RXTXCB
Wire Wire Line
	10500 4300 10750 4300
NoConn ~ 10500 4500
Text GLabel 10750 5300 2    39   Input ~ 0
CLK
Wire Wire Line
	10500 5300 10750 5300
Text GLabel 10750 5500 2    39   Input ~ 0
/RESET
Wire Wire Line
	10500 5500 10750 5500
Entry Wire Line
	8950 3800 9050 3900
Entry Wire Line
	8950 3900 9050 4000
Entry Wire Line
	8950 4000 9050 4100
Entry Wire Line
	8950 4100 9050 4200
Entry Wire Line
	8950 4200 9050 4300
Entry Wire Line
	8950 4300 9050 4400
Entry Wire Line
	8950 4400 9050 4500
Entry Wire Line
	8950 4500 9050 4600
Text Label 9050 3900 0    60   ~ 0
D0
Text Label 9050 4000 0    60   ~ 0
D1
Text Label 9050 4100 0    60   ~ 0
D2
Text Label 9050 4200 0    60   ~ 0
D3
Text Label 9050 4300 0    60   ~ 0
D4
Text Label 9050 4400 0    60   ~ 0
D5
Text Label 9050 4500 0    60   ~ 0
D6
Text Label 9050 4600 0    60   ~ 0
D7
Text GLabel 8800 3700 0    60   BiDi ~ 0
D
Wire Wire Line
	9050 3900 9200 3900
Wire Wire Line
	9050 4000 9200 4000
Wire Wire Line
	9050 4100 9200 4100
Wire Wire Line
	9050 4200 9200 4200
Wire Wire Line
	9050 4300 9200 4300
Wire Wire Line
	9050 4400 9200 4400
Wire Wire Line
	9050 4500 9200 4500
Wire Wire Line
	9050 4600 9200 4600
Wire Bus Line
	8950 3700 8950 4500
Wire Bus Line
	8950 3700 8800 3700
Text GLabel 8900 5100 0    39   Input ~ 0
/M1
Text GLabel 8900 5200 0    39   Input ~ 0
/IORQ
Text GLabel 8900 5300 0    39   Input ~ 0
/RD
Wire Wire Line
	8900 5100 9200 5100
Wire Wire Line
	8900 5200 9200 5200
Wire Wire Line
	8900 5300 9200 5300
Entry Wire Line
	9000 4800 9100 4900
Entry Wire Line
	9000 4900 9100 5000
Text GLabel 8900 4800 0    59   Input ~ 0
A
Text Label 9100 4900 0    59   ~ 0
A0
Text Label 9100 5000 0    59   ~ 0
A1
Text GLabel 8900 4650 0    39   Input ~ 0
/CTC_CE
Wire Wire Line
	9200 5000 9100 5000
Wire Wire Line
	9100 4900 9200 4900
Wire Wire Line
	8900 4650 9150 4650
Wire Wire Line
	9150 4650 9150 4800
Wire Wire Line
	9150 4800 9200 4800
Wire Bus Line
	9000 4900 9000 4800
Wire Bus Line
	9000 4800 8900 4800
$Comp
L GND #PWR?
U 1 1 5962254C
P 9850 6200
F 0 "#PWR?" H 9850 5950 50  0001 C CNN
F 1 "GND" H 9850 6050 50  0000 C CNN
F 2 "" H 9850 6200 50  0000 C CNN
F 3 "" H 9850 6200 50  0000 C CNN
	1    9850 6200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59622633
P 9850 3450
F 0 "#PWR?" H 9850 3300 50  0001 C CNN
F 1 "+5V" H 9850 3590 50  0000 C CNN
F 2 "" H 9850 3450 50  0000 C CNN
F 3 "" H 9850 3450 50  0000 C CNN
	1    9850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3450 9850 3500
Wire Wire Line
	9850 6150 9850 6200
$Comp
L +5V #PWR?
U 1 1 59622BFF
P 7600 650
F 0 "#PWR?" H 7600 500 50  0001 C CNN
F 1 "+5V" H 7600 790 50  0000 C CNN
F 2 "" H 7600 650 50  0000 C CNN
F 3 "" H 7600 650 50  0000 C CNN
	1    7600 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 650  7600 700 
Wire Wire Line
	7600 3700 7600 3750
$Comp
L M6242B U2
U 1 1 596231B0
P 7600 5200
F 0 "U2" H 7400 4350 60  0000 C CNN
F 1 "M6242B" V 7600 5200 60  0000 C CNN
F 2 "" H 7600 5200 60  0001 C CNN
F 3 "" H 7600 5200 60  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596232AB
P 7600 6200
F 0 "#PWR?" H 7600 5950 50  0001 C CNN
F 1 "GND" H 7600 6050 50  0000 C CNN
F 2 "" H 7600 6200 50  0000 C CNN
F 3 "" H 7600 6200 50  0000 C CNN
	1    7600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4300 7600 4400
Wire Wire Line
	7600 6150 7600 6200
Entry Wire Line
	6850 4600 6950 4700
Entry Wire Line
	6850 4700 6950 4800
Entry Wire Line
	6850 4800 6950 4900
Entry Wire Line
	6850 4900 6950 5000
Text Label 6950 4700 0    60   ~ 0
D0
Text Label 6950 4800 0    60   ~ 0
D1
Text Label 6950 4900 0    60   ~ 0
D2
Text Label 6950 5000 0    60   ~ 0
D3
Text GLabel 6700 4500 0    60   BiDi ~ 0
D
Wire Wire Line
	6950 4700 7100 4700
Wire Wire Line
	6950 4800 7100 4800
Wire Wire Line
	6950 4900 7100 4900
Wire Wire Line
	6950 5000 7100 5000
Wire Bus Line
	6850 4500 6850 4900
Wire Bus Line
	6850 4500 6700 4500
Entry Wire Line
	8300 4600 8200 4700
Entry Wire Line
	8300 4700 8200 4800
Entry Wire Line
	8300 4800 8200 4900
Entry Wire Line
	8300 4900 8200 5000
Text Label 8200 4700 2    39   ~ 0
A0
Text Label 8200 4800 2    39   ~ 0
A1
Text Label 8200 4900 2    39   ~ 0
A2
Text Label 8200 5000 2    39   ~ 0
A3
Wire Wire Line
	8200 4700 8100 4700
Wire Wire Line
	8100 4800 8200 4800
Wire Wire Line
	8200 4900 8100 4900
Wire Wire Line
	8200 5000 8100 5000
Text GLabel 8350 4500 2    59   Input ~ 0
A
Wire Bus Line
	8350 4500 8300 4500
Wire Bus Line
	8300 4500 8300 4900
Text GLabel 6850 5400 0    39   Input ~ 0
/RTC_CE
Wire Wire Line
	6850 5400 7100 5400
Wire Wire Line
	6950 5300 6950 5800
$Comp
L CTRIM C1
U 1 1 59624F46
P 8300 6050
F 0 "C1" H 8360 5970 50  0000 C CNN
F 1 "CTRIM" H 8420 5910 50  0000 C CNN
F 2 "" H 8300 6050 50  0000 C CNN
F 3 "" H 8300 6050 50  0000 C CNN
	1    8300 6050
	-1   0    0    1   
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 59624B5F
P 8300 5750
F 0 "Y1" H 8300 5850 50  0000 C CNN
F 1 "32.768K" V 8150 5750 50  0000 C CNN
F 2 "" H 8300 5750 50  0000 C CNN
F 3 "" H 8300 5750 50  0000 C CNN
	1    8300 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 5800 8150 5800
Wire Wire Line
	8150 5800 8150 5850
Wire Wire Line
	8150 5850 8300 5850
Wire Wire Line
	8300 5850 8300 5900
Wire Wire Line
	8100 5700 8150 5700
Wire Wire Line
	8150 5700 8150 5650
Wire Wire Line
	8150 5650 8500 5650
Wire Wire Line
	8500 5650 8500 5900
Connection ~ 8300 5650
$Comp
L C C2
U 1 1 5962595B
P 8500 6050
F 0 "C2" H 8525 6150 50  0000 L CNN
F 1 "C" H 8525 5950 50  0000 L CNN
F 2 "" H 8538 5900 50  0000 C CNN
F 3 "" H 8500 6050 50  0000 C CNN
	1    8500 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59625A6A
P 8400 6250
F 0 "#PWR?" H 8400 6000 50  0001 C CNN
F 1 "GND" H 8400 6100 50  0000 C CNN
F 2 "" H 8400 6250 50  0000 C CNN
F 3 "" H 8400 6250 50  0000 C CNN
	1    8400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 6200 8300 6250
Wire Wire Line
	8300 6250 8500 6250
Wire Wire Line
	8500 6250 8500 6200
Connection ~ 8400 6250
$Comp
L R R2
U 1 1 5962686A
P 8400 5250
F 0 "R2" V 8480 5250 50  0000 C CNN
F 1 "18K" V 8400 5250 50  0000 C CNN
F 2 "" V 8330 5250 50  0000 C CNN
F 3 "" H 8400 5250 50  0000 C CNN
	1    8400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5400 8400 5400
$Comp
L +5V #PWR?
U 1 1 59626A37
P 8400 5050
F 0 "#PWR?" H 8400 4900 50  0001 C CNN
F 1 "+5V" H 8400 5190 50  0000 C CNN
F 2 "" H 8400 5050 50  0000 C CNN
F 3 "" H 8400 5050 50  0000 C CNN
	1    8400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5050 8400 5100
$Comp
L VMEM #PWR?
U 1 1 59626FC0
P 7600 4300
F 0 "#PWR?" H 7600 4150 50  0001 C CNN
F 1 "VMEM" H 7600 4450 50  0000 C CNN
F 2 "" H 7600 4300 50  0000 C CNN
F 3 "" H 7600 4300 50  0000 C CNN
	1    7600 4300
	1    0    0    -1  
$EndComp
Text GLabel 6850 5600 0    39   Input ~ 0
/RD
Text GLabel 6850 5700 0    39   Input ~ 0
/WR
Wire Wire Line
	6850 5600 7100 5600
Wire Wire Line
	7100 5700 6850 5700
$Comp
L VMEM #PWR?
U 1 1 5962770B
P 6950 5300
F 0 "#PWR?" H 6950 5150 50  0001 C CNN
F 1 "VMEM" H 6950 5450 50  0000 C CNN
F 2 "" H 6950 5300 50  0000 C CNN
F 3 "" H 6950 5300 50  0000 C CNN
	1    6950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5800 7100 5800
Text GLabel 6850 5500 0    39   Input ~ 0
/RESET
Wire Wire Line
	6850 5500 7100 5500
Text GLabel 2500 4000 2    39   Input ~ 0
/RXTXCA
Wire Wire Line
	2350 4000 2500 4000
Text GLabel 10750 4000 2    39   Output ~ 0
/RXTXCA
Wire Wire Line
	10500 4000 10750 4000
Wire Wire Line
	10500 4200 10600 4200
Wire Wire Line
	10600 4200 10600 3900
Connection ~ 10600 3900
Text GLabel 2500 3900 2    39   Input ~ 0
RxDA
Text GLabel 2500 4100 2    39   Output ~ 0
TxDA
Wire Wire Line
	2350 3900 2500 3900
Wire Wire Line
	2350 4100 2500 4100
Wire Wire Line
	2350 4200 2400 4200
Wire Wire Line
	2400 4200 2400 4000
Connection ~ 2400 4000
Text GLabel 850  6000 0    39   Input ~ 0
CLK
Wire Wire Line
	850  6000 1050 6000
Text GLabel 850  6100 0    39   Input ~ 0
/RESET
Wire Wire Line
	850  6100 1050 6100
NoConn ~ 8250 3200
NoConn ~ 8250 3300
NoConn ~ 8250 2000
NoConn ~ 8250 2100
$Comp
L 74HC04 U11
U 2 1 5962CF20
P 950 3000
F 0 "U11" H 1100 3100 50  0000 C CNN
F 1 "74HC04" H 1150 2900 50  0000 C CNN
F 2 "" H 950 3000 50  0000 C CNN
F 3 "" H 950 3000 50  0000 C CNN
	2    950  3000
	-1   0    0    1   
$EndComp
Text GLabel 1450 3000 2    39   Input ~ 0
/RESET
Wire Wire Line
	1400 3000 1450 3000
Wire Wire Line
	2400 2250 2500 2250
Wire Wire Line
	2500 2350 2400 2350
Wire Wire Line
	500  2450 1300 2450
Wire Wire Line
	500  2450 500  3000
Text GLabel 850  4800 0    39   Input ~ 0
/DART_CE
Wire Wire Line
	850  4800 1050 4800
Text GLabel 9100 5700 0    39   Output ~ 0
CTC_IEO
Wire Wire Line
	9200 5700 9100 5700
Text GLabel 850  5400 0    39   Input ~ 0
CTC_IEO
Wire Wire Line
	850  5400 1050 5400
Text GLabel 6750 3300 0    39   Output ~ 0
PIO_IEO
Wire Wire Line
	6750 3300 6950 3300
$Comp
L +5V #PWR?
U 1 1 596C806F
P 6400 3100
F 0 "#PWR?" H 6400 2950 50  0001 C CNN
F 1 "+5V" H 6400 3240 50  0000 C CNN
F 2 "" H 6400 3100 50  0000 C CNN
F 3 "" H 6400 3100 50  0000 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3100 6400 3200
Wire Wire Line
	6400 3200 6950 3200
Text GLabel 9100 5600 0    39   Input ~ 0
PIO_IEO
Wire Wire Line
	9100 5600 9200 5600
NoConn ~ 1050 5500
Text GLabel 9100 5800 0    39   Input ~ 0
/INT
Wire Wire Line
	9100 5800 9200 5800
$Comp
L VEE #PWR?
U 1 1 596CA02C
P 3050 7600
F 0 "#PWR?" H 3050 7450 50  0001 C CNN
F 1 "VEE" H 3050 7750 50  0000 C CNN
F 2 "" H 3050 7600 50  0000 C CNN
F 3 "" H 3050 7600 50  0000 C CNN
	1    3050 7600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 7550 3050 7600
$Comp
L VEE #PWR?
U 1 1 596CA40F
P 9200 2800
F 0 "#PWR?" H 9200 2650 50  0001 C CNN
F 1 "VEE" H 9200 2950 50  0000 C CNN
F 2 "" H 9200 2800 50  0000 C CNN
F 3 "" H 9200 2800 50  0000 C CNN
	1    9200 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 2800 9200 2750
Wire Wire Line
	9200 2750 9850 2750
$Comp
L GND #PWR?
U 1 1 596228F5
P 7600 3750
F 0 "#PWR?" H 7600 3500 50  0001 C CNN
F 1 "GND" H 7600 3600 50  0000 C CNN
F 2 "" H 7600 3750 50  0000 C CNN
F 3 "" H 7600 3750 50  0000 C CNN
	1    7600 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC

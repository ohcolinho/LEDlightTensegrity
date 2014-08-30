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
LIBS:special
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
LIBS:arduino
LIBS:custom
LIBS:MainBoard_LEDlightTensegrity-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "29 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ARDUINO_PRO_MINI_5V IC1
U 1 1 53FE524D
P 5050 4800
F 0 "IC1" H 4650 5650 60  0000 C CNN
F 1 "ARDUINO_PRO_MINI_5V" V 5050 4950 60  0000 C CNN
F 2 "" H 5050 4800 60  0000 C CNN
F 3 "" H 5050 4800 60  0000 C CNN
	1    5050 4800
	1    0    0    -1  
$EndComp
$Comp
L REDBOTACCEL U3
U 1 1 53FE7A8E
P 8150 5500
F 0 "U3" H 8150 5550 60  0000 C CNN
F 1 "REDBOTACCEL" H 8150 5250 60  0000 C CNN
F 2 "~" H 8150 5500 60  0000 C CNN
F 3 "~" H 8150 5500 60  0000 C CNN
	1    8150 5500
	1    0    0    -1  
$EndComp
$Comp
L NRF24L01_MODULE U4
U 1 1 53FE90D5
P 8200 4050
F 0 "U4" H 7850 4200 60  0000 C CNN
F 1 "NRF24L01_MODULE" H 8200 4050 60  0000 C CNN
F 2 "" H 8200 4050 60  0000 C CNN
F 3 "" H 8200 4050 60  0000 C CNN
	1    8200 4050
	1    0    0    -1  
$EndComp
$Comp
L OKL-T6-W12 U1
U 1 1 53FE95D6
P 4400 2150
F 0 "U1" H 3850 2400 60  0000 C CNN
F 1 "OKL-T6-W12" H 4400 2150 60  0000 C CNN
F 2 "" H 4450 2300 60  0000 C CNN
F 3 "" H 4450 2300 60  0000 C CNN
	1    4400 2150
	1    0    0    -1  
$EndComp
$Comp
L CJ1117-3.3 U2
U 1 1 54001795
P 6650 2050
F 0 "U2" H 6950 2300 60  0000 C CNN
F 1 "CJ1117-3.3" H 6650 1850 60  0000 C CNN
F 2 "" H 6650 2050 60  0000 C CNN
F 3 "" H 6650 2050 60  0000 C CNN
	1    6650 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR7
U 1 1 5400E7EC
P 5700 1800
F 0 "#PWR7" H 5700 1890 20  0001 C CNN
F 1 "+5V" H 5700 1890 30  0000 C CNN
F 2 "" H 5700 1800 60  0000 C CNN
F 3 "" H 5700 1800 60  0000 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR2
U 1 1 5400E7FF
P 2750 5050
F 0 "#PWR2" H 2750 5140 20  0001 C CNN
F 1 "+5V" H 2750 5140 30  0000 C CNN
F 2 "" H 2750 5050 60  0000 C CNN
F 3 "" H 2750 5050 60  0000 C CNN
	1    2750 5050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR8
U 1 1 5400E805
P 7300 5350
F 0 "#PWR8" H 7300 5440 20  0001 C CNN
F 1 "+5V" H 7300 5440 30  0000 C CNN
F 2 "" H 7300 5350 60  0000 C CNN
F 3 "" H 7300 5350 60  0000 C CNN
	1    7300 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 5400E856
P 3200 3100
F 0 "#PWR3" H 3200 3100 30  0001 C CNN
F 1 "GND" H 3200 3030 30  0001 C CNN
F 2 "" H 3200 3100 60  0000 C CNN
F 3 "" H 3200 3100 60  0000 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 5400E863
P 7500 2200
F 0 "#PWR10" H 7500 2200 30  0001 C CNN
F 1 "GND" H 7500 2130 30  0001 C CNN
F 2 "" H 7500 2200 60  0000 C CNN
F 3 "" H 7500 2200 60  0000 C CNN
	1    7500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 5400E869
P 8200 4800
F 0 "#PWR11" H 8200 4800 30  0001 C CNN
F 1 "GND" H 8200 4730 30  0001 C CNN
F 2 "" H 8200 4800 60  0000 C CNN
F 3 "" H 8200 4800 60  0000 C CNN
	1    8200 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 5400E86F
P 7300 5650
F 0 "#PWR9" H 7300 5650 30  0001 C CNN
F 1 "GND" H 7300 5580 30  0001 C CNN
F 2 "" H 7300 5650 60  0000 C CNN
F 3 "" H 7300 5650 60  0000 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 5400E87D
P 4800 6550
F 0 "K1" V 4750 6550 50  0000 C CNN
F 1 "CONN_3" V 4850 6550 40  0000 C CNN
F 2 "" H 4800 6550 60  0000 C CNN
F 3 "" H 4800 6550 60  0000 C CNN
	1    4800 6550
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K2
U 1 1 5400E88A
P 5300 6550
F 0 "K2" V 5250 6550 50  0000 C CNN
F 1 "CONN_3" V 5350 6550 40  0000 C CNN
F 2 "" H 5300 6550 60  0000 C CNN
F 3 "" H 5300 6550 60  0000 C CNN
	1    5300 6550
	0    1    1    0   
$EndComp
$Comp
L SPST SW1
U 1 1 5400E936
P 2750 2050
F 0 "SW1" H 2750 2150 70  0000 C CNN
F 1 "SPST" H 2750 1950 70  0000 C CNN
F 2 "~" H 2750 2050 60  0000 C CNN
F 3 "~" H 2750 2050 60  0000 C CNN
	1    2750 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5400E945
P 3200 2600
F 0 "R1" V 3280 2600 40  0000 C CNN
F 1 "1.33K" V 3207 2601 40  0000 C CNN
F 2 "~" V 3130 2600 30  0000 C CNN
F 3 "~" H 3200 2600 30  0000 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
Text Label 9100 5450 0    60   ~ 0
SDA
Text Label 9100 5550 0    60   ~ 0
SCL
Text Label 3850 4700 2    60   ~ 0
SDA
Text Label 3850 4800 2    60   ~ 0
SCL
Text Label 6050 4300 0    60   ~ 0
CE
Text Label 6050 4200 0    60   ~ 0
CSN
Text Label 6050 3900 0    60   ~ 0
SCK
Text Label 6050 4100 0    60   ~ 0
MOSI
Text Label 6050 4000 0    60   ~ 0
MISO
Text Label 7000 4000 2    60   ~ 0
CE
Text Label 7000 4100 2    60   ~ 0
CSN
Text Label 9450 3900 0    60   ~ 0
SCK
Text Label 9450 4100 0    60   ~ 0
MISO
Text Label 9450 4000 0    60   ~ 0
MOSI
Wire Wire Line
	5350 1950 6000 1950
Connection ~ 5700 1950
Wire Wire Line
	5700 1800 5700 2050
Wire Wire Line
	3850 4800 4200 4800
Wire Wire Line
	7300 5350 7300 5450
Wire Wire Line
	7300 5450 7500 5450
Wire Wire Line
	7500 5550 7300 5550
Wire Wire Line
	7300 5550 7300 5650
Wire Wire Line
	8200 4700 8200 4800
Wire Wire Line
	5850 4300 6050 4300
Wire Wire Line
	6050 4200 5850 4200
Wire Wire Line
	5850 4100 6050 4100
Wire Wire Line
	5850 4000 6050 4000
Wire Wire Line
	5850 3900 6050 3900
Wire Wire Line
	7200 4000 7000 4000
Wire Wire Line
	7200 4100 7000 4100
Wire Wire Line
	9250 3900 9450 3900
Wire Wire Line
	9450 4000 9250 4000
Wire Wire Line
	9250 4100 9450 4100
Wire Wire Line
	4800 5750 4800 5950
Wire Wire Line
	4800 5950 4700 5950
Wire Wire Line
	4700 5950 4700 6200
Wire Wire Line
	4800 6200 4800 6050
Wire Wire Line
	4800 6050 4900 6050
Wire Wire Line
	4900 6050 4900 5750
Wire Wire Line
	5000 5750 5000 6150
Wire Wire Line
	5000 6150 4900 6150
Wire Wire Line
	4900 6150 4900 6200
Wire Wire Line
	5200 6200 5200 6150
Wire Wire Line
	5200 6150 5100 6150
Wire Wire Line
	5100 6150 5100 5750
Wire Wire Line
	5200 5750 5200 6050
Wire Wire Line
	5200 6050 5300 6050
Wire Wire Line
	5300 6050 5300 6200
Wire Wire Line
	5300 5750 5300 5950
Wire Wire Line
	5300 5950 5400 5950
Wire Wire Line
	5400 5950 5400 6200
Wire Wire Line
	7300 2100 7500 2100
Wire Wire Line
	7500 2100 7500 2200
$Comp
L GND #PWR5
U 1 1 5400F248
P 4250 3100
F 0 "#PWR5" H 4250 3100 30  0001 C CNN
F 1 "GND" H 4250 3030 30  0001 C CNN
F 2 "" H 4250 3100 60  0000 C CNN
F 3 "" H 4250 3100 60  0000 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2850 3200 3100
Wire Wire Line
	4200 2850 4200 2950
Wire Wire Line
	4200 2950 4300 2950
Wire Wire Line
	4300 2950 4300 2850
Wire Wire Line
	4250 2950 4250 3100
Connection ~ 4250 2950
NoConn ~ 4500 2850
NoConn ~ 4600 2850
NoConn ~ 4700 2850
$Comp
L CONN_3 K3
U 1 1 5400F2ED
P 9550 2300
F 0 "K3" V 9500 2300 50  0000 C CNN
F 1 "CONN_3" V 9600 2300 40  0000 C CNN
F 2 "" H 9550 2300 60  0000 C CNN
F 3 "" H 9550 2300 60  0000 C CNN
	1    9550 2300
	1    0    0    -1  
$EndComp
Text Label 6800 4600 0    60   ~ 0
LED
$Comp
L +5V #PWR12
U 1 1 5400F33B
P 8750 2200
F 0 "#PWR12" H 8750 2290 20  0001 C CNN
F 1 "+5V" H 8750 2290 30  0000 C CNN
F 2 "" H 8750 2200 60  0000 C CNN
F 3 "" H 8750 2200 60  0000 C CNN
	1    8750 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 5400F37B
P 8750 2550
F 0 "#PWR13" H 8750 2550 30  0001 C CNN
F 1 "GND" H 8750 2480 30  0001 C CNN
F 2 "" H 8750 2550 60  0000 C CNN
F 3 "" H 8750 2550 60  0000 C CNN
	1    8750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2200 8750 2300
Wire Wire Line
	8750 2300 9200 2300
Wire Wire Line
	9200 2400 8750 2400
Wire Wire Line
	8750 2400 8750 2550
Text Label 9050 2200 2    60   ~ 0
LED
Wire Wire Line
	9200 2200 9050 2200
$Comp
L R R4
U 1 1 5400F45E
P 6300 4600
F 0 "R4" V 6380 4600 40  0000 C CNN
F 1 "300" V 6307 4601 40  0000 C CNN
F 2 "~" V 6230 4600 30  0000 C CNN
F 3 "~" H 6300 4600 30  0000 C CNN
	1    6300 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 4600 5850 4600
Wire Wire Line
	6550 4600 6800 4600
NoConn ~ 4200 4300
NoConn ~ 4200 4400
NoConn ~ 4200 4500
NoConn ~ 4200 4600
NoConn ~ 4200 4900
NoConn ~ 4200 5000
NoConn ~ 4200 5200
NoConn ~ 5850 5400
NoConn ~ 5850 5300
NoConn ~ 5850 5200
NoConn ~ 5850 5100
NoConn ~ 5850 5000
NoConn ~ 5850 4900
NoConn ~ 5850 4800
NoConn ~ 5850 4700
NoConn ~ 5850 4500
NoConn ~ 5850 4400
Wire Wire Line
	3200 2350 3450 2350
Wire Wire Line
	3450 2050 3250 2050
$Comp
L GND #PWR1
U 1 1 5400F65B
P 2250 2400
F 0 "#PWR1" H 2250 2400 30  0001 C CNN
F 1 "GND" H 2250 2330 30  0001 C CNN
F 2 "" H 2250 2400 60  0000 C CNN
F 3 "" H 2250 2400 60  0000 C CNN
	1    2250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2400 2250 2050
Wire Wire Line
	5700 2050 5350 2050
$Comp
L CONN_2 P1
U 1 1 5400F7F1
P 5700 2800
F 0 "P1" V 5650 2800 40  0000 C CNN
F 1 "CONN_2" V 5750 2800 40  0000 C CNN
F 2 "" H 5700 2800 60  0000 C CNN
F 3 "" H 5700 2800 60  0000 C CNN
	1    5700 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2350 5600 2350
Wire Wire Line
	5600 2350 5600 2450
Wire Wire Line
	5350 2250 5800 2250
Wire Wire Line
	5800 2250 5800 2450
NoConn ~ 9250 4200
$Comp
L VCC #PWR6
U 1 1 5400F962
P 4400 1350
F 0 "#PWR6" H 4400 1450 30  0001 C CNN
F 1 "VCC" H 4400 1450 30  0000 C CNN
F 2 "" H 4400 1350 60  0000 C CNN
F 3 "" H 4400 1350 60  0000 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1350 4400 1500
Wire Wire Line
	3850 4700 4200 4700
Wire Wire Line
	8800 5550 9100 5550
Wire Wire Line
	8800 5450 9100 5450
$Comp
L GND #PWR4
U 1 1 5400FBB4
P 3950 5400
F 0 "#PWR4" H 3950 5400 30  0001 C CNN
F 1 "GND" H 3950 5330 30  0001 C CNN
F 2 "" H 3950 5400 60  0000 C CNN
F 3 "" H 3950 5400 60  0000 C CNN
	1    3950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5300 3950 5300
Wire Wire Line
	3950 5300 3950 5400
$Comp
L R R2
U 1 1 5400FC9D
P 3250 5100
F 0 "R2" V 3330 5100 40  0000 C CNN
F 1 "0" V 3257 5101 40  0000 C CNN
F 2 "~" V 3180 5100 30  0000 C CNN
F 3 "~" H 3250 5100 30  0000 C CNN
	1    3250 5100
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5400FCA3
P 3250 5300
F 0 "R3" V 3330 5300 40  0000 C CNN
F 1 "0" V 3257 5301 40  0000 C CNN
F 2 "~" V 3180 5300 30  0000 C CNN
F 3 "~" H 3250 5300 30  0000 C CNN
	1    3250 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 5050 2750 5300
Wire Wire Line
	2750 5100 3000 5100
Wire Wire Line
	2750 5300 3000 5300
Connection ~ 2750 5100
Wire Wire Line
	3500 5100 4200 5100
Wire Wire Line
	3500 5300 3600 5300
Wire Wire Line
	3600 5300 3600 5500
Wire Wire Line
	3600 5500 4100 5500
Wire Wire Line
	4100 5500 4100 5400
Wire Wire Line
	4100 5400 4200 5400
Wire Wire Line
	7300 1950 8200 1950
Wire Wire Line
	8200 1950 8200 3400
$Comp
L CONN_2 P2
U 1 1 54010B89
P 8850 3050
F 0 "P2" V 8800 3050 40  0000 C CNN
F 1 "CONN_2" V 8900 3050 40  0000 C CNN
F 2 "" H 8850 3050 60  0000 C CNN
F 3 "" H 8850 3050 60  0000 C CNN
	1    8850 3050
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR14
U 1 1 54010B96
P 9400 2850
F 0 "#PWR14" H 9400 2950 30  0001 C CNN
F 1 "VCC" H 9400 2950 30  0000 C CNN
F 2 "" H 9400 2850 60  0000 C CNN
F 3 "" H 9400 2850 60  0000 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 54010B9C
P 9400 3250
F 0 "#PWR15" H 9400 3250 30  0001 C CNN
F 1 "GND" H 9400 3180 30  0001 C CNN
F 2 "" H 9400 3250 60  0000 C CNN
F 3 "" H 9400 3250 60  0000 C CNN
	1    9400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2850 9400 2950
Wire Wire Line
	9400 2950 9200 2950
Wire Wire Line
	9200 3150 9400 3150
Wire Wire Line
	9400 3150 9400 3250
$EndSCHEMATC

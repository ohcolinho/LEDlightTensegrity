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
P 5450 3700
F 0 "IC1" H 5050 4550 60  0000 C CNN
F 1 "ARDUINO_PRO_MINI_5V" V 5450 3850 60  0000 C CNN
F 2 "" H 5450 3700 60  0000 C CNN
F 3 "" H 5450 3700 60  0000 C CNN
	1    5450 3700
	1    0    0    -1  
$EndComp
$Comp
L REDBOTACCEL U1
U 1 1 53FE7A8E
P 3450 3650
F 0 "U1" H 3450 3700 60  0000 C CNN
F 1 "REDBOTACCEL" H 3450 3400 60  0000 C CNN
F 2 "~" H 3450 3650 60  0000 C CNN
F 3 "~" H 3450 3650 60  0000 C CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
$Comp
L NRF24L01_MODULE U?
U 1 1 53FE90D5
P 7600 3050
F 0 "U?" H 7250 3200 60  0000 C CNN
F 1 "NRF24L01_MODULE" H 7600 3050 60  0000 C CNN
F 2 "" H 7600 3050 60  0000 C CNN
F 3 "" H 7600 3050 60  0000 C CNN
	1    7600 3050
	1    0    0    -1  
$EndComp
$Comp
L OKL-T6-W12 U?
U 1 1 53FE95D6
P 3600 2200
F 0 "U?" H 3050 2450 60  0000 C CNN
F 1 "OKL-T6-W12" H 3600 2200 60  0000 C CNN
F 2 "" H 3650 2350 60  0000 C CNN
F 3 "" H 3650 2350 60  0000 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
$Comp
L CJ1117-3.3 U?
U 1 1 54001795
P 6000 1950
F 0 "U?" H 6300 2200 60  0000 C CNN
F 1 "CJ1117-3.3" H 6000 1750 60  0000 C CNN
F 2 "" H 6000 1950 60  0000 C CNN
F 3 "" H 6000 1950 60  0000 C CNN
	1    6000 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC

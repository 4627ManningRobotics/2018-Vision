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
LIBS:ba06cc0wfp-e2ct
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 5
Title "Raspberry Pi HAT"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 3mm_Mounting_Hole H1
U 1 1 5A25655D
P 5650 6000
F 0 "H1" H 5500 6100 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 5650 5850 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 5550 6000 60  0001 C CNN
F 3 "" H 5550 6000 60  0001 C CNN
F 4 "" H -12600 -4650 50  0001 C CNN "MFR"
F 5 "" H -12600 -4650 50  0001 C CNN "MPN"
F 6 "" H -12600 -4650 50  0001 C CNN "SPR"
F 7 "" H -12600 -4650 50  0001 C CNN "SPN"
F 8 "" H -12600 -4650 50  0001 C CNN "SPURL"
	1    5650 6000
	1    0    0    -1  
$EndComp
$Comp
L 3mm_Mounting_Hole H3
U 1 1 5A25655E
P 6650 6000
F 0 "H3" H 6500 6100 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 6650 5850 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 6550 6000 60  0001 C CNN
F 3 "" H 6550 6000 60  0001 C CNN
F 4 "" H -12600 -4650 50  0001 C CNN "MFR"
F 5 "" H -12600 -4650 50  0001 C CNN "MPN"
F 6 "" H -12600 -4650 50  0001 C CNN "SPR"
F 7 "" H -12600 -4650 50  0001 C CNN "SPN"
F 8 "" H -12600 -4650 50  0001 C CNN "SPURL"
	1    6650 6000
	1    0    0    -1  
$EndComp
$Comp
L 3mm_Mounting_Hole H2
U 1 1 5A25655F
P 5650 6550
F 0 "H2" H 5500 6650 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 5650 6400 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 5550 6550 60  0001 C CNN
F 3 "" H 5550 6550 60  0001 C CNN
F 4 "" H -12600 -4650 50  0001 C CNN "MFR"
F 5 "" H -12600 -4650 50  0001 C CNN "MPN"
F 6 "" H -12600 -4650 50  0001 C CNN "SPR"
F 7 "" H -12600 -4650 50  0001 C CNN "SPN"
F 8 "" H -12600 -4650 50  0001 C CNN "SPURL"
	1    5650 6550
	1    0    0    -1  
$EndComp
$Comp
L 3mm_Mounting_Hole H4
U 1 1 5A256560
P 6700 6550
F 0 "H4" H 6550 6650 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 6700 6400 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 6600 6550 60  0001 C CNN
F 3 "" H 6600 6550 60  0001 C CNN
F 4 "" H -12600 -4650 50  0001 C CNN "MFR"
F 5 "" H -12600 -4650 50  0001 C CNN "MPN"
F 6 "" H -12600 -4650 50  0001 C CNN "SPR"
F 7 "" H -12600 -4650 50  0001 C CNN "SPN"
F 8 "" H -12600 -4650 50  0001 C CNN "SPURL"
	1    6700 6550
	1    0    0    -1  
$EndComp
$Comp
L OX40HAT J1
U 1 1 5A256561
P 2600 2250
F 0 "J1" H 2950 2350 50  0000 C CNN
F 1 "40HAT" H 2300 2350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x20" H 2600 2450 50  0000 C CNN
F 3 "" H 1900 2250 50  0000 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 J2
U 1 1 5A256562
P 6100 4650
F 0 "J2" H 6100 4800 50  0000 C CNN
F 1 "CONN_02X02" H 6100 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02" H 6100 3450 50  0001 C CNN
F 3 "" H 6100 3450 50  0000 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
Text Label 5250 4600 0    60   ~ 0
P3V3
Text Label 5250 4700 0    60   ~ 0
P5V
Wire Wire Line
	5250 4600 5850 4600
Wire Wire Line
	5250 4700 5850 4700
Text Label 6950 4600 2    60   ~ 0
P3V3_HAT
Text Label 6950 4700 2    60   ~ 0
P5V_HAT
Wire Wire Line
	6350 4600 6950 4600
Wire Wire Line
	6350 4700 6950 4700
Text Notes 5450 4250 0    60   ~ 0
FLEXIBLE POWER SELECTION
$Comp
L R R9
U 1 1 5A256571
P 6100 4300
F 0 "R9" V 6180 4300 50  0000 C CNN
F 1 "DNP" V 6100 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 4300 50  0001 C CNN
F 3 "" H 6100 4300 50  0001 C CNN
F 4 "Yageo" H -9450 -10050 50  0001 C CNN "MFR"
F 5 "RC0402JR-0722RL" H -9450 -10050 50  0001 C CNN "MPN"
F 6 "Digikey" H -9450 -10050 50  0001 C CNN "SPR"
F 7 "311-22JRCT-ND" H -9450 -10050 50  0001 C CNN "SPN"
F 8 "" H -9450 -10050 50  0001 C CNN "SPURL"
	1    6100 4300
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5A256572
P 6100 4950
F 0 "R10" V 6180 4950 50  0000 C CNN
F 1 "DNP" V 6100 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 4950 50  0001 C CNN
F 3 "" H 6100 4950 50  0001 C CNN
F 4 "Yageo" H -9450 -9400 50  0001 C CNN "MFR"
F 5 "RC0402JR-0722RL" H -9450 -9400 50  0001 C CNN "MPN"
F 6 "Digikey" H -9450 -9400 50  0001 C CNN "SPR"
F 7 "311-22JRCT-ND" H -9450 -9400 50  0001 C CNN "SPN"
F 8 "" H -9450 -9400 50  0001 C CNN "SPURL"
	1    6100 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4700 5750 4950
Wire Wire Line
	5750 4950 5950 4950
Connection ~ 5750 4700
Wire Wire Line
	6250 4950 6400 4950
Wire Wire Line
	6400 4950 6400 4700
Connection ~ 6400 4700
Wire Wire Line
	6400 4600 6400 4300
Wire Wire Line
	6400 4300 6250 4300
Connection ~ 6400 4600
Wire Wire Line
	5950 4300 5750 4300
Wire Wire Line
	5750 4300 5750 4600
Connection ~ 5750 4600
Text Notes 5300 5700 0    118  ~ 24
Mounting Holes
Text Notes 1650 2000 0    118  ~ 24
40-Pin HAT Connector
Text Label 800  4150 0    60   ~ 0
GND
Wire Wire Line
	2000 4150 800  4150
Text Label 800  3550 0    60   ~ 0
SDA
Wire Wire Line
	2000 3550 800  3550
Text Label 800  3450 0    60   ~ 0
GND
Wire Wire Line
	2000 3450 800  3450
Text Label 800  2650 0    60   ~ 0
GND
Wire Wire Line
	2000 2650 800  2650
Text Label 800  2250 0    60   ~ 0
P3V3_HAT
Wire Wire Line
	2000 2250 800  2250
Wire Wire Line
	3200 2850 4400 2850
Wire Wire Line
	3200 3150 4400 3150
Wire Wire Line
	3200 3550 4400 3550
Wire Wire Line
	3200 3650 4400 3650
Wire Wire Line
	3200 3850 4400 3850
Text Label 4400 2850 2    60   ~ 0
GND
Text Label 4400 3150 2    60   ~ 0
GND
Text Label 4400 3650 2    60   ~ 0
GND
Text Label 4400 3550 2    60   ~ 0
SCL
Text Label 4400 3850 2    60   ~ 0
GND
Text Label 4400 2450 2    60   ~ 0
GND
Wire Wire Line
	3200 2450 4400 2450
Wire Wire Line
	3200 2350 4400 2350
Wire Wire Line
	3200 2250 4400 2250
Text Notes 7150 4950 0    60   ~ 0
HAT spec indicates to NEVER\npower the 3.3V pins on the Raspberry Pi \nfrom the HAT header. Only connect the 3.3V\npower from the Pi if the HAT does not have\n3.3V on board.\n\nIF you are designing a board that could\neither be powered by the Pi or from the HAT\nthe jumpers here can be used.\n\nIn most cases, either design the HAT \nto provide the 5V to the Pi and use the\nprotection circuit above OR power the\nHAT from the Pi and directly connect\nthe P3V3 and P5V to the P3V3_HAT and P5V_HAT\npins.
Text Notes 850  1250 0    100  ~ 0
This is based on the official Raspberry Pi spec to be able to call an extension board a HAT.\nhttps://github.com/raspberrypi/hats/blob/master/designguide.md
Text HLabel 5250 4700 0    60   Input ~ 0
+5V
Text HLabel 1145 2750 0    60   Input ~ 0
LEDEnable
Wire Wire Line
	1145 2750 2000 2750
NoConn ~ 2000 2350
NoConn ~ 2000 2450
NoConn ~ 2000 2550
NoConn ~ 2000 2950
NoConn ~ 2000 3050
NoConn ~ 2000 3150
NoConn ~ 2000 3250
NoConn ~ 2000 3350
NoConn ~ 2000 3650
NoConn ~ 2000 3750
NoConn ~ 2000 3850
NoConn ~ 2000 3950
NoConn ~ 2000 4050
NoConn ~ 3200 4150
NoConn ~ 3200 4050
NoConn ~ 3200 3950
NoConn ~ 3200 3750
NoConn ~ 3200 3450
NoConn ~ 3200 3350
NoConn ~ 3200 3250
NoConn ~ 3200 3050
NoConn ~ 3200 2950
NoConn ~ 3200 2750
NoConn ~ 3200 2650
NoConn ~ 3200 2550
Text Label 4400 2350 2    60   ~ 0
P5V_HAT
Text Label 4400 2250 2    60   ~ 0
P5V_HAT
Text HLabel 1140 2850 0    60   Input ~ 0
PiDisable
Wire Wire Line
	1140 2850 2000 2850
$EndSCHEMATC

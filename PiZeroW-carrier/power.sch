EESchema Schematic File Version 2
LIBS:PiZeroW-carrier-rescue
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
LIBS:raspberrypi_hat
LIBS:PiZeroW-carrier-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L BA06CC0WFP-E2CT U2
U 1 1 5A2176F1
P 8765 2595
F 0 "U2" H 8615 2345 50  0000 C CNN
F 1 "BA06CC0WFP-E2CT" H 8765 2795 50  0000 C CNN
F 2 "lib_fp:TO-252-5" H 8765 2695 50  0000 C CIN
F 3 "" H 8765 2595 50  0000 C CNN
	1    8765 2595
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR01
U 1 1 5A254432
P 8015 2240
F 0 "#PWR01" H 8015 2090 50  0001 C CNN
F 1 "+BATT" H 8015 2380 50  0000 C CNN
F 2 "" H 8015 2240 50  0000 C CNN
F 3 "" H 8015 2240 50  0000 C CNN
	1    8015 2240
	1    0    0    -1  
$EndComp
Wire Wire Line
	8015 2240 8015 2545
Wire Wire Line
	8015 2545 8315 2545
Wire Wire Line
	7630 2695 8315 2695
Wire Wire Line
	7630 2695 7630 2210
$Comp
L GND #PWR02
U 1 1 5A25448E
P 8765 2985
F 0 "#PWR02" H 8765 2735 50  0001 C CNN
F 1 "GND" H 8765 2835 50  0000 C CNN
F 2 "" H 8765 2985 50  0000 C CNN
F 3 "" H 8765 2985 50  0000 C CNN
	1    8765 2985
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A2544A4
P 9265 2980
F 0 "#PWR03" H 9265 2730 50  0001 C CNN
F 1 "GND" H 9265 2830 50  0000 C CNN
F 2 "" H 9265 2980 50  0000 C CNN
F 3 "" H 9265 2980 50  0000 C CNN
	1    9265 2980
	1    0    0    -1  
$EndComp
Wire Wire Line
	9265 2695 9265 2980
Wire Wire Line
	8765 2895 8765 2985
Wire Wire Line
	9215 2545 9330 2545
Wire Wire Line
	9330 2545 9330 2185
Text HLabel 9330 2185 0    60   Input ~ 0
+6V
Text HLabel 8015 2270 0    60   Input ~ 0
Batt
Text HLabel 9265 2925 0    60   Input ~ 0
GND
$Comp
L BA06CC0WFP-E2CT U1
U 1 1 5A257C1F
P 4630 2625
F 0 "U1" H 4480 2375 50  0000 C CNN
F 1 "BA50BC0WFP-E2CT" H 4630 2825 50  0000 C CNN
F 2 "lib_fp:TO-252-5" H 4630 2725 50  0000 C CIN
F 3 "" H 4630 2625 50  0000 C CNN
	1    4630 2625
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 5A257C25
P 3880 2270
F 0 "#PWR04" H 3880 2120 50  0001 C CNN
F 1 "+BATT" H 3880 2410 50  0000 C CNN
F 2 "" H 3880 2270 50  0000 C CNN
F 3 "" H 3880 2270 50  0000 C CNN
	1    3880 2270
	1    0    0    -1  
$EndComp
Wire Wire Line
	3880 2270 3880 2575
Wire Wire Line
	3880 2575 4180 2575
Wire Wire Line
	3495 2725 4180 2725
$Comp
L GND #PWR05
U 1 1 5A257C30
P 4630 3015
F 0 "#PWR05" H 4630 2765 50  0001 C CNN
F 1 "GND" H 4630 2865 50  0000 C CNN
F 2 "" H 4630 3015 50  0000 C CNN
F 3 "" H 4630 3015 50  0000 C CNN
	1    4630 3015
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A257C36
P 5130 3010
F 0 "#PWR06" H 5130 2760 50  0001 C CNN
F 1 "GND" H 5130 2860 50  0000 C CNN
F 2 "" H 5130 3010 50  0000 C CNN
F 3 "" H 5130 3010 50  0000 C CNN
	1    5130 3010
	1    0    0    -1  
$EndComp
Wire Wire Line
	5130 2725 5130 3010
Wire Wire Line
	4630 2925 4630 3015
Wire Wire Line
	5080 2575 5190 2575
Wire Wire Line
	5190 2575 5190 2215
Text HLabel 3495 2725 0    60   Input ~ 0
PiDisable
Text HLabel 5190 1915 2    60   Input ~ 0
+5V
Text HLabel 3880 2300 0    60   Input ~ 0
Batt
Text HLabel 5130 2955 0    60   Input ~ 0
GND
$Comp
L R R3
U 1 1 5A257C7E
P 7630 2060
F 0 "R3" V 7710 2060 50  0000 C CNN
F 1 "10k" V 7630 2060 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7560 2060 50  0001 C CNN
F 3 "" H 7630 2060 50  0000 C CNN
	1    7630 2060
	1    0    0    -1  
$EndComp
Wire Wire Line
	7985 2695 7985 2975
Connection ~ 7985 2695
$Comp
L R R1
U 1 1 5A257E80
P 3495 1655
F 0 "R1" V 3575 1655 50  0000 C CNN
F 1 "150" V 3495 1655 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3425 1655 50  0001 C CNN
F 3 "" H 3495 1655 50  0000 C CNN
	1    3495 1655
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR07
U 1 1 5A257F41
P 3495 1405
F 0 "#PWR07" H 3495 1255 50  0001 C CNN
F 1 "+BATT" H 3495 1545 50  0000 C CNN
F 2 "" H 3495 1405 50  0000 C CNN
F 3 "" H 3495 1405 50  0000 C CNN
	1    3495 1405
	1    0    0    -1  
$EndComp
Wire Wire Line
	3495 1405 3495 1505
$Comp
L R R2
U 1 1 5A257FAE
P 3495 3195
F 0 "R2" V 3575 3195 50  0000 C CNN
F 1 "10k" V 3495 3195 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3425 3195 50  0001 C CNN
F 3 "" H 3495 3195 50  0000 C CNN
	1    3495 3195
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5A258078
P 3495 2105
F 0 "SW1" H 3360 2220 50  0000 C CNN
F 1 "SW_PUSH" H 3485 2025 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_TL3342" H 3495 2105 50  0001 C CNN
F 3 "" H 3495 2105 50  0000 C CNN
	1    3495 2105
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5A2583C3
P 3495 3440
F 0 "#PWR08" H 3495 3190 50  0001 C CNN
F 1 "GND" H 3495 3290 50  0000 C CNN
F 2 "" H 3495 3440 50  0000 C CNN
F 3 "" H 3495 3440 50  0000 C CNN
	1    3495 3440
	1    0    0    -1  
$EndComp
Wire Wire Line
	3495 3345 3495 3440
$Comp
L +BATT #PWR09
U 1 1 5A268E4D
P 7630 1810
F 0 "#PWR09" H 7630 1660 50  0001 C CNN
F 1 "+BATT" H 7630 1950 50  0000 C CNN
F 2 "" H 7630 1810 50  0000 C CNN
F 3 "" H 7630 1810 50  0000 C CNN
	1    7630 1810
	1    0    0    -1  
$EndComp
Wire Wire Line
	7630 1810 7630 1910
Wire Wire Line
	3495 2405 3495 3045
Connection ~ 3495 2725
$Comp
L BARREL_JACK CON1
U 1 1 5A269E3E
P 5405 4940
F 0 "CON1" H 5405 5190 50  0000 C CNN
F 1 "BARREL_JACK" H 5405 4740 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 5405 4940 50  0001 C CNN
F 3 "" H 5405 4940 50  0000 C CNN
	1    5405 4940
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A26A00C
P 5870 5135
F 0 "#PWR010" H 5870 4885 50  0001 C CNN
F 1 "GND" H 5870 4985 50  0000 C CNN
F 2 "" H 5870 5135 50  0000 C CNN
F 3 "" H 5870 5135 50  0000 C CNN
	1    5870 5135
	1    0    0    -1  
$EndComp
Wire Wire Line
	5870 4940 5870 5135
Wire Wire Line
	5705 5040 5870 5040
Wire Wire Line
	5705 4940 5870 4940
Connection ~ 5870 5040
$Comp
L +BATT #PWR011
U 1 1 5A26A0AC
P 5870 4670
F 0 "#PWR011" H 5870 4520 50  0001 C CNN
F 1 "+BATT" H 5870 4810 50  0000 C CNN
F 2 "" H 5870 4670 50  0000 C CNN
F 3 "" H 5870 4670 50  0000 C CNN
	1    5870 4670
	1    0    0    -1  
$EndComp
Wire Wire Line
	5705 4840 5870 4840
Wire Wire Line
	5870 4840 5870 4670
$Comp
L D_Schottky D6
U 1 1 5A293905
P 5190 2065
F 0 "D6" H 5190 2165 50  0000 C CNN
F 1 "D_Schottky" H 5190 1965 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 5190 2065 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/diodes-incorporated/B130-13-F/B130-FDICT-ND/815318" H 5190 2065 50  0001 C CNN
	1    5190 2065
	0    1    1    0   
$EndComp
Text HLabel 7985 2975 0    60   Input ~ 0
LEDEnable
$EndSCHEMATC

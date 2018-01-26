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
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1145 1200 755  1140
U 5A21580E
F0 "Power" 60
F1 "power.sch" 60
F2 "Batt" I R 1900 2210 60 
F3 "GND" I R 1900 1740 60 
F4 "+6V" I R 1900 1300 60 
F5 "+5V" I R 1900 1435 60 
F6 "LEDEnable" I R 1900 2082 60 
F7 "PiDisable" O R 1900 1916 60 
$EndSheet
$Sheet
S 2360 1200 850  1125
U 5A21582D
F0 "Leds" 60
F1 "leds.sch" 60
F2 "+6V" I R 3210 1295 60 
F3 "GND" I R 3210 1745 60 
$EndSheet
$Sheet
S 3695 1210 935  1305
U 5A256355
F0 "raspberrypi-gpio-40pin" 60
F1 "raspberrypi-gpio-40pin.sch" 60
F2 "+5V" I R 4630 1400 60 
F3 "GND" I R 4630 1745 60 
F4 "PiDisable" O R 4630 1917 60 
F5 "LEDEnable" I R 4630 2090 60 
$EndSheet
$Sheet
S 5860 1200 1020 1320
U 5A26AECC
F0 "USB" 60
F1 "USB.sch" 60
$EndSheet
Wire Wire Line
	1900 1740 2179 1740
Wire Wire Line
	2179 1740 2178 2420
Wire Wire Line
	2178 2420 3268 2420
Wire Wire Line
	3268 2420 3268 1745
Wire Wire Line
	3268 1745 3210 1745
Wire Wire Line
	4630 2090 4686 2090
Wire Wire Line
	4686 2090 4686 2582
Wire Wire Line
	4686 2582 1945 2582
Wire Wire Line
	1945 2582 1945 2082
Wire Wire Line
	1945 2082 1900 2082
Wire Wire Line
	4630 1917 5118 1917
Wire Wire Line
	5118 1917 5118 1107
Wire Wire Line
	5118 1107 3424 1107
Wire Wire Line
	3424 1107 3424 2484
Wire Wire Line
	3424 2484 2036 2484
Wire Wire Line
	2036 2484 2037 1916
Wire Wire Line
	2037 1916 1900 1916
$EndSCHEMATC

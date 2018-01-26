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
F6 "PiDisable" I R 1900 1885 60 
F7 "LEDEnable" I R 1900 2075 60 
$EndSheet
$Sheet
S 2360 1200 850  1125
U 5A21582D
F0 "Leds" 60
F1 "leds.sch" 60
F2 "+6V" I R 3210 1300 60 
F3 "GND" I R 3210 1725 60 
$EndSheet
$Sheet
S 3695 1210 935  1305
U 5A256355
F0 "raspberrypi-gpio-40pin" 60
F1 "raspberrypi-gpio-40pin.sch" 60
F2 "PiDisable" I R 4630 1910 60 
F3 "LEDEnable" I R 4630 2055 60 
$EndSheet
$Sheet
S 5860 1200 1020 1320
U 5A26AECC
F0 "USB" 60
F1 "USB.sch" 60
$EndSheet
Wire Wire Line
	2295 1885 2290 2695
Wire Wire Line
	2290 2695 4860 2695
Wire Wire Line
	4860 2695 4860 1910
Wire Wire Line
	4860 1910 4630 1910
Wire Wire Line
	1900 2075 2235 2075
Wire Wire Line
	2235 2075 2235 2740
Wire Wire Line
	2235 2740 4925 2740
Wire Wire Line
	4925 2740 4925 2055
Wire Wire Line
	4925 2055 4630 2055
Wire Wire Line
	3210 1725 3305 1730
Wire Wire Line
	3305 1730 3305 2420
Wire Wire Line
	3305 2420 2185 2420
Wire Wire Line
	2185 2420 2185 1740
Wire Wire Line
	2185 1740 1900 1740
Wire Wire Line
	2295 1885 1900 1885
$EndSCHEMATC

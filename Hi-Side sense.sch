EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 "https://www.ti.com/lit/an/snla140d/snla140d.pdf"
Comment2 "https://www.allaboutcircuits.com/technical-articles/how-to-monitor-current-with-an-op-amp-a-bjt-and-three-resistors/"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:TL071 U?
U 1 1 60D9F29C
P 6200 2350
F 0 "U?" H 6544 2396 50  0000 L CNN
F 1 "TL071" H 6544 2305 50  0000 L CNN
F 2 "" H 6250 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 2500 50  0001 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60DA05AA
P 5750 1750
F 0 "R?" H 5820 1796 50  0000 L CNN
F 1 "R1" H 5820 1705 50  0000 L CNN
F 2 "" V 5680 1750 50  0001 C CNN
F 3 "~" H 5750 1750 50  0001 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_EBC Q?
U 1 1 60DA1099
P 5500 2900
F 0 "Q?" H 5691 2854 50  0000 L CNN
F 1 "Q_PNP_EBC" H 5691 2945 50  0000 L CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60DA1B43
P 5400 2050
F 0 "R?" H 5470 2096 50  0000 L CNN
F 1 "R2" H 5470 2005 50  0000 L CNN
F 2 "" V 5330 2050 50  0001 C CNN
F 3 "~" H 5400 2050 50  0001 C CNN
	1    5400 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60DA1F14
P 5400 3350
F 0 "R?" H 5470 3396 50  0000 L CNN
F 1 "R3" H 5470 3305 50  0000 L CNN
F 2 "" V 5330 3350 50  0001 C CNN
F 3 "~" H 5400 3350 50  0001 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1900 5750 1950
Wire Wire Line
	5750 2250 5900 2250
Wire Wire Line
	5750 1950 6750 1950
Connection ~ 5750 1950
Wire Wire Line
	5750 1950 5750 2250
Text Label 6750 1950 0    50   ~ 0
Vout
Wire Wire Line
	5750 1600 5750 1500
Wire Wire Line
	5750 1350 4550 1350
Text Label 4550 1350 0    50   ~ 0
Vin
Wire Wire Line
	5750 1500 5400 1500
Wire Wire Line
	5400 1500 5400 1900
Connection ~ 5750 1500
Wire Wire Line
	5750 1500 5750 1350
Wire Wire Line
	5400 2200 5400 2450
Wire Wire Line
	5400 2450 5900 2450
Wire Wire Line
	5400 2450 5400 2700
Connection ~ 5400 2450
Wire Wire Line
	5700 2900 6550 2900
Wire Wire Line
	6550 2900 6550 2350
Wire Wire Line
	6550 2350 6500 2350
Wire Wire Line
	5400 3100 5400 3150
Wire Wire Line
	5400 3150 5850 3150
Connection ~ 5400 3150
Wire Wire Line
	5400 3150 5400 3200
Text Label 5850 3150 0    50   ~ 0
Vsens
Wire Wire Line
	5400 3500 5400 3700
Text Label 5400 3700 0    50   ~ 0
GND
Text Notes 6500 3500 0    50   ~ 0
Opamp input and output range must include VCC; does not need to include gnd. TL0x1 good choice
Text Notes 4500 2700 0    50   ~ 0
can also use a pfet...
Text Notes 4650 4200 0    50   ~ 0
vsens=iload/(r2/r1)*r3 = (R1*R3)/R2*iLoad
$EndSCHEMATC

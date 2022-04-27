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
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Timer:LM555xM U1
U 1 1 62069518
P 5250 3550
F 0 "U1" H 5250 4131 50  0000 C CNN
F 1 "LM555xM" H 5250 4040 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6100 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 6100 3150 50  0001 C CNN
	1    5250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 4500 3350
Wire Wire Line
	4500 3350 4500 4250
Wire Wire Line
	4500 4250 5950 4250
Wire Wire Line
	5950 4250 5950 3800
Wire Wire Line
	5750 3800 5750 3750
Wire Wire Line
	4750 3750 4600 3750
$Comp
L Device:R_US R1
U 1 1 6206A990
P 5950 3300
F 0 "R1" H 6018 3346 50  0000 L CNN
F 1 "1k" H 6018 3255 50  0000 L CNN
F 2 "" V 5990 3290 50  0001 C CNN
F 3 "~" H 5950 3300 50  0001 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3550 5750 3500
Wire Wire Line
	5750 3500 5950 3500
Wire Wire Line
	5950 3150 5950 2400
$Comp
L Device:R_US R2
U 1 1 6206B2AF
P 5950 3650
F 0 "R2" H 6018 3696 50  0000 L CNN
F 1 "470k" H 6018 3605 50  0000 L CNN
F 2 "" V 5990 3640 50  0001 C CNN
F 3 "~" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
Connection ~ 5950 3500
Wire Wire Line
	5950 3500 5950 3450
Connection ~ 5950 3800
Wire Wire Line
	5950 3800 5750 3800
$Comp
L Device:C_Small C1
U 1 1 6206BD2B
P 5950 4700
F 0 "C1" H 6042 4746 50  0000 L CNN
F 1 "10u" H 6042 4655 50  0000 L CNN
F 2 "" H 5950 4700 50  0001 C CNN
F 3 "~" H 5950 4700 50  0001 C CNN
	1    5950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 6206D446
P 5950 2400
F 0 "#PWR07" H 5950 2250 50  0001 C CNN
F 1 "VCC" H 5965 2573 50  0000 C CNN
F 2 "" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 6206DB48
P 6350 3000
F 0 "D3" H 6343 2745 50  0000 C CNN
F 1 "LED" H 6343 2836 50  0000 C CNN
F 2 "" H 6350 3000 50  0001 C CNN
F 3 "~" H 6350 3000 50  0001 C CNN
	1    6350 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 6206FBE9
P 6600 3200
F 0 "R3" H 6668 3246 50  0000 L CNN
F 1 "1k" H 6668 3155 50  0000 L CNN
F 2 "" V 6640 3190 50  0001 C CNN
F 3 "~" H 6600 3200 50  0001 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6206FF4F
P 6600 3400
F 0 "#PWR09" H 6600 3150 50  0001 C CNN
F 1 "GND" H 6605 3227 50  0000 C CNN
F 2 "" H 6600 3400 50  0001 C CNN
F 3 "" H 6600 3400 50  0001 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3350 5750 3000
Wire Wire Line
	5750 3000 6200 3000
Wire Wire Line
	6500 3000 6600 3000
Wire Wire Line
	6600 3000 6600 3050
Wire Wire Line
	6600 3350 6600 3400
$Comp
L power:GND #PWR06
U 1 1 620749B8
P 5250 4000
F 0 "#PWR06" H 5250 3750 50  0001 C CNN
F 1 "GND" H 5255 3827 50  0000 C CNN
F 2 "" H 5250 4000 50  0001 C CNN
F 3 "" H 5250 4000 50  0001 C CNN
	1    5250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4000 5250 3950
$Comp
L power:VCC #PWR05
U 1 1 62075041
P 5250 2400
F 0 "#PWR05" H 5250 2250 50  0001 C CNN
F 1 "VCC" H 5265 2573 50  0000 C CNN
F 2 "" H 5250 2400 50  0001 C CNN
F 3 "" H 5250 2400 50  0001 C CNN
	1    5250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2400 5250 3150
$Comp
L power:VCC #PWR04
U 1 1 62075C62
P 4600 2400
F 0 "#PWR04" H 4600 2250 50  0001 C CNN
F 1 "VCC" H 4615 2573 50  0000 C CNN
F 2 "" H 4600 2400 50  0001 C CNN
F 3 "" H 4600 2400 50  0001 C CNN
	1    4600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2400 4600 3750
$Comp
L Device:R_POT_US RV1
U 1 1 6207708C
P 4200 4650
F 0 "RV1" H 4132 4604 50  0000 R CNN
F 1 "1M" H 4132 4695 50  0000 R CNN
F 2 "" H 4200 4650 50  0001 C CNN
F 3 "~" H 4200 4650 50  0001 C CNN
	1    4200 4650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 620796B7
P 4200 5050
F 0 "#PWR02" H 4200 4800 50  0001 C CNN
F 1 "GND" H 4205 4877 50  0000 C CNN
F 2 "" H 4200 5050 50  0001 C CNN
F 3 "" H 4200 5050 50  0001 C CNN
	1    4200 5050
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Capacitance D2
U 1 1 6207A221
P 4500 4850
F 0 "D2" V 4400 4700 50  0000 C CNN
F 1 "i149" V 4500 4686 50  0000 C CNN
F 2 "" H 4500 4850 50  0001 C CNN
F 3 "~" H 4500 4850 50  0001 C CNN
	1    4500 4850
	0    -1   1    0   
$EndComp
Wire Wire Line
	4350 4650 4500 4650
Wire Wire Line
	4500 4650 4500 4700
Wire Wire Line
	4500 5050 4500 5000
$Comp
L power:VCC #PWR01
U 1 1 6208264F
P 4200 2400
F 0 "#PWR01" H 4200 2250 50  0001 C CNN
F 1 "VCC" H 4215 2573 50  0000 C CNN
F 2 "" H 4200 2400 50  0001 C CNN
F 3 "" H 4200 2400 50  0001 C CNN
	1    4200 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 2400 4200 4500
Wire Wire Line
	4200 4800 4200 5050
$Comp
L power:GND #PWR03
U 1 1 62099AB7
P 4500 5050
F 0 "#PWR03" H 4500 4800 50  0001 C CNN
F 1 "GND" H 4505 4877 50  0000 C CNN
F 2 "" H 4500 5050 50  0001 C CNN
F 3 "" H 4500 5050 50  0001 C CNN
	1    4500 5050
	-1   0    0    -1  
$EndComp
Text Notes 3650 5700 0    50   ~ 0
Doesn't work - at least, not because the varactors are doing anything\nhttps://www.instructables.com/Varactor-Controlled-555-Oscillator-and-Varactor-Di/
$Comp
L power:GND #PWR08
U 1 1 620BF07B
P 5950 5050
F 0 "#PWR08" H 5950 4800 50  0001 C CNN
F 1 "GND" H 5955 4877 50  0000 C CNN
F 2 "" H 5950 5050 50  0001 C CNN
F 3 "" H 5950 5050 50  0001 C CNN
	1    5950 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 5050 5950 4800
Wire Wire Line
	5950 4600 5950 4250
Connection ~ 5950 4250
$Comp
L Device:D_Capacitance D1
U 1 1 620C0523
P 4500 4450
F 0 "D1" V 4546 4530 50  0000 L CNN
F 1 "i149" V 4455 4530 50  0000 L CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "~" H 4500 4450 50  0001 C CNN
	1    4500 4450
	0    1    -1   0   
$EndComp
Wire Wire Line
	4500 4300 4500 4250
Connection ~ 4500 4250
Wire Wire Line
	4500 4600 4500 4650
Connection ~ 4500 4650
$EndSCHEMATC
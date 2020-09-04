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
L Device:R_US R1
U 1 1 5F5278DF
P 4150 3400
F 0 "R1" H 4218 3446 50  0000 L CNN
F 1 "100k" H 4218 3355 50  0000 L CNN
F 2 "" V 4190 3390 50  0001 C CNN
F 3 "~" H 4150 3400 50  0001 C CNN
	1    4150 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F528AB7
P 5900 3700
F 0 "R4" V 5695 3700 50  0000 C CNN
F 1 "1k" V 5786 3700 50  0000 C CNN
F 2 "" V 5940 3690 50  0001 C CNN
F 3 "~" H 5900 3700 50  0001 C CNN
	1    5900 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F528D16
P 5000 3400
F 0 "R2" H 5068 3446 50  0000 L CNN
F 1 "100k" H 5068 3355 50  0000 L CNN
F 2 "" V 5040 3390 50  0001 C CNN
F 3 "~" H 5000 3400 50  0001 C CNN
	1    5000 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F529405
P 5600 3400
F 0 "R3" H 5668 3446 50  0000 L CNN
F 1 "3.3M" H 5668 3355 50  0000 L CNN
F 2 "" V 5640 3390 50  0001 C CNN
F 3 "~" H 5600 3400 50  0001 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F529C87
P 4750 4150
F 0 "C1" H 4865 4196 50  0000 L CNN
F 1 "10n" H 4865 4105 50  0000 L CNN
F 2 "" H 4788 4000 50  0001 C CNN
F 3 "~" H 4750 4150 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F52A19B
P 6200 3850
F 0 "C2" H 6315 3896 50  0000 L CNN
F 1 "220n" H 6315 3805 50  0000 L CNN
F 2 "" H 6238 3700 50  0001 C CNN
F 3 "~" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q3
U 1 1 5F52B0C6
P 5500 3900
F 0 "Q3" H 5691 3946 50  0000 L CNN
F 1 "BC547" H 5691 3855 50  0000 L CNN
F 2 "" H 5700 4000 50  0001 C CNN
F 3 "~" H 5500 3900 50  0001 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 5F52BD7A
P 4450 3350
F 0 "Q1" V 4792 3350 50  0000 C CNN
F 1 "AO3401" V 4701 3350 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	0    1    -1   0   
$EndComp
$Comp
L Device:Q_NPN_CBE Q2
U 1 1 5F52A5E8
P 4550 3900
F 0 "Q2" H 4741 3946 50  0000 L CNN
F 1 "BC547" H 4741 3855 50  0000 L CNN
F 2 "" H 4750 4000 50  0001 C CNN
F 3 "~" H 4550 3900 50  0001 C CNN
	1    4550 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 3250 4250 3250
Wire Wire Line
	4150 3550 4450 3550
Wire Wire Line
	4450 3550 4450 3700
Connection ~ 4450 3550
Wire Wire Line
	4750 3900 4750 4000
Wire Wire Line
	4750 3900 5000 3900
Connection ~ 4750 3900
Wire Wire Line
	4650 3250 5000 3250
Wire Wire Line
	5600 3700 5750 3700
Connection ~ 5600 3700
Wire Wire Line
	6050 3700 6200 3700
Wire Wire Line
	5600 3700 5600 3550
$Comp
L power:VCC #PWR04
U 1 1 5F564FF2
P 5600 2800
F 0 "#PWR04" H 5600 2650 50  0001 C CNN
F 1 "VCC" H 5617 2973 50  0000 C CNN
F 2 "" H 5600 2800 50  0001 C CNN
F 3 "" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5F5682DB
P 4150 2800
F 0 "#PWR01" H 4150 2650 50  0001 C CNN
F 1 "VCC" H 4167 2973 50  0000 C CNN
F 2 "" H 4150 2800 50  0001 C CNN
F 3 "" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5600 3250
Wire Wire Line
	4150 2800 4150 3250
Connection ~ 4150 3250
$Comp
L power:Earth #PWR02
U 1 1 5F5691A7
P 4450 4500
F 0 "#PWR02" H 4450 4250 50  0001 C CNN
F 1 "Earth" H 4450 4350 50  0001 C CNN
F 2 "" H 4450 4500 50  0001 C CNN
F 3 "~" H 4450 4500 50  0001 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR03
U 1 1 5F569DEF
P 4750 4500
F 0 "#PWR03" H 4750 4250 50  0001 C CNN
F 1 "Earth" H 4750 4350 50  0001 C CNN
F 2 "" H 4750 4500 50  0001 C CNN
F 3 "~" H 4750 4500 50  0001 C CNN
	1    4750 4500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR05
U 1 1 5F56A442
P 5600 4500
F 0 "#PWR05" H 5600 4250 50  0001 C CNN
F 1 "Earth" H 5600 4350 50  0001 C CNN
F 2 "" H 5600 4500 50  0001 C CNN
F 3 "~" H 5600 4500 50  0001 C CNN
	1    5600 4500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR06
U 1 1 5F56B6C5
P 6200 4500
F 0 "#PWR06" H 6200 4250 50  0001 C CNN
F 1 "Earth" H 6200 4350 50  0001 C CNN
F 2 "" H 6200 4500 50  0001 C CNN
F 3 "~" H 6200 4500 50  0001 C CNN
	1    6200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4000 6200 4500
Wire Wire Line
	5600 4100 5600 4500
Wire Wire Line
	4750 4300 4750 4500
Wire Wire Line
	4450 4100 4450 4500
$Comp
L Switch:SW_Push SW1
U 1 1 5F52CB5C
P 5300 3700
F 0 "SW1" H 5300 3985 50  0000 C CNN
F 1 "SW_Push" H 5300 3894 50  0000 C CNN
F 2 "" H 5300 3900 50  0001 C CNN
F 3 "~" H 5300 3900 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 5000 3700
Wire Wire Line
	5100 3700 5000 3700
Connection ~ 5000 3700
Wire Wire Line
	5000 3700 5000 3900
Wire Wire Line
	5500 3700 5600 3700
Wire Wire Line
	5300 3900 5000 3900
Connection ~ 5000 3900
Wire Wire Line
	5000 3250 5250 3250
Connection ~ 5000 3250
Connection ~ 5250 3250
Text GLabel 5500 3250 0    50   Output ~ 0
Vout
$EndSCHEMATC

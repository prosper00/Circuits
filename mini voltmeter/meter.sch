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
L Device:R_US 30B
U 1 1 61E76AD1
P 5650 3800
F 0 "30B" H 5718 3846 50  0000 L CNN
F 1 "2.0k" H 5718 3755 50  0000 L CNN
F 2 "" V 5690 3790 50  0001 C CNN
F 3 "~" H 5650 3800 50  0001 C CNN
	1    5650 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US 93C
U 1 1 61E76C4A
P 5650 3200
F 0 "93C" H 5718 3246 50  0000 L CNN
F 1 "90.9k" H 5718 3155 50  0000 L CNN
F 2 "" V 5690 3190 50  0001 C CNN
F 3 "~" H 5650 3200 50  0001 C CNN
	1    5650 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:RTRIM R?
U 1 1 61E77A58
P 5650 2650
F 0 "R?" H 5777 2696 50  0000 L CNN
F 1 "4.7k" H 5777 2605 50  0000 L CNN
F 2 "" V 5580 2650 50  0001 C CNN
F 3 "~" H 5650 2650 50  0001 C CNN
	1    5650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2200 7600 2200
Text Label 7600 2200 0    50   ~ 0
Yellow
Wire Wire Line
	5650 3650 5650 3500
Wire Wire Line
	5650 3050 5650 2800
Wire Wire Line
	5650 2500 5650 2200
Wire Wire Line
	5650 3950 5650 4400
Text Label 5650 4400 0    50   ~ 0
Black
Wire Wire Line
	5650 3500 4200 3500
Connection ~ 5650 3500
Wire Wire Line
	5650 3500 5650 3350
Text Label 4200 3500 0    50   ~ 0
IC_Pin9
$EndSCHEMATC

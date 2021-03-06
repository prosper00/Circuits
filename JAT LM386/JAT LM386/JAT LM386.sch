EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
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
L Amplifier_Audio:LM386 U1
U 1 1 5EE8B877
P 4150 5350
F 0 "U1" H 4494 5396 50  0000 L CNN
F 1 "LM386" H 4494 5305 50  0000 L CNN
F 2 "" H 4250 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 4350 5550 50  0001 C CNN
	1    4150 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EE8C3BB
P 3000 5250
F 0 "C1" V 2748 5250 50  0000 C CNN
F 1 "270n" V 2839 5250 50  0000 C CNN
F 2 "" H 3038 5100 50  0001 C CNN
F 3 "~" H 3000 5250 50  0001 C CNN
	1    3000 5250
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5EE8CE4C
P 3250 5700
F 0 "C2" H 3365 5746 50  0000 L CNN
F 1 "47p" H 3365 5655 50  0000 L CNN
F 2 "" H 3288 5550 50  0001 C CNN
F 3 "~" H 3250 5700 50  0001 C CNN
	1    3250 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EE8E863
P 3650 5700
F 0 "C3" H 3765 5746 50  0000 L CNN
F 1 "270n" H 3765 5655 50  0000 L CNN
F 2 "" H 3688 5550 50  0001 C CNN
F 3 "~" H 3650 5700 50  0001 C CNN
	1    3650 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5EE90771
P 4400 5700
F 0 "C5" V 4148 5700 50  0000 C CNN
F 1 "10u" V 4239 5700 50  0000 C CNN
F 2 "" H 4438 5550 50  0001 C CNN
F 3 "~" H 4400 5700 50  0001 C CNN
	1    4400 5700
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5EE91303
P 4850 5850
F 0 "C7" H 4965 5896 50  0000 L CNN
F 1 "100n" H 4965 5805 50  0000 L CNN
F 2 "" H 4888 5700 50  0001 C CNN
F 3 "~" H 4850 5850 50  0001 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5EE925A7
P 4850 5550
F 0 "R1" H 4918 5596 50  0000 L CNN
F 1 "10" H 4918 5505 50  0000 L CNN
F 2 "" V 4890 5540 50  0001 C CNN
F 3 "~" H 4850 5550 50  0001 C CNN
	1    4850 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C8
U 1 1 5EE9677F
P 5100 5350
F 0 "C8" V 5352 5350 50  0000 C CNN
F 1 "470u" V 5261 5350 50  0000 C CNN
F 2 "" H 5138 5200 50  0001 C CNN
F 3 "~" H 5100 5350 50  0001 C CNN
	1    5100 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5EE9B740
P 4300 4900
F 0 "C4" V 4048 4900 50  0000 C CNN
F 1 "10u" V 4139 4900 50  0000 C CNN
F 2 "" H 4338 4750 50  0001 C CNN
F 3 "~" H 4300 4900 50  0001 C CNN
	1    4300 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 5250 3250 5250
Wire Wire Line
	3250 5550 3250 5250
Connection ~ 3250 5250
Wire Wire Line
	3250 5250 3850 5250
Wire Wire Line
	3650 5550 3650 5450
Wire Wire Line
	3650 5450 3850 5450
Wire Wire Line
	3250 5850 3250 6050
Wire Wire Line
	3650 5850 3650 6050
Wire Wire Line
	4050 5650 4050 6050
Wire Wire Line
	4850 6000 4850 6050
Wire Wire Line
	4450 5350 4850 5350
Wire Wire Line
	4850 5400 4850 5350
Connection ~ 4850 5350
Wire Wire Line
	4850 5350 4950 5350
Wire Wire Line
	4150 5050 4150 4900
$Comp
L power:Earth #PWR03
U 1 1 5EEB15DF
P 4500 5000
F 0 "#PWR03" H 4500 4750 50  0001 C CNN
F 1 "Earth" H 4500 4850 50  0001 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "~" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4900 4500 4900
Wire Wire Line
	4500 4900 4500 5000
Wire Wire Line
	4500 4850 4500 4900
Connection ~ 4500 4900
Wire Wire Line
	3250 6050 3650 6050
Connection ~ 3650 6050
Wire Wire Line
	3650 6050 4050 6050
Connection ~ 4050 6050
Wire Wire Line
	4050 6050 4850 6050
$Comp
L power:VCC #PWR01
U 1 1 5EEB387E
P 4050 4400
F 0 "#PWR01" H 4050 4250 50  0001 C CNN
F 1 "VCC" H 4067 4573 50  0000 C CNN
F 2 "" H 4050 4400 50  0001 C CNN
F 3 "" H 4050 4400 50  0001 C CNN
	1    4050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5350 5350 5350
Wire Wire Line
	2850 5250 2750 5250
$Comp
L power:Earth #PWR02
U 1 1 5EEBDCB9
P 4050 6200
F 0 "#PWR02" H 4050 5950 50  0001 C CNN
F 1 "Earth" H 4050 6050 50  0001 C CNN
F 2 "" H 4050 6200 50  0001 C CNN
F 3 "~" H 4050 6200 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6050 4050 6200
Text GLabel 2750 5250 0    50   Input ~ 0
in+
Text GLabel 5350 5350 2    50   Input ~ 0
out+
Wire Wire Line
	4250 5650 4250 5700
Wire Wire Line
	4550 5700 4550 5850
Wire Wire Line
	4550 5850 4150 5850
Wire Wire Line
	4150 5850 4150 5650
Wire Wire Line
	3250 6050 2750 6050
Connection ~ 3250 6050
Text GLabel 2750 6050 0    50   Input ~ 0
in-
Wire Wire Line
	4850 6050 5350 6050
Connection ~ 4850 6050
Text GLabel 5350 6050 2    50   Input ~ 0
out-
$Comp
L Device:C C6
U 1 1 5EE9ACB0
P 4500 4700
F 0 "C6" H 4385 4654 50  0000 R CNN
F 1 "270n" H 4385 4745 50  0000 R CNN
F 2 "" H 4538 4550 50  0001 C CNN
F 3 "~" H 4500 4700 50  0001 C CNN
	1    4500 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 4400 4050 4500
Wire Wire Line
	4500 4550 4500 4500
Wire Wire Line
	4500 4500 4050 4500
Connection ~ 4050 4500
Wire Wire Line
	4050 4500 4050 5050
$EndSCHEMATC

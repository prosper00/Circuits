EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Noise Machine"
Date "2020-09-11"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Noise Machine w/tone controls"
$EndDescr
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 5F5BD424
P 2300 2500
F 0 "Q1" V 2535 2500 50  0000 C CNN
F 1 "2N2222A" V 2626 2500 50  0000 C CNN
F 2 "" H 2500 2600 50  0001 C CNN
F 3 "~" H 2300 2500 50  0001 C CNN
	1    2300 2500
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_EBC Q2
U 1 1 5F5BD65A
P 2900 2500
F 0 "Q2" V 3135 2500 50  0000 C CNN
F 1 "2N3904" V 3226 2500 50  0000 C CNN
F 2 "" H 3100 2600 50  0001 C CNN
F 3 "~" H 2900 2500 50  0001 C CNN
	1    2900 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F5BF787
P 2600 1900
F 0 "R3" V 2395 1900 50  0000 C CNN
F 1 "510k" V 2486 1900 50  0000 C CNN
F 2 "" V 2640 1890 50  0001 C CNN
F 3 "~" H 2600 1900 50  0001 C CNN
	1    2600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2600 1850 2600
Wire Wire Line
	2750 1900 3200 1900
Wire Wire Line
	3200 1900 3200 2200
Wire Wire Line
	3200 2600 3100 2600
Wire Wire Line
	2300 2300 2300 2200
Wire Wire Line
	2300 2200 2900 2200
Wire Wire Line
	2900 2200 2900 2300
$Comp
L power:Earth #PWR02
U 1 1 5F5C4342
P 2650 3550
F 0 "#PWR02" H 2650 3300 50  0001 C CNN
F 1 "Earth" H 2650 3400 50  0001 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "~" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3550 2650 2600
Wire Wire Line
	2650 2600 2700 2600
$Comp
L Device:R_US R4
U 1 1 5F5C4833
P 3200 1600
F 0 "R4" H 3268 1646 50  0000 L CNN
F 1 "10k" H 3268 1555 50  0000 L CNN
F 2 "" V 3240 1590 50  0001 C CNN
F 3 "~" H 3200 1600 50  0001 C CNN
	1    3200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1750 3200 1900
Connection ~ 3200 1900
$Comp
L power:+15V #PWR05
U 1 1 5F5C4FD0
P 3200 1200
F 0 "#PWR05" H 3200 1050 50  0001 C CNN
F 1 "+15V" H 3215 1373 50  0000 C CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "" H 3200 1200 50  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1450 3200 1200
$Comp
L Device:C C3
U 1 1 5F5C547C
P 3050 2200
F 0 "C3" V 2798 2200 50  0000 C CNN
F 1 "1n" V 2889 2200 50  0000 C CNN
F 2 "" H 3088 2050 50  0001 C CNN
F 3 "~" H 3050 2200 50  0001 C CNN
	1    3050 2200
	0    1    1    0   
$EndComp
Connection ~ 2900 2200
Connection ~ 3200 2200
Wire Wire Line
	3200 2200 3200 2600
Wire Wire Line
	1850 1900 2450 1900
Connection ~ 3200 2600
NoConn ~ 2500 2600
$Comp
L Device:R_US R1
U 1 1 5F5CA03A
P 2450 4700
F 0 "R1" V 2245 4700 50  0000 C CNN
F 1 "5.1k" V 2336 4700 50  0000 C CNN
F 2 "" V 2490 4690 50  0001 C CNN
F 3 "~" H 2450 4700 50  0001 C CNN
	1    2450 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F5CA367
P 3300 4700
F 0 "R5" V 3095 4700 50  0000 C CNN
F 1 "5.1k" V 3186 4700 50  0000 C CNN
F 2 "" V 3340 4690 50  0001 C CNN
F 3 "~" H 3300 4700 50  0001 C CNN
	1    3300 4700
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR04
U 1 1 5F5CC6D9
P 2900 6250
F 0 "#PWR04" H 2900 6000 50  0001 C CNN
F 1 "Earth" H 2900 6100 50  0001 C CNN
F 2 "" H 2900 6250 50  0001 C CNN
F 3 "~" H 2900 6250 50  0001 C CNN
	1    2900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6050 2900 6250
$Comp
L Device:R_US R2
U 1 1 5F5CCE6A
P 2450 5600
F 0 "R2" V 2245 5600 50  0000 C CNN
F 1 "5.1k" V 2336 5600 50  0000 C CNN
F 2 "" V 2490 5590 50  0001 C CNN
F 3 "~" H 2450 5600 50  0001 C CNN
	1    2450 5600
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F5CD09C
P 2900 4850
F 0 "C2" H 2785 4804 50  0000 R CNN
F 1 "22n" H 2785 4895 50  0000 R CNN
F 2 "" H 2938 4700 50  0001 C CNN
F 3 "~" H 2900 4850 50  0001 C CNN
	1    2900 4850
	-1   0    0    1   
$EndComp
Connection ~ 2900 4700
$Comp
L power:Earth #PWR03
U 1 1 5F5D1F44
P 2900 5150
F 0 "#PWR03" H 2900 4900 50  0001 C CNN
F 1 "Earth" H 2900 5000 50  0001 C CNN
F 2 "" H 2900 5150 50  0001 C CNN
F 3 "~" H 2900 5150 50  0001 C CNN
	1    2900 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F5D2400
P 3300 5600
F 0 "C4" V 3552 5600 50  0000 C CNN
F 1 "22n" V 3461 5600 50  0000 C CNN
F 2 "" H 3338 5450 50  0001 C CNN
F 3 "~" H 3300 5600 50  0001 C CNN
	1    3300 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_US RV1
U 1 1 5F5CB4B2
P 2900 5900
F 0 "RV1" V 2695 5900 50  0000 C CNN
F 1 "10k" V 2786 5900 50  0000 C CNN
F 2 "" H 2900 5900 50  0001 C CNN
F 3 "~" H 2900 5900 50  0001 C CNN
	1    2900 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4700 2900 4700
Wire Wire Line
	2900 4700 3100 4700
Wire Wire Line
	2300 4700 2300 5150
Wire Wire Line
	2900 5000 2900 5150
Wire Wire Line
	3050 5900 3100 5900
Wire Wire Line
	3100 5900 3100 4700
Connection ~ 3100 4700
Wire Wire Line
	3100 4700 3150 4700
Wire Wire Line
	2600 5600 2700 5600
Wire Wire Line
	2750 5900 2700 5900
Wire Wire Line
	2700 5900 2700 5600
Connection ~ 2700 5600
Wire Wire Line
	2700 5600 3150 5600
Text Notes 2450 6050 0    50   ~ 0
Lo pass
Text Notes 3000 6050 0    50   ~ 0
Hi pass
Text HLabel 3700 2600 2    50   Input ~ 0
SIG_NOISE
Wire Wire Line
	2300 5150 2100 5150
Connection ~ 2300 5150
Wire Wire Line
	2300 5150 2300 5600
Text HLabel 2100 5150 0    50   Input ~ 0
SIG_NOISE
Text HLabel 3850 5150 2    50   Input ~ 0
SIG_OUT
$Comp
L Device:C C6
U 1 1 5F5EC58F
P 3600 5150
F 0 "C6" V 3348 5150 50  0000 C CNN
F 1 "1u" V 3439 5150 50  0000 C CNN
F 2 "" H 3638 5000 50  0001 C CNN
F 3 "~" H 3600 5150 50  0001 C CNN
	1    3600 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 4700 3450 5150
Connection ~ 3450 5150
Wire Wire Line
	3450 5150 3450 5600
Wire Wire Line
	3750 5150 3850 5150
$Comp
L Device:Q_NPN_CBE Q3
U 1 1 5F5F21AA
P 5200 2400
F 0 "Q3" H 5391 2446 50  0000 L CNN
F 1 "BC547" H 5391 2355 50  0000 L CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "~" H 5200 2400 50  0001 C CNN
	1    5200 2400
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q4
U 1 1 5F5F29E8
P 6400 2400
F 0 "Q4" H 6591 2446 50  0000 L CNN
F 1 "BC547" H 6591 2355 50  0000 L CNN
F 2 "" H 6600 2500 50  0001 C CNN
F 3 "~" H 6400 2400 50  0001 C CNN
	1    6400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR07
U 1 1 5F5F3693
P 5100 2750
F 0 "#PWR07" H 5100 2500 50  0001 C CNN
F 1 "Earth" H 5100 2600 50  0001 C CNN
F 2 "" H 5100 2750 50  0001 C CNN
F 3 "~" H 5100 2750 50  0001 C CNN
	1    5100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR014
U 1 1 5F5F3AC7
P 6500 2750
F 0 "#PWR014" H 6500 2500 50  0001 C CNN
F 1 "Earth" H 6500 2600 50  0001 C CNN
F 2 "" H 6500 2750 50  0001 C CNN
F 3 "~" H 6500 2750 50  0001 C CNN
	1    6500 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5F5F405B
P 5100 1100
F 0 "#PWR06" H 5100 950 50  0001 C CNN
F 1 "+5V" H 5115 1273 50  0000 C CNN
F 2 "" H 5100 1100 50  0001 C CNN
F 3 "" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2000 5400 2400
Wire Wire Line
	5600 2000 6200 2400
$Comp
L Device:R_US R6
U 1 1 5F6037C6
P 5100 1350
F 0 "R6" H 4900 1400 50  0000 L CNN
F 1 "10k" H 4900 1300 50  0000 L CNN
F 2 "" V 5140 1340 50  0001 C CNN
F 3 "~" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F603BC2
P 6500 1350
F 0 "R10" H 6568 1396 50  0000 L CNN
F 1 "270" H 6568 1305 50  0000 L CNN
F 2 "" V 6540 1340 50  0001 C CNN
F 3 "~" H 6500 1350 50  0001 C CNN
	1    6500 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5F60434B
P 5600 1800
F 0 "R7" V 5500 1750 50  0000 L CNN
F 1 "100k" V 5700 1650 50  0000 L CNN
F 2 "" V 5640 1790 50  0001 C CNN
F 3 "~" H 5600 1800 50  0001 C CNN
	1    5600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F6047C6
P 6000 1800
F 0 "R8" V 6100 1750 50  0000 L CNN
F 1 "100k" V 5900 1650 50  0000 L CNN
F 2 "" V 6040 1790 50  0001 C CNN
F 3 "~" H 6000 1800 50  0001 C CNN
	1    6000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5F6074C3
P 6500 1100
F 0 "#PWR013" H 6500 950 50  0001 C CNN
F 1 "+5V" H 6515 1273 50  0000 C CNN
F 2 "" H 6500 1100 50  0001 C CNN
F 3 "" H 6500 1100 50  0001 C CNN
	1    6500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2750 5100 2600
Wire Wire Line
	6500 2750 6500 2600
Text HLabel 7000 2000 2    50   Input ~ 0
SQ_WAVE
$Comp
L Device:C C13
U 1 1 5F616AD2
P 8400 2350
F 0 "C13" H 8515 2396 50  0000 L CNN
F 1 "10n" H 8515 2305 50  0000 L CNN
F 2 "" H 8438 2200 50  0001 C CNN
F 3 "~" H 8400 2350 50  0001 C CNN
	1    8400 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F617150
P 8800 2350
F 0 "C14" H 8915 2396 50  0000 L CNN
F 1 "100n" H 8915 2305 50  0000 L CNN
F 2 "" H 8838 2200 50  0001 C CNN
F 3 "~" H 8800 2350 50  0001 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5F617534
P 9200 2350
F 0 "C15" H 9315 2396 50  0000 L CNN
F 1 "10n" H 9315 2305 50  0000 L CNN
F 2 "" H 9238 2200 50  0001 C CNN
F 3 "~" H 9200 2350 50  0001 C CNN
	1    9200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5F61787B
P 9600 2350
F 0 "C16" H 9715 2396 50  0000 L CNN
F 1 "100n" H 9715 2305 50  0000 L CNN
F 2 "" H 9638 2200 50  0001 C CNN
F 3 "~" H 9600 2350 50  0001 C CNN
	1    9600 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5F6196FD
P 8400 1850
F 0 "D3" H 8400 1950 50  0000 C CNN
F 1 "4148" H 8400 2050 50  0000 C CNN
F 2 "" H 8400 1850 50  0001 C CNN
F 3 "~" H 8400 1850 50  0001 C CNN
	1    8400 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D4
U 1 1 5F619D37
P 8600 2100
F 0 "D4" H 8600 1884 50  0000 C CNN
F 1 "4148" H 8600 1975 50  0000 C CNN
F 2 "" H 8600 2100 50  0001 C CNN
F 3 "~" H 8600 2100 50  0001 C CNN
	1    8600 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:D D5
U 1 1 5F61A070
P 9000 2100
F 0 "D5" H 9000 1884 50  0000 C CNN
F 1 "4148" H 9000 1975 50  0000 C CNN
F 2 "" H 9000 2100 50  0001 C CNN
F 3 "~" H 9000 2100 50  0001 C CNN
	1    9000 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 2800 9200 2800
Wire Wire Line
	9200 2800 9200 2500
Wire Wire Line
	8400 2500 8400 2800
Wire Wire Line
	8400 2800 8100 2800
Connection ~ 8400 2800
Text HLabel 8100 2800 0    50   Input ~ 0
SQ_WAVE
$Comp
L power:Earth #PWR017
U 1 1 5F629839
P 8800 2600
F 0 "#PWR017" H 8800 2350 50  0001 C CNN
F 1 "Earth" H 8800 2450 50  0001 C CNN
F 2 "" H 8800 2600 50  0001 C CNN
F 3 "~" H 8800 2600 50  0001 C CNN
	1    8800 2600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR019
U 1 1 5F629CF4
P 9600 2600
F 0 "#PWR019" H 9600 2350 50  0001 C CNN
F 1 "Earth" H 9600 2450 50  0001 C CNN
F 2 "" H 9600 2600 50  0001 C CNN
F 3 "~" H 9600 2600 50  0001 C CNN
	1    9600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2500 8800 2600
Wire Wire Line
	9600 2500 9600 2600
$Comp
L power:+15V #PWR018
U 1 1 5F6315AB
P 9600 1500
F 0 "#PWR018" H 9600 1350 50  0001 C CNN
F 1 "+15V" H 9615 1673 50  0000 C CNN
F 2 "" H 9600 1500 50  0001 C CNN
F 3 "" H 9600 1500 50  0001 C CNN
	1    9600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1500 9600 2100
Wire Wire Line
	8400 2200 8400 2100
Wire Wire Line
	8400 1700 8400 1500
$Comp
L power:+5V #PWR016
U 1 1 5F646476
P 8400 1500
F 0 "#PWR016" H 8400 1350 50  0001 C CNN
F 1 "+5V" H 8415 1673 50  0000 C CNN
F 2 "" H 8400 1500 50  0001 C CNN
F 3 "" H 8400 1500 50  0001 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2100 9200 2100
Wire Wire Line
	8850 2100 8800 2100
Wire Wire Line
	8800 2100 8800 2200
Connection ~ 8800 2100
Wire Wire Line
	8800 2100 8750 2100
Wire Wire Line
	8450 2100 8400 2100
Connection ~ 8400 2100
Wire Wire Line
	8400 2100 8400 2000
Wire Wire Line
	3200 2600 3300 2600
$Comp
L Device:C C5
U 1 1 5F5C89D5
P 3450 2600
F 0 "C5" V 3198 2600 50  0000 C CNN
F 1 "1u" V 3289 2600 50  0000 C CNN
F 2 "" H 3488 2450 50  0001 C CNN
F 3 "~" H 3450 2600 50  0001 C CNN
	1    3450 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2600 3700 2600
$Comp
L Amplifier_Audio:LM386 U1
U 1 1 5F6A44CE
P 6250 4900
F 0 "U1" H 6594 4946 50  0000 L CNN
F 1 "LM386" H 6594 4855 50  0000 L CNN
F 2 "" H 6350 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 6450 5100 50  0001 C CNN
	1    6250 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 5F6A5602
P 7700 4900
F 0 "LS1" H 7870 4896 50  0000 L CNN
F 1 "8R" H 7870 4805 50  0000 L CNN
F 2 "" H 7700 4700 50  0001 C CNN
F 3 "~" H 7690 4850 50  0001 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5F6A64DF
P 6250 5450
F 0 "R9" H 6318 5496 50  0000 L CNN
F 1 "270" H 6318 5405 50  0000 L CNN
F 2 "" V 6290 5440 50  0001 C CNN
F 3 "~" H 6250 5450 50  0001 C CNN
	1    6250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5200 6250 5300
Wire Wire Line
	6250 5600 6350 5600
Wire Wire Line
	6350 5600 6350 5200
Wire Wire Line
	7500 5000 7500 5300
$Comp
L power:Earth #PWR015
U 1 1 5F6ACBAD
P 7500 5300
F 0 "#PWR015" H 7500 5050 50  0001 C CNN
F 1 "Earth" H 7500 5150 50  0001 C CNN
F 2 "" H 7500 5300 50  0001 C CNN
F 3 "~" H 7500 5300 50  0001 C CNN
	1    7500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR012
U 1 1 5F6AD207
P 6150 5500
F 0 "#PWR012" H 6150 5250 50  0001 C CNN
F 1 "Earth" H 6150 5350 50  0001 C CNN
F 2 "" H 6150 5500 50  0001 C CNN
F 3 "~" H 6150 5500 50  0001 C CNN
	1    6150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5500 6150 5200
$Comp
L power:Earth #PWR010
U 1 1 5F6AF048
P 5900 5500
F 0 "#PWR010" H 5900 5250 50  0001 C CNN
F 1 "Earth" H 5900 5350 50  0001 C CNN
F 2 "" H 5900 5500 50  0001 C CNN
F 3 "~" H 5900 5500 50  0001 C CNN
	1    5900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5500 5900 5000
Wire Wire Line
	5900 5000 5950 5000
$Comp
L Device:R_POT_US RV2
U 1 1 5F6B1271
P 5300 4800
F 0 "RV2" H 5233 4846 50  0000 R CNN
F 1 "100k" H 5233 4755 50  0000 R CNN
F 2 "" H 5300 4800 50  0001 C CNN
F 3 "~" H 5300 4800 50  0001 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR08
U 1 1 5F6B65EA
P 5300 5500
F 0 "#PWR08" H 5300 5250 50  0001 C CNN
F 1 "Earth" H 5300 5350 50  0001 C CNN
F 2 "" H 5300 5500 50  0001 C CNN
F 3 "~" H 5300 5500 50  0001 C CNN
	1    5300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4950 5300 5500
Text HLabel 5050 4450 0    50   Input ~ 0
SIG_OUT
$Comp
L Device:C C8
U 1 1 5F6BCEA5
P 5650 4800
F 0 "C8" V 5398 4800 50  0000 C CNN
F 1 "1u" V 5489 4800 50  0000 C CNN
F 2 "" H 5688 4650 50  0001 C CNN
F 3 "~" H 5650 4800 50  0001 C CNN
	1    5650 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 4800 5500 4800
$Comp
L Device:CP1 C12
U 1 1 5F6C1A8C
P 7050 4900
F 0 "C12" V 7302 4900 50  0000 C CNN
F 1 "100u" V 7211 4900 50  0000 C CNN
F 2 "" H 7050 4900 50  0001 C CNN
F 3 "~" H 7050 4900 50  0001 C CNN
	1    7050 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5F6C9134
P 6150 4100
F 0 "#PWR011" H 6150 3950 50  0001 C CNN
F 1 "+5V" H 6165 4273 50  0000 C CNN
F 2 "" H 6150 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4600 6150 4100
$Comp
L Device:C C11
U 1 1 5F6CB52F
P 6250 4450
F 0 "C11" H 6365 4496 50  0000 L CNN
F 1 "10u" H 6365 4405 50  0000 L CNN
F 2 "" H 6288 4300 50  0001 C CNN
F 3 "~" H 6250 4450 50  0001 C CNN
	1    6250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4300 6250 4250
Wire Wire Line
	6250 4250 5900 4250
Connection ~ 5900 5000
Wire Wire Line
	5900 4250 5900 5000
Wire Wire Line
	5800 4800 5950 4800
Wire Wire Line
	6550 4900 6900 4900
Wire Wire Line
	7200 4900 7500 4900
Wire Wire Line
	5050 4450 5300 4450
Wire Wire Line
	5300 4450 5300 4650
$Comp
L Device:D D6
U 1 1 5F61A3A0
P 9400 2100
F 0 "D6" H 9400 1884 50  0000 C CNN
F 1 "4148" H 9400 1975 50  0000 C CNN
F 2 "" H 9400 2100 50  0001 C CNN
F 3 "~" H 9400 2100 50  0001 C CNN
	1    9400 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 2200 9200 2100
Connection ~ 9200 2100
Wire Wire Line
	9200 2100 9250 2100
Wire Wire Line
	9550 2100 9600 2100
Connection ~ 9600 2100
Wire Wire Line
	9600 2100 9600 2200
$Comp
L power:Earth #PWR01
U 1 1 5F5BF32E
P 1850 3550
F 0 "#PWR01" H 1850 3300 50  0001 C CNN
F 1 "Earth" H 1850 3400 50  0001 C CNN
F 2 "" H 1850 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	1    0    0    -1  
$EndComp
Connection ~ 1850 2600
Wire Wire Line
	1850 1900 1850 2600
Wire Wire Line
	1850 3200 1850 3550
Wire Wire Line
	1850 2600 1850 2900
$Comp
L Device:C C1
U 1 1 5F5BE792
P 1850 3050
F 0 "C1" H 1965 3096 50  0000 L CNN
F 1 "1u" H 1965 3005 50  0000 L CNN
F 2 "" H 1888 2900 50  0001 C CNN
F 3 "~" H 1850 3050 50  0001 C CNN
	1    1850 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F7AA58A
P 5350 1600
F 0 "D1" H 5350 1500 50  0000 C CNN
F 1 "4148" H 5350 1400 50  0000 C CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "~" H 5350 1600 50  0001 C CNN
	1    5350 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:D D2
U 1 1 5F7ABB5D
P 6250 1600
F 0 "D2" H 6250 1700 50  0000 C CNN
F 1 "4148" H 6250 1800 50  0000 C CNN
F 2 "" H 6250 1600 50  0001 C CNN
F 3 "~" H 6250 1600 50  0001 C CNN
	1    6250 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F7B205B
P 5800 1350
F 0 "C9" V 5650 1350 50  0000 C CNN
F 1 "100n" V 5961 1350 50  0000 C CNN
F 2 "" H 5838 1200 50  0001 C CNN
F 3 "~" H 5800 1350 50  0001 C CNN
	1    5800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5F7B279C
P 5800 1100
F 0 "#PWR09" H 5800 950 50  0001 C CNN
F 1 "+5V" H 5815 1273 50  0000 C CNN
F 2 "" H 5800 1100 50  0001 C CNN
F 3 "" H 5800 1100 50  0001 C CNN
	1    5800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1500 5100 1600
Wire Wire Line
	5100 1600 5200 1600
Connection ~ 5100 1600
Wire Wire Line
	5800 1600 5800 1500
Connection ~ 5800 1600
Wire Wire Line
	6400 1600 6500 1600
Wire Wire Line
	6500 1600 6500 1500
Connection ~ 6500 1600
$Comp
L Device:C C10
U 1 1 5F7CCAE8
P 6250 2000
F 0 "C10" V 5998 2000 50  0000 C CNN
F 1 "56p" V 6100 2050 50  0000 C CNN
F 2 "" H 6288 1850 50  0001 C CNN
F 3 "~" H 6250 2000 50  0001 C CNN
	1    6250 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5F7CCFD3
P 5350 2000
F 0 "C7" V 5602 2000 50  0000 C CNN
F 1 "100p" V 5500 2050 50  0000 C CNN
F 2 "" H 5388 1850 50  0001 C CNN
F 3 "~" H 5350 2000 50  0001 C CNN
	1    5350 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 1600 5100 2000
Wire Wire Line
	6500 1600 6500 2000
Wire Wire Line
	5100 2000 5200 2000
Connection ~ 5100 2000
Wire Wire Line
	5100 2000 5100 2200
Wire Wire Line
	5500 2000 5600 2000
Wire Wire Line
	6000 2000 6100 2000
Wire Wire Line
	6400 2000 6500 2000
Connection ~ 6500 2000
Wire Wire Line
	6500 2000 6500 2200
Wire Wire Line
	6500 2000 7000 2000
Wire Wire Line
	5800 1600 6000 1600
Wire Wire Line
	5500 1600 5600 1600
Wire Wire Line
	6000 1650 6000 1600
Connection ~ 6000 1600
Wire Wire Line
	6000 1600 6100 1600
Wire Wire Line
	6000 1950 6000 2000
Connection ~ 6000 2000
Wire Wire Line
	5600 1950 5600 2000
Connection ~ 5600 2000
Wire Wire Line
	5600 1650 5600 1600
Connection ~ 5600 1600
Wire Wire Line
	5600 1600 5800 1600
Wire Wire Line
	6500 1100 6500 1200
Wire Wire Line
	5800 1100 5800 1200
Wire Wire Line
	5100 1100 5100 1200
$EndSCHEMATC

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
L Device:C C1
U 1 1 5F7CBAB9
P 2200 3650
F 0 "C1" V 1948 3650 50  0000 C CNN
F 1 "2.2u" V 2039 3650 50  0000 C CNN
F 2 "" H 2238 3500 50  0001 C CNN
F 3 "~" H 2200 3650 50  0001 C CNN
	1    2200 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F7CBF24
P 2700 3650
F 0 "R1" V 2493 3650 50  0000 C CNN
F 1 "1k" V 2584 3650 50  0000 C CNN
F 2 "" V 2630 3650 50  0001 C CNN
F 3 "~" H 2700 3650 50  0001 C CNN
	1    2700 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F7CC361
P 2950 3950
F 0 "R2" H 2880 3904 50  0000 R CNN
F 1 "22k" H 2880 3995 50  0000 R CNN
F 2 "" V 2880 3950 50  0001 C CNN
F 3 "~" H 2950 3950 50  0001 C CNN
	1    2950 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5F7CC804
P 3250 3950
F 0 "C2" H 3135 3904 50  0000 R CNN
F 1 "220p" H 3135 3995 50  0000 R CNN
F 2 "" H 3288 3800 50  0001 C CNN
F 3 "~" H 3250 3950 50  0001 C CNN
	1    3250 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PNP_EBC Q1
U 1 1 5F7CD00D
P 3550 3650
F 0 "Q1" H 3741 3604 50  0000 L CNN
F 1 "2n2907" H 3300 3450 50  0000 L CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "~" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_EBC Q3
U 1 1 5F7CD983
P 4200 3650
F 0 "Q3" H 4391 3604 50  0000 L CNN
F 1 "2n2907" H 3950 3450 50  0000 L CNN
F 2 "" H 4400 3750 50  0001 C CNN
F 3 "~" H 4200 3650 50  0001 C CNN
	1    4200 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5F7CDD45
P 3650 3200
F 0 "R3" H 3580 3154 50  0000 R CNN
F 1 "100" H 3580 3245 50  0000 R CNN
F 2 "" V 3580 3200 50  0001 C CNN
F 3 "~" H 3650 3200 50  0001 C CNN
	1    3650 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5F7CE16A
P 4100 3200
F 0 "R6" H 4030 3154 50  0000 R CNN
F 1 "100" H 4030 3245 50  0000 R CNN
F 2 "" V 4030 3200 50  0001 C CNN
F 3 "~" H 4100 3200 50  0001 C CNN
	1    4100 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PNP_EBC Q2
U 1 1 5F7CE39D
P 4000 2700
F 0 "Q2" H 4191 2654 50  0000 L CNN
F 1 "2n2907" H 4191 2745 50  0000 L CNN
F 2 "" H 4200 2800 50  0001 C CNN
F 3 "~" H 4000 2700 50  0001 C CNN
	1    4000 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F7CE754
P 3900 2250
F 0 "R5" H 3830 2204 50  0000 R CNN
F 1 "560" H 3830 2295 50  0000 R CNN
F 2 "" V 3830 2250 50  0001 C CNN
F 3 "~" H 3900 2250 50  0001 C CNN
	1    3900 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5F7CED18
P 4500 2300
F 0 "D1" V 4539 2183 50  0000 R CNN
F 1 "LED" V 4448 2183 50  0000 R CNN
F 2 "" H 4500 2300 50  0001 C CNN
F 3 "~" H 4500 2300 50  0001 C CNN
	1    4500 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F7CF989
P 4500 2950
F 0 "R7" H 4430 2904 50  0000 R CNN
F 1 "22k" H 4430 2995 50  0000 R CNN
F 2 "" V 4430 2950 50  0001 C CNN
F 3 "~" H 4500 2950 50  0001 C CNN
	1    4500 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5F7CFF45
P 3650 4200
F 0 "R4" H 3580 4154 50  0000 R CNN
F 1 "750" H 3580 4245 50  0000 R CNN
F 2 "" V 3580 4200 50  0001 C CNN
F 3 "~" H 3650 4200 50  0001 C CNN
	1    3650 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5F7D0361
P 4850 3900
F 0 "R9" H 4780 3854 50  0000 R CNN
F 1 "1k" H 4780 3945 50  0000 R CNN
F 2 "" V 4780 3900 50  0001 C CNN
F 3 "~" H 4850 3900 50  0001 C CNN
	1    4850 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5F7D07B4
P 5400 2100
F 0 "R8" H 5330 2054 50  0000 R CNN
F 1 "22k" H 5330 2145 50  0000 R CNN
F 2 "" V 5330 2100 50  0001 C CNN
F 3 "~" H 5400 2100 50  0001 C CNN
	1    5400 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F7D3264
P 4850 4300
F 0 "C3" H 4735 4254 50  0000 R CNN
F 1 "100u" H 4735 4345 50  0000 R CNN
F 2 "" H 4888 4150 50  0001 C CNN
F 3 "~" H 4850 4300 50  0001 C CNN
	1    4850 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5F7D3744
P 5200 3650
F 0 "C4" H 5085 3604 50  0000 R CNN
F 1 "1u" H 5085 3695 50  0000 R CNN
F 2 "" H 5238 3500 50  0001 C CNN
F 3 "~" H 5200 3650 50  0001 C CNN
	1    5200 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5F7D3CE1
P 5550 3200
F 0 "R10" H 5480 3154 50  0000 R CNN
F 1 "1k" H 5480 3245 50  0000 R CNN
F 2 "" V 5480 3200 50  0001 C CNN
F 3 "~" H 5550 3200 50  0001 C CNN
	1    5550 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5F7D4118
P 5550 3700
F 0 "R11" H 5480 3654 50  0000 R CNN
F 1 "220" H 5480 3745 50  0000 R CNN
F 2 "" V 5480 3700 50  0001 C CNN
F 3 "~" H 5550 3700 50  0001 C CNN
	1    5550 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Variable R12
U 1 1 5F7D4D5E
P 5550 4150
F 0 "R12" H 5678 4196 50  0000 L CNN
F 1 "150" H 5678 4105 50  0000 L CNN
F 2 "" V 5480 4150 50  0001 C CNN
F 3 "~" H 5550 4150 50  0001 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q4
U 1 1 5F7D5624
P 5900 3450
F 0 "Q4" H 6091 3496 50  0000 L CNN
F 1 "BD139" H 6091 3405 50  0000 L CNN
F 2 "" H 6100 3550 50  0001 C CNN
F 3 "~" H 5900 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q5
U 1 1 5F7D6036
P 5900 4850
F 0 "Q5" H 6091 4896 50  0000 L CNN
F 1 "2n2222" H 6091 4805 50  0000 L CNN
F 2 "" H 6100 4950 50  0001 C CNN
F 3 "~" H 5900 4850 50  0001 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F7D7977
P 5750 4500
F 0 "C5" V 6002 4500 50  0000 C CNN
F 1 "100p" V 5911 4500 50  0000 C CNN
F 2 "" H 5788 4350 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F7D8314
P 6000 2750
F 0 "R14" H 5930 2704 50  0000 R CNN
F 1 "1k" H 5930 2795 50  0000 R CNN
F 2 "" V 5930 2750 50  0001 C CNN
F 3 "~" H 6000 2750 50  0001 C CNN
	1    6000 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5F7D87B7
P 6000 2350
F 0 "R13" H 5930 2304 50  0000 R CNN
F 1 "1k" H 5930 2395 50  0000 R CNN
F 2 "" V 5930 2350 50  0001 C CNN
F 3 "~" H 6000 2350 50  0001 C CNN
	1    6000 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5F7D9EDC
P 6950 3400
F 0 "R15" H 6880 3354 50  0000 R CNN
F 1 ".22" H 6880 3445 50  0000 R CNN
F 2 "" V 6880 3400 50  0001 C CNN
F 3 "~" H 6950 3400 50  0001 C CNN
	1    6950 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5F7DA2BE
P 6950 3900
F 0 "R16" H 6880 3854 50  0000 R CNN
F 1 ".22" H 6880 3945 50  0000 R CNN
F 2 "" V 6880 3900 50  0001 C CNN
F 3 "~" H 6950 3900 50  0001 C CNN
	1    6950 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 3650 2550 3650
Wire Wire Line
	2850 3650 2950 3650
Wire Wire Line
	2950 3650 2950 3800
Wire Wire Line
	2950 3650 3250 3650
Wire Wire Line
	3250 3650 3250 3800
Connection ~ 2950 3650
Wire Wire Line
	3250 3650 3350 3650
Connection ~ 3250 3650
Wire Wire Line
	3650 3850 3650 3950
Wire Wire Line
	3650 3450 3650 3350
Wire Wire Line
	3650 3050 3650 3000
Wire Wire Line
	3650 3000 3900 3000
Wire Wire Line
	3900 3000 3900 2900
Wire Wire Line
	3900 3000 4100 3000
Wire Wire Line
	4100 3000 4100 3050
Connection ~ 3900 3000
Wire Wire Line
	4100 3350 4100 3450
Wire Wire Line
	4100 3850 4100 5150
Wire Wire Line
	4100 5150 5200 5150
Wire Wire Line
	6000 5150 6000 5050
Wire Wire Line
	3650 4350 3650 5150
Wire Wire Line
	3650 5150 4100 5150
Connection ~ 4100 5150
Wire Wire Line
	3650 3950 4450 3950
Wire Wire Line
	4450 3950 4450 4850
Connection ~ 3650 3950
Wire Wire Line
	3650 3950 3650 4050
Wire Wire Line
	4850 3650 4850 3750
Wire Wire Line
	4850 4050 4850 4150
Wire Wire Line
	3900 2500 3900 2400
Wire Wire Line
	3900 2100 3900 1950
$Comp
L Device:C C7
U 1 1 5F7E1262
P 6250 2550
F 0 "C7" V 5998 2550 50  0000 C CNN
F 1 "220u" V 6089 2550 50  0000 C CNN
F 2 "" H 6288 2400 50  0001 C CNN
F 3 "~" H 6250 2550 50  0001 C CNN
	1    6250 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3050 5550 2950
Wire Wire Line
	5550 2950 5200 2950
Wire Wire Line
	5200 3800 5200 4350
Wire Wire Line
	5200 4350 5550 4350
Wire Wire Line
	5550 4350 5550 4300
Wire Wire Line
	5550 4000 5550 3850
Wire Wire Line
	5550 3550 5550 3450
Wire Wire Line
	5550 3450 5700 3450
Connection ~ 5550 3450
Wire Wire Line
	5550 3450 5550 3350
Wire Wire Line
	6500 3650 6950 3650
Wire Wire Line
	6950 3650 6950 3550
Wire Wire Line
	6950 3650 6950 3750
Connection ~ 6950 3650
Wire Wire Line
	6000 3250 6000 2950
Wire Wire Line
	6000 2600 6000 2550
Wire Wire Line
	6100 2550 6000 2550
Connection ~ 6000 2550
Wire Wire Line
	6000 2550 6000 2500
Wire Wire Line
	6650 2950 6000 2950
Connection ~ 6000 2950
Wire Wire Line
	6000 2950 6000 2900
Wire Wire Line
	6000 2950 5550 2950
Connection ~ 5550 2950
Wire Wire Line
	6500 3650 6500 2550
Wire Wire Line
	6500 2550 6400 2550
Wire Wire Line
	6950 3150 6950 3200
Wire Wire Line
	6000 5150 6250 5150
Connection ~ 6000 5150
Wire Wire Line
	6950 5150 6950 4600
Wire Wire Line
	6650 4350 5550 4350
Connection ~ 5550 4350
Wire Wire Line
	6950 4150 6950 4100
Wire Wire Line
	6000 1950 6000 2200
Wire Wire Line
	6000 1950 6250 1950
Wire Wire Line
	6950 1950 6950 2700
Connection ~ 6000 1950
Wire Wire Line
	6500 2100 6500 2550
Connection ~ 6500 2550
$Comp
L Device:R R17
U 1 1 5F812048
P 8100 3950
F 0 "R17" H 8030 3904 50  0000 R CNN
F 1 "10" H 8030 3995 50  0000 R CNN
F 2 "" V 8030 3950 50  0001 C CNN
F 3 "~" H 8100 3950 50  0001 C CNN
	1    8100 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 5F8126AC
P 8400 3400
F 0 "R18" V 8607 3400 50  0000 C CNN
F 1 "10" V 8516 3400 50  0000 C CNN
F 2 "" V 8330 3400 50  0001 C CNN
F 3 "~" H 8400 3400 50  0001 C CNN
	1    8400 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C11
U 1 1 5F812B28
P 8100 4350
F 0 "C11" H 7985 4304 50  0000 R CNN
F 1 ".1u" H 7985 4395 50  0000 R CNN
F 2 "" H 8138 4200 50  0001 C CNN
F 3 "~" H 8100 4350 50  0001 C CNN
	1    8100 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R RL1
U 1 1 5F813122
P 8650 4350
F 0 "RL1" H 8580 4304 50  0000 R CNN
F 1 "4" H 8580 4395 50  0000 R CNN
F 2 "" V 8580 4350 50  0001 C CNN
F 3 "~" H 8650 4350 50  0001 C CNN
	1    8650 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:L L1
U 1 1 5F814D65
P 8400 3650
F 0 "L1" V 8219 3650 50  0000 C CNN
F 1 "1u" V 8310 3650 50  0000 C CNN
F 2 "" H 8400 3650 50  0001 C CNN
F 3 "~" H 8400 3650 50  0001 C CNN
	1    8400 3650
	0    1    1    0   
$EndComp
$Comp
L Device:L LL1
U 1 1 5F8161AE
P 8650 3950
F 0 "LL1" H 8606 3904 50  0000 R CNN
F 1 "1n" H 8606 3995 50  0000 R CNN
F 2 "" H 8650 3950 50  0001 C CNN
F 3 "~" H 8650 3950 50  0001 C CNN
	1    8650 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3800 8100 3650
Connection ~ 8100 3650
Wire Wire Line
	8100 3650 8250 3650
Wire Wire Line
	8550 3650 8650 3650
Wire Wire Line
	8650 3650 8650 3800
Connection ~ 8650 3650
Wire Wire Line
	8100 4500 8100 4600
Wire Wire Line
	8100 4600 8400 4600
Wire Wire Line
	8650 4600 8650 4500
Wire Wire Line
	8100 4200 8100 4100
Wire Wire Line
	8650 4200 8650 4100
Wire Wire Line
	8650 3400 8550 3400
Wire Wire Line
	8650 3400 8650 3650
Wire Wire Line
	8250 3400 8100 3400
Wire Wire Line
	8100 3400 8100 3650
Wire Wire Line
	5200 2950 5200 3500
Wire Wire Line
	3250 4100 3250 4250
Wire Wire Line
	3250 4250 3100 4250
Wire Wire Line
	2950 4250 2950 4100
$Comp
L power:GNDS #PWR02
U 1 1 5F84EAC4
P 3100 4400
F 0 "#PWR02" H 3100 4150 50  0001 C CNN
F 1 "GNDS" H 3105 4227 50  0000 C CNN
F 2 "" H 3100 4400 50  0001 C CNN
F 3 "" H 3100 4400 50  0001 C CNN
	1    3100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR05
U 1 1 5F84F1D1
P 4850 4550
F 0 "#PWR05" H 4850 4300 50  0001 C CNN
F 1 "GNDS" H 4855 4377 50  0000 C CNN
F 2 "" H 4850 4550 50  0001 C CNN
F 3 "" H 4850 4550 50  0001 C CNN
	1    4850 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR04
U 1 1 5F84F52F
P 4500 3200
F 0 "#PWR04" H 4500 2950 50  0001 C CNN
F 1 "GNDS" H 4505 3027 50  0000 C CNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4400 3100 4250
Connection ~ 3100 4250
Wire Wire Line
	3100 4250 2950 4250
Wire Wire Line
	4850 4550 4850 4450
Wire Wire Line
	8400 4700 8400 4600
Connection ~ 8400 4600
Wire Wire Line
	8400 4600 8650 4600
Wire Wire Line
	5200 1700 5200 1950
Connection ~ 5200 1950
Wire Wire Line
	5200 1950 6000 1950
Wire Wire Line
	5200 5150 5200 5450
Connection ~ 5200 5150
Wire Wire Line
	5200 5150 6000 5150
$Comp
L power:GNDPWR #PWR010
U 1 1 5F886592
P 8400 4700
F 0 "#PWR010" H 8400 4500 50  0001 C CNN
F 1 "GNDPWR" H 8404 4546 50  0000 C CNN
F 2 "" H 8400 4650 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:-VDC #PWR07
U 1 1 5F893E3A
P 5200 5450
F 0 "#PWR07" H 5200 5350 50  0001 C CNN
F 1 "-VDC" H 5200 5725 50  0000 C CNN
F 2 "" H 5200 5450 50  0001 C CNN
F 3 "" H 5200 5450 50  0001 C CNN
	1    5200 5450
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR06
U 1 1 5F896B6E
P 5200 1700
F 0 "#PWR06" H 5200 1600 50  0001 C CNN
F 1 "+VDC" H 5200 1975 50  0000 C CNN
F 2 "" H 5200 1700 50  0001 C CNN
F 3 "" H 5200 1700 50  0001 C CNN
	1    5200 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F8B02C2
P 6250 5400
F 0 "C8" H 6135 5354 50  0000 R CNN
F 1 "220n" H 6135 5445 50  0000 R CNN
F 2 "" H 6288 5250 50  0001 C CNN
F 3 "~" H 6250 5400 50  0001 C CNN
	1    6250 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR08
U 1 1 5F8B0F39
P 6850 5650
F 0 "#PWR08" H 6850 5450 50  0001 C CNN
F 1 "GNDPWR" H 6854 5496 50  0000 C CNN
F 2 "" H 6850 5600 50  0001 C CNN
F 3 "" H 6850 5600 50  0001 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F8B178A
P 6550 5400
F 0 "C10" H 6435 5354 50  0000 R CNN
F 1 ".1u" H 6435 5445 50  0000 R CNN
F 2 "" H 6588 5250 50  0001 C CNN
F 3 "~" H 6550 5400 50  0001 C CNN
	1    6550 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 5550 6250 5650
Wire Wire Line
	6550 5650 6550 5550
Wire Wire Line
	6550 5250 6550 5150
Connection ~ 6550 5150
Wire Wire Line
	6550 5150 6950 5150
Wire Wire Line
	6250 5250 6250 5150
Connection ~ 6250 5150
Wire Wire Line
	6250 5150 6550 5150
$Comp
L Device:C C6
U 1 1 5F8BEC6E
P 6250 1700
F 0 "C6" H 6135 1654 50  0000 R CNN
F 1 "220n" H 6135 1745 50  0000 R CNN
F 2 "" H 6288 1550 50  0001 C CNN
F 3 "~" H 6250 1700 50  0001 C CNN
	1    6250 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5F8C0B21
P 6550 1700
F 0 "C9" H 6435 1654 50  0000 R CNN
F 1 "220n" H 6435 1745 50  0000 R CNN
F 2 "" H 6588 1550 50  0001 C CNN
F 3 "~" H 6550 1700 50  0001 C CNN
	1    6550 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR09
U 1 1 5F8C1354
P 6900 1400
F 0 "#PWR09" H 6900 1200 50  0001 C CNN
F 1 "GNDPWR" H 6904 1246 50  0000 C CNN
F 2 "" H 6900 1350 50  0001 C CNN
F 3 "" H 6900 1350 50  0001 C CNN
	1    6900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1850 6250 1950
Connection ~ 6250 1950
Wire Wire Line
	6250 1950 6550 1950
Wire Wire Line
	6550 1950 6550 1850
Connection ~ 6550 1950
Wire Wire Line
	6550 1950 6950 1950
Wire Wire Line
	6250 1550 6250 1300
Wire Wire Line
	6250 1300 6550 1300
Wire Wire Line
	6900 1300 6900 1400
Wire Wire Line
	6550 1550 6550 1300
Connection ~ 6550 1300
Wire Wire Line
	6550 1300 6900 1300
Wire Wire Line
	6250 5650 6550 5650
Wire Wire Line
	6550 5650 6850 5650
Connection ~ 6550 5650
Wire Wire Line
	9200 3650 8650 3650
Wire Wire Line
	1650 3650 2050 3650
$Comp
L power:GNDS #PWR01
U 1 1 5F8FA29C
P 3000 5100
F 0 "#PWR01" H 3000 4850 50  0001 C CNN
F 1 "GNDS" H 3005 4927 50  0000 C CNN
F 2 "" H 3000 5100 50  0001 C CNN
F 3 "" H 3000 5100 50  0001 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR03
U 1 1 5F8FA9C5
P 3250 5100
F 0 "#PWR03" H 3250 4900 50  0001 C CNN
F 1 "GNDPWR" H 3254 4946 50  0000 C CNN
F 2 "" H 3250 5050 50  0001 C CNN
F 3 "" H 3250 5050 50  0001 C CNN
	1    3250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5100 3000 5000
Wire Wire Line
	3000 5000 3250 5000
Wire Wire Line
	3250 5000 3250 5100
Wire Wire Line
	4450 4850 5550 4850
Wire Wire Line
	6000 3650 6000 4500
Wire Wire Line
	5600 4500 5550 4500
Wire Wire Line
	5550 4500 5550 4850
Connection ~ 5550 4850
Wire Wire Line
	5550 4850 5700 4850
Wire Wire Line
	5900 4500 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4500 6000 4650
Wire Wire Line
	4500 2700 4500 2800
Wire Wire Line
	4500 3100 4500 3200
Wire Wire Line
	3900 1950 4500 1950
Wire Wire Line
	4200 2700 4500 2700
Wire Wire Line
	4500 2700 4500 2450
Connection ~ 4500 2700
Wire Wire Line
	4500 2150 4500 1950
Connection ~ 4500 1950
Wire Wire Line
	4500 1950 5200 1950
Wire Wire Line
	4400 3650 4450 3650
$Comp
L Device:C CFB1
U 1 1 5F9F98FD
P 4450 3800
F 0 "CFB1" H 4335 3754 50  0000 R CNN
F 1 "100p" H 4335 3845 50  0000 R CNN
F 2 "" H 4488 3650 50  0001 C CNN
F 3 "~" H 4450 3800 50  0001 C CNN
	1    4450 3800
	-1   0    0    1   
$EndComp
Connection ~ 4450 3950
Connection ~ 4450 3650
Wire Wire Line
	4450 3650 4850 3650
Wire Wire Line
	6950 3650 8100 3650
Wire Wire Line
	7400 2800 7400 2700
Wire Wire Line
	7400 2700 6950 2700
Connection ~ 6950 2700
Wire Wire Line
	6950 2700 6950 2750
Wire Wire Line
	7400 4200 7400 4100
Wire Wire Line
	7400 4100 6950 4100
Connection ~ 6950 4100
Wire Wire Line
	6950 4100 6950 4050
Wire Wire Line
	7400 4500 7400 4600
Wire Wire Line
	7400 4600 6950 4600
Connection ~ 6950 4600
Wire Wire Line
	6950 4600 6950 4550
Wire Wire Line
	6950 3200 7400 3200
Wire Wire Line
	7400 3100 7400 3200
Connection ~ 6950 3200
Wire Wire Line
	6950 3200 6950 3250
$Comp
L Device:Q_NPN_Darlington_BCE Q6
U 1 1 5FA2D5B2
P 6850 2950
F 0 "Q6" H 7041 2996 50  0000 L CNN
F 1 "BDX33" H 7041 2905 50  0000 L CNN
F 2 "" H 7050 3050 50  0001 C CNN
F 3 "~" H 6850 2950 50  0001 C CNN
	1    6850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_Darlington_BCE Q7
U 1 1 5FA2EA58
P 6850 4350
F 0 "Q7" H 7041 4304 50  0000 L CNN
F 1 "BDX34" H 7041 4395 50  0000 L CNN
F 2 "" H 7050 4450 50  0001 C CNN
F 3 "~" H 6850 4350 50  0001 C CNN
	1    6850 4350
	1    0    0    1   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5FA41196
P 7400 2950
F 0 "D2" V 7354 3029 50  0000 L CNN
F 1 "1N5819" V 7445 3029 50  0000 L CNN
F 2 "" H 7400 2950 50  0001 C CNN
F 3 "~" H 7400 2950 50  0001 C CNN
	1    7400 2950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5FA41A30
P 7400 4350
F 0 "D3" V 7354 4429 50  0000 L CNN
F 1 "1N5819" V 7445 4429 50  0000 L CNN
F 2 "" H 7400 4350 50  0001 C CNN
F 3 "~" H 7400 4350 50  0001 C CNN
	1    7400 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C CFB2
U 1 1 5F7EAA43
P 5400 2550
F 0 "CFB2" H 5285 2504 50  0000 R CNN
F 1 "100p" H 5285 2595 50  0000 R CNN
F 2 "" H 5438 2400 50  0001 C CNN
F 3 "~" H 5400 2550 50  0001 C CNN
	1    5400 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2100 5700 2100
Wire Wire Line
	5700 2100 5700 2550
Wire Wire Line
	5700 2550 5550 2550
Connection ~ 5700 2100
Wire Wire Line
	5700 2100 5550 2100
Wire Wire Line
	5250 2100 4850 2100
Wire Wire Line
	4850 2100 4850 2550
Connection ~ 4850 3650
Wire Wire Line
	4850 2550 5250 2550
Connection ~ 4850 2550
Wire Wire Line
	4850 2550 4850 3650
$EndSCHEMATC

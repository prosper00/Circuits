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
L Reference_Voltage:TL431LP U1
U 1 1 5F8F08A7
P 1900 2850
F 0 "U1" V 1850 3000 50  0000 R CNN
F 1 "TL431" V 1750 3100 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 2700 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 1900 2850 50  0001 C CIN
	1    1900 2850
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F8F2322
P 1900 2300
F 0 "R1" H 1968 2346 50  0000 L CNN
F 1 "1k" H 1968 2255 50  0000 L CNN
F 2 "" V 1940 2290 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rfb1
U 1 1 5F8F356B
P 2650 2250
F 0 "Rfb1" H 2718 2296 50  0000 L CNN
F 1 "27k" H 2718 2205 50  0000 L CNN
F 2 "" V 2690 2240 50  0001 C CNN
F 3 "~" H 2650 2250 50  0001 C CNN
	1    2650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rfb2
U 1 1 5F8F4487
P 2650 2950
F 0 "Rfb2" H 2718 2996 50  0000 L CNN
F 1 "10k" H 2718 2905 50  0000 L CNN
F 2 "" V 2690 2940 50  0001 C CNN
F 3 "~" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2050 1400 2050
Wire Wire Line
	1900 2050 1900 2150
Connection ~ 1900 2050
Wire Wire Line
	1900 2050 2050 2050
Wire Wire Line
	2650 2050 2650 2100
Wire Wire Line
	3000 2050 2650 2050
$Comp
L power:VCC #PWR05
U 1 1 5F8FD362
P 3000 2050
F 0 "#PWR05" H 3000 1900 50  0001 C CNN
F 1 "VCC" V 3017 2178 50  0000 L CNN
F 2 "" H 3000 2050 50  0001 C CNN
F 3 "" H 3000 2050 50  0001 C CNN
	1    3000 2050
	0    1    1    0   
$EndComp
$Comp
L Reference_Voltage:TL431LP U5
U 1 1 5F8FF9A2
P 7400 2200
F 0 "U5" V 7446 2130 50  0000 R CNN
F 1 "TL431LP" V 7355 2130 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7400 2050 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 7400 2200 50  0001 C CIN
	1    7400 2200
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F900E62
P 7650 2450
F 0 "R6" H 7718 2496 50  0000 L CNN
F 1 "R_US" H 7718 2405 50  0000 L CNN
F 2 "" V 7690 2440 50  0001 C CNN
F 3 "~" H 7650 2450 50  0001 C CNN
	1    7650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F90140E
P 7650 1950
F 0 "R5" H 7718 1996 50  0000 L CNN
F 1 "R_US" H 7718 1905 50  0000 L CNN
F 2 "" V 7690 1940 50  0001 C CNN
F 3 "~" H 7650 1950 50  0001 C CNN
	1    7650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F901BF5
P 7050 1800
F 0 "R3" V 6845 1800 50  0000 C CNN
F 1 "R_US" V 6936 1800 50  0000 C CNN
F 2 "" V 7090 1790 50  0001 C CNN
F 3 "~" H 7050 1800 50  0001 C CNN
	1    7050 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 1800 7400 1800
Wire Wire Line
	7400 1800 7400 2100
Connection ~ 7400 1800
Wire Wire Line
	7400 1800 7650 1800
Wire Wire Line
	7500 2200 7650 2200
Wire Wire Line
	7650 2200 7650 2100
Wire Wire Line
	7650 2300 7650 2200
Connection ~ 7650 2200
$Comp
L power:GNDREF #PWR08
U 1 1 5F903563
P 7400 2750
F 0 "#PWR08" H 7400 2500 50  0001 C CNN
F 1 "GNDREF" H 7405 2577 50  0000 C CNN
F 2 "" H 7400 2750 50  0001 C CNN
F 3 "" H 7400 2750 50  0001 C CNN
	1    7400 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR010
U 1 1 5F903B33
P 7650 2750
F 0 "#PWR010" H 7650 2500 50  0001 C CNN
F 1 "GNDREF" H 7655 2577 50  0000 C CNN
F 2 "" H 7650 2750 50  0001 C CNN
F 3 "" H 7650 2750 50  0001 C CNN
	1    7650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2300 7400 2750
Wire Wire Line
	7650 2600 7650 2750
Wire Wire Line
	6800 1800 6900 1800
$Comp
L power:VCC #PWR012
U 1 1 5F90525D
P 7950 1800
F 0 "#PWR012" H 7950 1650 50  0001 C CNN
F 1 "VCC" V 7967 1928 50  0000 L CNN
F 2 "" H 7950 1800 50  0001 C CNN
F 3 "" H 7950 1800 50  0001 C CNN
	1    7950 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1800 7950 1800
Connection ~ 7650 1800
$Comp
L Reference_Voltage:TL431LP U6
U 1 1 5F90E206
P 7400 3800
F 0 "U6" V 7446 3730 50  0000 R CNN
F 1 "TL431LP" V 7355 3730 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7400 3650 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 7400 3800 50  0001 C CIN
	1    7400 3800
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5F90E20C
P 7650 3550
F 0 "R7" H 7718 3596 50  0000 L CNN
F 1 "R_US" H 7718 3505 50  0000 L CNN
F 2 "" V 7690 3540 50  0001 C CNN
F 3 "~" H 7650 3550 50  0001 C CNN
	1    7650 3550
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F90E212
P 7650 4050
F 0 "R8" H 7718 4096 50  0000 L CNN
F 1 "R_US" H 7718 4005 50  0000 L CNN
F 2 "" V 7690 4040 50  0001 C CNN
F 3 "~" H 7650 4050 50  0001 C CNN
	1    7650 4050
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F90E218
P 7100 4200
F 0 "R4" V 6895 4200 50  0000 C CNN
F 1 "R_US" V 6986 4200 50  0000 C CNN
F 2 "" V 7140 4190 50  0001 C CNN
F 3 "~" H 7100 4200 50  0001 C CNN
	1    7100 4200
	0    1    -1   0   
$EndComp
Wire Wire Line
	7400 4200 7400 3900
Wire Wire Line
	7400 4200 7650 4200
Wire Wire Line
	7500 3800 7650 3800
Wire Wire Line
	7650 3800 7650 3900
Wire Wire Line
	7650 3700 7650 3800
Connection ~ 7650 3800
Wire Wire Line
	7400 3700 7400 3250
Wire Wire Line
	7650 3400 7650 3250
Wire Wire Line
	7650 4200 7950 4200
Connection ~ 7650 4200
$Comp
L power:-VDC #PWR07
U 1 1 5F91A5C0
P 6850 4200
F 0 "#PWR07" H 6850 4100 50  0001 C CNN
F 1 "-VDC" V 6850 4429 50  0000 L CNN
F 2 "" H 6850 4200 50  0001 C CNN
F 3 "" H 6850 4200 50  0001 C CNN
	1    6850 4200
	0    -1   1    0   
$EndComp
Wire Wire Line
	6850 4200 6950 4200
Wire Wire Line
	7250 4200 7400 4200
Connection ~ 7400 4200
$Comp
L power:VEE #PWR013
U 1 1 5F923027
P 7950 4200
F 0 "#PWR013" H 7950 4050 50  0001 C CNN
F 1 "VEE" V 7967 4328 50  0000 L CNN
F 2 "" H 7950 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0001 C CNN
	1    7950 4200
	0    1    -1   0   
$EndComp
$Comp
L power:GNDREF #PWR09
U 1 1 5F923C01
P 7400 3250
F 0 "#PWR09" H 7400 3000 50  0001 C CNN
F 1 "GNDREF" H 7405 3077 50  0000 C CNN
F 2 "" H 7400 3250 50  0001 C CNN
F 3 "" H 7400 3250 50  0001 C CNN
	1    7400 3250
	1    0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 5F9243D0
P 7650 3250
F 0 "#PWR011" H 7650 3000 50  0001 C CNN
F 1 "GNDREF" H 7655 3077 50  0000 C CNN
F 2 "" H 7650 3250 50  0001 C CNN
F 3 "" H 7650 3250 50  0001 C CNN
	1    7650 3250
	1    0    0    1   
$EndComp
$Comp
L power:+VDC #PWR06
U 1 1 5F926D35
P 6800 1800
F 0 "#PWR06" H 6800 1700 50  0001 C CNN
F 1 "+VDC" V 6800 2029 50  0000 L CNN
F 2 "" H 6800 1800 50  0001 C CNN
F 3 "" H 6800 1800 50  0001 C CNN
	1    6800 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+VDC #PWR02
U 1 1 5F92BF8F
P 1250 2050
F 0 "#PWR02" H 1250 1950 50  0001 C CNN
F 1 "+VDC" V 1250 2279 50  0000 L CNN
F 2 "" H 1250 2050 50  0001 C CNN
F 3 "" H 1250 2050 50  0001 C CNN
	1    1250 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PNP_BCE Q2
U 1 1 5F962855
P 2250 4150
F 0 "Q2" V 2485 4150 50  0000 C CNN
F 1 "TIP42" V 2576 4150 50  0000 C CNN
F 2 "" H 2450 4250 50  0001 C CNN
F 3 "~" H 2250 4150 50  0001 C CNN
	1    2250 4150
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US Rfb3
U 1 1 5F976328
P 2650 3350
F 0 "Rfb3" H 2718 3396 50  0000 L CNN
F 1 "27k" H 2718 3305 50  0000 L CNN
F 2 "" V 2690 3340 50  0001 C CNN
F 3 "~" H 2650 3350 50  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rfb4
U 1 1 5F97632E
P 2650 4050
F 0 "Rfb4" H 2718 4096 50  0000 L CNN
F 1 "10k" H 2718 4005 50  0000 L CNN
F 2 "" V 2690 4040 50  0001 C CNN
F 3 "~" H 2650 4050 50  0001 C CNN
	1    2650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4200 2650 4250
Wire Wire Line
	2950 4250 2650 4250
$Comp
L power:-VDC #PWR03
U 1 1 5F990306
P 1200 4250
F 0 "#PWR03" H 1200 4150 50  0001 C CNN
F 1 "-VDC" V 1200 4479 50  0000 L CNN
F 2 "" H 1200 4250 50  0001 C CNN
F 3 "" H 1200 4250 50  0001 C CNN
	1    1200 4250
	0    -1   1    0   
$EndComp
$Comp
L power:VEE #PWR04
U 1 1 5F9ACF3A
P 2950 4250
F 0 "#PWR04" H 2950 4100 50  0001 C CNN
F 1 "VEE" V 2967 4378 50  0000 L CNN
F 2 "" H 2950 4250 50  0001 C CNN
F 3 "" H 2950 4250 50  0001 C CNN
	1    2950 4250
	0    1    -1   0   
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 5F9B3C87
P 1100 3150
F 0 "#PWR01" H 1100 2900 50  0001 C CNN
F 1 "GNDREF" H 1105 2977 50  0000 C CNN
F 2 "" H 1100 3150 50  0001 C CNN
F 3 "" H 1100 3150 50  0001 C CNN
	1    1100 3150
	1    0    0    -1  
$EndComp
Text Notes 1750 1650 0    50   ~ 0
Vcc = (1+Rfb1/Rfb2)*2.5V\nVee = (1+Rfb3/Rfb4)*-2.5V
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5F8F1916
P 2250 2150
F 0 "Q1" V 2578 2150 50  0000 C CNN
F 1 "TIP41" V 2487 2150 50  0000 C CNN
F 2 "" H 2450 2250 50  0001 C CNN
F 3 "~" H 2250 2150 50  0001 C CNN
	1    2250 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_US RV1
U 1 1 5FA591F1
P 2650 2600
F 0 "RV1" H 2582 2646 50  0000 R CNN
F 1 "5k" H 2582 2555 50  0000 R CNN
F 2 "" H 2650 2600 50  0001 C CNN
F 3 "~" H 2650 2600 50  0001 C CNN
	1    2650 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 2750 2650 2800
Wire Wire Line
	2500 2600 2450 2600
Wire Wire Line
	1900 2450 1900 2600
Wire Wire Line
	2650 2400 2650 2450
$Comp
L Device:R_POT_US RV2
U 1 1 5FAC3BE0
P 2650 3700
F 0 "RV2" H 2582 3746 50  0000 R CNN
F 1 "5k" H 2582 3655 50  0000 R CNN
F 2 "" H 2650 3700 50  0001 C CNN
F 3 "~" H 2650 3700 50  0001 C CNN
	1    2650 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 3550 2650 3500
Wire Wire Line
	1200 4250 1400 4250
Connection ~ 1900 4250
Wire Wire Line
	1900 4250 2050 4250
Wire Wire Line
	2650 3900 2650 3850
Wire Wire Line
	1900 2750 1900 2600
Connection ~ 1900 2600
Wire Wire Line
	1900 2600 2250 2600
Wire Wire Line
	2250 2350 2250 2600
Wire Wire Line
	2450 2850 2450 2600
Wire Wire Line
	2450 3450 2450 3700
Wire Wire Line
	2450 3700 2500 3700
Wire Wire Line
	2450 2050 2650 2050
Connection ~ 2650 2050
Wire Wire Line
	2450 4250 2650 4250
Connection ~ 2650 4250
Wire Wire Line
	1100 3150 1400 3150
Wire Wire Line
	1900 2950 1900 3150
Connection ~ 1900 3150
Wire Wire Line
	1900 4150 1900 4250
Wire Wire Line
	2650 3100 2650 3150
Connection ~ 2650 3150
Wire Wire Line
	2650 3150 2650 3200
Wire Wire Line
	1900 3150 2650 3150
Wire Wire Line
	1900 3850 1900 3700
Wire Wire Line
	2250 3950 2250 3700
Wire Wire Line
	1900 3700 2250 3700
Wire Wire Line
	1900 3150 1900 3350
Connection ~ 1900 3700
Wire Wire Line
	1900 3700 1900 3550
$Comp
L Device:R_US R2
U 1 1 5F991844
P 1900 4000
F 0 "R2" H 1968 4046 50  0000 L CNN
F 1 "1k" H 1968 3955 50  0000 L CNN
F 2 "" V 1940 3990 50  0001 C CNN
F 3 "~" H 1900 4000 50  0001 C CNN
	1    1900 4000
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431LP U2
U 1 1 5F96ACEA
P 1900 3450
F 0 "U2" V 1850 3600 50  0000 R CNN
F 1 "TL431" V 1750 3700 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 3300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 1900 3450 50  0001 C CIN
	1    1900 3450
	0    1    -1   0   
$EndComp
Wire Wire Line
	2000 3450 2450 3450
Wire Wire Line
	2000 2850 2450 2850
$Comp
L Device:C_Small C?
U 1 1 60764C36
P 1650 2850
F 0 "C?" V 1550 2700 50  0000 C CNN
F 1 "10u" V 1512 2850 50  0000 C CNN
F 2 "" H 1650 2850 50  0001 C CNN
F 3 "~" H 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6076D516
P 1650 3450
F 0 "C?" V 1550 3300 50  0000 C CNN
F 1 "10u" V 1512 3450 50  0000 C CNN
F 2 "" H 1650 3450 50  0001 C CNN
F 3 "~" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3150 1650 3350
Connection ~ 1650 3150
Wire Wire Line
	1650 3150 1900 3150
Wire Wire Line
	1650 3550 1650 3700
Wire Wire Line
	1650 3700 1900 3700
Wire Wire Line
	1650 3150 1650 2950
Wire Wire Line
	1650 2750 1650 2600
Wire Wire Line
	1650 2600 1900 2600
$Comp
L Device:C_Small C?
U 1 1 6077CF2E
P 1400 2600
F 0 "C?" V 1171 2600 50  0000 C CNN
F 1 "10u" V 1262 2600 50  0000 C CNN
F 2 "" H 1400 2600 50  0001 C CNN
F 3 "~" H 1400 2600 50  0001 C CNN
	1    1400 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6077D5B2
P 1400 3750
F 0 "C?" V 1171 3750 50  0000 C CNN
F 1 "10u" V 1262 3750 50  0000 C CNN
F 2 "" H 1400 3750 50  0001 C CNN
F 3 "~" H 1400 3750 50  0001 C CNN
	1    1400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2500 1400 2050
Connection ~ 1400 2050
Wire Wire Line
	1400 2050 1900 2050
Wire Wire Line
	1400 2700 1400 3150
Connection ~ 1400 3150
Wire Wire Line
	1400 3150 1650 3150
Wire Wire Line
	1400 3150 1400 3650
Wire Wire Line
	1400 3850 1400 4250
Connection ~ 1400 4250
Wire Wire Line
	1400 4250 1900 4250
$Comp
L Reference_Voltage:TL431LP U?
U 1 1 60891C90
P 4650 2850
F 0 "U?" V 4600 3000 50  0000 R CNN
F 1 "TL431" V 4500 3100 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4650 2700 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 4650 2850 50  0001 C CIN
	1    4650 2850
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 60891C9A
P 4650 2300
F 0 "R?" H 4718 2346 50  0000 L CNN
F 1 "1k" H 4718 2255 50  0000 L CNN
F 2 "" V 4690 2290 50  0001 C CNN
F 3 "~" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rfb?
U 1 1 60891CA4
P 5400 2250
F 0 "Rfb?" H 5468 2296 50  0000 L CNN
F 1 "27k" H 5468 2205 50  0000 L CNN
F 2 "" V 5440 2240 50  0001 C CNN
F 3 "~" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rfb?
U 1 1 60891CAE
P 5400 2950
F 0 "Rfb?" H 5468 2996 50  0000 L CNN
F 1 "10k" H 5468 2905 50  0000 L CNN
F 2 "" V 5440 2940 50  0001 C CNN
F 3 "~" H 5400 2950 50  0001 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2050 4150 2050
Wire Wire Line
	4650 2050 4650 2150
Connection ~ 4650 2050
Wire Wire Line
	4650 2050 4800 2050
Wire Wire Line
	5400 2050 5400 2100
Wire Wire Line
	5750 2050 5400 2050
$Comp
L power:VCC #PWR?
U 1 1 60891CBE
P 5750 2050
F 0 "#PWR?" H 5750 1900 50  0001 C CNN
F 1 "VCC" V 5767 2178 50  0000 L CNN
F 2 "" H 5750 2050 50  0001 C CNN
F 3 "" H 5750 2050 50  0001 C CNN
	1    5750 2050
	0    1    1    0   
$EndComp
$Comp
L power:+VDC #PWR?
U 1 1 60891CC8
P 4000 2050
F 0 "#PWR?" H 4000 1950 50  0001 C CNN
F 1 "+VDC" V 4000 2279 50  0000 L CNN
F 2 "" H 4000 2050 50  0001 C CNN
F 3 "" H 4000 2050 50  0001 C CNN
	1    4000 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 60891CD2
P 5000 2150
F 0 "Q?" V 5235 2150 50  0000 C CNN
F 1 "TIP42" V 5326 2150 50  0000 C CNN
F 2 "" H 5200 2250 50  0001 C CNN
F 3 "~" H 5000 2150 50  0001 C CNN
	1    5000 2150
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US Rfb?
U 1 1 60891CDC
P 5400 3350
F 0 "Rfb?" H 5468 3396 50  0000 L CNN
F 1 "27k" H 5468 3305 50  0000 L CNN
F 2 "" V 5440 3340 50  0001 C CNN
F 3 "~" H 5400 3350 50  0001 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rfb?
U 1 1 60891CE6
P 5400 4050
F 0 "Rfb?" H 5468 4096 50  0000 L CNN
F 1 "10k" H 5468 4005 50  0000 L CNN
F 2 "" V 5440 4040 50  0001 C CNN
F 3 "~" H 5400 4050 50  0001 C CNN
	1    5400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4200 5400 4250
Wire Wire Line
	5700 4250 5400 4250
$Comp
L power:-VDC #PWR?
U 1 1 60891CF2
P 3950 4250
F 0 "#PWR?" H 3950 4150 50  0001 C CNN
F 1 "-VDC" V 3950 4479 50  0000 L CNN
F 2 "" H 3950 4250 50  0001 C CNN
F 3 "" H 3950 4250 50  0001 C CNN
	1    3950 4250
	0    -1   1    0   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 60891CFC
P 5700 4250
F 0 "#PWR?" H 5700 4100 50  0001 C CNN
F 1 "VEE" V 5717 4378 50  0000 L CNN
F 2 "" H 5700 4250 50  0001 C CNN
F 3 "" H 5700 4250 50  0001 C CNN
	1    5700 4250
	0    1    -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60891D06
P 3850 3150
F 0 "#PWR?" H 3850 2900 50  0001 C CNN
F 1 "GNDREF" H 3855 2977 50  0000 C CNN
F 2 "" H 3850 3150 50  0001 C CNN
F 3 "" H 3850 3150 50  0001 C CNN
	1    3850 3150
	1    0    0    -1  
$EndComp
Text Notes 4500 1650 0    50   ~ 0
Vcc = (1+Rfb1/Rfb2)*2.5V\nVee = (1+Rfb3/Rfb4)*-2.5V
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 60891D11
P 5000 4150
F 0 "Q?" V 5328 4150 50  0000 C CNN
F 1 "TIP41" V 5237 4150 50  0000 C CNN
F 2 "" H 5200 4250 50  0001 C CNN
F 3 "~" H 5000 4150 50  0001 C CNN
	1    5000 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_US RV?
U 1 1 60891D1B
P 5400 2600
F 0 "RV?" H 5332 2646 50  0000 R CNN
F 1 "5k" H 5332 2555 50  0000 R CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5400 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 2750 5400 2800
Wire Wire Line
	5250 2600 5200 2600
Wire Wire Line
	4650 2450 4650 2600
Wire Wire Line
	5400 2400 5400 2450
$Comp
L Device:R_POT_US RV?
U 1 1 60891D29
P 5400 3700
F 0 "RV?" H 5332 3746 50  0000 R CNN
F 1 "5k" H 5332 3655 50  0000 R CNN
F 2 "" H 5400 3700 50  0001 C CNN
F 3 "~" H 5400 3700 50  0001 C CNN
	1    5400 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 3550 5400 3500
Wire Wire Line
	3950 4250 4150 4250
Connection ~ 4650 4250
Wire Wire Line
	4650 4250 4800 4250
Wire Wire Line
	5400 3900 5400 3850
Wire Wire Line
	4650 2750 4650 2600
Connection ~ 4650 2600
Wire Wire Line
	4650 2600 5000 2600
Wire Wire Line
	5000 2350 5000 2600
Wire Wire Line
	5200 2850 5200 2600
Wire Wire Line
	5200 3450 5200 3700
Wire Wire Line
	5200 3700 5250 3700
Wire Wire Line
	5200 2050 5400 2050
Connection ~ 5400 2050
Wire Wire Line
	5200 4250 5400 4250
Connection ~ 5400 4250
Wire Wire Line
	3850 3150 4150 3150
Wire Wire Line
	4650 2950 4650 3150
Connection ~ 4650 3150
Wire Wire Line
	4650 4150 4650 4250
Wire Wire Line
	5400 3100 5400 3150
Connection ~ 5400 3150
Wire Wire Line
	5400 3150 5400 3200
Wire Wire Line
	4650 3150 5400 3150
Wire Wire Line
	4650 3850 4650 3700
Wire Wire Line
	5000 3950 5000 3700
Wire Wire Line
	4650 3700 5000 3700
Wire Wire Line
	4650 3150 4650 3350
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4650 3550
$Comp
L Device:R_US R?
U 1 1 60891D51
P 4650 4000
F 0 "R?" H 4718 4046 50  0000 L CNN
F 1 "1k" H 4718 3955 50  0000 L CNN
F 2 "" V 4690 3990 50  0001 C CNN
F 3 "~" H 4650 4000 50  0001 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431LP U?
U 1 1 60891D5B
P 4650 3450
F 0 "U?" V 4600 3600 50  0000 R CNN
F 1 "TL431" V 4500 3700 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4650 3300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 4650 3450 50  0001 C CIN
	1    4650 3450
	0    1    -1   0   
$EndComp
Wire Wire Line
	4750 3450 5200 3450
Wire Wire Line
	4750 2850 5200 2850
$Comp
L Device:C_Small C?
U 1 1 60891D67
P 4400 2850
F 0 "C?" V 4300 2700 50  0000 C CNN
F 1 "10u" V 4262 2850 50  0000 C CNN
F 2 "" H 4400 2850 50  0001 C CNN
F 3 "~" H 4400 2850 50  0001 C CNN
	1    4400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60891D71
P 4400 3450
F 0 "C?" V 4300 3300 50  0000 C CNN
F 1 "10u" V 4262 3450 50  0000 C CNN
F 2 "" H 4400 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3150 4400 3350
Connection ~ 4400 3150
Wire Wire Line
	4400 3150 4650 3150
Wire Wire Line
	4400 3550 4400 3700
Wire Wire Line
	4400 3700 4650 3700
Wire Wire Line
	4400 3150 4400 2950
Wire Wire Line
	4400 2750 4400 2600
Wire Wire Line
	4400 2600 4650 2600
$Comp
L Device:C_Small C?
U 1 1 60891D83
P 4150 2600
F 0 "C?" V 3921 2600 50  0000 C CNN
F 1 "10u" V 4012 2600 50  0000 C CNN
F 2 "" H 4150 2600 50  0001 C CNN
F 3 "~" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60891D8D
P 4150 3750
F 0 "C?" V 3921 3750 50  0000 C CNN
F 1 "10u" V 4012 3750 50  0000 C CNN
F 2 "" H 4150 3750 50  0001 C CNN
F 3 "~" H 4150 3750 50  0001 C CNN
	1    4150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2500 4150 2050
Connection ~ 4150 2050
Wire Wire Line
	4150 2050 4650 2050
Wire Wire Line
	4150 2700 4150 3150
Connection ~ 4150 3150
Wire Wire Line
	4150 3150 4400 3150
Wire Wire Line
	4150 3150 4150 3650
Wire Wire Line
	4150 3850 4150 4250
Connection ~ 4150 4250
Wire Wire Line
	4150 4250 4650 4250
$EndSCHEMATC
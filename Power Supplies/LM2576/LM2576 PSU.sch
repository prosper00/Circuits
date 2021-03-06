EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "https://www.smbaker.com/lm2576-constant-voltage-constant-current-switching-power-supply"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Transformer_1P_2S T1
U 1 1 60C3B9D3
P 1350 2300
F 0 "T1" H 1350 2881 50  0000 C CNN
F 1 "Transformer_1P_2S" H 1350 2790 50  0000 C CNN
F 2 "" H 1350 2300 50  0001 C CNN
F 3 "~" H 1350 2300 50  0001 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 60C3EEC0
P 2950 2050
F 0 "D4" V 2996 1970 50  0000 R CNN
F 1 "5817" V 2905 1970 50  0000 R CNN
F 2 "" H 2950 2050 50  0001 C CNN
F 3 "~" H 2950 2050 50  0001 C CNN
	1    2950 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 60C3F48E
P 2650 2050
F 0 "D3" V 2696 1970 50  0000 R CNN
F 1 "5817" V 2605 1970 50  0000 R CNN
F 2 "" H 2650 2050 50  0001 C CNN
F 3 "~" H 2650 2050 50  0001 C CNN
	1    2650 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 60C3FA59
P 2350 2050
F 0 "D2" V 2304 1970 50  0000 R CNN
F 1 "5817" V 2395 1970 50  0000 R CNN
F 2 "" H 2350 2050 50  0001 C CNN
F 3 "~" H 2350 2050 50  0001 C CNN
	1    2350 2050
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 60C400C1
P 2050 2050
F 0 "D1" V 2004 1970 50  0000 R CNN
F 1 "5817" V 2095 1970 50  0000 R CNN
F 2 "" H 2050 2050 50  0001 C CNN
F 3 "~" H 2050 2050 50  0001 C CNN
	1    2050 2050
	0    -1   1    0   
$EndComp
Wire Wire Line
	2650 1900 2350 1900
Wire Wire Line
	2950 1900 2950 1850
Wire Wire Line
	2950 1850 2050 1850
Wire Wire Line
	2050 1850 2050 1900
Wire Wire Line
	2950 2200 2650 2200
Wire Wire Line
	2350 2200 2200 2200
Wire Wire Line
	1750 1900 1750 1850
Wire Wire Line
	1750 1850 2050 1850
Connection ~ 2050 1850
Wire Wire Line
	1750 2200 1800 2200
Wire Wire Line
	1800 2200 1800 1900
Connection ~ 2350 1900
Wire Wire Line
	1800 1900 2350 1900
Wire Wire Line
	2200 2200 2200 2250
Connection ~ 2200 2200
Wire Wire Line
	2200 2200 2050 2200
Wire Wire Line
	2200 2250 3400 2250
$Comp
L Device:CP1_Small C1
U 1 1 60C59966
P 3400 2050
F 0 "C1" H 3491 2096 50  0000 L CNN
F 1 "1000u" H 3491 2005 50  0000 L CNN
F 2 "" H 3400 2050 50  0001 C CNN
F 3 "~" H 3400 2050 50  0001 C CNN
	1    3400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1850 3400 1950
Wire Wire Line
	3400 2150 3400 2250
Wire Wire Line
	3400 1850 3450 1850
Wire Wire Line
	2950 2200 3250 2200
Wire Wire Line
	3250 2200 3250 1850
Wire Wire Line
	3250 1850 3400 1850
Connection ~ 2950 2200
Connection ~ 3400 1850
$Comp
L Regulator_Switching:LM2596T-ADJ U?
U 1 1 60D39840
P 4750 3950
F 0 "U?" H 4750 4317 50  0000 C CNN
F 1 "TL2596" H 4750 4226 50  0000 C CNN
F 2 "" H 4800 3700 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlc272.pdf" H 4750 3950 50  0001 C CNN
	1    4750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3850 3800 3850
Wire Wire Line
	4250 4050 4150 4050
Wire Wire Line
	4150 4050 4150 4450
Wire Wire Line
	4750 4250 4750 4450
$Comp
L power:Earth #PWR?
U 1 1 60D3D7EA
P 4750 4450
F 0 "#PWR?" H 4750 4200 50  0001 C CNN
F 1 "Earth" H 4750 4300 50  0001 C CNN
F 2 "" H 4750 4450 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
	1    4750 4450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60D3E14E
P 4150 4450
F 0 "#PWR?" H 4150 4200 50  0001 C CNN
F 1 "Earth" H 4150 4300 50  0001 C CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "~" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60D3E7AE
P 3800 4450
F 0 "#PWR?" H 3800 4200 50  0001 C CNN
F 1 "Earth" H 3800 4300 50  0001 C CNN
F 2 "" H 3800 4450 50  0001 C CNN
F 3 "~" H 3800 4450 50  0001 C CNN
	1    3800 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60D3EE58
P 3800 4150
F 0 "C?" H 3892 4196 50  0000 L CNN
F 1 "1000u" H 3892 4105 50  0000 L CNN
F 2 "" H 3800 4150 50  0001 C CNN
F 3 "~" H 3800 4150 50  0001 C CNN
	1    3800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4450 3800 4250
Wire Wire Line
	3800 4050 3800 3850
Connection ~ 3800 3850
$Comp
L Device:D_Schottky D?
U 1 1 60D40B4C
P 5300 4250
F 0 "D?" V 5254 4330 50  0000 L CNN
F 1 "5817" V 5345 4330 50  0000 L CNN
F 2 "" H 5300 4250 50  0001 C CNN
F 3 "~" H 5300 4250 50  0001 C CNN
	1    5300 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4050 5300 4050
Wire Wire Line
	5300 4050 5300 4100
$Comp
L power:Earth #PWR?
U 1 1 60D445A0
P 5300 4450
F 0 "#PWR?" H 5300 4200 50  0001 C CNN
F 1 "Earth" H 5300 4300 50  0001 C CNN
F 2 "" H 5300 4450 50  0001 C CNN
F 3 "~" H 5300 4450 50  0001 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4450 5300 4400
$Comp
L Device:L_Core_Ferrite L?
U 1 1 60D45F67
P 5550 4050
F 0 "L?" V 5500 4050 50  0000 C CNN
F 1 "33u" V 5684 4050 50  0000 C CNN
F 2 "" H 5550 4050 50  0001 C CNN
F 3 "~" H 5550 4050 50  0001 C CNN
	1    5550 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60D46EBE
P 5850 4250
F 0 "C?" H 5942 4296 50  0000 L CNN
F 1 "220u" H 5942 4205 50  0000 L CNN
F 2 "" H 5850 4250 50  0001 C CNN
F 3 "~" H 5850 4250 50  0001 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4050 5400 4050
Wire Wire Line
	5850 4050 5850 4150
Wire Wire Line
	5700 4050 5850 4050
Connection ~ 5300 4050
$Comp
L power:Earth #PWR?
U 1 1 60D48741
P 5850 4450
F 0 "#PWR?" H 5850 4200 50  0001 C CNN
F 1 "Earth" H 5850 4300 50  0001 C CNN
F 2 "" H 5850 4450 50  0001 C CNN
F 3 "~" H 5850 4450 50  0001 C CNN
	1    5850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4450 5850 4350
$Comp
L Device:R_POT_US RV?
U 1 1 60D4D225
P 6350 4100
F 0 "RV?" V 6237 4100 50  0000 C CNN
F 1 "10k" V 6146 4100 50  0000 C CNN
F 2 "" H 6350 4100 50  0001 C CNN
F 3 "~" H 6350 4100 50  0001 C CNN
	1    6350 4100
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60D4F601
P 6350 4450
F 0 "#PWR?" H 6350 4200 50  0001 C CNN
F 1 "Earth" H 6350 4300 50  0001 C CNN
F 2 "" H 6350 4450 50  0001 C CNN
F 3 "~" H 6350 4450 50  0001 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3850 5500 3850
Connection ~ 5850 4050
Wire Wire Line
	6350 4250 6350 4450
Wire Wire Line
	5850 4050 5850 3700
$Comp
L Device:R_US R?
U 1 1 60D8EBA7
P 6100 3700
F 0 "R?" V 6305 3700 50  0000 C CNN
F 1 "1" V 6214 3700 50  0000 C CNN
F 2 "" V 6140 3690 50  0001 C CNN
F 3 "~" H 6100 3700 50  0001 C CNN
	1    6100 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3700 6350 3700
Text Label 7850 3700 2    50   ~ 0
VOut
Text Label 2000 3850 0    50   ~ 0
VIn
$Comp
L Amplifier_Operational:TLC272 U?
U 1 1 60D9D799
P 7150 3000
F 0 "U?" H 7150 2633 50  0000 C CNN
F 1 "TLC272" H 7150 2724 50  0000 C CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc272.pdf" H 7150 3000 50  0001 C CNN
	1    7150 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 60DA61C2
P 5850 3300
F 0 "R?" V 6055 3300 50  0000 C CNN
F 1 "100k" V 5964 3300 50  0000 C CNN
F 2 "" V 5890 3290 50  0001 C CNN
F 3 "~" H 5850 3300 50  0001 C CNN
	1    5850 3300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 60DA6987
P 6350 3300
F 0 "R?" V 6555 3300 50  0000 C CNN
F 1 "100k" V 6464 3300 50  0000 C CNN
F 2 "" V 6390 3290 50  0001 C CNN
F 3 "~" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3450 5850 3700
Connection ~ 5850 3700
Wire Wire Line
	5850 3700 5950 3700
Wire Wire Line
	6350 3450 6350 3700
Connection ~ 6350 3700
Wire Wire Line
	5850 3150 5850 2900
Wire Wire Line
	5850 2900 6850 2900
Wire Wire Line
	6350 3150 6350 3100
Wire Wire Line
	6350 3100 6700 3100
$Comp
L Device:R_US R?
U 1 1 60DC1295
P 6200 2550
F 0 "R?" V 6405 2550 50  0000 C CNN
F 1 "100k" V 6314 2550 50  0000 C CNN
F 2 "" V 6240 2540 50  0001 C CNN
F 3 "~" H 6200 2550 50  0001 C CNN
	1    6200 2550
	0    1    -1   0   
$EndComp
Wire Wire Line
	5850 2550 5850 2900
Wire Wire Line
	5850 2550 6050 2550
Connection ~ 5850 2900
Wire Wire Line
	6350 2550 7500 2550
Wire Wire Line
	7500 2550 7500 3000
Wire Wire Line
	7500 3000 7450 3000
$Comp
L Device:R_US R?
U 1 1 60DE590E
P 6700 3300
F 0 "R?" V 6905 3300 50  0000 C CNN
F 1 "100k" V 6814 3300 50  0000 C CNN
F 2 "" V 6740 3290 50  0001 C CNN
F 3 "~" H 6700 3300 50  0001 C CNN
	1    6700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3150 6700 3100
Connection ~ 6700 3100
Wire Wire Line
	6700 3100 6850 3100
$Comp
L power:Earth #PWR?
U 1 1 60DE8243
P 6700 3500
F 0 "#PWR?" H 6700 3250 50  0001 C CNN
F 1 "Earth" H 6700 3350 50  0001 C CNN
F 2 "" H 6700 3500 50  0001 C CNN
F 3 "~" H 6700 3500 50  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3500 6700 3450
Wire Wire Line
	6350 3950 6350 3700
$Comp
L Amplifier_Operational:TLC272 U?
U 2 1 60E97AF7
P 7150 2200
F 0 "U?" H 7150 1833 50  0000 C CNN
F 1 "TLC272" H 7150 1924 50  0000 C CNN
F 2 "" H 7150 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc272.pdf" H 7150 2200 50  0001 C CNN
	2    7150 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2300 7500 2300
Wire Wire Line
	7500 2300 7500 2550
Connection ~ 7500 2550
$Comp
L Device:R_POT_US RV?
U 1 1 60EA1E8A
P 7700 2100
F 0 "RV?" V 7587 2100 50  0000 C CNN
F 1 "100k" V 7496 2100 50  0000 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "~" H 7700 2100 50  0001 C CNN
	1    7700 2100
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60EA297F
P 7700 2350
F 0 "#PWR?" H 7700 2100 50  0001 C CNN
F 1 "Earth" H 7700 2200 50  0001 C CNN
F 2 "" H 7700 2350 50  0001 C CNN
F 3 "~" H 7700 2350 50  0001 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2100 7550 2100
Wire Wire Line
	7700 2250 7700 2350
$Comp
L Device:LED D?
U 1 1 60EA9448
P 5800 2200
F 0 "D?" H 5793 1945 50  0000 C CNN
F 1 "LED" H 5793 2036 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "~" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 2200 5500 2200
Wire Wire Line
	5500 2200 5500 3850
Connection ~ 5500 3850
Wire Wire Line
	5500 3850 6100 3850
Wire Wire Line
	6100 3850 6100 4100
Wire Wire Line
	6100 4100 6200 4100
Wire Wire Line
	5950 2200 6850 2200
$Comp
L Device:R_US R?
U 1 1 60F0DF19
P 3000 4050
F 0 "R?" V 3205 4050 50  0000 C CNN
F 1 "510" V 3114 4050 50  0000 C CNN
F 2 "" V 3040 4040 50  0001 C CNN
F 3 "~" H 3000 4050 50  0001 C CNN
	1    3000 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60F1B7AE
P 3000 4950
F 0 "#PWR?" H 3000 4700 50  0001 C CNN
F 1 "Earth" H 3000 4800 50  0001 C CNN
F 2 "" H 3000 4950 50  0001 C CNN
F 3 "~" H 3000 4950 50  0001 C CNN
	1    3000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3850 3000 3900
Wire Wire Line
	3000 4200 3000 4250
Connection ~ 3000 3850
Wire Wire Line
	3000 3850 2000 3850
$Comp
L Amplifier_Operational:TLC272 U?
U 3 1 60F1F810
P 2400 4600
F 0 "U?" H 2500 4650 50  0000 R CNN
F 1 "TLC272" H 2600 4550 50  0000 R CNN
F 2 "" H 2400 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc272.pdf" H 2400 4600 50  0001 C CNN
	3    2400 4600
	-1   0    0    -1  
$EndComp
Connection ~ 3000 4250
Wire Wire Line
	3000 4250 3000 4350
$Comp
L Device:L_Core_Ferrite L?
U 1 1 60F4100F
P 7050 3700
F 0 "L?" V 7000 3700 50  0000 C CNN
F 1 "33u" V 7184 3700 50  0000 C CNN
F 2 "" H 7050 3700 50  0001 C CNN
F 3 "~" H 7050 3700 50  0001 C CNN
	1    7050 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60F57663
P 7250 4000
F 0 "C?" H 7342 4046 50  0000 L CNN
F 1 "220u" H 7342 3955 50  0000 L CNN
F 2 "" H 7250 4000 50  0001 C CNN
F 3 "~" H 7250 4000 50  0001 C CNN
	1    7250 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60F57ECD
P 6850 4000
F 0 "C?" H 6942 4046 50  0000 L CNN
F 1 "220u" H 6942 3955 50  0000 L CNN
F 2 "" H 6850 4000 50  0001 C CNN
F 3 "~" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3700 6850 3700
Wire Wire Line
	6850 3900 6850 3700
Connection ~ 6850 3700
Wire Wire Line
	6850 3700 6900 3700
Wire Wire Line
	7200 3700 7250 3700
Wire Wire Line
	7250 3700 7250 3900
Wire Wire Line
	7250 3700 7850 3700
Connection ~ 7250 3700
$Comp
L power:Earth #PWR?
U 1 1 60F6D5B3
P 6850 4450
F 0 "#PWR?" H 6850 4200 50  0001 C CNN
F 1 "Earth" H 6850 4300 50  0001 C CNN
F 2 "" H 6850 4450 50  0001 C CNN
F 3 "~" H 6850 4450 50  0001 C CNN
	1    6850 4450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60F6DE6D
P 7250 4450
F 0 "#PWR?" H 7250 4200 50  0001 C CNN
F 1 "Earth" H 7250 4300 50  0001 C CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "~" H 7250 4450 50  0001 C CNN
	1    7250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4450 7250 4100
Wire Wire Line
	6850 4450 6850 4100
$Comp
L Reference_Voltage:TL431LP U?
U 1 1 60F82E18
P 3000 4450
F 0 "U?" V 3046 4380 50  0000 R CNN
F 1 "TL431LP" V 2955 4380 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3000 4300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 3000 4450 50  0001 C CIN
	1    3000 4450
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 60F88B20
P 3200 4250
F 0 "R?" V 3405 4250 50  0000 C CNN
F 1 "10k" V 3314 4250 50  0000 C CNN
F 2 "" V 3240 4240 50  0001 C CNN
F 3 "~" H 3200 4250 50  0001 C CNN
	1    3200 4250
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 60F891ED
P 3400 4700
F 0 "R?" V 3605 4700 50  0000 C CNN
F 1 "3k3" V 3514 4700 50  0000 C CNN
F 2 "" V 3440 4690 50  0001 C CNN
F 3 "~" H 3400 4700 50  0001 C CNN
	1    3400 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60F8E7B8
P 3400 4950
F 0 "#PWR?" H 3400 4700 50  0001 C CNN
F 1 "Earth" H 3400 4800 50  0001 C CNN
F 2 "" H 3400 4950 50  0001 C CNN
F 3 "~" H 3400 4950 50  0001 C CNN
	1    3400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4950 3400 4850
Wire Wire Line
	3000 4550 3000 4950
Wire Wire Line
	3400 4450 3400 4550
Wire Wire Line
	3100 4450 3400 4450
Wire Wire Line
	3000 4250 3050 4250
Wire Wire Line
	3350 4250 3400 4250
Wire Wire Line
	3400 4250 3400 4450
Connection ~ 3400 4450
Wire Wire Line
	3000 3850 3800 3850
$Comp
L Device:R_US R?
U 1 1 60FD4F56
P 7700 1750
F 0 "R?" V 7905 1750 50  0000 C CNN
F 1 "1M" V 7814 1750 50  0000 C CNN
F 2 "" V 7740 1740 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 1950 7700 1900
Text Label 2250 4250 0    50   ~ 0
+10V
Wire Wire Line
	2250 4250 2500 4250
Wire Wire Line
	2500 4250 2500 4300
Connection ~ 2500 4250
Wire Wire Line
	2500 4250 3000 4250
$Comp
L power:Earth #PWR?
U 1 1 610174F6
P 2500 4950
F 0 "#PWR?" H 2500 4700 50  0001 C CNN
F 1 "Earth" H 2500 4800 50  0001 C CNN
F 2 "" H 2500 4950 50  0001 C CNN
F 3 "~" H 2500 4950 50  0001 C CNN
	1    2500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4950 2500 4900
Wire Wire Line
	7700 1600 7700 1500
Text Label 7700 1500 0    50   ~ 0
+10V
Wire Notes Line
	7600 3550 7600 4650
Wire Notes Line
	7600 4650 6750 4650
Wire Notes Line
	6750 4650 6750 3550
Wire Notes Line
	6750 3550 7600 3550
$EndSCHEMATC

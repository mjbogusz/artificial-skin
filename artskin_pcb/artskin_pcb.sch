EESchema Schematic File Version 4
LIBS:artskin_pcb-cache
EELAYER 26 0
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
L Transistor_Array:ULN2003A U1
U 1 1 5C1ACC8D
P 5050 2800
F 0 "U1" H 5050 3467 50  0000 C CNN
F 1 "ULN2003A" H 5050 3376 50  0000 C CNN
F 2 "" H 5100 2250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5150 2600 50  0001 C CNN
	1    5050 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C1AD647
P 6100 1250
F 0 "#PWR01" H 6100 1100 50  0001 C CNN
F 1 "VCC" H 6117 1423 50  0000 C CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "" H 6100 1250 50  0001 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S1
U 1 1 5C1AD84B
P 6200 2100
F 0 "S1" H 6328 2146 50  0000 L CNN
F 1 "R_1_1" H 6328 2055 50  0000 L CNN
F 2 "" V 6130 2100 50  0001 C CNN
F 3 "~" H 6200 2100 50  0001 C CNN
	1    6200 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C1AD9A3
P 6200 1600
F 0 "R1" H 6270 1646 50  0000 L CNN
F 1 "100R" H 6270 1555 50  0000 L CNN
F 2 "" V 6130 1600 50  0001 C CNN
F 3 "~" H 6200 1600 50  0001 C CNN
	1    6200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C1ADAD0
P 6850 1600
F 0 "R2" H 6920 1646 50  0000 L CNN
F 1 "100R" H 6920 1555 50  0000 L CNN
F 2 "" V 6780 1600 50  0001 C CNN
F 3 "~" H 6850 1600 50  0001 C CNN
	1    6850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C1ADAF8
P 7500 1600
F 0 "R3" H 7570 1646 50  0000 L CNN
F 1 "100R" H 7570 1555 50  0000 L CNN
F 2 "" V 7430 1600 50  0001 C CNN
F 3 "~" H 7500 1600 50  0001 C CNN
	1    7500 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C1ADB21
P 8150 1600
F 0 "R4" H 8220 1646 50  0000 L CNN
F 1 "100R" H 8220 1555 50  0000 L CNN
F 2 "" V 8080 1600 50  0001 C CNN
F 3 "~" H 8150 1600 50  0001 C CNN
	1    8150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1250 6100 1350
Wire Wire Line
	6100 1350 6200 1350
Wire Wire Line
	6200 1350 6200 1450
Wire Wire Line
	6200 1350 6850 1350
Wire Wire Line
	6850 1350 6850 1450
Connection ~ 6200 1350
Wire Wire Line
	6850 1350 7500 1350
Wire Wire Line
	7500 1350 7500 1450
Connection ~ 6850 1350
Wire Wire Line
	7500 1350 8150 1350
Wire Wire Line
	8150 1350 8150 1450
Connection ~ 7500 1350
Wire Wire Line
	6200 1750 6200 1850
Wire Wire Line
	6850 1750 6850 1850
Wire Wire Line
	7500 1750 7500 1850
Wire Wire Line
	8150 1750 8150 1850
Wire Wire Line
	6200 1850 6300 1850
Connection ~ 6200 1850
Wire Wire Line
	6200 1850 6200 1950
Wire Wire Line
	6850 1850 6950 1850
Connection ~ 6850 1850
Wire Wire Line
	6850 1850 6850 1950
Wire Wire Line
	7500 1850 7600 1850
Connection ~ 7500 1850
Wire Wire Line
	7500 1850 7500 1950
Wire Wire Line
	8150 1850 8250 1850
Connection ~ 8150 1850
Wire Wire Line
	8150 1850 8150 1950
Text GLabel 6300 1850 2    50   Input ~ 0
ADC1
Text GLabel 6950 1850 2    50   Input ~ 0
ADC2
Text GLabel 7600 1850 2    50   Input ~ 0
ADC3
Text GLabel 8250 1850 2    50   Input ~ 0
ADC4
Text GLabel 4550 2600 0    50   Input ~ 0
D1
Text GLabel 4550 2700 0    50   Input ~ 0
D1
Text GLabel 4550 2800 0    50   Input ~ 0
D1
Text GLabel 4550 2900 0    50   Input ~ 0
D1
NoConn ~ 4650 3000
NoConn ~ 4650 3100
NoConn ~ 4650 3200
NoConn ~ 5450 3200
NoConn ~ 5450 3100
NoConn ~ 5450 3000
NoConn ~ 5450 2400
$Comp
L power:GND #PWR02
U 1 1 5C1AFE6F
P 5050 3500
F 0 "#PWR02" H 5050 3250 50  0001 C CNN
F 1 "GND" H 5055 3327 50  0000 C CNN
F 2 "" H 5050 3500 50  0001 C CNN
F 3 "" H 5050 3500 50  0001 C CNN
	1    5050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3500 5050 3400
Wire Wire Line
	6200 1850 6100 1850
Wire Wire Line
	4550 2600 4650 2600
Wire Wire Line
	4550 2700 4650 2700
Wire Wire Line
	4550 2800 4650 2800
Wire Wire Line
	4550 2900 4650 2900
Wire Wire Line
	6100 1850 6100 2400
Wire Wire Line
	6100 2400 6200 2400
Wire Wire Line
	6200 2400 6200 2450
Wire Wire Line
	6100 2400 6100 2900
Wire Wire Line
	6100 2900 6200 2900
Wire Wire Line
	6200 2900 6200 2950
Connection ~ 6100 2400
Wire Wire Line
	6100 2900 6100 3400
Wire Wire Line
	6100 3400 6200 3400
Wire Wire Line
	6200 3400 6200 3450
Connection ~ 6100 2900
Wire Wire Line
	6200 3800 6200 3750
Wire Wire Line
	6200 3800 6850 3800
Wire Wire Line
	6850 3800 6850 3750
Connection ~ 6200 3800
Wire Wire Line
	6850 3800 7500 3800
Wire Wire Line
	7500 3800 7500 3750
Connection ~ 6850 3800
Wire Wire Line
	7500 3800 8150 3800
Wire Wire Line
	8150 3800 8150 3750
Connection ~ 7500 3800
Wire Wire Line
	5550 3800 5550 2900
Wire Wire Line
	5550 2900 5450 2900
Wire Wire Line
	5550 3800 6200 3800
Wire Wire Line
	5450 2800 5650 2800
Wire Wire Line
	5650 2800 5650 3300
Wire Wire Line
	5650 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3250
Wire Wire Line
	6200 3300 6850 3300
Wire Wire Line
	6850 3300 6850 3250
Connection ~ 6200 3300
Wire Wire Line
	6850 3300 7500 3300
Wire Wire Line
	7500 3300 7500 3250
Connection ~ 6850 3300
Wire Wire Line
	7500 3300 8150 3300
Wire Wire Line
	8150 3300 8150 3250
Connection ~ 7500 3300
Wire Wire Line
	5450 2700 5750 2700
Wire Wire Line
	5750 2700 5750 2800
Wire Wire Line
	5750 2800 6200 2800
Wire Wire Line
	6200 2800 6200 2750
Wire Wire Line
	6200 2800 6850 2800
Wire Wire Line
	6850 2800 6850 2750
Connection ~ 6200 2800
Wire Wire Line
	6850 2800 7500 2800
Wire Wire Line
	7500 2800 7500 2750
Connection ~ 6850 2800
Wire Wire Line
	7500 2800 8150 2800
Wire Wire Line
	8150 2800 8150 2750
Connection ~ 7500 2800
Wire Wire Line
	5450 2600 5850 2600
Wire Wire Line
	5850 2600 5850 2300
Wire Wire Line
	5850 2300 6200 2300
Wire Wire Line
	6200 2300 6200 2250
Wire Wire Line
	6200 2300 6850 2300
Wire Wire Line
	6850 2300 6850 2250
Connection ~ 6200 2300
Wire Wire Line
	6850 2300 7500 2300
Wire Wire Line
	7500 2300 7500 2250
Connection ~ 6850 2300
Wire Wire Line
	7500 2300 8150 2300
Wire Wire Line
	8150 2300 8150 2250
Connection ~ 7500 2300
Wire Wire Line
	6850 1850 6750 1850
Wire Wire Line
	6750 1850 6750 2400
Wire Wire Line
	6750 3400 6850 3400
Wire Wire Line
	6850 3400 6850 3450
Wire Wire Line
	6850 2950 6850 2900
Wire Wire Line
	6850 2900 6750 2900
Connection ~ 6750 2900
Wire Wire Line
	6750 2900 6750 3400
Wire Wire Line
	6850 2450 6850 2400
Wire Wire Line
	6850 2400 6750 2400
Connection ~ 6750 2400
Wire Wire Line
	6750 2400 6750 2900
Wire Wire Line
	7500 1850 7400 1850
Wire Wire Line
	7400 1850 7400 2400
Wire Wire Line
	7400 3400 7500 3400
Wire Wire Line
	7500 3400 7500 3450
Wire Wire Line
	7500 2950 7500 2900
Wire Wire Line
	7500 2900 7400 2900
Connection ~ 7400 2900
Wire Wire Line
	7400 2900 7400 3400
Wire Wire Line
	7500 2450 7500 2400
Wire Wire Line
	7500 2400 7400 2400
Connection ~ 7400 2400
Wire Wire Line
	7400 2400 7400 2900
Wire Wire Line
	8150 1850 8050 1850
Wire Wire Line
	8050 1850 8050 2400
Wire Wire Line
	8050 3400 8150 3400
Wire Wire Line
	8150 3400 8150 3450
Wire Wire Line
	8150 2950 8150 2900
Wire Wire Line
	8150 2900 8050 2900
Connection ~ 8050 2900
Wire Wire Line
	8050 2900 8050 3400
Wire Wire Line
	8150 2450 8150 2400
Wire Wire Line
	8150 2400 8050 2400
Connection ~ 8050 2400
Wire Wire Line
	8050 2400 8050 2900
$Comp
L Device:R_Variable S2
U 1 1 5C1D6C12
P 6850 2100
F 0 "S2" H 6978 2146 50  0000 L CNN
F 1 "R_1_2" H 6978 2055 50  0000 L CNN
F 2 "" V 6780 2100 50  0001 C CNN
F 3 "~" H 6850 2100 50  0001 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S3
U 1 1 5C1D6C42
P 7500 2100
F 0 "S3" H 7628 2146 50  0000 L CNN
F 1 "R_1_3" H 7628 2055 50  0000 L CNN
F 2 "" V 7430 2100 50  0001 C CNN
F 3 "~" H 7500 2100 50  0001 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S4
U 1 1 5C1D6C74
P 8150 2100
F 0 "S4" H 8278 2146 50  0000 L CNN
F 1 "R_1_4" H 8278 2055 50  0000 L CNN
F 2 "" V 8080 2100 50  0001 C CNN
F 3 "~" H 8150 2100 50  0001 C CNN
	1    8150 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S5
U 1 1 5C1D6D4E
P 6200 2600
F 0 "S5" H 6328 2646 50  0000 L CNN
F 1 "R_2_1" H 6328 2555 50  0000 L CNN
F 2 "" V 6130 2600 50  0001 C CNN
F 3 "~" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S9
U 1 1 5C1D6DA6
P 6200 3100
F 0 "S9" H 6328 3146 50  0000 L CNN
F 1 "R_3_1" H 6328 3055 50  0000 L CNN
F 2 "" V 6130 3100 50  0001 C CNN
F 3 "~" H 6200 3100 50  0001 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S13
U 1 1 5C1D6E09
P 6200 3600
F 0 "S13" H 6328 3646 50  0000 L CNN
F 1 "R_4_1" H 6328 3555 50  0000 L CNN
F 2 "" V 6130 3600 50  0001 C CNN
F 3 "~" H 6200 3600 50  0001 C CNN
	1    6200 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S6
U 1 1 5C1D6E7D
P 6850 2600
F 0 "S6" H 6978 2646 50  0000 L CNN
F 1 "R_2_2" H 6978 2555 50  0000 L CNN
F 2 "" V 6780 2600 50  0001 C CNN
F 3 "~" H 6850 2600 50  0001 C CNN
	1    6850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S7
U 1 1 5C1D6EB7
P 7500 2600
F 0 "S7" H 7628 2646 50  0000 L CNN
F 1 "R_2_3" H 7628 2555 50  0000 L CNN
F 2 "" V 7430 2600 50  0001 C CNN
F 3 "~" H 7500 2600 50  0001 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S8
U 1 1 5C1D6EF1
P 8150 2600
F 0 "S8" H 8278 2646 50  0000 L CNN
F 1 "R_2_4" H 8278 2555 50  0000 L CNN
F 2 "" V 8080 2600 50  0001 C CNN
F 3 "~" H 8150 2600 50  0001 C CNN
	1    8150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S10
U 1 1 5C1D7064
P 6850 3100
F 0 "S10" H 6978 3146 50  0000 L CNN
F 1 "R_3_2" H 6978 3055 50  0000 L CNN
F 2 "" V 6780 3100 50  0001 C CNN
F 3 "~" H 6850 3100 50  0001 C CNN
	1    6850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S11
U 1 1 5C1D70E6
P 7500 3100
F 0 "S11" H 7628 3146 50  0000 L CNN
F 1 "R_3_3" H 7628 3055 50  0000 L CNN
F 2 "" V 7430 3100 50  0001 C CNN
F 3 "~" H 7500 3100 50  0001 C CNN
	1    7500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S12
U 1 1 5C1D7126
P 8150 3100
F 0 "S12" H 8278 3146 50  0000 L CNN
F 1 "R_3_4" H 8278 3055 50  0000 L CNN
F 2 "" V 8080 3100 50  0001 C CNN
F 3 "~" H 8150 3100 50  0001 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S14
U 1 1 5C1D7210
P 6850 3600
F 0 "S14" H 6978 3646 50  0000 L CNN
F 1 "R_4_2" H 6978 3555 50  0000 L CNN
F 2 "" V 6780 3600 50  0001 C CNN
F 3 "~" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S15
U 1 1 5C1D7252
P 7500 3600
F 0 "S15" H 7628 3646 50  0000 L CNN
F 1 "R_4_3" H 7628 3555 50  0000 L CNN
F 2 "" V 7430 3600 50  0001 C CNN
F 3 "~" H 7500 3600 50  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable S16
U 1 1 5C1D7298
P 8150 3600
F 0 "S16" H 8278 3646 50  0000 L CNN
F 1 "R_4_4" H 8278 3555 50  0000 L CNN
F 2 "" V 8080 3600 50  0001 C CNN
F 3 "~" H 8150 3600 50  0001 C CNN
	1    8150 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC

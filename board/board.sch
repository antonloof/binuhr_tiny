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
L board-rescue:USB_B_Micro-Connector J2
U 1 1 612154A6
P 1450 5750
F 0 "J2" H 1507 6217 50  0000 C CNN
F 1 "USB_B_Micro" H 1507 6126 50  0000 C CNN
F 2 "good_things:USB_MICRO_10118193-0001LF" H 1600 5700 50  0001 C CNN
F 3 "~" H 1600 5700 50  0001 C CNN
	1    1450 5750
	1    0    0    -1  
$EndComp
NoConn ~ 1350 6150
$Comp
L power:GND #PWR06
U 1 1 612CF1A6
P 1450 6150
F 0 "#PWR06" H 1450 5900 50  0001 C CNN
F 1 "GND" H 1455 5977 50  0000 C CNN
F 2 "" H 1450 6150 50  0001 C CNN
F 3 "" H 1450 6150 50  0001 C CNN
	1    1450 6150
	1    0    0    -1  
$EndComp
NoConn ~ 1750 5750
NoConn ~ 1750 5850
NoConn ~ 1750 5950
$Comp
L Device:C_Small C3
U 1 1 612D2754
P 2850 5700
F 0 "C3" H 2942 5746 50  0000 L CNN
F 1 "10u" H 2942 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2850 5700 50  0001 C CNN
F 3 "~" H 2850 5700 50  0001 C CNN
	1    2850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5600 2850 5550
$Comp
L power:GND #PWR012
U 1 1 612D3988
P 2850 5800
F 0 "#PWR012" H 2850 5550 50  0001 C CNN
F 1 "GND" H 2855 5627 50  0000 C CNN
F 2 "" H 2850 5800 50  0001 C CNN
F 3 "" H 2850 5800 50  0001 C CNN
	1    2850 5800
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:NPIC6C595-good_things U5
U 1 1 612DB5CE
P 6150 3650
F 0 "U5" H 6150 4325 50  0000 C CNN
F 1 "NPIC6C596" H 6150 4234 50  0000 C CNN
F 2 "Package_SO:STC_SOP-16_3.9x9.9mm_P1.27mm" H 6150 3200 50  0001 C CNN
F 3 "" H 6150 3200 50  0001 C CNN
	1    6150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3200 5800 3200
Wire Wire Line
	5700 3200 5700 3300
Wire Wire Line
	5700 3300 5800 3300
Connection ~ 5700 3200
$Comp
L power:+3V3 #PWR03
U 1 1 612F4C8A
P 1300 6700
F 0 "#PWR03" H 1300 6550 50  0001 C CNN
F 1 "+3V3" H 1315 6873 50  0000 C CNN
F 2 "" H 1300 6700 50  0001 C CNN
F 3 "" H 1300 6700 50  0001 C CNN
	1    1300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3100 5700 3200
$Comp
L power:GND #PWR024
U 1 1 612FBC8C
P 5750 4050
F 0 "#PWR024" H 5750 3800 50  0001 C CNN
F 1 "GND" H 5755 3877 50  0000 C CNN
F 2 "" H 5750 4050 50  0001 C CNN
F 3 "" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4050 5750 4000
Wire Wire Line
	5750 4000 5800 4000
Wire Wire Line
	5750 4000 5750 3900
Wire Wire Line
	5750 3900 5800 3900
Connection ~ 5750 4000
$Comp
L board-rescue:NPIC6C595-good_things U4
U 1 1 61301332
P 6150 2150
F 0 "U4" H 6150 2825 50  0000 C CNN
F 1 "NPIC6C596" H 6150 2734 50  0000 C CNN
F 2 "Package_SO:STC_SOP-16_3.9x9.9mm_P1.27mm" H 6150 1700 50  0001 C CNN
F 3 "" H 6150 1700 50  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR021
U 1 1 61301338
P 5700 1600
F 0 "#PWR021" H 5700 1450 50  0001 C CNN
F 1 "+3V3" H 5715 1773 50  0000 C CNN
F 2 "" H 5700 1600 50  0001 C CNN
F 3 "" H 5700 1600 50  0001 C CNN
	1    5700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1700 5800 1700
Wire Wire Line
	5700 1700 5700 1800
Wire Wire Line
	5700 1800 5800 1800
$Comp
L power:GND #PWR017
U 1 1 61301347
P 5050 1900
F 0 "#PWR017" H 5050 1650 50  0001 C CNN
F 1 "GND" H 5055 1727 50  0000 C CNN
F 2 "" H 5050 1900 50  0001 C CNN
F 3 "" H 5050 1900 50  0001 C CNN
	1    5050 1900
	1    0    0    -1  
$EndComp
Connection ~ 5700 1700
Wire Wire Line
	5700 1600 5700 1700
$Comp
L power:GND #PWR023
U 1 1 61301350
P 5750 2550
F 0 "#PWR023" H 5750 2300 50  0001 C CNN
F 1 "GND" H 5755 2377 50  0000 C CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "" H 5750 2550 50  0001 C CNN
	1    5750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2550 5750 2500
Wire Wire Line
	5750 2500 5800 2500
Wire Wire Line
	5750 2500 5750 2400
Wire Wire Line
	5750 2400 5800 2400
Connection ~ 5750 2500
Wire Wire Line
	6500 2500 6500 2800
Wire Wire Line
	6500 2800 5600 2800
Wire Wire Line
	5600 3450 5800 3450
Wire Wire Line
	5600 2800 5600 3450
$Comp
L power:GND #PWR018
U 1 1 612E60AA
P 5050 3400
F 0 "#PWR018" H 5050 3150 50  0001 C CNN
F 1 "GND" H 5055 3227 50  0000 C CNN
F 2 "" H 5050 3400 50  0001 C CNN
F 3 "" H 5050 3400 50  0001 C CNN
	1    5050 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 612E3F1C
P 5050 3300
F 0 "C8" H 5142 3346 50  0000 L CNN
F 1 "100n" H 5142 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 3300 50  0001 C CNN
F 3 "~" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3200 5700 3200
Wire Wire Line
	5050 1700 5700 1700
Wire Wire Line
	5500 2100 5800 2100
Wire Wire Line
	5500 3600 5800 3600
Wire Wire Line
	5500 2100 5500 3600
Wire Wire Line
	5800 2200 5400 2200
Wire Wire Line
	5400 3700 5800 3700
Wire Wire Line
	5300 2950 5300 1950
Wire Wire Line
	5300 1950 5800 1950
Text Label 6000 2800 0    50   ~ 0
shift_carry
Text Label 6600 4300 0    50   ~ 0
led_s0_ctrl
$Comp
L Device:LED_Small D1
U 1 1 6134AD7D
P 8550 1500
F 0 "D1" V 8596 1430 50  0000 R CNN
F 1 "red" V 8505 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 8550 1500 50  0001 C CNN
F 3 "~" V 8550 1500 50  0001 C CNN
	1    8550 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 6134CDD1
P 8300 1500
F 0 "D2" V 8346 1430 50  0000 R CNN
F 1 "red" V 8255 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 8300 1500 50  0001 C CNN
F 3 "~" V 8300 1500 50  0001 C CNN
	1    8300 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 6134D204
P 7300 1500
F 0 "D3" V 7346 1430 50  0000 R CNN
F 1 "red" V 7255 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 7300 1500 50  0001 C CNN
F 3 "~" V 7300 1500 50  0001 C CNN
	1    7300 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 6134D560
P 7050 1500
F 0 "D4" V 7096 1430 50  0000 R CNN
F 1 "red" V 7005 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 7050 1500 50  0001 C CNN
F 3 "~" V 7050 1500 50  0001 C CNN
	1    7050 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 6134D7B4
P 6800 1500
F 0 "D5" V 6846 1430 50  0000 R CNN
F 1 "red" V 6755 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 6800 1500 50  0001 C CNN
F 3 "~" V 6800 1500 50  0001 C CNN
	1    6800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 6134E01E
P 7800 1500
F 0 "D7" V 7846 1430 50  0000 R CNN
F 1 "red" V 7755 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 7800 1500 50  0001 C CNN
F 3 "~" V 7800 1500 50  0001 C CNN
	1    7800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 61351816
P 7550 1500
F 0 "D8" V 7596 1430 50  0000 R CNN
F 1 "red" V 7505 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 7550 1500 50  0001 C CNN
F 3 "~" V 7550 1500 50  0001 C CNN
	1    7550 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D9
U 1 1 6135181C
P 8800 1500
F 0 "D9" V 8846 1430 50  0000 R CNN
F 1 "red" V 8755 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 8800 1500 50  0001 C CNN
F 3 "~" V 8800 1500 50  0001 C CNN
	1    8800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D10
U 1 1 61351822
P 9050 1500
F 0 "D10" V 9096 1430 50  0000 R CNN
F 1 "red" V 9005 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 9050 1500 50  0001 C CNN
F 3 "~" V 9050 1500 50  0001 C CNN
	1    9050 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D11
U 1 1 61351828
P 9300 1500
F 0 "D11" V 9346 1430 50  0000 R CNN
F 1 "red" V 9255 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 9300 1500 50  0001 C CNN
F 3 "~" V 9300 1500 50  0001 C CNN
	1    9300 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D12
U 1 1 6135182E
P 9550 1500
F 0 "D12" V 9596 1430 50  0000 R CNN
F 1 "red" V 9505 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 9550 1500 50  0001 C CNN
F 3 "~" V 9550 1500 50  0001 C CNN
	1    9550 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D13
U 1 1 61351834
P 9800 1500
F 0 "D13" V 9846 1430 50  0000 R CNN
F 1 "red" V 9755 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 9800 1500 50  0001 C CNN
F 3 "~" V 9800 1500 50  0001 C CNN
	1    9800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D14
U 1 1 6135183A
P 10050 1500
F 0 "D14" V 10096 1430 50  0000 R CNN
F 1 "red" V 10005 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 10050 1500 50  0001 C CNN
F 3 "~" V 10050 1500 50  0001 C CNN
	1    10050 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D15
U 1 1 613539EA
P 10300 1500
F 0 "D15" V 10346 1430 50  0000 R CNN
F 1 "red" V 10255 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 10300 1500 50  0001 C CNN
F 3 "~" V 10300 1500 50  0001 C CNN
	1    10300 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D16
U 1 1 613539F0
P 10550 1500
F 0 "D16" V 10596 1430 50  0000 R CNN
F 1 "red" V 10505 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 10550 1500 50  0001 C CNN
F 3 "~" V 10550 1500 50  0001 C CNN
	1    10550 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D17
U 1 1 613539F6
P 10800 1500
F 0 "D17" V 10846 1430 50  0000 R CNN
F 1 "red" V 10755 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 10800 1500 50  0001 C CNN
F 3 "~" V 10800 1500 50  0001 C CNN
	1    10800 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 1700 6800 1700
Wire Wire Line
	6800 1700 6800 1600
Wire Wire Line
	6500 1800 7050 1800
Wire Wire Line
	7050 1800 7050 1600
Wire Wire Line
	6500 1900 7300 1900
Wire Wire Line
	7300 1900 7300 1600
Wire Wire Line
	6500 2000 7550 2000
Wire Wire Line
	7550 2000 7550 1600
Wire Wire Line
	6500 2100 7800 2100
Wire Wire Line
	7800 2100 7800 1600
Wire Wire Line
	6500 2200 8050 2200
Wire Wire Line
	8050 2200 8050 1600
Wire Wire Line
	6500 2300 8300 2300
Wire Wire Line
	8300 2300 8300 1600
Wire Wire Line
	6500 2400 8550 2400
Wire Wire Line
	8550 2400 8550 1600
Wire Wire Line
	6500 3200 8800 3200
Wire Wire Line
	8800 3200 8800 1600
Wire Wire Line
	6500 3300 9050 3300
Wire Wire Line
	9050 3300 9050 1600
Wire Wire Line
	6500 3400 9300 3400
Wire Wire Line
	9300 3400 9300 1600
Wire Wire Line
	6500 3500 9550 3500
Wire Wire Line
	9550 3500 9550 1600
Wire Wire Line
	6500 3600 9800 3600
Wire Wire Line
	9800 3600 9800 1600
Wire Wire Line
	6500 3700 10050 3700
Wire Wire Line
	10050 3700 10050 1600
Wire Wire Line
	6500 3800 10300 3800
Wire Wire Line
	10300 3800 10300 1600
Wire Wire Line
	6500 3900 10550 3900
Wire Wire Line
	10550 3900 10550 1600
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 6137CB80
P 10700 4300
F 0 "Q2" H 10904 4346 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 10904 4255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10900 4400 50  0001 C CNN
F 3 "~" H 10700 4300 50  0001 C CNN
	1    10700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 1600 10800 4100
$Comp
L Device:R_Small R9
U 1 1 6138C201
P 10300 4300
F 0 "R9" V 10104 4300 50  0000 C CNN
F 1 "330" V 10195 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 4300 50  0001 C CNN
F 3 "~" H 10300 4300 50  0001 C CNN
	1    10300 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 4300 10500 4300
NoConn ~ 6500 4000
Text Label 6600 3900 0    50   ~ 0
led_s1
Text Label 6600 3800 0    50   ~ 0
led_s2
Text Label 6600 3700 0    50   ~ 0
led_s3
Text Label 6600 3600 0    50   ~ 0
led_s4
Text Label 6600 3500 0    50   ~ 0
led_s5
Text Label 6600 3400 0    50   ~ 0
led_m0
Text Label 6600 3300 0    50   ~ 0
led_m1
Text Label 6600 3200 0    50   ~ 0
led_m2
Text Label 6600 2300 0    50   ~ 0
led_h3
Text Label 6600 1900 0    50   ~ 0
led_h2
Text Label 6600 1700 0    50   ~ 0
led_h0
Text Label 6600 1800 0    50   ~ 0
led_h1
Text Label 6600 2100 0    50   ~ 0
led_m4
Wire Wire Line
	6800 1400 7050 1400
Connection ~ 7050 1400
Connection ~ 7300 1400
Wire Wire Line
	7300 1400 7550 1400
Connection ~ 7550 1400
Wire Wire Line
	7550 1400 7800 1400
Connection ~ 7800 1400
Wire Wire Line
	7800 1400 8050 1400
Connection ~ 8050 1400
Wire Wire Line
	8050 1400 8300 1400
Connection ~ 8300 1400
Wire Wire Line
	8300 1400 8550 1400
Connection ~ 8550 1400
Wire Wire Line
	8550 1400 8800 1400
Connection ~ 8800 1400
Wire Wire Line
	8800 1400 9050 1400
Connection ~ 9050 1400
Wire Wire Line
	9050 1400 9300 1400
Connection ~ 9300 1400
Wire Wire Line
	9300 1400 9550 1400
Connection ~ 9550 1400
Wire Wire Line
	9550 1400 9800 1400
Connection ~ 9800 1400
Wire Wire Line
	9800 1400 10050 1400
Connection ~ 10050 1400
Wire Wire Line
	10050 1400 10300 1400
Connection ~ 10300 1400
Wire Wire Line
	10300 1400 10550 1400
Connection ~ 10550 1400
Wire Wire Line
	10550 1400 10800 1400
Text GLabel 6600 1400 0    50   Input ~ 0
vled
Wire Wire Line
	6600 1400 6800 1400
Connection ~ 6800 1400
$Comp
L board-rescue:RT8097AHGB-good_things U2
U 1 1 613E036C
P 5500 5100
F 0 "U2" H 5500 5425 50  0000 C CNN
F 1 "RT8097AHGB" H 5500 5334 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 5400 5000 50  0001 C CNN
F 3 "" H 5400 5000 50  0001 C CNN
	1    5500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5000 5200 5100
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 613F5DF9
P 3200 5550
F 0 "FB1" V 2963 5550 50  0000 C CNN
F 1 "1A" V 3054 5550 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 3130 5550 50  0001 C CNN
F 3 "~" H 3200 5550 50  0001 C CNN
	1    3200 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 5550 3100 5550
Connection ~ 2850 5550
Text Label 2350 5550 0    50   ~ 0
vin_dirty
Wire Wire Line
	3650 5550 3300 5550
$Comp
L Device:Q_PMOS_DSG Q1
U 1 1 6140B28D
P 3850 5650
F 0 "Q1" V 4192 5650 50  0000 C CNN
F 1 "Q_PMOS_DSG" V 4101 5650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 5750 50  0001 C CNN
F 3 "~" H 3850 5650 50  0001 C CNN
	1    3850 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6140D12F
P 3850 6000
F 0 "R4" H 3909 6046 50  0000 L CNN
F 1 "10k" H 3909 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3850 6000 50  0001 C CNN
F 3 "~" H 3850 6000 50  0001 C CNN
	1    3850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5900 3850 5850
$Comp
L power:GND #PWR014
U 1 1 614119B9
P 3850 6100
F 0 "#PWR014" H 3850 5850 50  0001 C CNN
F 1 "GND" H 3855 5927 50  0000 C CNN
F 2 "" H 3850 6100 50  0001 C CNN
F 3 "" H 3850 6100 50  0001 C CNN
	1    3850 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 6141F68E
P 4650 5100
F 0 "C5" H 4742 5146 50  0000 L CNN
F 1 "22u" H 4742 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4650 5100 50  0001 C CNN
F 3 "~" H 4650 5100 50  0001 C CNN
	1    4650 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6141FA79
P 5200 5250
F 0 "#PWR019" H 5200 5000 50  0001 C CNN
F 1 "GND" H 5205 5077 50  0000 C CNN
F 2 "" H 5200 5250 50  0001 C CNN
F 3 "" H 5200 5250 50  0001 C CNN
	1    5200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5000 5200 5000
Connection ~ 5200 5000
$Comp
L power:GND #PWR015
U 1 1 614297C1
P 4650 5250
F 0 "#PWR015" H 4650 5000 50  0001 C CNN
F 1 "GND" H 4655 5077 50  0000 C CNN
F 2 "" H 4650 5250 50  0001 C CNN
F 3 "" H 4650 5250 50  0001 C CNN
	1    4650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5250 4650 5200
$Comp
L Device:L_Small L1
U 1 1 6142E74D
P 6150 5000
F 0 "L1" V 6335 5000 50  0000 C CNN
F 1 "1u5" V 6244 5000 50  0000 C CNN
F 2 "Inductor_SMD:L_Sunlord_MWSA0518_5.4x5.2mm" H 6150 5000 50  0001 C CNN
F 3 "~" H 6150 5000 50  0001 C CNN
	1    6150 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 5000 5800 5000
$Comp
L Device:C_Small C11
U 1 1 614333E1
P 7150 5100
F 0 "C11" H 7242 5146 50  0000 L CNN
F 1 "22u" H 7242 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7150 5100 50  0001 C CNN
F 3 "~" H 7150 5100 50  0001 C CNN
	1    7150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5000 6350 5000
$Comp
L Device:C_Small C9
U 1 1 61438480
P 6350 5100
F 0 "C9" H 6442 5146 50  0000 L CNN
F 1 "10n" H 6442 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6350 5100 50  0001 C CNN
F 3 "~" H 6350 5100 50  0001 C CNN
	1    6350 5100
	1    0    0    -1  
$EndComp
Connection ~ 6350 5000
Wire Wire Line
	6350 5000 6250 5000
Wire Wire Line
	6350 5200 6350 5250
Wire Wire Line
	6350 5250 5800 5250
$Comp
L Device:R_Small R5
U 1 1 61441922
P 6850 5100
F 0 "R5" H 6909 5146 50  0000 L CNN
F 1 "90k" H 6909 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6850 5100 50  0001 C CNN
F 3 "~" H 6850 5100 50  0001 C CNN
	1    6850 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 614430BC
P 6850 5400
F 0 "R6" H 6909 5446 50  0000 L CNN
F 1 "20k" H 6909 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6850 5400 50  0001 C CNN
F 3 "~" H 6850 5400 50  0001 C CNN
	1    6850 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5200 6850 5250
Wire Wire Line
	6850 5250 6350 5250
Connection ~ 6350 5250
Wire Wire Line
	6850 5300 6850 5250
Connection ~ 6850 5250
$Comp
L power:GND #PWR025
U 1 1 61451E19
P 6850 5500
F 0 "#PWR025" H 6850 5250 50  0001 C CNN
F 1 "GND" H 6855 5327 50  0000 C CNN
F 2 "" H 6850 5500 50  0001 C CNN
F 3 "" H 6850 5500 50  0001 C CNN
	1    6850 5500
	1    0    0    -1  
$EndComp
Text Notes 5000 4700 0    50   ~ 0
do some tests with and without this cap, perhaps change its value a bit
Wire Wire Line
	6850 5000 7150 5000
Connection ~ 6850 5000
$Comp
L power:GND #PWR028
U 1 1 6145CC77
P 7150 5200
F 0 "#PWR028" H 7150 4950 50  0001 C CNN
F 1 "GND" H 7155 5027 50  0000 C CNN
F 2 "" H 7150 5200 50  0001 C CNN
F 3 "" H 7150 5200 50  0001 C CNN
	1    7150 5200
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:RT8097AHGB-good_things U3
U 1 1 6146CF49
P 5500 5900
F 0 "U3" H 5500 6225 50  0000 C CNN
F 1 "RT8097AHGB" H 5500 6134 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 5400 5800 50  0001 C CNN
F 3 "" H 5400 5800 50  0001 C CNN
	1    5500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5800 5200 5900
$Comp
L Device:C_Small C6
U 1 1 6146CF50
P 4650 5900
F 0 "C6" H 4742 5946 50  0000 L CNN
F 1 "22u" H 4742 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4650 5900 50  0001 C CNN
F 3 "~" H 4650 5900 50  0001 C CNN
	1    4650 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6146CF56
P 5200 6050
F 0 "#PWR020" H 5200 5800 50  0001 C CNN
F 1 "GND" H 5205 5877 50  0000 C CNN
F 2 "" H 5200 6050 50  0001 C CNN
F 3 "" H 5200 6050 50  0001 C CNN
	1    5200 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5800 5200 5800
Connection ~ 5200 5800
$Comp
L power:GND #PWR016
U 1 1 6146CF5E
P 4650 6050
F 0 "#PWR016" H 4650 5800 50  0001 C CNN
F 1 "GND" H 4655 5877 50  0000 C CNN
F 2 "" H 4650 6050 50  0001 C CNN
F 3 "" H 4650 6050 50  0001 C CNN
	1    4650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6050 4650 6000
$Comp
L Device:L_Small L2
U 1 1 6146CF65
P 6150 5800
F 0 "L2" V 6335 5800 50  0000 C CNN
F 1 "1u5" V 6244 5800 50  0000 C CNN
F 2 "Inductor_SMD:L_Sunlord_MWSA0518_5.4x5.2mm" H 6150 5800 50  0001 C CNN
F 3 "~" H 6150 5800 50  0001 C CNN
	1    6150 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 5800 5800 5800
$Comp
L Device:C_Small C12
U 1 1 6146CF6C
P 7150 5900
F 0 "C12" H 7242 5946 50  0000 L CNN
F 1 "22u" H 7242 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7150 5900 50  0001 C CNN
F 3 "~" H 7150 5900 50  0001 C CNN
	1    7150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5800 6350 5800
$Comp
L Device:C_Small C10
U 1 1 6146CF73
P 6350 5900
F 0 "C10" H 6442 5946 50  0000 L CNN
F 1 "10n" H 6442 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6350 5900 50  0001 C CNN
F 3 "~" H 6350 5900 50  0001 C CNN
	1    6350 5900
	1    0    0    -1  
$EndComp
Connection ~ 6350 5800
Wire Wire Line
	6350 5800 6250 5800
Wire Wire Line
	6350 6000 6350 6050
Wire Wire Line
	6350 6050 5800 6050
$Comp
L Device:R_Small R7
U 1 1 6146CF7D
P 6850 5900
F 0 "R7" H 6909 5946 50  0000 L CNN
F 1 "100k" H 6909 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6850 5900 50  0001 C CNN
F 3 "~" H 6850 5900 50  0001 C CNN
	1    6850 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6146CF83
P 6850 6200
F 0 "R8" H 6909 6246 50  0000 L CNN
F 1 "47k" H 6909 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6850 6200 50  0001 C CNN
F 3 "~" H 6850 6200 50  0001 C CNN
	1    6850 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 6000 6850 6050
Wire Wire Line
	6850 6050 6350 6050
Connection ~ 6350 6050
Wire Wire Line
	6850 6100 6850 6050
Connection ~ 6850 6050
$Comp
L power:GND #PWR026
U 1 1 6146CF8E
P 6850 6300
F 0 "#PWR026" H 6850 6050 50  0001 C CNN
F 1 "GND" H 6855 6127 50  0000 C CNN
F 2 "" H 6850 6300 50  0001 C CNN
F 3 "" H 6850 6300 50  0001 C CNN
	1    6850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5800 7150 5800
Connection ~ 6850 5800
$Comp
L power:GND #PWR029
U 1 1 6146CF96
P 7150 6000
F 0 "#PWR029" H 7150 5750 50  0001 C CNN
F 1 "GND" H 7155 5827 50  0000 C CNN
F 2 "" H 7150 6000 50  0001 C CNN
F 3 "" H 7150 6000 50  0001 C CNN
	1    7150 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5800 4650 5550
Wire Wire Line
	4650 5550 4300 5550
Connection ~ 4650 5800
Wire Wire Line
	4650 5000 4300 5000
Wire Wire Line
	4300 5000 4300 5550
Connection ~ 4650 5000
Connection ~ 4300 5550
Wire Wire Line
	4300 5550 4050 5550
$Comp
L power:+3V3 #PWR022
U 1 1 61496A26
P 5700 3100
F 0 "#PWR022" H 5700 2950 50  0001 C CNN
F 1 "+3V3" H 5715 3273 50  0000 C CNN
F 2 "" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0001 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR027
U 1 1 61496CB6
P 7150 5000
F 0 "#PWR027" H 7150 4850 50  0001 C CNN
F 1 "+3V3" H 7165 5173 50  0000 C CNN
F 2 "" H 7150 5000 50  0001 C CNN
F 3 "" H 7150 5000 50  0001 C CNN
	1    7150 5000
	1    0    0    -1  
$EndComp
Connection ~ 7150 5000
Text GLabel 7450 5800 2    50   Input ~ 0
vled
Wire Wire Line
	7450 5800 7150 5800
Connection ~ 7150 5800
Text GLabel 1950 6750 1    50   Input ~ 0
vled
Text Label 4400 5550 0    50   ~ 0
vin
Connection ~ 1700 1800
Wire Wire Line
	850  1800 1700 1800
Wire Wire Line
	1000 2300 2100 2300
Connection ~ 1650 2200
Wire Wire Line
	1100 2200 1650 2200
Text Label 3450 2950 0    50   ~ 0
shift_data
Wire Wire Line
	1650 2750 1650 2950
Wire Wire Line
	1650 2200 2100 2200
Wire Wire Line
	1650 2550 1650 2200
$Comp
L Device:Net-Tie_2 NT1
U 1 1 61328909
P 1650 2650
F 0 "NT1" H 1650 2831 50  0000 C CNN
F 1 "Net-Tie_2" H 1650 2740 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 1650 2650 50  0001 C CNN
F 3 "~" H 1650 2650 50  0001 C CNN
	1    1650 2650
	0    -1   -1   0   
$EndComp
Text Label 3450 2400 0    50   ~ 0
shift_clk
Text Label 3450 2100 0    50   ~ 0
store_clk
Wire Wire Line
	3400 1800 3100 1800
Wire Wire Line
	3400 1700 3100 1700
$Comp
L power:GND #PWR011
U 1 1 61218B17
P 2600 2700
F 0 "#PWR011" H 2600 2450 50  0001 C CNN
F 1 "GND" H 2605 2527 50  0000 C CNN
F 2 "" H 2600 2700 50  0001 C CNN
F 3 "" H 2600 2700 50  0001 C CNN
	1    2600 2700
	1    0    0    -1  
$EndComp
NoConn ~ 2100 2000
Wire Wire Line
	1700 1800 2100 1800
Wire Wire Line
	1700 1750 1700 1800
Text Label 1200 1800 0    50   ~ 0
rst
Text Label 1200 2300 0    50   ~ 0
prog_tx
Text Label 1200 2200 0    50   ~ 0
prog_rx
Text GLabel 3400 1700 2    50   Input ~ 0
boot
Text GLabel 1150 1900 2    50   Input ~ 0
boot
Wire Wire Line
	850  1900 1150 1900
Wire Wire Line
	1100 2000 850  2000
Wire Wire Line
	1100 2200 1100 2000
Wire Wire Line
	1000 2100 850  2100
Wire Wire Line
	1000 2300 1000 2100
$Comp
L power:GND #PWR01
U 1 1 61227577
P 850 2200
F 0 "#PWR01" H 850 1950 50  0001 C CNN
F 1 "GND" H 855 2027 50  0000 C CNN
F 2 "" H 850 2200 50  0001 C CNN
F 3 "" H 850 2200 50  0001 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 61226712
P 650 2000
F 0 "J1" H 568 1575 50  0000 C CNN
F 1 "programmer" H 568 1666 50  0000 C CNN
F 2 "good_things:TSM-105-01-L_SH" H 650 2000 50  0001 C CNN
F 3 "~" H 650 2000 50  0001 C CNN
	1    650  2000
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 6122442C
P 1700 1550
F 0 "#PWR07" H 1700 1400 50  0001 C CNN
F 1 "+3V3" H 1715 1723 50  0000 C CNN
F 2 "" H 1700 1550 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 61223BFC
P 1700 1650
F 0 "R3" H 1759 1696 50  0000 L CNN
F 1 "10k" H 1759 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1700 1650 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1700 2100 1700
Wire Wire Line
	2000 1200 2000 1700
Text Notes 950  1150 0    50   ~ 0
mount one
$Comp
L power:+3V3 #PWR05
U 1 1 6121FBF1
P 1400 950
F 0 "#PWR05" H 1400 800 50  0001 C CNN
F 1 "+3V3" H 1415 1123 50  0000 C CNN
F 2 "" H 1400 950 50  0001 C CNN
F 3 "" H 1400 950 50  0001 C CNN
	1    1400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1150 2600 1250
NoConn ~ 2300 1550
Wire Wire Line
	1400 1150 1400 1200
Wire Wire Line
	2000 1200 1400 1200
$Comp
L Device:R_Small R1
U 1 1 6121C777
P 1400 1050
F 0 "R1" H 1459 1096 50  0000 L CNN
F 1 "10k" H 1459 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1400 1050 50  0001 C CNN
F 3 "~" H 1400 1050 50  0001 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
Connection ~ 2600 1250
Wire Wire Line
	2600 1250 2600 1500
$Comp
L power:GND #PWR013
U 1 1 6121BB5E
P 3250 1450
F 0 "#PWR013" H 3250 1200 50  0001 C CNN
F 1 "GND" H 3255 1277 50  0000 C CNN
F 2 "" H 3250 1450 50  0001 C CNN
F 3 "" H 3250 1450 50  0001 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1450 3250 1450
Wire Wire Line
	2600 1250 2800 1250
$Comp
L Device:C_Small C4
U 1 1 6121B43A
P 5050 1800
F 0 "C4" H 5142 1846 50  0000 L CNN
F 1 "100n" H 5142 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 1800 50  0001 C CNN
F 3 "~" H 5050 1800 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6121A66F
P 2800 1350
F 0 "C2" H 2892 1396 50  0000 L CNN
F 1 "1u" H 2892 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2800 1350 50  0001 C CNN
F 3 "~" H 2800 1350 50  0001 C CNN
	1    2800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR010
U 1 1 6121931E
P 2600 1150
F 0 "#PWR010" H 2600 1000 50  0001 C CNN
F 1 "+3V3" H 2615 1323 50  0000 C CNN
F 2 "" H 2600 1150 50  0001 C CNN
F 3 "" H 2600 1150 50  0001 C CNN
	1    2600 1150
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP-WROOM-02 U1
U 1 1 61216F95
P 2600 2100
F 0 "U1" H 2950 1550 50  0000 C CNN
F 1 "ESP-WROOM-02" H 2200 1550 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 3200 1550 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 2650 3600 50  0001 C CNN
	1    2600 2100
	1    0    0    -1  
$EndComp
Connection ~ 5500 2100
Wire Wire Line
	5400 2200 5400 2550
Wire Wire Line
	3950 2400 3950 2550
Wire Wire Line
	3100 2400 3950 2400
Connection ~ 5400 2550
Wire Wire Line
	5400 2550 5400 3700
Wire Wire Line
	3400 1800 3400 2100
NoConn ~ 3100 2000
Wire Wire Line
	3300 4300 10200 4300
$Comp
L power:GND #PWR030
U 1 1 615A328A
P 10800 4500
F 0 "#PWR030" H 10800 4250 50  0001 C CNN
F 1 "GND" H 10805 4327 50  0000 C CNN
F 2 "" H 10800 4500 50  0001 C CNN
F 3 "" H 10800 4500 50  0001 C CNN
	1    10800 4500
	1    0    0    -1  
$EndComp
Text Notes 2800 1100 0    50   ~ 0
use i2s driver for registers, could be cool :D. \nif that fails solder jumpers and bitbang it
Text Label 5800 5000 0    50   ~ 0
3v3_sw
Text Label 5800 5800 0    50   ~ 0
vled_sw
Text Label 5850 6050 0    50   ~ 0
vled_fb
Text Label 5800 5250 0    50   ~ 0
3v3_fb
Text Label 10800 3800 3    50   ~ 0
led_s0
Text Label 1550 1200 0    50   ~ 0
mcu_en
NoConn ~ 3100 2500
Wire Wire Line
	1650 2950 5300 2950
Wire Wire Line
	3950 2550 5400 2550
Wire Wire Line
	3400 2100 5500 2100
NoConn ~ 3100 2200
NoConn ~ 3100 2300
Wire Wire Line
	3300 1900 3100 1900
Wire Wire Line
	3300 1900 3300 4300
NoConn ~ 3100 2100
Text Label 6600 2400 0    50   ~ 0
led_h4
Wire Wire Line
	7050 1400 7300 1400
Text Label 6600 2200 0    50   ~ 0
led_m5
Text Label 6600 2000 0    50   ~ 0
led_m3
$Comp
L Device:LED_Small D6
U 1 1 6134DC52
P 8050 1500
F 0 "D6" V 8096 1430 50  0000 R CNN
F 1 "red" V 8005 1430 50  0000 R CNN
F 2 "LED_SMD:LED_1210_3225Metric" V 8050 1500 50  0001 C CNN
F 3 "~" V 8050 1500 50  0001 C CNN
	1    8050 1500
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61480981
P 3050 6850
F 0 "H1" V 3004 7000 50  0000 L CNN
F 1 "MountingHole_Pad" V 3095 7000 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 3050 6850 50  0001 C CNN
F 3 "~" H 3050 6850 50  0001 C CNN
	1    3050 6850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61480B1D
P 3050 7050
F 0 "H2" V 3004 7200 50  0000 L CNN
F 1 "MountingHole_Pad" V 3095 7200 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 3050 7050 50  0001 C CNN
F 3 "~" H 3050 7050 50  0001 C CNN
	1    3050 7050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61488EAA
P 2950 7200
F 0 "#PWR0101" H 2950 6950 50  0001 C CNN
F 1 "GND" H 2955 7027 50  0000 C CNN
F 2 "" H 2950 7200 50  0001 C CNN
F 3 "" H 2950 7200 50  0001 C CNN
	1    2950 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7200 2950 7050
Connection ~ 2950 7050
Wire Wire Line
	2950 7050 2950 6850
$Comp
L Connector:TestPoint TP3
U 1 1 616DF0FA
P 1950 6750
F 0 "TP3" H 2008 6868 50  0000 L CNN
F 1 "TestPoint" H 2008 6777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2150 6750 50  0001 C CNN
F 3 "~" H 2150 6750 50  0001 C CNN
	1    1950 6750
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 616DFA07
P 1300 6700
F 0 "TP1" H 1358 6818 50  0000 L CNN
F 1 "TestPoint" H 1358 6727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1500 6700 50  0001 C CNN
F 3 "~" H 1500 6700 50  0001 C CNN
	1    1300 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 5550 2850 5550
$EndSCHEMATC

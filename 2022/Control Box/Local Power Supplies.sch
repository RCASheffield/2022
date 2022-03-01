EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 6
Title "Control Box"
Date "2020-12-15"
Rev "vB"
Comp ""
Comment1 "EA"
Comment2 "MJ"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RCAS_Power_Symbols:+3V3 #PWR0204
U 1 1 5FDACC7A
P 9750 4950
F 0 "#PWR0204" H 9750 4800 50  0001 C CNN
F 1 "+3V3" H 9765 5123 50  0000 C CNN
F 2 "" H 9750 4950 50  0001 C CNN
F 3 "" H 9750 4950 50  0001 C CNN
	1    9750 4950
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+5V0 #PWR0202
U 1 1 5FDAD81B
P 3700 4900
F 0 "#PWR0202" H 3700 4750 50  0001 C CNN
F 1 "+5V0" H 3715 5073 50  0000 C CNN
F 2 "" H 3700 4900 50  0001 C CNN
F 3 "" H 3700 4900 50  0001 C CNN
	1    3700 4900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+24V0 #PWR0201
U 1 1 5FDADF34
P 3400 4900
F 0 "#PWR0201" H 3400 4750 50  0001 C CNN
F 1 "+24V0" H 3415 5073 50  0000 C CNN
F 2 "" H 3400 4900 50  0001 C CNN
F 3 "" H 3400 4900 50  0001 C CNN
	1    3400 4900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Regulators_Switch-Mode:TPS54202 U201
U 1 1 5FA8A75F
P 5150 5550
F 0 "U201" H 5150 5987 60  0000 C CNN
F 1 "TPS54202" H 5150 5881 60  0000 C CNN
F 2 "RCAS_Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 5150 5600 60  0001 C CNN
F 3 "" H 5150 5600 60  0001 C CNN
F 4 "Extended" H 5150 5550 50  0001 C CNN "Basic/Extended"
F 5 "C134129" H 5150 5550 50  0001 C CNN "LCSC"
	1    5150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4900 3700 5000
$Comp
L RCAS_Passives:Capacitor C201
U 1 1 5FA8EED0
P 3400 5650
F 0 "C201" H 3285 5604 50  0000 R CNN
F 1 "10uF" H 3285 5695 50  0000 R CNN
F 2 "RCAS_Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3438 5500 50  0001 C CNN
F 3 "~" H 3400 5650 50  0001 C CNN
F 4 "Extended" H 3400 5650 50  0001 C CNN "Basic/Extended"
F 5 "C39232" H 3400 5650 50  0001 C CNN "LCSC"
	1    3400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5550 4700 5550
$Comp
L RCAS_Passives:Capacitor C202
U 1 1 5FA95C9D
P 3850 5650
F 0 "C202" H 3735 5604 50  0000 R CNN
F 1 "10uF" H 3735 5695 50  0000 R CNN
F 2 "RCAS_Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3888 5500 50  0001 C CNN
F 3 "~" H 3850 5650 50  0001 C CNN
F 4 "Extended" H 3850 5650 50  0001 C CNN "Basic/Extended"
F 5 "C39232" H 3850 5650 50  0001 C CNN "LCSC"
	1    3850 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5400 3700 5400
Wire Wire Line
	3700 5300 3700 5400
Connection ~ 3700 5400
Wire Wire Line
	3700 5400 3850 5400
Wire Wire Line
	3400 4900 3400 5400
Connection ~ 3400 5400
Wire Wire Line
	3400 5400 3400 5500
Wire Wire Line
	3850 5500 3850 5400
Connection ~ 3850 5400
$Comp
L RCAS_Passives:Capacitor C204
U 1 1 5FAA3CB3
P 5850 5400
F 0 "C204" V 5598 5400 50  0000 C CNN
F 1 "100nF" V 5689 5400 50  0000 C CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5888 5250 50  0001 C CNN
F 3 "~" H 5850 5400 50  0001 C CNN
F 4 "C14663" H 5850 5400 50  0001 C CNN "LCSC"
F 5 "Basic" H 5850 5400 50  0001 C CNN "Basic/Extended"
	1    5850 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 5400 5700 5400
Wire Wire Line
	6000 5400 6100 5400
Wire Wire Line
	5600 5550 6100 5550
Wire Wire Line
	6100 5400 6100 5550
$Comp
L RCAS_Passives:Inductor L201
U 1 1 5FAA497B
P 6350 5550
F 0 "L201" V 6525 5550 50  0000 C CNN
F 1 "12uH" V 6450 5550 50  0000 C CNN
F 2 "RCAS_Inductor_SMD:L_6.3x6.3_H3" H 6350 5550 50  0001 C CNN
F 3 "~" H 6350 5550 50  0001 C CNN
F 4 "Extended" H 6350 5550 50  0001 C CNN "Basic/Extended"
F 5 "C324292" H 6350 5550 50  0001 C CNN "LCSC"
	1    6350 5550
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_Passives:Capacitor C206
U 1 1 5FAA716D
P 7000 5800
F 0 "C206" H 7115 5846 50  0000 L CNN
F 1 "22uF" H 7115 5755 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7038 5650 50  0001 C CNN
F 3 "~" H 7000 5800 50  0001 C CNN
F 4 "Extended" H 7000 5800 50  0001 C CNN "Basic/Extended"
F 5 "C12891" H 7000 5800 50  0001 C CNN "LCSC"
	1    7000 5800
	-1   0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C207
U 1 1 5FAA78F2
P 7250 5800
F 0 "C207" H 7365 5846 50  0000 L CNN
F 1 "22uF" H 7365 5755 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7288 5650 50  0001 C CNN
F 3 "~" H 7250 5800 50  0001 C CNN
F 4 "Extended" H 7250 5800 50  0001 C CNN "Basic/Extended"
F 5 "C12891" H 7250 5800 50  0001 C CNN "LCSC"
	1    7250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5550 7000 5650
Wire Wire Line
	6100 5550 6200 5550
Connection ~ 6100 5550
Wire Wire Line
	7250 5550 7250 5650
Wire Wire Line
	5700 5700 5600 5700
Wire Wire Line
	9750 4950 9750 5350
Wire Wire Line
	3850 5800 3850 6550
Wire Wire Line
	3400 5800 3400 6550
Wire Wire Line
	7000 5950 7000 6550
Wire Wire Line
	4600 5550 4600 6550
Wire Wire Line
	5150 6550 5150 6650
$Comp
L RCAS_Power_Symbols:GND #PWR0203
U 1 1 5FA8DDC5
P 5150 6650
F 0 "#PWR0203" H 5150 6400 50  0001 C CNN
F 1 "GND" H 5155 6477 50  0000 C CNN
F 2 "" H 5150 6650 50  0001 C CNN
F 3 "" H 5150 6650 50  0001 C CNN
	1    5150 6650
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C205
U 1 1 5FAADB90
P 6150 6000
F 0 "C205" V 6100 5900 50  0000 R CNN
F 1 "56pF" V 6200 5900 50  0000 R CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6188 5850 50  0001 C CNN
F 3 "~" H 6150 6000 50  0001 C CNN
F 4 "C39148" H 6150 6000 50  0001 C CNN "LCSC"
F 5 "Basic" H 6150 6000 50  0001 C CNN "Basic/Extended"
	1    6150 6000
	0    -1   1    0   
$EndComp
$Comp
L RCAS_Passives:Resistor R202
U 1 1 5FAAB341
P 6350 5800
F 0 "R202" V 6300 5500 50  0000 L CNN
F 1 "100k" V 6400 5500 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 5800 50  0001 C CNN
F 3 "~" H 6350 5800 50  0001 C CNN
F 4 "Basic" H 6350 5800 50  0001 C CNN "Basic/Extended"
F 5 "C25803" H 6350 5800 50  0001 C CNN "LCSC"
	1    6350 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 5950 7250 6550
Wire Wire Line
	3400 6550 3850 6550
Connection ~ 3850 6550
Wire Wire Line
	3850 6550 4300 6550
Connection ~ 4600 6550
Wire Wire Line
	4600 6550 5150 6550
Connection ~ 5150 6550
Wire Wire Line
	3850 5400 4300 5400
$Comp
L RCAS_Passives:Capacitor C203
U 1 1 5FB29340
P 4300 5650
F 0 "C203" H 4186 5604 50  0000 R CNN
F 1 "100nF" H 4186 5695 50  0000 R CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4338 5500 50  0001 C CNN
F 3 "~" H 4300 5650 50  0001 C CNN
F 4 "C14663" H 4300 5650 50  0001 C CNN "LCSC"
F 5 "Basic" H 4300 5650 50  0001 C CNN "Basic/Extended"
	1    4300 5650
	1    0    0    1   
$EndComp
Wire Wire Line
	4300 5800 4300 6550
Connection ~ 4300 6550
Wire Wire Line
	4300 6550 4600 6550
Wire Wire Line
	4300 5500 4300 5400
Connection ~ 4300 5400
Wire Wire Line
	4300 5400 4700 5400
$Comp
L RCAS_Passives:Capacitor C210
U 1 1 5FB2E7C0
P 9300 5800
F 0 "C210" H 9186 5754 50  0000 R CNN
F 1 "100nF" H 9186 5845 50  0000 R CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9338 5650 50  0001 C CNN
F 3 "~" H 9300 5800 50  0001 C CNN
F 4 "C14663" H 9300 5800 50  0001 C CNN "LCSC"
F 5 "Basic" H 9300 5800 50  0001 C CNN "Basic/Extended"
	1    9300 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	6500 5550 6550 5550
Wire Wire Line
	5150 6550 5700 6550
$Comp
L RCAS_Passives:Resistor R201
U 1 1 5FAABB2A
P 5700 6200
F 0 "R201" H 5770 6246 50  0000 L CNN
F 1 "22k1" H 5770 6155 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 6200 50  0001 C CNN
F 3 "~" H 5700 6200 50  0001 C CNN
F 4 "Substituted for basic 22k" H 5700 6200 50  0001 C CNN "Basic/Extended"
F 5 "C31850" H 5700 6200 50  0001 C CNN "LCSC"
	1    5700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6350 5700 6550
Connection ~ 5700 6550
Connection ~ 6550 5550
Wire Wire Line
	5700 5700 5700 5800
Wire Wire Line
	6200 5800 5700 5800
Connection ~ 5700 5800
Wire Wire Line
	5700 5800 5700 6000
Wire Wire Line
	6500 5800 6550 5800
Wire Wire Line
	6550 5550 6550 5800
Wire Wire Line
	6300 6000 6550 6000
Wire Wire Line
	6550 6000 6550 5800
Connection ~ 6550 5800
Wire Wire Line
	6000 6000 5700 6000
Connection ~ 5700 6000
Wire Wire Line
	5700 6000 5700 6050
NoConn ~ 4700 5700
$Comp
L RCAS_Passives:Capacitor C208
U 1 1 5FB4105E
P 7950 5800
F 0 "C208" H 7836 5754 50  0000 R CNN
F 1 "10nF" H 7836 5845 50  0000 R CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7988 5650 50  0001 C CNN
F 3 "~" H 7950 5800 50  0001 C CNN
F 4 "C57112" H 7950 5800 50  0001 C CNN "LCSC"
F 5 "Basic" H 7950 5800 50  0001 C CNN "Basic/Extended"
	1    7950 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	7950 5950 7950 6550
Wire Wire Line
	9300 5950 9300 6550
Wire Wire Line
	9300 5650 9300 5550
Wire Wire Line
	7950 5550 7950 5650
$Comp
L RCAS_Passives:Ferrite_Bead FB?
U 1 1 5FB45285
P 8300 5550
AR Path="/5FB45285" Ref="FB?"  Part="1" 
AR Path="/5F795081/5FB45285" Ref="FB201"  Part="1" 
F 0 "FB201" V 8100 5550 50  0000 C CNN
F 1 "600R, 2A" V 8200 5550 50  0000 C CNN
F 2 "RCAS_Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 5550 50  0001 C CNN
F 3 "~" H 8300 5550 50  0001 C CNN
F 4 "600R @ 100MHz, 2A, 80mR, 0805" H 8300 5550 50  0001 C CNN "Description"
F 5 "Wurth Elektronik" H 8300 5550 50  0001 C CNN "Manufacturer"
F 6 "74279220601" H 8300 5550 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 8300 5550 50  0001 C CNN "Supplier"
F 8 "732-6126-1-ND" H 8300 5550 50  0001 C CNN "Supplier Part Number"
F 9 "£0.25" H 8300 5550 50  0001 C CNN "Cost"
F 10 "" H 8300 5550 50  0001 C CNN "Basic/Extended"
F 11 "" H 8300 5550 50  0001 C CNN "LCSC"
	1    8300 5550
	0    1    1    0   
$EndComp
$Comp
L RCAS_Passives:Capacitor C209
U 1 1 5FB45D37
P 8550 5800
F 0 "C209" H 8665 5846 50  0000 L CNN
F 1 "22uF" H 8665 5755 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8588 5650 50  0001 C CNN
F 3 "~" H 8550 5800 50  0001 C CNN
F 4 "Extended" H 8550 5800 50  0001 C CNN "Basic/Extended"
F 5 "C12891" H 8550 5800 50  0001 C CNN "LCSC"
	1    8550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5950 8550 6550
Wire Wire Line
	8550 6550 7950 6550
Wire Wire Line
	8550 5650 8550 5550
Wire Wire Line
	8550 5550 8450 5550
Wire Wire Line
	8150 5550 7950 5550
Connection ~ 8550 5550
Connection ~ 7950 5550
Connection ~ 7000 5550
Connection ~ 7250 5550
Wire Wire Line
	7250 5550 7950 5550
Wire Wire Line
	5700 6550 7000 6550
Wire Wire Line
	6550 5550 7000 5550
Wire Wire Line
	7000 5550 7250 5550
Wire Wire Line
	7000 6550 7250 6550
Connection ~ 7000 6550
Wire Wire Line
	7250 6550 7950 6550
Connection ~ 7250 6550
Connection ~ 7950 6550
Wire Wire Line
	8550 6550 9300 6550
Connection ~ 8550 6550
Wire Wire Line
	9300 5550 8550 5550
$Comp
L RCAS_Passives:Resistor R?
U 1 1 5FC0BE72
P 9750 5750
AR Path="/5F7561A0/5FC0BE72" Ref="R?"  Part="1" 
AR Path="/5F795081/5FC0BE72" Ref="R203"  Part="1" 
F 0 "R203" H 9820 5796 50  0000 L CNN
F 1 "220R" H 9820 5705 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9680 5750 50  0001 C CNN
F 3 "~" H 9750 5750 50  0001 C CNN
F 4 "Basic" H 9750 5750 50  0001 C CNN "Basic/Extended"
F 5 "C22962" H 9750 5750 50  0001 C CNN "LCSC"
	1    9750 5750
	1    0    0    -1  
$EndComp
$Comp
L RCAS_LEDs:LED D?
U 1 1 5FC0BE7F
P 9750 6150
AR Path="/5F7561A0/5FC0BE7F" Ref="D?"  Part="1" 
AR Path="/5F795081/5FC0BE7F" Ref="D202"  Part="1" 
F 0 "D202" V 9834 6032 50  0000 R CNN
F 1 "LED" V 9743 6032 50  0000 R CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9750 6150 50  0001 C CNN
F 3 "~" H 9750 6150 50  0001 C CNN
F 4 "3V3 Power" V 9652 6032 50  0000 R CNN "Label"
F 5 "£0.11" H 9750 6150 50  0001 C CNN "Cost"
F 6 "Green LED, 2V, 30mA, 0603" H 9750 6150 50  0001 C CNN "Description"
F 7 "Wurth Elektronik" H 9750 6150 50  0001 C CNN "Manufacturer"
F 8 "150060VS75000" H 9750 6150 50  0001 C CNN "Manufacturer Part Number"
F 9 "DigiKey" H 9750 6150 50  0001 C CNN "Supplier"
F 10 "732-4980-1-ND" H 9750 6150 50  0001 C CNN "Supplier Part Number"
F 11 "Basic" H 9750 6150 50  0001 C CNN "Basic/Extended"
F 12 "C2286" H 9750 6150 50  0001 C CNN "LCSC"
	1    9750 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 6000 9750 5900
Wire Wire Line
	9750 6550 9300 6550
Wire Wire Line
	9750 6300 9750 6550
Connection ~ 9300 6550
Wire Wire Line
	9300 5550 9750 5550
Connection ~ 9300 5550
Connection ~ 9750 5550
Wire Wire Line
	9750 5550 9750 5600
$Comp
L RCAS_Power_Symbols:PWR_FLAG #FLG0102
U 1 1 5FC14AD7
P 9850 5350
F 0 "#FLG0102" H 9850 5425 50  0001 C CNN
F 1 "PWR_FLAG" V 9850 5478 50  0000 L CNN
F 2 "" H 9850 5350 50  0001 C CNN
F 3 "~" H 9850 5350 50  0001 C CNN
	1    9850 5350
	0    1    1    0   
$EndComp
Connection ~ 9750 5350
Wire Wire Line
	9750 5350 9750 5550
Wire Wire Line
	9850 5350 9750 5350
$Comp
L RCAS_Diodes:D D?
U 1 1 5FD69223
P 3700 5150
AR Path="/5F7561A0/5FD69223" Ref="D?"  Part="1" 
AR Path="/5F795081/5FD69223" Ref="D201"  Part="1" 
F 0 "D201" H 3700 4933 50  0000 C CNN
F 1 "1N5819HW-7-F" H 3700 5024 50  0000 C CNN
F 2 "RCAS_Diode_SMD:D_SOD-123" H 3700 5150 50  0001 C CNN
F 3 "~" H 3700 5150 50  0001 C CNN
F 4 "Schottky Diode, 40V, 1A, SOD123" H 3700 5150 50  0001 C CNN "Description"
F 5 "Diodes Incorporated" H 3700 5150 50  0001 C CNN "Manufacturer"
F 6 "1N5819HW-7-F" H 3700 5150 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 3700 5150 50  0001 C CNN "Supplier"
F 8 "1N5819HW-FDICT-ND" H 3700 5150 50  0001 C CNN "Supplier Part Number"
F 9 "£0.31" H 3700 5150 50  0001 C CNN "Cost"
F 10 "Extended" H 3700 5150 50  0001 C CNN "Basic/Extended"
F 11 "C117948" H 3700 5150 50  0001 C CNN "LCSC"
	1    3700 5150
	0    -1   -1   0   
$EndComp
$EndSCHEMATC

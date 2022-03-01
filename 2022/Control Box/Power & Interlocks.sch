EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 6
Title "Control Box"
Date "2020-12-15"
Rev "vB"
Comp ""
Comment1 "MJ"
Comment2 "EA"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1600 2000 0    30   Output ~ 0
POWER_EN
$Comp
L RCAS_Passives:Resistor R601
U 1 1 5F75A362
P 2150 2000
F 0 "R601" V 1943 2000 50  0000 C CNN
F 1 "47R" V 2034 2000 50  0000 C CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2080 2000 50  0001 C CNN
F 3 "~" H 2150 2000 50  0001 C CNN
F 4 "Basic" H 2150 2000 50  0001 C CNN "Basic/Extended"
F 5 "C23182" H 2150 2000 50  0001 C CNN "LCSC"
	1    2150 2000
	0    1    1    0   
$EndComp
Text HLabel 6350 4200 2    30   Input ~ 0
POWER_LATCH
$Comp
L RCAS_Diodes:D_Schottky_x2_KCom_AAK D603
U 1 1 5F76240C
P 4850 2000
F 0 "D603" H 4850 2217 50  0000 C CNN
F 1 "BAT54CL" H 4850 2126 50  0000 C CNN
F 2 "RCAS_Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4850 2000 50  0001 C CNN
F 3 "~" H 4850 2000 50  0001 C CNN
F 4 "Dual Common Cathode Schottky Diode SOT23" H 4850 2000 50  0001 C CNN "Description"
F 5 "ON Semiconductor" H 4850 2000 50  0001 C CNN "Manufacturer"
F 6 "BAT54CLT1G" H 4850 2000 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 4850 2000 50  0001 C CNN "Supplier"
F 8 "BAT54CLT1GOSCT-ND" H 4850 2000 50  0001 C CNN "Supplier Part Number"
F 9 "£0.11" H 4850 2000 50  0001 C CNN "Cost"
F 10 "Extended" H 4850 2000 50  0001 C CNN "Basic/Extended"
F 11 "C14308" H 4850 2000 50  0001 C CNN "LCSC"
	1    4850 2000
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R608
U 1 1 5F76626B
P 5650 1700
F 0 "R608" H 5720 1746 50  0000 L CNN
F 1 "10k" H 5720 1655 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 1700 50  0001 C CNN
F 3 "~" H 5650 1700 50  0001 C CNN
F 4 "Basic" H 5650 1700 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 5650 1700 50  0001 C CNN "LCSC"
	1    5650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2000 5650 2000
Wire Wire Line
	5650 2000 5650 1850
$Comp
L RCAS_Power_Symbols:+3V3 #PWR0609
U 1 1 5F766B0F
P 5650 1450
F 0 "#PWR0609" H 5650 1300 50  0001 C CNN
F 1 "+3V3" H 5665 1623 50  0000 C CNN
F 2 "" H 5650 1450 50  0001 C CNN
F 3 "" H 5650 1450 50  0001 C CNN
	1    5650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1450 5650 1550
Text HLabel 6300 2000 2    30   Output ~ 0
nPOWER_SWITCH_PRESSED
Text Notes 6350 4300 0    30   ~ 0
Processor sets high to latch power on, releases to turn power off
Text Notes 6300 2100 0    30   ~ 0
Signal for processor to monitor power button press, low when pressed
Wire Wire Line
	3150 6200 3450 6200
Wire Wire Line
	2950 6500 2950 6650
$Comp
L RCAS_Passives:Resistor R602
U 1 1 5F76DF17
P 2450 6450
F 0 "R602" H 2520 6496 50  0000 L CNN
F 1 "10k" H 2520 6405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 6450 50  0001 C CNN
F 3 "~" H 2450 6450 50  0001 C CNN
F 4 "Basic" H 2450 6450 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 2450 6450 50  0001 C CNN "LCSC"
	1    2450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6300 2450 6200
Wire Wire Line
	2450 6200 2750 6200
Wire Wire Line
	2950 6650 2450 6650
Wire Wire Line
	2450 6650 2450 6600
Connection ~ 2950 6650
$Comp
L RCAS_Passives:Resistor R615
U 1 1 5F770A34
P 9550 2800
F 0 "R615" H 9620 2846 50  0000 L CNN
F 1 "4k7" H 9620 2755 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9480 2800 50  0001 C CNN
F 3 "~" H 9550 2800 50  0001 C CNN
F 4 "Basic" H 9550 2800 50  0001 C CNN "Basic/Extended"
F 5 "C23162" H 9550 2800 50  0001 C CNN "LCSC"
	1    9550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2550 9550 2650
$Comp
L RCAS_LEDs:LED D606
U 1 1 5F771ACA
P 9550 3200
F 0 "D606" V 9634 3082 50  0000 R CNN
F 1 "LED" V 9543 3082 50  0000 R CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9550 3200 50  0001 C CNN
F 3 "~" H 9550 3200 50  0001 C CNN
F 4 "24V Power" V 9452 3082 50  0000 R CNN "Label"
F 5 "£0.11" H 9550 3200 50  0001 C CNN "Cost"
F 6 "Green LED, 2V, 30mA, 0603" H 9550 3200 50  0001 C CNN "Description"
F 7 "Wurth Elektronik" H 9550 3200 50  0001 C CNN "Manufacturer"
F 8 "150060VS75000" H 9550 3200 50  0001 C CNN "Manufacturer Part Number"
F 9 "DigiKey" H 9550 3200 50  0001 C CNN "Supplier"
F 10 "732-4980-1-ND" H 9550 3200 50  0001 C CNN "Supplier Part Number"
F 11 "Basic" H 9550 3200 50  0001 C CNN "Basic/Extended"
F 12 "C2286" H 9550 3200 50  0001 C CNN "LCSC"
	1    9550 3200
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR0614
U 1 1 5F773065
P 9550 3500
F 0 "#PWR0614" H 9550 3250 50  0001 C CNN
F 1 "GND" H 9555 3327 50  0000 C CNN
F 2 "" H 9550 3500 50  0001 C CNN
F 3 "" H 9550 3500 50  0001 C CNN
	1    9550 3500
	1    0    0    -1  
$EndComp
Text HLabel 4350 7550 2    30   Input ~ 0
INTERLOCK_EN
Wire Wire Line
	3550 7550 3650 7550
$Comp
L RCAS_Passives:Resistor R604
U 1 1 5F774B71
P 3650 7800
F 0 "R604" H 3720 7846 50  0000 L CNN
F 1 "10k" H 3720 7755 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 7800 50  0001 C CNN
F 3 "~" H 3650 7800 50  0001 C CNN
F 4 "Basic" H 3650 7800 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 3650 7800 50  0001 C CNN "LCSC"
	1    3650 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7650 3650 7550
Connection ~ 3650 7550
Wire Wire Line
	3650 7550 4350 7550
Wire Wire Line
	3650 7950 3650 8050
Wire Wire Line
	3650 8050 3250 8050
Wire Wire Line
	3250 8050 3250 7750
$Comp
L RCAS_Power_Symbols:GND #PWR0602
U 1 1 5F774B7D
P 3250 8150
F 0 "#PWR0602" H 3250 7900 50  0001 C CNN
F 1 "GND" H 3255 7977 50  0000 C CNN
F 2 "" H 3250 8150 50  0001 C CNN
F 3 "" H 3250 8150 50  0001 C CNN
	1    3250 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 8150 3250 8050
Connection ~ 3250 8050
Text Notes 4300 7700 0    30   ~ 0
Processor sets high to enable interlock loop
$Comp
L RCAS_Passives:Capacitor C601
U 1 1 5F7784FC
P 3450 6450
F 0 "C601" H 3565 6496 50  0000 L CNN
F 1 "1nF" H 3565 6405 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 6300 50  0001 C CNN
F 3 "~" H 3450 6450 50  0001 C CNN
F 4 "Basic" H 3450 6450 50  0001 C CNN "Basic/Extended"
F 5 "C1588" H 3450 6450 50  0001 C CNN "LCSC"
	1    3450 6450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R603
U 1 1 5F77AC1C
P 3250 7000
F 0 "R603" H 3320 7046 50  0000 L CNN
F 1 "1k" H 3320 6955 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 7000 50  0001 C CNN
F 3 "~" H 3250 7000 50  0001 C CNN
F 4 "Basic" H 3250 7000 50  0001 C CNN "Basic/Extended"
F 5 "C21190" H 3250 7000 50  0001 C CNN "LCSC"
	1    3250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7150 3250 7350
Wire Wire Line
	3250 6850 3250 6650
Wire Wire Line
	2950 6650 3250 6650
Connection ~ 3250 6650
$Comp
L RCAS_Passives:Resistor R606
U 1 1 5F783060
P 4050 6450
F 0 "R606" H 4120 6496 50  0000 L CNN
F 1 "4k7" H 4120 6405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3980 6450 50  0001 C CNN
F 3 "~" H 4050 6450 50  0001 C CNN
F 4 "Basic" H 4050 6450 50  0001 C CNN "Basic/Extended"
F 5 "C23162" H 4050 6450 50  0001 C CNN "LCSC"
	1    4050 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6200 4050 6300
$Comp
L RCAS_LEDs:LED D602
U 1 1 5F783068
P 4050 6850
F 0 "D602" V 4134 6732 50  0000 R CNN
F 1 "LED" V 4043 6732 50  0000 R CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4050 6850 50  0001 C CNN
F 3 "~" H 4050 6850 50  0001 C CNN
F 4 "Interlock Enabled" V 3952 6732 50  0000 R CNN "Label"
F 5 "£0.11" H 4050 6850 50  0001 C CNN "Cost"
F 6 "Yellow LED, 2V, 30mA, 0603" H 4050 6850 50  0001 C CNN "Description"
F 7 "Wurth Elektronik" H 4050 6850 50  0001 C CNN "Manufacturer"
F 8 "150060YS75000" H 4050 6850 50  0001 C CNN "Manufacturer Part Number"
F 9 "DigiKey" H 4050 6850 50  0001 C CNN "Supplier"
F 10 "732-4981-1-ND" H 4050 6850 50  0001 C CNN "Supplier Part Number"
F 11 "Basic" H 4050 6850 50  0001 C CNN "Basic/Extended"
F 12 "C205443" H 4050 6850 50  0001 C CNN "LCSC"
	1    4050 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 6600 4050 6700
Wire Wire Line
	4050 7000 4050 7150
$Comp
L RCAS_Power_Symbols:GND #PWR0604
U 1 1 5F783070
P 4050 7150
F 0 "#PWR0604" H 4050 6900 50  0001 C CNN
F 1 "GND" H 4055 6977 50  0000 C CNN
F 2 "" H 4050 7150 50  0001 C CNN
F 3 "" H 4050 7150 50  0001 C CNN
	1    4050 7150
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R612
U 1 1 5F789681
P 8300 6450
F 0 "R612" H 8370 6496 50  0000 L CNN
F 1 "4k7" H 8370 6405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8230 6450 50  0001 C CNN
F 3 "~" H 8300 6450 50  0001 C CNN
F 4 "Basic" H 8300 6450 50  0001 C CNN "Basic/Extended"
F 5 "C23162" H 8300 6450 50  0001 C CNN "LCSC"
	1    8300 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 6200 8300 6300
$Comp
L RCAS_LEDs:LED D605
U 1 1 5F789689
P 8300 6850
F 0 "D605" V 8384 6732 50  0000 R CNN
F 1 "LED" V 8293 6732 50  0000 R CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8300 6850 50  0001 C CNN
F 3 "~" H 8300 6850 50  0001 C CNN
F 4 "Tether Present" V 8202 6732 50  0000 R CNN "Label"
F 5 "£0.11" H 8300 6850 50  0001 C CNN "Cost"
F 6 "Yellow LED, 2V, 30mA, 0603" H 8300 6850 50  0001 C CNN "Description"
F 7 "Wurth Elektronik" H 8300 6850 50  0001 C CNN "Manufacturer"
F 8 "150060YS75000" H 8300 6850 50  0001 C CNN "Manufacturer Part Number"
F 9 "DigiKey" H 8300 6850 50  0001 C CNN "Supplier"
F 10 "732-4981-1-ND" H 8300 6850 50  0001 C CNN "Supplier Part Number"
F 11 "Basic" H 8300 6850 50  0001 C CNN "Basic/Extended"
F 12 "C205443" H 8300 6850 50  0001 C CNN "LCSC"
	1    8300 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 6600 8300 6700
Wire Wire Line
	8300 7000 8300 7150
$Comp
L RCAS_Power_Symbols:GND #PWR0611
U 1 1 5F789691
P 8300 7150
F 0 "#PWR0611" H 8300 6900 50  0001 C CNN
F 1 "GND" H 8305 6977 50  0000 C CNN
F 2 "" H 8300 7150 50  0001 C CNN
F 3 "" H 8300 7150 50  0001 C CNN
	1    8300 7150
	1    0    0    -1  
$EndComp
Connection ~ 8300 6200
Wire Wire Line
	8300 6200 9450 6200
Text HLabel 10200 6200 2    30   Output ~ 0
INTERLOCK_OUT
Text Notes 10200 6300 0    30   ~ 0
To start of interlock loop in loco
$Comp
L RCAS_Passives:Resistor R613
U 1 1 5F79A824
P 9450 6450
F 0 "R613" H 9520 6496 50  0000 L CNN
F 1 "68k" H 9520 6405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9380 6450 50  0001 C CNN
F 3 "~" H 9450 6450 50  0001 C CNN
F 4 "Basic" H 9450 6450 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 9450 6450 50  0001 C CNN "LCSC"
	1    9450 6450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R614
U 1 1 5F79AF76
P 9450 6850
F 0 "R614" H 9520 6896 50  0000 L CNN
F 1 "10k" H 9520 6805 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9380 6850 50  0001 C CNN
F 3 "~" H 9450 6850 50  0001 C CNN
F 4 "Basic" H 9450 6850 50  0001 C CNN "Basic/Extended"
F 5 "C23231" H 9450 6850 50  0001 C CNN "LCSC"
	1    9450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 6600 9450 6650
Wire Wire Line
	9450 6300 9450 6200
Connection ~ 9450 6200
Wire Wire Line
	9450 6200 10200 6200
$Comp
L RCAS_Power_Symbols:GND #PWR0612
U 1 1 5F79D653
P 9450 7150
F 0 "#PWR0612" H 9450 6900 50  0001 C CNN
F 1 "GND" H 9455 6977 50  0000 C CNN
F 2 "" H 9450 7150 50  0001 C CNN
F 3 "" H 9450 7150 50  0001 C CNN
	1    9450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 7000 9450 7100
Wire Wire Line
	9850 7000 9850 7100
Wire Wire Line
	9850 7100 9450 7100
Connection ~ 9450 7100
Wire Wire Line
	9450 7100 9450 7150
Wire Wire Line
	9850 6700 9850 6650
Wire Wire Line
	9850 6650 9450 6650
Connection ~ 9450 6650
Wire Wire Line
	9450 6650 9450 6700
$Comp
L RCAS_Passives:Capacitor C604
U 1 1 5F7A266C
P 9850 6850
F 0 "C604" H 9965 6896 50  0000 L CNN
F 1 "100nF" H 9965 6805 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9888 6700 50  0001 C CNN
F 3 "~" H 9850 6850 50  0001 C CNN
F 4 "C14663" H 9850 6850 50  0001 C CNN "LCSC"
F 5 "Basic" H 9850 6850 50  0001 C CNN "Basic/Extended"
	1    9850 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 6650 10200 6650
Connection ~ 9850 6650
Text HLabel 10200 6650 2    30   Output ~ 0
TETHER_PRESENT
$Comp
L RCAS_Power_Symbols:+24V0 #PWR0613
U 1 1 5F767D10
P 9550 2550
F 0 "#PWR0613" H 9550 2400 50  0001 C CNN
F 1 "+24V0" H 9565 2723 50  0000 C CNN
F 2 "" H 9550 2550 50  0001 C CNN
F 3 "" H 9550 2550 50  0001 C CNN
	1    9550 2550
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+24V0 #PWR0601
U 1 1 5F768553
P 1700 6050
F 0 "#PWR0601" H 1700 5900 50  0001 C CNN
F 1 "+24V0" H 1715 6223 50  0000 C CNN
F 2 "" H 1700 6050 50  0001 C CNN
F 3 "" H 1700 6050 50  0001 C CNN
	1    1700 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6650 3450 6650
Wire Wire Line
	3450 6600 3450 6650
Wire Wire Line
	3450 6300 3450 6200
Connection ~ 3450 6200
$Comp
L RCAS_Connectors_Generic:Conn_01x02 J?
U 1 1 5F77596F
P 4800 5800
AR Path="/5F77596F" Ref="J?"  Part="1" 
AR Path="/5F7561A0/5F77596F" Ref="J601"  Part="1" 
F 0 "J601" V 4794 5612 50  0000 R CNN
F 1 "PicoBlade_1x02" V 4703 5612 50  0000 R CNN
F 2 "RCAS_Connector_Molex:Molex_PicoBlade_53047-0210_1x02_P1.25mm_Vertical" H 4800 5800 50  0001 C CNN
F 3 "~" H 4800 5800 50  0001 C CNN
F 4 "ESTOP" V 4627 5612 50  0000 R CNN "Label"
F 5 "£0.13" H 4800 5800 50  0001 C CNN "Cost"
F 6 "Molex" H 4800 5800 50  0001 C CNN "Manufacturer"
F 7 "0530470210" H 4800 5800 50  0001 C CNN "Manufacturer Part Number"
F 8 "DigiKey" H 4800 5800 50  0001 C CNN "Supplier"
F 9 "WM1731-ND" H 4800 5800 50  0001 C CNN "Supplier Part Number"
	1    4800 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 6200 4800 6000
Wire Wire Line
	4900 6000 4900 6200
$Comp
L RCAS_Passives:Resistor R607
U 1 1 5F77597C
P 5450 6450
F 0 "R607" H 5520 6496 50  0000 L CNN
F 1 "4k7" H 5520 6405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5380 6450 50  0001 C CNN
F 3 "~" H 5450 6450 50  0001 C CNN
F 4 "Basic" H 5450 6450 50  0001 C CNN "Basic/Extended"
F 5 "C23162" H 5450 6450 50  0001 C CNN "LCSC"
	1    5450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6200 5450 6300
$Comp
L RCAS_LEDs:LED D604
U 1 1 5F775988
P 5450 6850
F 0 "D604" V 5534 6732 50  0000 R CNN
F 1 "LED" V 5443 6732 50  0000 R CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 6850 50  0001 C CNN
F 3 "~" H 5450 6850 50  0001 C CNN
F 4 "Estop Present" V 5352 6732 50  0000 R CNN "Label"
F 5 "£0.11" H 5450 6850 50  0001 C CNN "Cost"
F 6 "Yellow LED, 2V, 30mA, 0603" H 5450 6850 50  0001 C CNN "Description"
F 7 "Wurth Elektronik" H 5450 6850 50  0001 C CNN "Manufacturer"
F 8 "150060YS75000" H 5450 6850 50  0001 C CNN "Manufacturer Part Number"
F 9 "DigiKey" H 5450 6850 50  0001 C CNN "Supplier"
F 10 "732-4981-1-ND" H 5450 6850 50  0001 C CNN "Supplier Part Number"
F 11 "Basic" H 5450 6850 50  0001 C CNN "Basic/Extended"
F 12 "C205443" H 5450 6850 50  0001 C CNN "LCSC"
	1    5450 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 6600 5450 6700
Wire Wire Line
	5450 7000 5450 7150
$Comp
L RCAS_Power_Symbols:GND #PWR0608
U 1 1 5F775994
P 5450 7150
F 0 "#PWR0608" H 5450 6900 50  0001 C CNN
F 1 "GND" H 5455 6977 50  0000 C CNN
F 2 "" H 5450 7150 50  0001 C CNN
F 3 "" H 5450 7150 50  0001 C CNN
	1    5450 7150
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R610
U 1 1 5F7759A2
P 6350 6450
F 0 "R610" H 6420 6496 50  0000 L CNN
F 1 "68k" H 6420 6405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 6450 50  0001 C CNN
F 3 "~" H 6350 6450 50  0001 C CNN
F 4 "Basic" H 6350 6450 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 6350 6450 50  0001 C CNN "LCSC"
	1    6350 6450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R611
U 1 1 5F7759AC
P 6350 6850
F 0 "R611" H 6420 6896 50  0000 L CNN
F 1 "10k" H 6420 6805 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 6850 50  0001 C CNN
F 3 "~" H 6350 6850 50  0001 C CNN
F 4 "Basic" H 6350 6850 50  0001 C CNN "Basic/Extended"
F 5 "C23231" H 6350 6850 50  0001 C CNN "LCSC"
	1    6350 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6600 6350 6650
Wire Wire Line
	6350 6300 6350 6200
$Comp
L RCAS_Power_Symbols:GND #PWR0610
U 1 1 5F7759BA
P 6350 7150
F 0 "#PWR0610" H 6350 6900 50  0001 C CNN
F 1 "GND" H 6355 6977 50  0000 C CNN
F 2 "" H 6350 7150 50  0001 C CNN
F 3 "" H 6350 7150 50  0001 C CNN
	1    6350 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 7000 6350 7100
Wire Wire Line
	6750 7000 6750 7100
Wire Wire Line
	6750 7100 6350 7100
Connection ~ 6350 7100
Wire Wire Line
	6350 7100 6350 7150
Wire Wire Line
	6750 6700 6750 6650
Wire Wire Line
	6750 6650 6350 6650
Connection ~ 6350 6650
Wire Wire Line
	6350 6650 6350 6700
$Comp
L RCAS_Passives:Capacitor C603
U 1 1 5F7759CD
P 6750 6850
F 0 "C603" H 6865 6896 50  0000 L CNN
F 1 "100nF" H 6865 6805 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6788 6700 50  0001 C CNN
F 3 "~" H 6750 6850 50  0001 C CNN
F 4 "C14663" H 6750 6850 50  0001 C CNN "LCSC"
F 5 "Basic" H 6750 6850 50  0001 C CNN "Basic/Extended"
	1    6750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6650 7100 6650
Connection ~ 6750 6650
Text HLabel 7100 6650 2    30   Output ~ 0
ESTOP_PRESENT
Connection ~ 4050 6200
Wire Wire Line
	5450 6200 6350 6200
Connection ~ 5450 6200
Connection ~ 6350 6200
Wire Wire Line
	3450 6200 4050 6200
Wire Wire Line
	1600 2000 2000 2000
$Comp
L RCAS_Connectors_Generic:Conn_01x04 J602
U 1 1 5FAE1EB4
P 5900 2650
F 0 "J602" H 5850 2850 50  0000 L CNN
F 1 "PicoBlade_1x04" H 5850 2350 50  0000 L CNN
F 2 "RCAS_Connector_Molex:Molex_PicoBlade_53047-0410_1x04_P1.25mm_Vertical" H 5900 2650 50  0001 C CNN
F 3 "~" H 5900 2650 50  0001 C CNN
F 4 "POWER SWITCH" H 5850 2250 50  0000 L CNN "Label"
F 5 "£0.19" H 5900 2650 50  0001 C CNN "Cost"
F 6 "Molex" H 5900 2650 50  0001 C CNN "Manufacturer"
F 7 "DigiKey" H 5900 2650 50  0001 C CNN "Supplier"
F 8 "	WM1733-ND" H 5900 2650 50  0001 C CNN "Supplier Part Number"
	1    5900 2650
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR0606
U 1 1 5FAE28AB
P 5050 3050
F 0 "#PWR0606" H 5050 2800 50  0001 C CNN
F 1 "GND" H 5055 2877 50  0000 C CNN
F 2 "" H 5050 3050 50  0001 C CNN
F 3 "" H 5050 3050 50  0001 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3050 5050 3000
Wire Wire Line
	5700 2750 5050 2750
Wire Wire Line
	5700 2650 4850 2650
$Comp
L RCAS_Power_Symbols:+24V0 #PWR0605
U 1 1 5FAEC1BB
P 5050 2450
F 0 "#PWR0605" H 5050 2300 50  0001 C CNN
F 1 "+24V0" H 5065 2623 50  0000 C CNN
F 2 "" H 5050 2450 50  0001 C CNN
F 3 "" H 5050 2450 50  0001 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2450 5050 2550
Wire Wire Line
	5050 2550 5700 2550
$Comp
L RCAS_Passives:Capacitor C?
U 1 1 5FAF5F15
P 4850 2800
AR Path="/5F75B1B6/5FAF5F15" Ref="C?"  Part="1" 
AR Path="/5F7561A0/5FAF5F15" Ref="C602"  Part="1" 
F 0 "C602" H 4965 2846 50  0000 L CNN
F 1 "1nF" H 4965 2755 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4888 2650 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
F 4 "Basic" H 4850 2800 50  0001 C CNN "Basic/Extended"
F 5 "C1588" H 4850 2800 50  0001 C CNN "LCSC"
	1    4850 2800
	-1   0    0    1   
$EndComp
Connection ~ 4850 2650
Wire Wire Line
	4850 2950 4850 3000
Wire Wire Line
	4850 3000 5050 3000
Connection ~ 5050 3000
Wire Wire Line
	4850 2200 4850 2650
Text Notes 5975 2575 0    30   ~ 0
Indicator V+
Text Notes 5975 2875 0    30   ~ 0
Indicator V-
Text Notes 5975 2775 0    30   ~ 0
Switch
Text Notes 5975 2675 0    30   ~ 0
Switch
Wire Wire Line
	5050 2750 5050 3000
Connection ~ 3500 4700
Wire Wire Line
	3500 4800 3500 4700
$Comp
L RCAS_Power_Symbols:GND #PWR0603
U 1 1 5F75D76B
P 3500 4800
F 0 "#PWR0603" H 3500 4550 50  0001 C CNN
F 1 "GND" H 3505 4627 50  0000 C CNN
F 2 "" H 3500 4800 50  0001 C CNN
F 3 "" H 3500 4800 50  0001 C CNN
	1    3500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4700 3500 4400
Wire Wire Line
	3900 4700 3500 4700
Wire Wire Line
	3900 4600 3900 4700
Wire Wire Line
	3900 4200 6350 4200
Connection ~ 3900 4200
Wire Wire Line
	3900 4300 3900 4200
$Comp
L RCAS_Passives:Resistor R605
U 1 1 5F75CE74
P 3900 4450
F 0 "R605" H 3970 4496 50  0000 L CNN
F 1 "10k" H 3970 4405 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3830 4450 50  0001 C CNN
F 3 "~" H 3900 4450 50  0001 C CNN
F 4 "Basic" H 3900 4450 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 3900 4450 50  0001 C CNN "LCSC"
	1    3900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4200 3900 4200
Text HLabel 6300 3300 2    30   Input ~ 0
POWER_INDICATOR
Connection ~ 5450 3800
Wire Wire Line
	5450 3900 5450 3800
$Comp
L RCAS_Power_Symbols:GND #PWR0607
U 1 1 5FB0367A
P 5450 3900
F 0 "#PWR0607" H 5450 3650 50  0001 C CNN
F 1 "GND" H 5455 3727 50  0000 C CNN
F 2 "" H 5450 3900 50  0001 C CNN
F 3 "" H 5450 3900 50  0001 C CNN
	1    5450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3800 5450 3500
Wire Wire Line
	5850 3800 5450 3800
Wire Wire Line
	5850 3700 5850 3800
Wire Wire Line
	5850 3400 5850 3300
$Comp
L RCAS_Passives:Resistor R609
U 1 1 5FB03686
P 5850 3550
F 0 "R609" H 5920 3596 50  0000 L CNN
F 1 "10k" H 5920 3505 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 3550 50  0001 C CNN
F 3 "~" H 5850 3550 50  0001 C CNN
F 4 "Basic" H 5850 3550 50  0001 C CNN "Basic/Extended"
F 5 "C25804" H 5850 3550 50  0001 C CNN "LCSC"
	1    5850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3300 5850 3300
Wire Wire Line
	5450 3100 5450 2850
Wire Wire Line
	5450 2850 5700 2850
Wire Wire Line
	2300 2000 3500 2000
Wire Wire Line
	3500 4000 3500 2000
Connection ~ 3500 2000
Wire Wire Line
	3500 2000 4550 2000
Wire Wire Line
	5850 3300 6300 3300
Connection ~ 5850 3300
Wire Wire Line
	5650 2000 6300 2000
Connection ~ 5650 2000
Wire Wire Line
	4050 6200 4800 6200
Wire Wire Line
	4900 6200 5450 6200
Wire Wire Line
	6350 6200 7650 6200
Wire Wire Line
	7750 6200 8300 6200
$Comp
L RCAS_Connectors_Generic:Conn_01x03 J603
U 1 1 5FBB8826
P 7750 5800
F 0 "J603" V 7759 5612 50  0000 R CNN
F 1 "Barrel Jack" V 7668 5612 50  0000 R CNN
F 2 "RCAS_Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 7750 5800 50  0001 C CNN
F 3 "~" H 7750 5800 50  0001 C CNN
F 4 "TETHER" V 7577 5612 50  0000 R CNN "Label"
F 5 "2.1mm ID Barrel Jack, TH RA" H 7750 5800 50  0001 C CNN "Description"
F 6 "Wurth Elektronik" H 7750 5800 50  0001 C CNN "Manufacturer"
F 7 "694106301002" H 7750 5800 50  0001 C CNN "Manufacturer Part Number"
F 8 "Digikey" H 7750 5800 50  0001 C CNN "Supplier"
F 9 "732-5930-ND" H 7750 5800 50  0001 C CNN "Supplier Part Number"
F 10 "0.71" H 7750 5800 50  0001 C CNN "Cost"
	1    7750 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 6000 7650 6200
Wire Wire Line
	7750 6000 7750 6200
NoConn ~ 7850 6000
Text Notes 7600 5700 0    30   ~ 0
Tether plug will be barrel jack with shorted contacts
$Comp
L RCAS_FETs:Q_NMOS_GSD Q602
U 1 1 5FBCCFF7
P 3350 7550
F 0 "Q602" H 3555 7596 50  0000 L CNN
F 1 "2N7002" H 3555 7505 50  0000 L CNN
F 2 "RCAS_Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3550 7650 50  0001 C CNN
F 3 "~" H 3350 7550 50  0001 C CNN
F 4 "N-Channel MOSFET, 60V, 300mA" H 3350 7550 50  0001 C CNN "Description"
F 5 "Nexperia" H 3350 7550 50  0001 C CNN "Manufacturer"
F 6 "2N7002,215" H 3350 7550 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 3350 7550 50  0001 C CNN "Supplier"
F 8 "1727-2764-1-ND" H 3350 7550 50  0001 C CNN "Supplier Part Number"
F 9 "£0.12" H 3350 7550 50  0001 C CNN "Cost"
F 10 "Subsitituded for extended" H 3350 7550 50  0001 C CNN "Basic/Extended"
F 11 "C239589" H 3350 7550 50  0001 C CNN "LCSC"
	1    3350 7550
	-1   0    0    -1  
$EndComp
$Comp
L RCAS_FETs:Q_NMOS_GSD Q603
U 1 1 5FBCE94F
P 3600 4200
F 0 "Q603" H 3805 4246 50  0000 L CNN
F 1 "2N7002" H 3805 4155 50  0000 L CNN
F 2 "RCAS_Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3800 4300 50  0001 C CNN
F 3 "~" H 3600 4200 50  0001 C CNN
F 4 "N-Channel MOSFET, 60V, 300mA" H 3600 4200 50  0001 C CNN "Description"
F 5 "Nexperia" H 3600 4200 50  0001 C CNN "Manufacturer"
F 6 "2N7002,215" H 3600 4200 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 3600 4200 50  0001 C CNN "Supplier"
F 8 "1727-2764-1-ND" H 3600 4200 50  0001 C CNN "Supplier Part Number"
F 9 "£0.12" H 3600 4200 50  0001 C CNN "Cost"
F 10 "Subsitituded for extended" H 3600 4200 50  0001 C CNN "Basic/Extended"
F 11 "C239589" H 3600 4200 50  0001 C CNN "LCSC"
	1    3600 4200
	-1   0    0    -1  
$EndComp
$Comp
L RCAS_FETs:Q_NMOS_GSD Q604
U 1 1 5FBCFD4C
P 5550 3300
F 0 "Q604" H 5755 3346 50  0000 L CNN
F 1 "2N7002" H 5755 3255 50  0000 L CNN
F 2 "RCAS_Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5750 3400 50  0001 C CNN
F 3 "~" H 5550 3300 50  0001 C CNN
F 4 "N-Channel MOSFET, 60V, 300mA" H 5550 3300 50  0001 C CNN "Description"
F 5 "Nexperia" H 5550 3300 50  0001 C CNN "Manufacturer"
F 6 "2N7002,215" H 5550 3300 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 5550 3300 50  0001 C CNN "Supplier"
F 8 "1727-2764-1-ND" H 5550 3300 50  0001 C CNN "Supplier Part Number"
F 9 "£0.12" H 5550 3300 50  0001 C CNN "Cost"
F 10 "Subsitituded for extended" H 5550 3300 50  0001 C CNN "Basic/Extended"
F 11 "C239589" H 5550 3300 50  0001 C CNN "LCSC"
	1    5550 3300
	-1   0    0    -1  
$EndComp
$Comp
L RCAS_FETs:Q_PMOS_GDS Q601
U 1 1 5FBD12E3
P 2950 6300
F 0 "Q601" V 3292 6300 50  0000 C CNN
F 1 "FQD11P06TM" V 3201 6300 50  0000 C CNN
F 2 "RCAS_Package_TO_SOT_SMD:TO-252-2" H 3150 6400 50  0001 C CNN
F 3 "~" H 2950 6300 50  0001 C CNN
F 4 "P-Channel MOSFET, 60V, 9.4A, DPAK" H 2950 6300 50  0001 C CNN "Description"
F 5 "ON Semiconductor" H 2950 6300 50  0001 C CNN "Manufacturer"
F 6 "FQD11P06TM" H 2950 6300 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 2950 6300 50  0001 C CNN "Supplier"
F 8 "FQD11P06TMCT-ND" H 2950 6300 50  0001 C CNN "Supplier Part Number"
F 9 "£0.45" H 2950 6300 50  0001 C CNN "Cost"
F 10 "Subsitituded for extended" H 2950 6300 50  0001 C CNN "Basic/Extended"
F 11 "C165227" H 2950 6300 50  0001 C CNN "LCSC"
	1    2950 6300
	0    1    -1   0   
$EndComp
$Comp
L RCAS_Diodes:D D601
U 1 1 5FBDE33E
P 2200 6200
F 0 "D601" H 2200 5983 50  0000 C CNN
F 1 "1N5819HW-7-F" H 2200 6074 50  0000 C CNN
F 2 "RCAS_Diode_SMD:D_SOD-123" H 2200 6200 50  0001 C CNN
F 3 "~" H 2200 6200 50  0001 C CNN
F 4 "Schottky Diode, 40V, 1A, SOD123" H 2200 6200 50  0001 C CNN "Description"
F 5 "Diodes Incorporated" H 2200 6200 50  0001 C CNN "Manufacturer"
F 6 "1N5819HW-7-F" H 2200 6200 50  0001 C CNN "Manufacturer Part Number"
F 7 "DigiKey" H 2200 6200 50  0001 C CNN "Supplier"
F 8 "1N5819HW-FDICT-ND" H 2200 6200 50  0001 C CNN "Supplier Part Number"
F 9 "£0.31" H 2200 6200 50  0001 C CNN "Cost"
F 10 "Extended" H 2200 6200 50  0001 C CNN "Basic/Extended"
F 11 "C117948" H 2200 6200 50  0001 C CNN "LCSC"
	1    2200 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 6200 2350 6200
Connection ~ 2450 6200
Wire Wire Line
	1700 6200 1700 6050
Wire Wire Line
	1700 6200 2050 6200
Wire Wire Line
	9550 3350 9550 3500
Wire Wire Line
	9550 3050 9550 2950
$Comp
L RCAS_Mechanical:MountingHole H?
U 1 1 5FC48AC3
P 6500 2700
AR Path="/5F75B1B6/5FC48AC3" Ref="H?"  Part="1" 
AR Path="/5F7561A0/5FC48AC3" Ref="H602"  Part="1" 
F 0 "H602" H 6600 2746 50  0000 L CNN
F 1 "16mm Hole" H 6600 2655 50  0001 L CNN
F 2 "RCAS_Button_Switch_THT:16mm_Power_Button" H 6500 2700 50  0001 C CNN
F 3 "~" H 6500 2700 50  0001 C CNN
F 4 "POWER SWITCH MOUNT" H 7050 2650 50  0000 C CNN "Label"
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H?
U 1 1 5FC4C8A2
P 4850 5600
AR Path="/5F75B1B6/5FC4C8A2" Ref="H?"  Part="1" 
AR Path="/5F7561A0/5FC4C8A2" Ref="H601"  Part="1" 
F 0 "H601" H 4950 5646 50  0000 L CNN
F 1 "16mm Hole" H 4950 5555 50  0001 L CNN
F 2 "RCAS_Button_Switch_THT:16mm_E-STOP" H 4850 5600 50  0001 C CNN
F 3 "~" H 4850 5600 50  0001 C CNN
F 4 "E-STOP MOUNT" H 5250 5550 50  0000 C CNN "Label"
	1    4850 5600
	1    0    0    -1  
$EndComp
$EndSCHEMATC

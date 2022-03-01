EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 4
Title "System Diagram"
Date "2021-05-24"
Rev "vA"
Comp ""
Comment1 "MJ"
Comment2 "AF"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1500 2900 0    50   Output ~ 0
INTERLOCK_RET
Text HLabel 1500 3100 0    50   UnSpc ~ 0
GND
Text HLabel 1500 3300 0    50   Input ~ 0
LOCO_RX+
Text HLabel 1500 3500 0    50   Input ~ 0
LOCO_RX-
Text HLabel 1500 3700 0    50   Output ~ 0
LOCO_TX+
Text HLabel 1500 3900 0    50   Output ~ 0
LOCO_TX-
Text HLabel 1500 4100 0    50   Input ~ 0
POWER_EN
Text HLabel 1500 4300 0    50   Input ~ 0
INTERLOCK_IN
Text Notes 8050 3700 2    100  ~ 0
Loco Main Board PCA\nModule 2 Variant
Text HLabel 3950 6900 0    50   UnSpc ~ 0
VBAT
Text HLabel 5800 7100 0    50   UnSpc ~ 0
VCAP
Text HLabel 1750 9650 0    50   UnSpc ~ 0
EARTH
Wire Notes Line
	1850 2450 1850 4800
Wire Notes Line
	13950 4800 13950 2450
$Comp
L RCAS_Batteries:Battery_Cell BT?
U 1 1 5F99EAE0
P 4500 7650
AR Path="/5F802B50/5F99EAE0" Ref="BT?"  Part="1" 
AR Path="/5F802BA9/5F99EAE0" Ref="BT401"  Part="1" 
F 0 "BT401" H 4618 7746 50  0000 L CNN
F 1 "12V, 110Ah" H 4618 7655 50  0000 L CNN
F 2 "" V 4500 7710 50  0001 C CNN
F 3 "~" V 4500 7710 50  0001 C CNN
	1    4500 7650
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery_Cell BT?
U 1 1 5F99EAE6
P 4500 8050
AR Path="/5F802B50/5F99EAE6" Ref="BT?"  Part="1" 
AR Path="/5F802BA9/5F99EAE6" Ref="BT402"  Part="1" 
F 0 "BT402" H 4618 8146 50  0000 L CNN
F 1 "12V, 110Ah" H 4618 8055 50  0000 L CNN
F 2 "" V 4500 8110 50  0001 C CNN
F 3 "~" V 4500 8110 50  0001 C CNN
	1    4500 8050
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery_Cell BT?
U 1 1 5F99EAEC
P 4500 8450
AR Path="/5F802B50/5F99EAEC" Ref="BT?"  Part="1" 
AR Path="/5F802BA9/5F99EAEC" Ref="BT403"  Part="1" 
F 0 "BT403" H 4618 8546 50  0000 L CNN
F 1 "12V, 110Ah" H 4618 8455 50  0000 L CNN
F 2 "" V 4500 8510 50  0001 C CNN
F 3 "~" V 4500 8510 50  0001 C CNN
	1    4500 8450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery_Cell BT?
U 1 1 5F99EAF2
P 4500 8850
AR Path="/5F802B50/5F99EAF2" Ref="BT?"  Part="1" 
AR Path="/5F802BA9/5F99EAF2" Ref="BT404"  Part="1" 
F 0 "BT404" H 4618 8946 50  0000 L CNN
F 1 "12V, 110Ah" H 4618 8855 50  0000 L CNN
F 2 "" V 4500 8910 50  0001 C CNN
F 3 "~" V 4500 8910 50  0001 C CNN
	1    4500 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7750 4500 7850
Wire Wire Line
	4500 8150 4500 8250
Wire Wire Line
	4500 8550 4500 8650
Wire Wire Line
	3950 6900 4500 6900
Wire Wire Line
	6300 7100 5800 7100
$Comp
L RCAS_Relays:Relay_Generic_SPST-NO K?
U 1 1 5F99EB2A
P 4300 6200
AR Path="/5F802B50/5F99EB2A" Ref="K?"  Part="1" 
AR Path="/5F802BA9/5F99EB2A" Ref="K401"  Part="1" 
F 0 "K401" H 4730 6246 50  0000 L CNN
F 1 "LEV200A5NAA" H 4730 6155 50  0000 L CNN
F 2 "" H 5570 6170 50  0001 C CNN
F 3 "" H 4300 6200 50  0001 C CNN
F 4 "500A, 24V Coil" H 4300 6200 50  0001 C CNN "Description"
F 5 "TE Connectivity" H 4300 6200 50  0001 C CNN "Manufacturer"
F 6 "LEV200A5NAA" H 4300 6200 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 4300 6200 50  0001 C CNN "Supplier"
F 8 "A101172-ND" H 4300 6200 50  0001 C CNN "Supplier Part Number"
F 9 "£56.76" H 4300 6200 50  0001 C CNN "Cost"
	1    4300 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6500 4500 6600
Wire Wire Line
	4600 5900 4600 5650
Wire Wire Line
	4600 5650 6400 5650
Wire Wire Line
	6400 5650 6400 5900
Connection ~ 6400 5650
Text Label 3100 9650 2    50   ~ 0
EARTH
Text Label 6150 7100 2    50   ~ 0
VCAP
Text Label 4350 6900 2    50   ~ 0
VBAT
$Comp
L RCAS_Motor_Controllers:TPM400-48 U?
U 1 1 5F99EB3D
P 9700 7400
AR Path="/5F802B50/5F99EB3D" Ref="U?"  Part="1" 
AR Path="/5F802BA9/5F99EB3D" Ref="U402"  Part="1" 
F 0 "U402" H 9250 8250 50  0000 C CNN
F 1 "TPM400-48" H 10000 8250 50  0000 C CNN
F 2 "" H 9900 7000 50  0001 C CNN
F 3 "" H 9900 7000 50  0001 C CNN
	1    9700 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5650 9700 6500
$Comp
L RCAS_Misc:Motor_DC M?
U 1 1 5F99EB4B
P 10850 7750
AR Path="/5F802B50/5F99EB4B" Ref="M?"  Part="1" 
AR Path="/5F802BA9/5F99EB4B" Ref="M401"  Part="1" 
F 0 "M401" H 10600 7900 50  0000 L CNN
F 1 "LEM-170 (127)" H 10750 7300 50  0000 L CNN
F 2 "" H 10850 7660 50  0001 C CNN
F 3 "~" H 10850 7660 50  0001 C CNN
F 4 "48V" H 10850 7750 50  0001 C CNN "Description"
F 5 "LYNCH Motors" H 10850 7750 50  0001 C CNN "Manufacturer"
F 6 "LEM-170 (127)" H 10850 7750 50  0001 C CNN "Manufacturer Part Number"
	1    10850 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 7500 10850 7500
Wire Wire Line
	10850 7500 10850 7550
Wire Wire Line
	10850 8050 10850 8100
Wire Wire Line
	10850 8100 10300 8100
$Comp
L RCAS_Sensors:Thermistor TH?
U 1 1 5F99EB55
P 11100 7800
AR Path="/5F802B50/5F99EB55" Ref="TH?"  Part="1" 
AR Path="/5F802BA9/5F99EB55" Ref="TH401"  Part="1" 
F 0 "TH401" H 11205 7846 50  0000 L CNN
F 1 "Thermistor" H 11205 7755 50  0000 L CNN
F 2 "" H 11100 7800 50  0001 C CNN
F 3 "~" H 11100 7800 50  0001 C CNN
	1    11100 7800
	1    0    0    -1  
$EndComp
Entry Wire Line
	8900 6600 9000 6700
Entry Wire Line
	8900 6700 9000 6800
Entry Wire Line
	8900 6800 9000 6900
Entry Wire Line
	8900 6900 9000 7000
Entry Wire Line
	8900 7100 9000 7200
Entry Wire Line
	8900 7300 9000 7400
Entry Wire Line
	8900 7400 9000 7500
Entry Wire Line
	8900 7500 9000 7600
Entry Wire Line
	8900 7600 9000 7700
Entry Wire Line
	8900 7700 9000 7800
Entry Wire Line
	8900 7800 9000 7900
Entry Wire Line
	8900 7900 9000 8000
Entry Wire Line
	8900 8000 9000 8100
Wire Wire Line
	9100 6700 9000 6700
Wire Wire Line
	9100 6800 9000 6800
Wire Wire Line
	9100 6900 9000 6900
Wire Wire Line
	9100 7000 9000 7000
Wire Wire Line
	9100 7200 9000 7200
Wire Wire Line
	9100 7400 9000 7400
Wire Wire Line
	9100 7500 9000 7500
Wire Wire Line
	9100 7600 9000 7600
Wire Wire Line
	9100 7700 9000 7700
Wire Wire Line
	9100 7800 9000 7800
Wire Wire Line
	9100 7900 9000 7900
Wire Wire Line
	9100 8000 9000 8000
Wire Wire Line
	9100 8100 9000 8100
Entry Wire Line
	10400 6900 10500 6800
Entry Wire Line
	10400 7000 10500 6900
Entry Wire Line
	10400 7100 10500 7000
Entry Wire Line
	10400 7200 10500 7100
Wire Wire Line
	10300 6900 10400 6900
Wire Wire Line
	10300 7000 10400 7000
Wire Wire Line
	10300 7100 10400 7100
Wire Wire Line
	10300 7200 10400 7200
$Comp
L RCAS_Misc:Electromagnetic_Actor BRK?
U 1 1 5F99EB91
P 12750 7700
AR Path="/5F802B50/5F99EB91" Ref="BRK?"  Part="1" 
AR Path="/5F802BA9/5F99EB91" Ref="BRK401"  Part="1" 
F 0 "BRK401" V 12483 7750 50  0000 C CNN
F 1 "Brake" V 12574 7750 50  0000 C CNN
F 2 "" V 12725 7800 50  0001 C CNN
F 3 "~" V 12725 7800 50  0001 C CNN
F 4 "24V" H 12750 7700 50  0001 C CNN "Description"
F 5 "Intorq" H 12750 7700 50  0001 C CNN "Manufacturer"
	1    12750 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	11100 7600 11100 7500
Wire Wire Line
	11100 8000 11100 8100
Wire Wire Line
	11100 8100 11900 8100
Wire Wire Line
	11100 7500 11900 7500
Entry Wire Line
	11900 7500 12000 7400
Entry Wire Line
	11900 8100 12000 8000
$Comp
L RCAS_Relays:Relay_Generic_SPST-NO K?
U 1 1 5F99EBA9
P 6100 6200
AR Path="/5F802B50/5F99EBA9" Ref="K?"  Part="1" 
AR Path="/5F802BA9/5F99EBA9" Ref="K402"  Part="1" 
F 0 "K402" H 6530 6246 50  0000 L CNN
F 1 "LEV200A5NAA" H 6530 6155 50  0000 L CNN
F 2 "" H 7370 6170 50  0001 C CNN
F 3 "" H 6100 6200 50  0001 C CNN
F 4 "500A, 24V Coil" H 6100 6200 50  0001 C CNN "Description"
F 5 "TE Connectivity" H 6100 6200 50  0001 C CNN "Manufacturer"
F 6 "LEV200A5NAA" H 6100 6200 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 6100 6200 50  0001 C CNN "Supplier"
F 8 "A101172-ND" H 6100 6200 50  0001 C CNN "Supplier Part Number"
F 9 "£56.76" H 6100 6200 50  0001 C CNN "Cost"
	1    6100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6700 3800 6700
Wire Wire Line
	5900 6500 5900 6700
Wire Wire Line
	4100 6500 4100 6600
Wire Wire Line
	4100 6600 3800 6600
Wire Wire Line
	5900 5500 3800 5500
Wire Wire Line
	5900 5500 5900 5900
Entry Wire Line
	3700 5400 3800 5500
Entry Wire Line
	3700 5500 3800 5600
Entry Wire Line
	3700 6500 3800 6600
Entry Wire Line
	3700 6600 3800 6700
Wire Wire Line
	4100 5600 3800 5600
Wire Wire Line
	4100 5600 4100 5900
Wire Wire Line
	6300 7100 7350 7100
Wire Wire Line
	4500 6600 7200 6600
Connection ~ 4500 6600
Wire Wire Line
	4500 6600 4500 6900
Text Label 7200 5350 3    50   ~ 0
VBAT
Text Label 7350 5350 3    50   ~ 0
VCAP
Wire Wire Line
	7200 4800 7200 6600
Wire Wire Line
	7350 4800 7350 7100
Wire Wire Line
	12650 7700 12400 7700
Wire Wire Line
	12400 7700 12400 7150
Wire Wire Line
	12950 7700 13150 7700
Wire Wire Line
	13150 7700 13150 7150
Entry Wire Line
	13050 7050 13150 7150
Entry Wire Line
	12300 7050 12400 7150
Wire Bus Line
	13050 7050 12300 7050
Wire Bus Line
	12300 7050 12300 4800
Wire Wire Line
	3200 6100 3300 6100
Wire Wire Line
	3300 6100 3300 4800
Wire Wire Line
	3200 6300 3400 6300
Wire Wire Line
	3400 6300 3400 4800
Wire Wire Line
	2200 6300 2050 6300
Wire Wire Line
	2050 6300 2050 4800
Wire Notes Line
	1850 4800 13950 4800
Wire Notes Line
	1850 2450 13950 2450
$Comp
L RCAS_Misc:SMPS_Isolated_DC-DC U?
U 1 1 5F99EBE1
P 2700 6200
AR Path="/5F802B50/5F99EBE1" Ref="U?"  Part="1" 
AR Path="/5F802BA9/5F99EBE1" Ref="U401"  Part="1" 
F 0 "U401" H 2700 6565 50  0000 C CNN
F 1 "SD-150C-24" H 2700 6474 50  0000 C CNN
F 2 "" H 2700 6300 50  0001 C CNN
F 3 "" H 2700 6300 50  0001 C CNN
F 4 "SMPS_Isolated_DC-DC, 36-72V input, 24V output, 150W" H 2700 6200 50  0001 C CNN "Description"
F 5 "Mean Well" H 2700 6200 50  0001 C CNN "Manufacturer"
F 6 "SD-150C-24" H 2700 6200 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 2700 6200 50  0001 C CNN "Supplier"
F 8 "678-3596" H 2700 6200 50  0001 C CNN "Supplier Part Number"
F 9 "£58.13" H 2700 6200 50  0001 C CNN "Cost"
	1    2700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6100 2150 6100
Wire Wire Line
	2150 6100 2150 4800
Wire Bus Line
	7850 1600 7850 2450
$Comp
L RCAS_Switches:SW_Push ESTP?
U 1 1 5F99EBFC
P 4700 1850
AR Path="/5F802B50/5F99EBFC" Ref="ESTP?"  Part="1" 
AR Path="/5F802BA9/5F99EBFC" Ref="ESTP401"  Part="1" 
F 0 "ESTP401" V 4746 1802 50  0000 R CNN
F 1 "E-stop Left" V 4655 1802 50  0000 R CNN
F 2 "" H 4700 2050 50  0001 C CNN
F 3 "~" H 4700 2050 50  0001 C CNN
	1    4700 1850
	0    -1   -1   0   
$EndComp
Entry Wire Line
	5250 1550 5350 1650
Entry Wire Line
	5250 2150 5350 2250
Wire Wire Line
	5250 1550 4700 1550
Wire Wire Line
	4700 1550 4700 1650
Wire Wire Line
	4700 2050 4700 2150
Wire Wire Line
	4700 2150 5250 2150
Entry Wire Line
	6200 1550 6300 1650
Entry Wire Line
	6200 2150 6300 2250
Wire Wire Line
	6200 1550 5650 1550
Wire Wire Line
	5650 1550 5650 1650
Wire Wire Line
	5650 2050 5650 2150
Wire Wire Line
	5650 2150 6200 2150
$Comp
L RCAS_Switches:SW_Push ESTP?
U 1 1 5F99EC0E
P 5650 1850
AR Path="/5F802B50/5F99EC0E" Ref="ESTP?"  Part="1" 
AR Path="/5F802BA9/5F99EC0E" Ref="ESTP402"  Part="1" 
F 0 "ESTP402" V 5696 1802 50  0000 R CNN
F 1 "E-stop Right" V 5605 1802 50  0000 R CNN
F 2 "" H 5650 2050 50  0001 C CNN
F 3 "~" H 5650 2050 50  0001 C CNN
	1    5650 1850
	0    -1   -1   0   
$EndComp
Text Label 3200 6300 0    50   ~ 0
GND
$Comp
L RCAS_Sensors:Rotary_Encoder_AEAT-601B U?
U 1 1 5F99EC1D
P 11400 6900
AR Path="/5F802B50/5F99EC1D" Ref="U?"  Part="1" 
AR Path="/5F802BA9/5F99EC1D" Ref="U403"  Part="1" 
F 0 "U403" H 11343 6433 50  0000 C CNN
F 1 "AEAT-601B" H 11343 6524 50  0000 C CNN
F 2 "" H 10950 6660 50  0001 C CNN
F 3 "~" H 11100 7260 50  0001 C CNN
	1    11400 6900
	1    0    0    1   
$EndComp
Entry Wire Line
	10800 6600 10900 6700
Entry Wire Line
	10800 6700 10900 6800
Entry Wire Line
	10800 6800 10900 6900
Entry Wire Line
	10800 6900 10900 7000
Entry Wire Line
	10800 7000 10900 7100
Wire Wire Line
	11000 7100 10900 7100
Wire Wire Line
	11000 7000 10900 7000
Wire Wire Line
	11000 6900 10900 6900
Wire Wire Line
	10900 6800 11000 6800
Wire Wire Line
	11000 6700 10900 6700
Wire Notes Line rgb(194, 0, 194)
	10650 6100 14300 6100
Wire Notes Line rgb(194, 0, 194)
	14300 6100 14300 8700
Text Notes 13400 8650 0    50   ~ 0
External to bodywork
Wire Notes Line rgb(194, 0, 194)
	10650 6100 10650 8700
Wire Notes Line rgb(194, 0, 194)
	14300 8700 10650 8700
Wire Wire Line
	1500 2900 1850 2900
Wire Wire Line
	1500 3100 1850 3100
Wire Wire Line
	1500 3300 1850 3300
Wire Wire Line
	1500 3500 1850 3500
Wire Wire Line
	1500 3700 1850 3700
Wire Wire Line
	1500 3900 1850 3900
Wire Wire Line
	1500 4100 1850 4100
Wire Wire Line
	1500 4300 1850 4300
Connection ~ 6300 7100
Wire Wire Line
	6300 6500 6300 7100
Wire Notes Line
	10850 1250 10850 1950
Wire Notes Line
	10850 1950 8950 1950
Wire Notes Line
	8950 1950 8950 1250
Wire Notes Line
	8950 1250 10850 1250
Text Notes 9400 1750 0    100  ~ 0
Autostop\nDaughter Board
Wire Bus Line
	8950 1600 7850 1600
Text Notes 11200 2050 0    50   ~ 0
External to bodywork
Wire Notes Line rgb(194, 0, 194)
	8800 2100 12050 2100
Wire Notes Line rgb(194, 0, 194)
	12050 2100 12050 1100
Wire Notes Line rgb(194, 0, 194)
	12050 1100 8800 1100
Wire Notes Line rgb(194, 0, 194)
	8800 1100 8800 2100
$Comp
L RCAS_Switches:SW_SPST SW?
U 1 1 5F8A6612
P 4500 9250
AR Path="/5F802B50/5F8A6612" Ref="SW?"  Part="1" 
AR Path="/5F802BA9/5F8A6612" Ref="SW401"  Part="1" 
F 0 "SW401" V 4454 9348 50  0000 L CNN
F 1 "ISOLATOR" V 4545 9348 50  0000 L CNN
F 2 "" H 4500 9250 50  0001 C CNN
F 3 "~" H 4500 9250 50  0001 C CNN
	1    4500 9250
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 9050 4500 8950
Wire Wire Line
	9700 8400 9700 9650
Wire Wire Line
	4500 9450 4500 9650
Connection ~ 4500 9650
Wire Wire Line
	4500 9650 7550 9650
Wire Wire Line
	1750 9650 4500 9650
Wire Wire Line
	7550 4800 7550 9650
Connection ~ 7550 9650
Wire Wire Line
	7550 9650 9700 9650
$Comp
L RCAS_Switches:SW_Push SW?
U 1 1 5FAB6406
P 2850 1850
AR Path="/5F802B50/5FAB6406" Ref="SW?"  Part="1" 
AR Path="/5F802BA9/5FAB6406" Ref="SW402"  Part="1" 
F 0 "SW402" V 2896 1802 50  0000 R CNN
F 1 "Door Switch" V 2805 1802 50  0000 R CNN
F 2 "" H 2850 2050 50  0001 C CNN
F 3 "~" H 2850 2050 50  0001 C CNN
	1    2850 1850
	0    -1   -1   0   
$EndComp
Entry Wire Line
	3400 1550 3500 1650
Entry Wire Line
	3400 2150 3500 2250
Wire Wire Line
	3400 1550 2850 1550
Wire Wire Line
	2850 1550 2850 1650
Wire Wire Line
	2850 2050 2850 2150
Wire Wire Line
	2850 2150 3400 2150
$Comp
L RCAS_Misc:CircuitBreaker CB401
U 1 1 5FAC2DB7
P 4500 7150
F 0 "CB401" H 4618 7196 50  0000 L CNN
F 1 "200A" H 4618 7105 50  0000 L CNN
F 2 "" H 4550 7075 50  0001 C CNN
F 3 "~" H 4550 7075 50  0001 C CNN
	1    4500 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6950 4500 6900
Connection ~ 4500 6900
Wire Wire Line
	4500 7350 4500 7450
Text Notes 10850 9750 0    75   ~ 0
Buses represent wiring looms
Wire Wire Line
	6400 5650 9700 5650
$Comp
L RCAS_Audio_Transducers:Speaker LS?
U 1 1 60AC40B4
P 13750 7700
AR Path="/5F802B50/60AC40B4" Ref="LS?"  Part="1" 
AR Path="/5F802BA9/60AC40B4" Ref="LS1"  Part="1" 
F 0 "LS1" V 13667 7880 50  0000 L CNN
F 1 "Horn" V 13758 7880 50  0000 L CNN
F 2 "" H 13750 7500 50  0001 C CNN
F 3 "~" H 13740 7650 50  0001 C CNN
	1    13750 7700
	0    1    1    0   
$EndComp
Entry Wire Line
	13650 7050 13750 7150
Entry Wire Line
	13550 7050 13650 7150
Entry Wire Line
	13550 7050 13650 7150
Wire Wire Line
	13650 7500 13650 7150
Wire Wire Line
	13750 7150 13750 7500
Wire Bus Line
	13650 7050 13550 7050
Wire Bus Line
	13550 7050 13550 4800
Wire Bus Line
	12000 4800 12000 8000
Wire Bus Line
	5350 1650 5350 2450
Wire Bus Line
	6300 1650 6300 2450
Wire Bus Line
	3500 1650 3500 2450
Wire Bus Line
	10500 4800 10500 7100
Wire Bus Line
	3700 4800 3700 6600
Wire Bus Line
	10800 4800 10800 7000
Wire Bus Line
	8900 4800 8900 8000
$EndSCHEMATC

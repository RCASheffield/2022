EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 4
Title "System Diagram"
Date "2021-05-24"
Rev "vA"
Comp ""
Comment1 "MJ"
Comment2 "AF"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 14850 2750 2    50   Input ~ 0
INTERLOCK_RET
Text HLabel 14850 2950 2    50   UnSpc ~ 0
GND
Text HLabel 14850 3150 2    50   Output ~ 0
LOCO_RX+
Text HLabel 14850 3350 2    50   Output ~ 0
LOCO_RX-
Text HLabel 14850 3550 2    50   Input ~ 0
LOCO_TX+
Text HLabel 14850 3750 2    50   Input ~ 0
LOCO_TX-
Text HLabel 14850 3950 2    50   Output ~ 0
POWER_EN
Text HLabel 14850 4150 2    50   Output ~ 0
INTERLOCK_OUT
Text HLabel 4150 6700 0    50   UnSpc ~ 0
VBAT
Text HLabel 6000 6700 0    50   UnSpc ~ 0
VCAP
Text HLabel 1800 9450 0    50   UnSpc ~ 0
EARTH
Text Notes 8850 3500 2    100  ~ 0
Loco Main Board PCA\nModule 1 Variant
Wire Notes Line
	2050 2250 2050 4600
Wire Notes Line
	14150 4600 14150 2250
Wire Wire Line
	14850 2750 14150 2750
Wire Wire Line
	14850 2950 14150 2950
Wire Wire Line
	14850 3150 14150 3150
Wire Wire Line
	14850 3350 14150 3350
Wire Wire Line
	14850 3550 14150 3550
Wire Wire Line
	14850 3750 14150 3750
Wire Wire Line
	14850 3950 14150 3950
Wire Wire Line
	14850 4150 14150 4150
Wire Wire Line
	1550 2750 2050 2750
Wire Wire Line
	2050 2950 1550 2950
Wire Wire Line
	1550 3150 2050 3150
Wire Wire Line
	1550 3350 2050 3350
Wire Wire Line
	1550 3550 2050 3550
Wire Wire Line
	1550 3750 2050 3750
Wire Wire Line
	1550 3950 2050 3950
Wire Wire Line
	1550 4150 2050 4150
$Comp
L RCAS_Batteries:Battery_Cell BT301
U 1 1 5F80E510
P 4700 7450
F 0 "BT301" H 4818 7546 50  0000 L CNN
F 1 "12V, 110Ah" H 4818 7455 50  0000 L CNN
F 2 "" V 4700 7510 50  0001 C CNN
F 3 "~" V 4700 7510 50  0001 C CNN
	1    4700 7450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery_Cell BT302
U 1 1 5F80EF2F
P 4700 7850
F 0 "BT302" H 4818 7946 50  0000 L CNN
F 1 "12V, 110Ah" H 4818 7855 50  0000 L CNN
F 2 "" V 4700 7910 50  0001 C CNN
F 3 "~" V 4700 7910 50  0001 C CNN
	1    4700 7850
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery_Cell BT303
U 1 1 5F80F1C2
P 4700 8250
F 0 "BT303" H 4818 8346 50  0000 L CNN
F 1 "12V, 110Ah" H 4818 8255 50  0000 L CNN
F 2 "" V 4700 8310 50  0001 C CNN
F 3 "~" V 4700 8310 50  0001 C CNN
	1    4700 8250
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery_Cell BT304
U 1 1 5F80F5E9
P 4700 8650
F 0 "BT304" H 4818 8746 50  0000 L CNN
F 1 "12V, 110Ah" H 4818 8655 50  0000 L CNN
F 2 "" V 4700 8710 50  0001 C CNN
F 3 "~" V 4700 8710 50  0001 C CNN
	1    4700 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7550 4700 7650
Wire Wire Line
	4700 7950 4700 8050
Wire Wire Line
	4700 8350 4700 8450
Wire Wire Line
	4150 6700 4700 6700
Text Notes 11850 8300 0    50   ~ 0
Earth Strap to Rails
$Comp
L RCAS_Passives:Capacitor_Polarized C301
U 1 1 5F811220
P 6500 8200
F 0 "C301" H 6150 8250 50  0000 L CNN
F 1 "166F, 48V" H 5950 8150 50  0000 L CNN
F 2 "" H 6538 8050 50  0001 C CNN
F 3 "~" H 6500 8200 50  0001 C CNN
F 4 "Eaton" H 6500 8200 50  0001 C CNN "Manufacturer"
F 5 "XLR-48" H 6500 8200 50  0001 C CNN "Manufacturer Part Number"
	1    6500 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7550 6500 6900
Wire Wire Line
	6500 6700 6000 6700
$Comp
L RCAS_Sensors:Current_Sensor_Honeywell_CSN U302
U 1 1 5F8170A3
P 6200 7250
F 0 "U302" H 5950 7500 50  0000 L CNN
F 1 "CSNS300M" H 6000 7000 50  0000 L CNN
F 2 "" H 6250 7650 50  0001 C CNN
F 3 "" H 6250 7650 50  0001 C CNN
	1    6200 7250
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Relays:Relay_Generic_SPST-NO K301
U 1 1 5F81B003
P 4500 6000
F 0 "K301" H 4930 6046 50  0000 L CNN
F 1 "LEV200A5NAA" H 4930 5955 50  0000 L CNN
F 2 "" H 5770 5970 50  0001 C CNN
F 3 "" H 4500 6000 50  0001 C CNN
F 4 "500A, 24V Coil" H 4500 6000 50  0001 C CNN "Description"
F 5 "TE Connectivity" H 4500 6000 50  0001 C CNN "Manufacturer"
F 6 "LEV200A5NAA" H 4500 6000 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 4500 6000 50  0001 C CNN "Supplier"
F 8 "A101172-ND" H 4500 6000 50  0001 C CNN "Supplier Part Number"
F 9 "£56.76" H 4500 6000 50  0001 C CNN "Cost"
	1    4500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6300 4700 6400
Wire Wire Line
	6500 6300 6500 6700
Connection ~ 6500 6700
Wire Wire Line
	4800 5700 4800 5450
Wire Wire Line
	4800 5450 6600 5450
Wire Wire Line
	6600 5450 6600 5700
Connection ~ 6600 5450
Text Label 11600 8300 2    50   ~ 0
EARTH
Text Label 6350 6700 2    50   ~ 0
VCAP
Text Label 4550 6700 2    50   ~ 0
VBAT
Text Notes 7900 7300 2    50   ~ 0
ICAP monitoring for regen control
$Comp
L RCAS_Motor_Controllers:TPM400-48 U303
U 1 1 5F82F2BD
P 9900 7200
F 0 "U303" H 9450 8050 50  0000 C CNN
F 1 "TPM400-48" H 10200 8050 50  0000 C CNN
F 2 "" H 10100 6800 50  0001 C CNN
F 3 "" H 10100 6800 50  0001 C CNN
	1    9900 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5450 9900 6300
$Comp
L RCAS_Misc:Motor_DC M301
U 1 1 5F832406
P 11050 7550
F 0 "M301" H 10850 7650 50  0000 L CNN
F 1 "LEM-170 (127)" H 10950 7100 50  0000 L CNN
F 2 "" H 11050 7460 50  0001 C CNN
F 3 "~" H 11050 7460 50  0001 C CNN
F 4 "48V" H 11050 7550 50  0001 C CNN "Description"
F 5 "LYNCH Motors" H 11050 7550 50  0001 C CNN "Manufacturer"
F 6 "LEM-170 (127)" H 11050 7550 50  0001 C CNN "Manufacturer Part Number"
	1    11050 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 7300 11050 7300
Wire Wire Line
	11050 7300 11050 7350
Wire Wire Line
	11050 7850 11050 7900
Wire Wire Line
	11050 7900 10500 7900
$Comp
L RCAS_Sensors:Thermistor TH302
U 1 1 5F833EA2
P 11300 7600
F 0 "TH302" H 11405 7646 50  0000 L CNN
F 1 "Thermistor" H 11405 7555 50  0000 L CNN
F 2 "" H 11300 7600 50  0001 C CNN
F 3 "~" H 11300 7600 50  0001 C CNN
	1    11300 7600
	1    0    0    -1  
$EndComp
Entry Wire Line
	9100 6400 9200 6500
Entry Wire Line
	9100 6500 9200 6600
Entry Wire Line
	9100 6600 9200 6700
Entry Wire Line
	9100 6700 9200 6800
Entry Wire Line
	9100 6900 9200 7000
Entry Wire Line
	9100 7100 9200 7200
Entry Wire Line
	9100 7200 9200 7300
Entry Wire Line
	9100 7300 9200 7400
Entry Wire Line
	9100 7400 9200 7500
Entry Wire Line
	9100 7500 9200 7600
Entry Wire Line
	9100 7600 9200 7700
Entry Wire Line
	9100 7700 9200 7800
Entry Wire Line
	9100 7800 9200 7900
Wire Wire Line
	9300 6500 9200 6500
Wire Wire Line
	9300 6600 9200 6600
Wire Wire Line
	9300 6700 9200 6700
Wire Wire Line
	9300 6800 9200 6800
Wire Wire Line
	9300 7000 9200 7000
Wire Wire Line
	9300 7200 9200 7200
Wire Wire Line
	9300 7300 9200 7300
Wire Wire Line
	9300 7400 9200 7400
Wire Wire Line
	9300 7500 9200 7500
Wire Wire Line
	9300 7600 9200 7600
Wire Wire Line
	9300 7700 9200 7700
Wire Wire Line
	9300 7800 9200 7800
Wire Wire Line
	9300 7900 9200 7900
Entry Wire Line
	10600 6700 10700 6600
Entry Wire Line
	10600 6800 10700 6700
Entry Wire Line
	10600 6900 10700 6800
Entry Wire Line
	10600 7000 10700 6900
Wire Wire Line
	10500 6700 10600 6700
Wire Wire Line
	10500 6800 10600 6800
Wire Wire Line
	10500 6900 10600 6900
Wire Wire Line
	10500 7000 10600 7000
Entry Wire Line
	5650 7050 5750 7150
Entry Wire Line
	5650 7150 5750 7250
Entry Wire Line
	5650 7250 5750 7350
Wire Wire Line
	5750 7150 5850 7150
Wire Wire Line
	5750 7250 5850 7250
Wire Wire Line
	5750 7350 5850 7350
$Comp
L RCAS_Audio_Transducers:Speaker LS301
U 1 1 5F854164
P 13850 7500
F 0 "LS301" V 13767 7680 50  0000 L CNN
F 1 "Horn" V 13858 7680 50  0000 L CNN
F 2 "" H 13850 7300 50  0001 C CNN
F 3 "~" H 13840 7450 50  0001 C CNN
	1    13850 7500
	0    1    1    0   
$EndComp
$Comp
L RCAS_Misc:Electromagnetic_Actor BRK301
U 1 1 5F854F69
P 12950 7500
F 0 "BRK301" V 12683 7550 50  0000 C CNN
F 1 "Brake" V 12774 7550 50  0000 C CNN
F 2 "" V 12925 7600 50  0001 C CNN
F 3 "~" V 12925 7600 50  0001 C CNN
F 4 "24V" H 12950 7500 50  0001 C CNN "Description"
F 5 "Intorq" H 12950 7500 50  0001 C CNN "Manufacturer"
	1    12950 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	11300 7400 11300 7300
Wire Wire Line
	11300 7800 11300 7900
Wire Wire Line
	11300 7900 12100 7900
Wire Wire Line
	11300 7300 12100 7300
Entry Wire Line
	12100 7300 12200 7200
Entry Wire Line
	12100 7900 12200 7800
$Comp
L RCAS_Relays:Relay_Generic_SPST-NO K302
U 1 1 5F869126
P 6300 6000
F 0 "K302" H 6730 6046 50  0000 L CNN
F 1 "LEV200A5NAA" H 6730 5955 50  0000 L CNN
F 2 "" H 7570 5970 50  0001 C CNN
F 3 "" H 6300 6000 50  0001 C CNN
F 4 "500A, 24V Coil" H 6300 6000 50  0001 C CNN "Description"
F 5 "TE Connectivity" H 6300 6000 50  0001 C CNN "Manufacturer"
F 6 "LEV200A5NAA" H 6300 6000 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 6300 6000 50  0001 C CNN "Supplier"
F 8 "A101172-ND" H 6300 6000 50  0001 C CNN "Supplier Part Number"
F 9 "£56.76" H 6300 6000 50  0001 C CNN "Cost"
	1    6300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6500 4000 6500
Wire Wire Line
	6100 6300 6100 6500
Wire Wire Line
	4300 6300 4300 6400
Wire Wire Line
	4300 6400 4000 6400
Wire Wire Line
	6100 5300 4000 5300
Wire Wire Line
	6100 5300 6100 5700
Entry Wire Line
	3900 5200 4000 5300
Entry Wire Line
	3900 5300 4000 5400
Entry Wire Line
	3900 6300 4000 6400
Entry Wire Line
	3900 6400 4000 6500
Wire Wire Line
	4300 5400 4000 5400
Wire Wire Line
	4300 5400 4300 5700
Wire Wire Line
	6500 6900 7550 6900
Connection ~ 6500 6900
Wire Wire Line
	6500 6900 6500 6700
Wire Wire Line
	4700 6400 7400 6400
Connection ~ 4700 6400
Wire Wire Line
	4700 6400 4700 6700
Text Label 7400 5150 3    50   ~ 0
VBAT
Text Label 7550 5150 3    50   ~ 0
VCAP
Wire Wire Line
	7400 4600 7400 6400
Wire Wire Line
	7550 4600 7550 6900
Wire Wire Line
	12850 7500 12600 7500
Wire Wire Line
	12600 7500 12600 6950
Wire Wire Line
	13150 7500 13350 7500
Wire Wire Line
	13350 7500 13350 6950
Entry Wire Line
	13250 6850 13350 6950
Entry Wire Line
	12500 6850 12600 6950
Wire Bus Line
	13250 6850 12500 6850
Wire Bus Line
	12500 6850 12500 4600
Entry Wire Line
	13750 6850 13850 6950
Entry Wire Line
	13650 6850 13750 6950
Entry Wire Line
	13650 6850 13750 6950
Wire Wire Line
	13750 7300 13750 6950
Wire Wire Line
	13850 6950 13850 7300
Wire Bus Line
	13750 6850 13650 6850
Wire Bus Line
	13650 6850 13650 4600
Wire Wire Line
	3400 5900 3500 5900
Wire Wire Line
	3500 5900 3500 4600
Wire Wire Line
	3400 6100 3600 6100
Wire Wire Line
	3600 6100 3600 4600
Wire Wire Line
	2400 6100 2250 6100
Wire Wire Line
	2250 6100 2250 4600
Wire Notes Line
	2050 4600 14150 4600
Wire Notes Line
	2050 2250 14150 2250
Wire Wire Line
	2400 5900 2350 5900
Wire Wire Line
	2350 5900 2350 4600
Wire Notes Line
	11050 1050 11050 1750
Wire Notes Line
	11050 1750 9150 1750
Wire Notes Line
	9150 1750 9150 1050
Wire Notes Line
	9150 1050 11050 1050
Text Notes 9600 1550 0    100  ~ 0
Autostop\nDaughter Board
Wire Bus Line
	9150 1400 8050 1400
Wire Bus Line
	8050 1400 8050 2250
$Comp
L RCAS_Switches:SW_Push ESTP301
U 1 1 5F925CC4
P 4900 1650
F 0 "ESTP301" V 4946 1602 50  0000 R CNN
F 1 "E-stop Left" V 4855 1602 50  0000 R CNN
F 2 "" H 4900 1850 50  0001 C CNN
F 3 "~" H 4900 1850 50  0001 C CNN
	1    4900 1650
	0    -1   -1   0   
$EndComp
Entry Wire Line
	5450 1350 5550 1450
Entry Wire Line
	5450 1950 5550 2050
Wire Wire Line
	5450 1350 4900 1350
Wire Wire Line
	4900 1350 4900 1450
Wire Wire Line
	4900 1850 4900 1950
Wire Wire Line
	4900 1950 5450 1950
Entry Wire Line
	6400 1350 6500 1450
Entry Wire Line
	6400 1950 6500 2050
Wire Wire Line
	6400 1350 5850 1350
Wire Wire Line
	5850 1350 5850 1450
Wire Wire Line
	5850 1850 5850 1950
Wire Wire Line
	5850 1950 6400 1950
$Comp
L RCAS_Switches:SW_Push ESTP302
U 1 1 5F92E5D8
P 5850 1650
F 0 "ESTP302" V 5896 1602 50  0000 R CNN
F 1 "E-stop Right" V 5805 1602 50  0000 R CNN
F 2 "" H 5850 1850 50  0001 C CNN
F 3 "~" H 5850 1850 50  0001 C CNN
	1    5850 1650
	0    -1   -1   0   
$EndComp
Text Label 3400 6100 0    50   ~ 0
GND
$Comp
L RCAS_Sensors:Rotary_Encoder_AEAT-601B U304
U 1 1 5F94D97F
P 11600 6700
F 0 "U304" H 11543 6233 50  0000 C CNN
F 1 "AEAT-601B" H 11543 6324 50  0000 C CNN
F 2 "" H 11150 6460 50  0001 C CNN
F 3 "~" H 11300 7060 50  0001 C CNN
	1    11600 6700
	1    0    0    1   
$EndComp
Entry Wire Line
	11000 6400 11100 6500
Entry Wire Line
	11000 6500 11100 6600
Entry Wire Line
	11000 6600 11100 6700
Entry Wire Line
	11000 6700 11100 6800
Entry Wire Line
	11000 6800 11100 6900
Wire Wire Line
	11200 6900 11100 6900
Wire Wire Line
	11200 6800 11100 6800
Wire Wire Line
	11200 6700 11100 6700
Wire Wire Line
	11100 6600 11200 6600
Wire Wire Line
	11200 6500 11100 6500
Wire Notes Line rgb(194, 0, 194)
	10850 5900 14500 5900
Wire Notes Line rgb(194, 0, 194)
	14500 5900 14500 8500
Text Notes 13600 8450 0    50   ~ 0
External to bodywork
Text Notes 11400 1850 0    50   ~ 0
External to bodywork
Wire Notes Line rgb(194, 0, 194)
	10850 5900 10850 8500
Wire Notes Line rgb(194, 0, 194)
	14500 8500 10850 8500
Wire Notes Line rgb(194, 0, 194)
	9000 1900 12250 1900
Wire Notes Line rgb(194, 0, 194)
	12250 1900 12250 900 
Wire Notes Line rgb(194, 0, 194)
	12250 900  9000 900 
Wire Notes Line rgb(194, 0, 194)
	9000 900  9000 1900
Wire Wire Line
	9900 8300 11600 8300
Connection ~ 9900 8300
Wire Wire Line
	9900 8300 9900 8200
$Comp
L RCAS_Switches:SW_SPST SW301
U 1 1 5F891156
P 5700 9150
F 0 "SW301" V 5654 9248 50  0000 L CNN
F 1 "ISOLATOR" V 5745 9248 50  0000 L CNN
F 2 "" H 5700 9150 50  0001 C CNN
F 3 "~" H 5700 9150 50  0001 C CNN
	1    5700 9150
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 9450 8500 9450
Wire Wire Line
	9900 8300 9900 9450
Connection ~ 8500 9450
Wire Wire Line
	8500 4600 8500 9450
$Comp
L RCAS_Misc:SMPS_Isolated_DC-DC U301
U 1 1 5F9744E9
P 2900 6000
AR Path="/5F802B50/5F9744E9" Ref="U301"  Part="1" 
AR Path="/5F802BA9/5F9744E9" Ref="U?"  Part="1" 
F 0 "U301" H 2900 6365 50  0000 C CNN
F 1 "SD-150C-24" H 2900 6274 50  0000 C CNN
F 2 "" H 2900 6100 50  0001 C CNN
F 3 "" H 2900 6100 50  0001 C CNN
F 4 "SMPS_Isolated_DC-DC, 36-72V input, 24V output, 150W" H 2900 6000 50  0001 C CNN "Description"
F 5 "Mean Well" H 2900 6000 50  0001 C CNN "Manufacturer"
F 6 "SD-150C-24" H 2900 6000 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 2900 6000 50  0001 C CNN "Supplier"
F 8 "678-3596" H 2900 6000 50  0001 C CNN "Supplier Part Number"
F 9 "£58.13" H 2900 6000 50  0001 C CNN "Cost"
	1    2900 6000
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Switches:SW_Push SW303
U 1 1 5FAAD780
P 2850 1650
F 0 "SW303" V 2896 1602 50  0000 R CNN
F 1 "Door Switch" V 2805 1602 50  0000 R CNN
F 2 "" H 2850 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1650
	0    -1   -1   0   
$EndComp
Entry Wire Line
	3400 1350 3500 1450
Entry Wire Line
	3400 1950 3500 2050
Wire Wire Line
	3400 1350 2850 1350
Wire Wire Line
	2850 1350 2850 1450
Wire Wire Line
	2850 1850 2850 1950
Wire Wire Line
	2850 1950 3400 1950
$Comp
L RCAS_Misc:CircuitBreaker CB301
U 1 1 5FACAAF2
P 4700 6950
F 0 "CB301" H 4818 6996 50  0000 L CNN
F 1 "200A" H 4818 6905 50  0000 L CNN
F 2 "" H 4750 6875 50  0001 C CNN
F 3 "~" H 4750 6875 50  0001 C CNN
	1    4700 6950
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Misc:CircuitBreaker CB302
U 1 1 5FACB1C9
P 6500 7750
F 0 "CB302" H 6618 7796 50  0000 L CNN
F 1 "200A" H 6618 7705 50  0000 L CNN
F 2 "" H 6550 7675 50  0001 C CNN
F 3 "~" H 6550 7675 50  0001 C CNN
	1    6500 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7950 6500 8050
Wire Wire Line
	4700 7150 4700 7250
Wire Wire Line
	4700 6750 4700 6700
Connection ~ 4700 6700
Wire Wire Line
	1800 9450 5700 9450
Wire Wire Line
	5700 8850 5700 8950
Wire Wire Line
	4700 8750 4700 8850
Wire Wire Line
	6500 8350 6500 8850
Wire Wire Line
	4700 8850 5700 8850
Connection ~ 5700 8850
Wire Wire Line
	5700 8850 6500 8850
Wire Wire Line
	5700 9350 5700 9450
Connection ~ 5700 9450
Wire Wire Line
	5700 9450 8500 9450
Text Notes 11200 9700 0    75   ~ 0
Buses represent wiring looms
Wire Bus Line
	8050 8200 6650 8200
Wire Bus Line
	8050 4600 8050 8200
Text Notes 6800 8150 0    50   ~ 0
Monitoring Connector
Wire Wire Line
	6600 5450 9900 5450
Wire Bus Line
	3500 1450 3500 2250
Wire Bus Line
	11000 4600 11000 6800
Wire Bus Line
	6500 1450 6500 2250
Wire Bus Line
	5550 1450 5550 2250
Wire Bus Line
	3900 4600 3900 6400
Wire Bus Line
	12200 4600 12200 7800
Wire Bus Line
	5650 4600 5650 7250
Wire Bus Line
	10700 4600 10700 6900
Wire Bus Line
	9100 4600 9100 7800
Text HLabel 1550 4150 0    50   Input ~ 0
INTERLOCK_IN
Text HLabel 1550 3950 0    50   Input ~ 0
POWER_EN
Text HLabel 1550 3750 0    50   Output ~ 0
LOCO_TX-
Text HLabel 1550 3550 0    50   Output ~ 0
LOCO_TX+
Text HLabel 1550 3350 0    50   Input ~ 0
LOCO_RX-
Text HLabel 1550 3150 0    50   Input ~ 0
LOCO_RX+
Text HLabel 1550 2950 0    50   UnSpc ~ 0
GND
Text HLabel 1550 2750 0    50   UnSpc ~ 0
+24V0
$EndSCHEMATC

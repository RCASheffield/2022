EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Autostop Beacon"
Date "2021-06-05"
Rev "vA"
Comp ""
Comment1 "NOC"
Comment2 "MJ"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RCAS_Passives:Resistor R2
U 1 1 603B05A7
P 7500 5000
F 0 "R2" H 7570 5046 50  0000 L CNN
F 1 "1k" H 7570 4955 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric" V 7430 5000 50  0001 C CNN
F 3 "~" H 7500 5000 50  0001 C CNN
F 4 "0.07" H 7500 5000 50  0001 C CNN "Cost"
F 5 "Yageo" H 7500 5000 50  0001 C CNN "Manufacturer"
F 6 "RC0603FR-071KL" H 7500 5000 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 7500 5000 50  0001 C CNN "Supplier"
F 8 "311-1.00KHRCT-ND" H 7500 5000 50  0001 C CNN "Supplier Part Number"
F 9 "1k, 1%, 0.1W, 0603" H 7500 5000 50  0001 C CNN "Part Description"
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R3
U 1 1 603B121E
P 7500 5600
F 0 "R3" H 7570 5646 50  0000 L CNN
F 1 "39k" H 7570 5555 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric" V 7430 5600 50  0001 C CNN
F 3 "~" H 7500 5600 50  0001 C CNN
F 4 "0.07" H 7500 5600 50  0001 C CNN "Cost"
F 5 "Yageo" H 7500 5600 50  0001 C CNN "Manufacturer"
F 6 "RC0603FR-0739KL" H 7500 5600 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 7500 5600 50  0001 C CNN "Supplier"
F 8 "311-39.0KHRCT-ND" H 7500 5600 50  0001 C CNN "Supplier Part Number"
F 9 "39k, 1%, 0.1W, 0603" H 7500 5600 50  0001 C CNN "Part Description"
	1    7500 5600
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C4
U 1 1 603B1C9B
P 9400 6150
F 0 "C4" H 9515 6196 50  0000 L CNN
F 1 "10nF" H 9515 6105 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric" H 9438 6000 50  0001 C CNN
F 3 "~" H 9400 6150 50  0001 C CNN
F 4 "0.17" H 9400 6150 50  0001 C CNN "Cost"
F 5 "Samsung" H 9400 6150 50  0001 C CNN "Manufacturer"
F 6 "CL10B103KB8NNNC" H 9400 6150 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 9400 6150 50  0001 C CNN "Supplier"
F 8 "1276-1009-1-ND" H 9400 6150 50  0001 C CNN "Supplier Part Number"
F 9 "MLCC 10nF, 50V, X7R, 0603" H 9400 6150 50  0001 C CNN "Part Description"
	1    9400 6150
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C2
U 1 1 603B27DE
P 7500 6600
F 0 "C2" H 7615 6646 50  0000 L CNN
F 1 "470pF" H 7615 6555 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric" H 7538 6450 50  0001 C CNN
F 3 "~" H 7500 6600 50  0001 C CNN
F 4 "0.29" H 7500 6600 50  0001 C CNN "Cost"
F 5 "AVX" H 7500 6600 50  0001 C CNN "Manufacturer"
F 6 "06035A471G4T2A" H 7500 6600 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 7500 6600 50  0001 C CNN "Supplier"
F 8 "478-11817-1-ND" H 7500 6600 50  0001 C CNN "Supplier Part Number"
F 9 "MLCC 470pF 2%, 50V, C0G NP0, 0603" H 7500 6600 50  0001 C CNN "Part Description"
	1    7500 6600
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor_Potentiometer RV1
U 1 1 603B43F1
P 7500 6050
F 0 "RV1" H 7430 6096 50  0000 R CNN
F 1 "2k2" H 7430 6005 50  0000 R CNN
F 2 "RCAS_Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 7500 6050 50  0001 C CNN
F 3 "~" H 7500 6050 50  0001 C CNN
F 4 "1.87" H 7500 6050 50  0001 C CNN "Cost"
F 5 "Bourns" H 7500 6050 50  0001 C CNN "Manufacturer"
F 6 "3296Y-1-222LF" H 7500 6050 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 7500 6050 50  0001 C CNN "Supplier"
F 8 "785-9767" H 7500 6050 50  0001 C CNN "Supplier Part Number"
F 9 "2k Trimmer Potentiometer, 0.5W, Top Adjust Multiturn TH" H 7500 6050 50  0001 C CNN "Part Description"
	1    7500 6050
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C3
U 1 1 603CA42B
P 8900 4450
F 0 "C3" V 8648 4450 50  0000 C CNN
F 1 "100nF" V 8739 4450 50  0000 C CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric" H 8938 4300 50  0001 C CNN
F 3 "~" H 8900 4450 50  0001 C CNN
F 4 "0.07" H 8900 4450 50  0001 C CNN "Cost"
F 5 "Samsung" H 8900 4450 50  0001 C CNN "Manufacturer"
F 6 "CL10B104KB8NNNL" H 8900 4450 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 8900 4450 50  0001 C CNN "Supplier"
F 8 "1276-CL10B104KB8NNNLCT-ND" H 8900 4450 50  0001 C CNN "Supplier Part Number"
F 9 "MLCC 100nF, 50V, X7R, 0603" H 8900 4450 50  0001 C CNN "Part Description"
	1    8900 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 5900 9400 6000
Wire Wire Line
	9400 6300 9400 6700
Wire Wire Line
	8550 6100 8550 6350
Wire Wire Line
	7500 6450 7500 6300
Wire Wire Line
	7500 5900 7500 5750
Wire Wire Line
	7500 5450 7500 5300
Wire Wire Line
	7800 5300 7500 5300
Connection ~ 7500 5300
Wire Wire Line
	7500 5300 7500 5150
Wire Wire Line
	7500 5900 7650 5900
Wire Wire Line
	7650 5900 7650 6050
Wire Wire Line
	7900 5900 7900 6300
Wire Wire Line
	7900 6300 7500 6300
Connection ~ 7900 5900
Connection ~ 7500 6300
Wire Wire Line
	7500 6300 7500 6200
Wire Wire Line
	8650 4850 8650 4450
Wire Wire Line
	8650 4450 8750 4450
Wire Wire Line
	9050 4450 9300 4450
Wire Wire Line
	8650 4450 8650 4100
Connection ~ 8650 4450
$Comp
L RCAS_Connectors_Generic:Conn_01x02 J1
U 1 1 603B4E1D
P 5800 4450
F 0 "J1" H 5880 4442 50  0000 L CNN
F 1 "Connector" H 5880 4351 50  0000 L CNN
F 2 "RCAS_TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 5800 4450 50  0001 C CNN
F 3 "~" H 5800 4450 50  0001 C CNN
F 4 "0.9" H 5800 4450 50  0001 C CNN "Cost"
F 5 "TE Connectivity" H 5800 4450 50  0001 C CNN "Manufacturer"
F 6 "282834-2" H 5800 4450 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 5800 4450 50  0001 C CNN "Supplier"
F 8 "A98333-ND" H 5800 4450 50  0001 C CNN "Supplier Part Number"
F 9 "2 Pos 2.54mm Pitch Terminal Block TH" H 5800 4450 50  0001 C CNN "Part Description"
	1    5800 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6000 4750
Wire Wire Line
	6000 4450 6000 4100
$Comp
L RCAS_Passives:Capacitor C1
U 1 1 603E7FD5
P 7050 4250
F 0 "C1" H 7165 4296 50  0000 L CNN
F 1 "10uF" H 7165 4205 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric" H 7088 4100 50  0001 C CNN
F 3 "~" H 7050 4250 50  0001 C CNN
F 4 "0.18" H 7050 4250 50  0001 C CNN "Cost"
F 5 "AVX" H 7050 4250 50  0001 C CNN "Manufacturer"
F 6 "06036D106MAT2A" H 7050 4250 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 7050 4250 50  0001 C CNN "Supplier"
F 8 "478-5318-1-ND" H 7050 4250 50  0001 C CNN "Supplier Part Number"
F 9 "MLCC 10uF, 6.3V, X5R, 0603" H 7050 4250 50  0001 C CNN "Part Description"
	1    7050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4100 7050 3900
$Comp
L RCAS_Diodes:D D2
U 1 1 603EAB20
P 6550 4250
F 0 "D2" V 6504 4330 50  0000 L CNN
F 1 "D" V 6595 4330 50  0000 L CNN
F 2 "RCAS_Diode_SMD:D_SMB" H 6550 4250 50  0001 C CNN
F 3 "~" H 6550 4250 50  0001 C CNN
F 4 "0.3" H 6550 4250 50  0001 C CNN "Cost"
F 5 "Littlefuse" H 6550 4250 50  0001 C CNN "Manufacturer"
F 6 "SMBJ5.0A" H 6550 4250 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 6550 4250 50  0001 C CNN "Supplier"
F 8 "SMBJ5.0ALFCT-ND" H 6550 4250 50  0001 C CNN "Supplier Part Number"
F 9 "5V Standoff, 9.2V Clamp, TVS Diode SMBJ" H 6550 4250 50  0001 C CNN "Part Description"
	1    6550 4250
	0    1    1    0   
$EndComp
$Comp
L RCAS_LEDs:LED D1
U 1 1 603F10A1
P 5050 4900
F 0 "D1" H 5043 4645 50  0000 C CNN
F 1 "LED" H 5043 4736 50  0000 C CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric" H 5050 4900 50  0001 C CNN
F 3 "~" H 5050 4900 50  0001 C CNN
F 4 "Power On" H 5050 5050 50  0000 C CNN "Label"
F 5 "0.1" H 5050 4900 50  0001 C CNN "Cost"
F 6 "Wurth" H 5050 4900 50  0001 C CNN "Manufacturer"
F 7 "150060VS75000" H 5050 4900 50  0001 C CNN "Manufacturer Part Number"
F 8 "Digikey" H 5050 4900 50  0001 C CNN "Supplier"
F 9 "732-4980-1-ND" H 5050 4900 50  0001 C CNN "Supplier Part Number"
F 10 "Green 0603 LED 2V" H 5050 4900 50  0001 C CNN "Part Description"
	1    5050 4900
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_Passives:Resistor R1
U 1 1 603F1EED
P 5050 4450
F 0 "R1" V 4843 4450 50  0000 C CNN
F 1 "100R" V 4934 4450 50  0000 C CNN
F 2 "RCAS_Resistor_SMD:R_0805_2012Metric" V 4980 4450 50  0001 C CNN
F 3 "~" H 5050 4450 50  0001 C CNN
F 4 "0.07" H 5050 4450 50  0001 C CNN "Cost"
F 5 "Yageo" H 5050 4450 50  0001 C CNN "Manufacturer"
F 6 "RC0805FR-07100RL" H 5050 4450 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 5050 4450 50  0001 C CNN "Supplier"
F 8 "311-100CRCT-ND" H 5050 4450 50  0001 C CNN "Supplier Part Number"
F 9 "100R, 1%, 0.125W, 0805" H 5050 4450 50  0001 C CNN "Part Description"
	1    5050 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 4300 5050 4100
Wire Wire Line
	5050 4600 5050 4750
$Comp
L RCAS_LEDs:LED D3
U 1 1 6050CE4B
P 10700 5050
F 0 "D3" H 10693 5267 50  0000 C CNN
F 1 "IR LED" H 10693 5176 50  0000 C CNN
F 2 "RCAS_LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10700 5050 50  0001 C CNN
F 3 "~" H 10700 5050 50  0001 C CNN
F 4 "0.50" H 10700 5050 50  0001 C CNN "Cost"
F 5 "Vishay" H 10700 5050 50  0001 C CNN "Manufacturer"
F 6 "VSMB1940X01" H 10700 5050 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 10700 5050 50  0001 C CNN "Supplier"
F 8 "699-7714" H 10700 5050 50  0001 C CNN "Supplier Part Number"
F 9 "IR LED, 540nm, 100mA, 1.25V" H 10700 5050 50  0001 C CNN "Part Description"
	1    10700 5050
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_LEDs:LED D4
U 1 1 6050E20E
P 11150 5050
F 0 "D4" H 11143 5267 50  0000 C CNN
F 1 "IR LED" H 11143 5176 50  0000 C CNN
F 2 "RCAS_LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11150 5050 50  0001 C CNN
F 3 "~" H 11150 5050 50  0001 C CNN
F 4 "0.50" H 11150 5050 50  0001 C CNN "Cost"
F 5 "Vishay" H 11150 5050 50  0001 C CNN "Manufacturer"
F 6 "VSMB1940X01" H 11150 5050 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 11150 5050 50  0001 C CNN "Supplier"
F 8 "699-7714" H 11150 5050 50  0001 C CNN "Supplier Part Number"
F 9 "IR LED, 540nm, 100mA, 1.25V" H 11150 5050 50  0001 C CNN "Part Description"
	1    11150 5050
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_LEDs:LED D5
U 1 1 6050E6E1
P 11600 5050
F 0 "D5" H 11593 5267 50  0000 C CNN
F 1 "IR LED" H 11593 5176 50  0000 C CNN
F 2 "RCAS_LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11600 5050 50  0001 C CNN
F 3 "~" H 11600 5050 50  0001 C CNN
F 4 "0.50" H 11600 5050 50  0001 C CNN "Cost"
F 5 "Vishay" H 11600 5050 50  0001 C CNN "Manufacturer"
F 6 "VSMB1940X01" H 11600 5050 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 11600 5050 50  0001 C CNN "Supplier"
F 8 "699-7714" H 11600 5050 50  0001 C CNN "Supplier Part Number"
F 9 "IR LED, 540nm, 100mA, 1.25V" H 11600 5050 50  0001 C CNN "Part Description"
	1    11600 5050
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_Passives:Resistor R4
U 1 1 6050EA38
P 10700 4550
F 0 "R4" H 10770 4596 50  0000 L CNN
F 1 "22R" H 10770 4505 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0805_2012Metric" V 10630 4550 50  0001 C CNN
F 3 "~" H 10700 4550 50  0001 C CNN
F 4 "0.13" H 10700 4550 50  0001 C CNN "Cost"
F 5 "Panasonic" H 10700 4550 50  0001 C CNN "Manufacturer"
F 6 "ERJ-P06F22R0V" H 10700 4550 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 10700 4550 50  0001 C CNN "Supplier"
F 8 "P16066CT-ND" H 10700 4550 50  0001 C CNN "Supplier Part Number"
F 9 "22R, 1%, 0.5W, 0805" H 10700 4550 50  0001 C CNN "Part Description"
	1    10700 4550
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R5
U 1 1 6050EF91
P 11150 4550
F 0 "R5" H 11220 4596 50  0000 L CNN
F 1 "22R" H 11220 4505 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0805_2012Metric" V 11080 4550 50  0001 C CNN
F 3 "~" H 11150 4550 50  0001 C CNN
F 4 "0.13" H 11150 4550 50  0001 C CNN "Cost"
F 5 "Panasonic" H 11150 4550 50  0001 C CNN "Manufacturer"
F 6 "ERJ-P06F22R0V" H 11150 4550 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 11150 4550 50  0001 C CNN "Supplier"
F 8 "P16066CT-ND" H 11150 4550 50  0001 C CNN "Supplier Part Number"
F 9 "22R, 1%, 0.5W, 0805" H 11150 4550 50  0001 C CNN "Part Description"
	1    11150 4550
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R6
U 1 1 6050F57A
P 11600 4550
F 0 "R6" H 11670 4596 50  0000 L CNN
F 1 "22R" H 11670 4505 50  0000 L CNN
F 2 "RCAS_Resistor_SMD:R_0805_2012Metric" V 11530 4550 50  0001 C CNN
F 3 "~" H 11600 4550 50  0001 C CNN
F 4 "0.13" H 11600 4550 50  0001 C CNN "Cost"
F 5 "Panasonic" H 11600 4550 50  0001 C CNN "Manufacturer"
F 6 "ERJ-P06F22R0V" H 11600 4550 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 11600 4550 50  0001 C CNN "Supplier"
F 8 "P16066CT-ND" H 11600 4550 50  0001 C CNN "Supplier Part Number"
F 9 "22R, 1%, 0.5W, 0805" H 11600 4550 50  0001 C CNN "Part Description"
	1    11600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4700 10700 4900
Wire Wire Line
	11150 4700 11150 4900
Wire Wire Line
	11600 4700 11600 4900
Wire Wire Line
	10700 4400 10700 4250
Wire Wire Line
	10700 4250 11150 4250
Wire Wire Line
	11150 4250 11150 4400
Wire Wire Line
	11150 4250 11600 4250
Wire Wire Line
	11600 4250 11600 4400
Connection ~ 11150 4250
Wire Wire Line
	10700 5200 10700 5450
Wire Wire Line
	11150 5450 11150 5200
Wire Wire Line
	11150 5450 11600 5450
Wire Wire Line
	11600 5450 11600 5200
Connection ~ 11150 5450
Wire Wire Line
	10700 4250 10700 3950
Connection ~ 10700 4250
$Comp
L RCAS_FETs:Q_NMOS_GDS Q1
U 1 1 605F7D51
P 10600 5700
F 0 "Q1" H 10804 5746 50  0000 L CNN
F 1 "IRLR2703TRPBF" H 10804 5655 50  0000 L CNN
F 2 "RCAS_Package_TO_SOT_SMD:TO-252-2" H 10800 5625 50  0001 L CIN
F 3 "~" H 10600 5700 50  0001 L CNN
F 4 "0.71" H 10600 5700 50  0001 C CNN "Cost"
F 5 "Infineon Technologies" H 10600 5700 50  0001 C CNN "Manufacturer"
F 6 "IRLR2703TRPBF" H 10600 5700 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 10600 5700 50  0001 C CNN "Supplier"
F 8 "IRLR2703TRPBFCT-ND" H 10600 5700 50  0001 C CNN "Supplier Part Number"
F 9 "N-Channel, 30V, 23A, DPAK" H 10600 5700 50  0001 C CNN "Part Description"
	1    10600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 5900 10700 6000
$Comp
L RCAS_Power_Symbols:GND #PWR015
U 1 1 60602562
P 10700 6000
F 0 "#PWR015" H 10700 5750 50  0001 C CNN
F 1 "GND" H 10705 5827 50  0000 C CNN
F 2 "" H 10700 6000 50  0001 C CNN
F 3 "" H 10700 6000 50  0001 C CNN
	1    10700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4100 6550 3900
$Comp
L RCAS_Power_Symbols:GND #PWR012
U 1 1 606093B1
P 9300 4550
F 0 "#PWR012" H 9300 4300 50  0001 C CNN
F 1 "GND" V 9305 4422 50  0000 R CNN
F 2 "" H 9300 4550 50  0001 C CNN
F 3 "" H 9300 4550 50  0001 C CNN
	1    9300 4550
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR013
U 1 1 6060A8AE
P 9400 6700
F 0 "#PWR013" H 9400 6450 50  0001 C CNN
F 1 "GND" H 9405 6527 50  0000 C CNN
F 2 "" H 9400 6700 50  0001 C CNN
F 3 "" H 9400 6700 50  0001 C CNN
	1    9400 6700
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR010
U 1 1 6060B64E
P 8550 6350
F 0 "#PWR010" H 8550 6100 50  0001 C CNN
F 1 "GND" H 8555 6177 50  0000 C CNN
F 2 "" H 8550 6350 50  0001 C CNN
F 3 "" H 8550 6350 50  0001 C CNN
	1    8550 6350
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR09
U 1 1 6060C665
P 7500 6750
F 0 "#PWR09" H 7500 6500 50  0001 C CNN
F 1 "GND" H 7505 6577 50  0000 C CNN
F 2 "" H 7500 6750 50  0001 C CNN
F 3 "" H 7500 6750 50  0001 C CNN
	1    7500 6750
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR04
U 1 1 6060D618
P 6000 5250
F 0 "#PWR04" H 6000 5000 50  0001 C CNN
F 1 "GND" H 6005 5077 50  0000 C CNN
F 2 "" H 6000 5250 50  0001 C CNN
F 3 "" H 6000 5250 50  0001 C CNN
	1    6000 5250
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR06
U 1 1 6060E5CD
P 6550 4400
F 0 "#PWR06" H 6550 4150 50  0001 C CNN
F 1 "GND" H 6555 4227 50  0000 C CNN
F 2 "" H 6550 4400 50  0001 C CNN
F 3 "" H 6550 4400 50  0001 C CNN
	1    6550 4400
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR08
U 1 1 6060F822
P 7050 4400
F 0 "#PWR08" H 7050 4150 50  0001 C CNN
F 1 "GND" H 7055 4227 50  0000 C CNN
F 2 "" H 7050 4400 50  0001 C CNN
F 3 "" H 7050 4400 50  0001 C CNN
	1    7050 4400
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR02
U 1 1 60610793
P 5050 5050
F 0 "#PWR02" H 5050 4800 50  0001 C CNN
F 1 "GND" H 5055 4877 50  0000 C CNN
F 2 "" H 5050 5050 50  0001 C CNN
F 3 "" H 5050 5050 50  0001 C CNN
	1    5050 5050
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V0 #PWR03
U 1 1 606116DC
P 6000 4100
F 0 "#PWR03" H 6000 3950 50  0001 C CNN
F 1 "+3V0" H 6015 4273 50  0000 C CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V0 #PWR05
U 1 1 60611A74
P 6550 3900
F 0 "#PWR05" H 6550 3750 50  0001 C CNN
F 1 "+3V0" H 6565 4073 50  0000 C CNN
F 2 "" H 6550 3900 50  0001 C CNN
F 3 "" H 6550 3900 50  0001 C CNN
	1    6550 3900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V0 #PWR07
U 1 1 60611E1C
P 7050 3900
F 0 "#PWR07" H 7050 3750 50  0001 C CNN
F 1 "+3V0" H 7065 4073 50  0000 C CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0001 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V0 #PWR011
U 1 1 60613952
P 8650 4100
F 0 "#PWR011" H 8650 3950 50  0001 C CNN
F 1 "+3V0" H 8665 4273 50  0000 C CNN
F 2 "" H 8650 4100 50  0001 C CNN
F 3 "" H 8650 4100 50  0001 C CNN
	1    8650 4100
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V0 #PWR01
U 1 1 60613C9E
P 5050 4100
F 0 "#PWR01" H 5050 3950 50  0001 C CNN
F 1 "+3V0" H 5065 4273 50  0000 C CNN
F 2 "" H 5050 4100 50  0001 C CNN
F 3 "" H 5050 4100 50  0001 C CNN
	1    5050 4100
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V0 #PWR014
U 1 1 60613FFA
P 10700 3950
F 0 "#PWR014" H 10700 3800 50  0001 C CNN
F 1 "+3V0" H 10715 4123 50  0000 C CNN
F 2 "" H 10700 3950 50  0001 C CNN
F 3 "" H 10700 3950 50  0001 C CNN
	1    10700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4850 8950 5500
$Comp
L RCAS_Timers_&_Oscillators:555_Timer_Generic U1
U 1 1 6029117A
P 8550 5700
F 0 "U1" H 9094 5746 50  0000 L CNN
F 1 "LMC555CM/NOPB" H 9094 5655 50  0000 L CNN
F 2 "RCAS_Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9350 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmc555.pdf" H 9400 5300 50  0001 C CNN
F 4 "1.06" H 8550 5700 50  0001 C CNN "Cost"
F 5 "Texas Instruments" H 8550 5700 50  0001 C CNN "Manufacturer"
F 6 "LMC555CM/NOPB" H 8550 5700 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 8550 5700 50  0001 C CNN "Supplier"
F 8 "LMC555CM/NOPB-ND" H 8550 5700 50  0001 C CNN "Supplier Part Number"
F 9 "555 Timer, Single, 1.5-15V, 8-SOIC" H 8550 5700 50  0001 C CNN "Part Description"
	1    8550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5500 8150 5500
Wire Wire Line
	7800 5300 7800 5500
Wire Wire Line
	7900 5700 8150 5700
Wire Wire Line
	7900 5700 7900 5900
Wire Wire Line
	7900 5900 8150 5900
Wire Wire Line
	8950 5900 9400 5900
Wire Wire Line
	8950 5700 10400 5700
Wire Wire Line
	9300 4450 9300 4550
Connection ~ 8650 4850
Wire Wire Line
	8650 4850 8950 4850
Wire Wire Line
	7500 4850 8550 4850
Wire Wire Line
	8550 5300 8550 4850
Connection ~ 8550 4850
Wire Wire Line
	8550 4850 8650 4850
Wire Wire Line
	10700 5450 11150 5450
Wire Wire Line
	10700 5500 10700 5450
Connection ~ 10700 5450
$Comp
L RCAS_Mechanical:MountingHole H1
U 1 1 606FE697
P 10550 8900
F 0 "H1" H 10650 8946 50  0000 L CNN
F 1 "M3" H 10650 8855 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 10550 8900 50  0001 C CNN
F 3 "~" H 10550 8900 50  0001 C CNN
F 4 "~" H 10550 8900 50  0001 C CNN "Cost"
F 5 "~" H 10550 8900 50  0001 C CNN "Label"
F 6 "~" H 10550 8900 50  0001 C CNN "Manufacturer"
F 7 "~" H 10550 8900 50  0001 C CNN "Manufacturer Part Number"
F 8 "~" H 10550 8900 50  0001 C CNN "Supplier"
F 9 "~" H 10550 8900 50  0001 C CNN "Supplier Part Number"
	1    10550 8900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H2
U 1 1 6070468B
P 11000 8900
F 0 "H2" H 11100 8946 50  0000 L CNN
F 1 "M3" H 11100 8855 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 11000 8900 50  0001 C CNN
F 3 "~" H 11000 8900 50  0001 C CNN
F 4 "~" H 11000 8900 50  0001 C CNN "Cost"
F 5 "~" H 11000 8900 50  0001 C CNN "Label"
F 6 "~" H 11000 8900 50  0001 C CNN "Manufacturer"
F 7 "~" H 11000 8900 50  0001 C CNN "Manufacturer Part Number"
F 8 "~" H 11000 8900 50  0001 C CNN "Supplier"
F 9 "~" H 11000 8900 50  0001 C CNN "Supplier Part Number"
	1    11000 8900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H3
U 1 1 607047F7
P 11450 8900
F 0 "H3" H 11550 8946 50  0000 L CNN
F 1 "M3" H 11550 8855 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 11450 8900 50  0001 C CNN
F 3 "~" H 11450 8900 50  0001 C CNN
F 4 "~" H 11450 8900 50  0001 C CNN "Cost"
F 5 "~" H 11450 8900 50  0001 C CNN "Label"
F 6 "~" H 11450 8900 50  0001 C CNN "Manufacturer"
F 7 "~" H 11450 8900 50  0001 C CNN "Manufacturer Part Number"
F 8 "~" H 11450 8900 50  0001 C CNN "Supplier"
F 9 "~" H 11450 8900 50  0001 C CNN "Supplier Part Number"
	1    11450 8900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H4
U 1 1 60704916
P 11900 8900
F 0 "H4" H 12000 8946 50  0000 L CNN
F 1 "M3" H 12000 8855 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 11900 8900 50  0001 C CNN
F 3 "~" H 11900 8900 50  0001 C CNN
F 4 "~" H 11900 8900 50  0001 C CNN "Cost"
F 5 "~" H 11900 8900 50  0001 C CNN "Label"
F 6 "~" H 11900 8900 50  0001 C CNN "Manufacturer"
F 7 "~" H 11900 8900 50  0001 C CNN "Manufacturer Part Number"
F 8 "~" H 11900 8900 50  0001 C CNN "Supplier"
F 9 "~" H 11900 8900 50  0001 C CNN "Supplier Part Number"
	1    11900 8900
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Misc:PCB_Text T1
U 1 1 60704D76
P 12850 8950
F 0 "T1" H 12850 9215 50  0000 C CNN
F 1 "Autostop Beacon vA" H 12850 9124 50  0000 C CNN
F 2 "RCAS_PCB_Texts:PCB_Title_&_Version" H 12850 8950 50  0001 C CNN
F 3 "~" H 12850 8950 50  0001 C CNN
F 4 "~" H 12850 8950 50  0001 C CNN "Cost"
F 5 "~" H 12850 8950 50  0001 C CNN "Label"
F 6 "~" H 12850 8950 50  0001 C CNN "Manufacturer"
F 7 "~" H 12850 8950 50  0001 C CNN "Manufacturer Part Number"
F 8 "~" H 12850 8950 50  0001 C CNN "Supplier"
F 9 "~" H 12850 8950 50  0001 C CNN "Supplier Part Number"
	1    12850 8950
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Misc:PCB_Text T3
U 1 1 607050AE
P 13850 8950
F 0 "T3" H 13850 9215 50  0000 C CNN
F 1 "RCAS 2020-21" H 13850 9124 50  0000 C CNN
F 2 "RCAS_PCB_Texts:RCAS_Year" H 13850 8950 50  0001 C CNN
F 3 "~" H 13850 8950 50  0001 C CNN
F 4 "~" H 13850 8950 50  0001 C CNN "Cost"
F 5 "~" H 13850 8950 50  0001 C CNN "Label"
F 6 "~" H 13850 8950 50  0001 C CNN "Manufacturer"
F 7 "~" H 13850 8950 50  0001 C CNN "Manufacturer Part Number"
F 8 "~" H 13850 8950 50  0001 C CNN "Supplier"
F 9 "~" H 13850 8950 50  0001 C CNN "Supplier Part Number"
	1    13850 8950
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Misc:PCB_Text T4
U 1 1 6070579F
P 13850 9300
F 0 "T4" H 13850 9565 50  0000 C CNN
F 1 "Board ID" H 13850 9474 50  0000 C CNN
F 2 "RCAS_PCB_Texts:Board_Number" H 13850 9300 50  0001 C CNN
F 3 "~" H 13850 9300 50  0001 C CNN
F 4 "~" H 13850 9300 50  0001 C CNN "Supplier Part Number"
F 5 "~" H 13850 9300 50  0001 C CNN "Cost"
F 6 "~" H 13850 9300 50  0001 C CNN "Label"
F 7 "~" H 13850 9300 50  0001 C CNN "Manufacturer"
F 8 "~" H 13850 9300 50  0001 C CNN "Manufacturer Part Number"
F 9 "~" H 13850 9300 50  0001 C CNN "Supplier"
	1    13850 9300
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Batteries:Battery BT1
U 1 1 6077117C
P 6000 4950
F 0 "BT1" H 6108 4996 50  0000 L CNN
F 1 "Battery" H 6108 4905 50  0000 L CNN
F 2 "RCAS_Battery:BatteryHolder_Keystone_2468_2xAAA" V 6000 5010 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p28.pdf" V 6000 5010 50  0001 C CNN
F 4 "0.93" H 6000 4950 50  0001 C CNN "Cost"
F 5 "Keystone Electronics" H 6000 4950 50  0001 C CNN "Manufacturer"
F 6 "2468" H 6000 4950 50  0001 C CNN "Manufacturer Part Number"
F 7 "RS" H 6000 4950 50  0001 C CNN "Supplier"
F 8 "279-4965" H 6000 4950 50  0001 C CNN "Supplier Part Number"
F 9 "Dual AAA Battery Holder" H 6000 4950 50  0001 C CNN "Part Description"
	1    6000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5250 6000 5150
$EndSCHEMATC

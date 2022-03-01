EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Autostop Receiver"
Date "2021-05-26"
Rev "vA"
Comp ""
Comment1 "MJ"
Comment2 "EA"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RCAS_Logic:74LVC_Series_Dual_2-Input_NAND_Gate U4
U 1 1 6024BB4B
P 9600 4500
F 0 "U4" H 9700 4650 50  0000 L CNN
F 1 "SN74LVC2G132" H 9650 3250 50  0000 L CNN
F 2 "RCAS_Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 9600 4300 30  0001 C CNN
F 3 "" H 9600 4300 30  0001 C CNN
F 4 "0.31" H 9600 4500 50  0001 C CNN "Cost"
F 5 "Texas Instruments" H 9600 4500 50  0001 C CNN "Manufacturer"
F 6 "SN74LVC2G132DCUR" H 9600 4500 50  0001 C CNN "Manufacturer Part Number"
F 7 "Dual 2-Input Schmitt Trigger NAND Gate 8-VSSOP" H 9600 4500 50  0001 C CNN "Part Description"
F 8 "Digikey" H 9600 4500 50  0001 C CNN "Supplier"
F 9 "296-18802-1-ND" H 9600 4500 50  0001 C CNN "Supplier Part Number"
	1    9600 4500
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C5
U 1 1 6024D6B1
P 11500 5650
F 0 "C5" H 11650 5700 50  0000 L CNN
F 1 "10uF" H 11650 5600 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 11538 5500 50  0001 C CNN
F 3 "~" H 11500 5650 50  0001 C CNN
F 4 "0.18" H 11500 5650 50  0001 C CNN "Cost"
F 5 "AVX" H 11500 5650 50  0001 C CNN "Manufacturer"
F 6 "06036D106MAT2A" H 11500 5650 50  0001 C CNN "Manufacturer Part Number"
F 7 "MLCC 10uF, 6.3V, X5R, 0603" H 11500 5650 50  0001 C CNN "Part Description"
F 8 "Digikey" H 11500 5650 50  0001 C CNN "Supplier"
F 9 "478-5318-1-ND" H 11500 5650 50  0001 C CNN "Supplier Part Number"
	1    11500 5650
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR013
U 1 1 6024E03C
P 12050 5550
F 0 "#PWR013" H 12050 5300 50  0001 C CNN
F 1 "GND" H 12050 5400 50  0000 C CNN
F 2 "" H 12050 5550 50  0001 C CNN
F 3 "" H 12050 5550 50  0001 C CNN
	1    12050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 5550 12050 5500
Wire Wire Line
	12050 5400 12200 5400
Wire Wire Line
	12200 5200 12050 5200
Wire Wire Line
	12050 5200 12050 5400
Connection ~ 12050 5400
$Comp
L RCAS_Power_Symbols:GND #PWR012
U 1 1 6024E701
P 11500 5850
F 0 "#PWR012" H 11500 5600 50  0001 C CNN
F 1 "GND" H 11500 5700 50  0000 C CNN
F 2 "" H 11500 5850 50  0001 C CNN
F 3 "" H 11500 5850 50  0001 C CNN
	1    11500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11500 5850 11500 5800
$Comp
L RCAS_Power_Symbols:+3V3 #PWR011
U 1 1 6024EDC1
P 11500 5000
F 0 "#PWR011" H 11500 4850 50  0001 C CNN
F 1 "+3V3" H 11500 5150 50  0000 C CNN
F 2 "" H 11500 5000 50  0001 C CNN
F 3 "" H 11500 5000 50  0001 C CNN
	1    11500 5000
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Capacitor C4
U 1 1 6024F250
P 9950 4100
F 0 "C4" V 10200 4050 50  0000 L CNN
F 1 "100nF" V 10100 4000 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9988 3950 50  0001 C CNN
F 3 "~" H 9950 4100 50  0001 C CNN
F 4 "0.07" H 9950 4100 50  0001 C CNN "Cost"
F 5 "Samsung" H 9950 4100 50  0001 C CNN "Manufacturer"
F 6 "CL10B104KB8NNNL" H 9950 4100 50  0001 C CNN "Manufacturer Part Number"
F 7 "MLCC 100nF, 50V, X7R, 0603" H 9950 4100 50  0001 C CNN "Part Description"
F 8 "Digikey" H 9950 4100 50  0001 C CNN "Supplier"
F 9 "1276-CL10B104KB8NNNLCT-ND" H 9950 4100 50  0001 C CNN "Supplier Part Number"
	1    9950 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4100 9600 4100
Wire Wire Line
	10100 4100 10200 4100
Wire Wire Line
	10200 4100 10200 4200
$Comp
L RCAS_Power_Symbols:GND #PWR010
U 1 1 60250698
P 10200 4200
F 0 "#PWR010" H 10200 3950 50  0001 C CNN
F 1 "GND" H 10200 4050 50  0000 C CNN
F 2 "" H 10200 4200 50  0001 C CNN
F 3 "" H 10200 4200 50  0001 C CNN
	1    10200 4200
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V3 #PWR08
U 1 1 60250B3F
P 9600 4000
F 0 "#PWR08" H 9600 3850 50  0001 C CNN
F 1 "+3V3" H 9600 4150 50  0000 C CNN
F 2 "" H 9600 4000 50  0001 C CNN
F 3 "" H 9600 4000 50  0001 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4000 9600 4100
$Comp
L RCAS_Power_Symbols:GND #PWR09
U 1 1 602514F9
P 9600 5900
F 0 "#PWR09" H 9600 5650 50  0001 C CNN
F 1 "GND" H 9600 5750 50  0000 C CNN
F 2 "" H 9600 5900 50  0001 C CNN
F 3 "" H 9600 5900 50  0001 C CNN
	1    9600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5900 9600 5800
Wire Wire Line
	12200 5300 10000 5300
Wire Wire Line
	10000 4800 10500 4800
Wire Wire Line
	10500 4800 10500 6300
Wire Wire Line
	10500 6300 8850 6300
Wire Wire Line
	8850 6300 8850 5400
Wire Wire Line
	8850 5400 9200 5400
$Comp
L RCAS_Sensors:IR_Receiver_Module_TSOP75xxx U1
U 1 1 6025921D
P 5650 4150
F 0 "U1" H 5600 4600 50  0000 C CNN
F 1 "TSOP75438" H 5600 4500 50  0000 C CNN
F 2 "RCAS_Sensor:TSOP75xxx_IR_Receiver_Module" H 5750 4450 30  0001 C CNN
F 3 "" H 5750 4450 30  0001 C CNN
F 4 "1.34" H 5650 4150 50  0001 C CNN "Cost"
F 5 "Vishay" H 5650 4150 50  0001 C CNN "Manufacturer"
F 6 "TSOP75438TT" H 5650 4150 50  0001 C CNN "Manufacturer Part Number"
F 7 "38.0kHz IR Receiver SM, 45m Range" H 5650 4150 50  0001 C CNN "Part Description"
F 8 "Digikey" H 5650 4150 50  0001 C CNN "Supplier"
F 9 "TSOP75438TTCT-ND" H 5650 4150 50  0001 C CNN "Supplier Part Number"
	1    5650 4150
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR01
U 1 1 6025984F
P 5950 4550
F 0 "#PWR01" H 5950 4300 50  0001 C CNN
F 1 "GND" H 5950 4400 50  0000 C CNN
F 2 "" H 5950 4550 50  0001 C CNN
F 3 "" H 5950 4550 50  0001 C CNN
	1    5950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4150 5950 4150
Wire Wire Line
	5950 4150 5950 4250
Wire Wire Line
	5850 4250 5950 4250
Connection ~ 5950 4250
Wire Wire Line
	5950 4250 5950 4500
$Comp
L RCAS_Passives:Capacitor C1
U 1 1 6025AC22
P 6300 4300
F 0 "C1" H 6450 4300 50  0000 L CNN
F 1 "100nF" H 6400 4200 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6338 4150 50  0001 C CNN
F 3 "~" H 6300 4300 50  0001 C CNN
F 4 "0.07" H 6300 4300 50  0001 C CNN "Cost"
F 5 "Samsung" H 6300 4300 50  0001 C CNN "Manufacturer"
F 6 "CL10B104KB8NNNL" H 6300 4300 50  0001 C CNN "Manufacturer Part Number"
F 7 "MLCC 100nF, 50V, X7R, 0603" H 6300 4300 50  0001 C CNN "Part Description"
F 8 "Digikey" H 6300 4300 50  0001 C CNN "Supplier"
F 9 "1276-CL10B104KB8NNNLCT-ND" H 6300 4300 50  0001 C CNN "Supplier Part Number"
	1    6300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4450 6300 4500
Wire Wire Line
	6300 4500 5950 4500
Connection ~ 5950 4500
Wire Wire Line
	5950 4500 5950 4550
Wire Wire Line
	6300 4150 6300 3950
Wire Wire Line
	6300 3950 5850 3950
$Comp
L RCAS_Power_Symbols:+3V3 #PWR04
U 1 1 6025CE0F
P 6300 3850
F 0 "#PWR04" H 6300 3700 50  0001 C CNN
F 1 "+3V3" H 6300 4000 50  0000 C CNN
F 2 "" H 6300 3850 50  0001 C CNN
F 3 "" H 6300 3850 50  0001 C CNN
	1    6300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3850 6300 3950
Connection ~ 6300 3950
$Comp
L RCAS_Sensors:IR_Receiver_Module_TSOP75xxx U2
U 1 1 6025F36A
P 5650 5450
F 0 "U2" H 5600 5900 50  0000 C CNN
F 1 "TSOP75438" H 5600 5800 50  0000 C CNN
F 2 "RCAS_Sensor:TSOP75xxx_IR_Receiver_Module" H 5750 5750 30  0001 C CNN
F 3 "" H 5750 5750 30  0001 C CNN
F 4 "1.34" H 5650 5450 50  0001 C CNN "Cost"
F 5 "Vishay" H 5650 5450 50  0001 C CNN "Manufacturer"
F 6 "TSOP75438TT" H 5650 5450 50  0001 C CNN "Manufacturer Part Number"
F 7 "38.0kHz IR Receiver SM, 45m Range" H 5650 5450 50  0001 C CNN "Part Description"
F 8 "Digikey" H 5650 5450 50  0001 C CNN "Supplier"
F 9 "TSOP75438TTCT-ND" H 5650 5450 50  0001 C CNN "Supplier Part Number"
	1    5650 5450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR02
U 1 1 6025F370
P 5950 5850
F 0 "#PWR02" H 5950 5600 50  0001 C CNN
F 1 "GND" H 5950 5700 50  0000 C CNN
F 2 "" H 5950 5850 50  0001 C CNN
F 3 "" H 5950 5850 50  0001 C CNN
	1    5950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5450 5950 5450
Wire Wire Line
	5950 5450 5950 5550
Wire Wire Line
	5850 5550 5950 5550
Connection ~ 5950 5550
Wire Wire Line
	5950 5550 5950 5800
$Comp
L RCAS_Passives:Capacitor C2
U 1 1 6025F37B
P 6300 5600
F 0 "C2" H 6450 5600 50  0000 L CNN
F 1 "100nF" H 6400 5500 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6338 5450 50  0001 C CNN
F 3 "~" H 6300 5600 50  0001 C CNN
F 4 "0.07" H 6300 5600 50  0001 C CNN "Cost"
F 5 "Samsung" H 6300 5600 50  0001 C CNN "Manufacturer"
F 6 "CL10B104KB8NNNL" H 6300 5600 50  0001 C CNN "Manufacturer Part Number"
F 7 "MLCC 100nF, 50V, X7R, 0603" H 6300 5600 50  0001 C CNN "Part Description"
F 8 "Digikey" H 6300 5600 50  0001 C CNN "Supplier"
F 9 "1276-CL10B104KB8NNNLCT-ND" H 6300 5600 50  0001 C CNN "Supplier Part Number"
	1    6300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5750 6300 5800
Wire Wire Line
	6300 5800 5950 5800
Connection ~ 5950 5800
Wire Wire Line
	5950 5800 5950 5850
Wire Wire Line
	6300 5450 6300 5250
Wire Wire Line
	6300 5250 5850 5250
$Comp
L RCAS_Power_Symbols:+3V3 #PWR05
U 1 1 6025F387
P 6300 5150
F 0 "#PWR05" H 6300 5000 50  0001 C CNN
F 1 "+3V3" H 6300 5300 50  0000 C CNN
F 2 "" H 6300 5150 50  0001 C CNN
F 3 "" H 6300 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5150 6300 5250
Connection ~ 6300 5250
$Comp
L RCAS_Sensors:IR_Receiver_Module_TSOP75xxx U3
U 1 1 602612B8
P 5650 6750
F 0 "U3" H 5600 7200 50  0000 C CNN
F 1 "TSOP75436" H 5600 7100 50  0000 C CNN
F 2 "RCAS_Sensor:TSOP75xxx_IR_Receiver_Module" H 5750 7050 30  0001 C CNN
F 3 "" H 5750 7050 30  0001 C CNN
F 4 "1.34" H 5650 6750 50  0001 C CNN "Cost"
F 5 "Vishay" H 5650 6750 50  0001 C CNN "Manufacturer"
F 6 "TSOP75436TR" H 5650 6750 50  0001 C CNN "Manufacturer Part Number"
F 7 "36.0kHz IR Receiver, 45m Range" H 5650 6750 50  0001 C CNN "Part Description"
F 8 "Digikey" H 5650 6750 50  0001 C CNN "Supplier"
F 9 "TSOP75436CT-ND" H 5650 6750 50  0001 C CNN "Supplier Part Number"
	1    5650 6750
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR03
U 1 1 602612BE
P 5950 7150
F 0 "#PWR03" H 5950 6900 50  0001 C CNN
F 1 "GND" H 5950 7000 50  0000 C CNN
F 2 "" H 5950 7150 50  0001 C CNN
F 3 "" H 5950 7150 50  0001 C CNN
	1    5950 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6750 5950 6750
Wire Wire Line
	5950 6750 5950 6850
Wire Wire Line
	5850 6850 5950 6850
Connection ~ 5950 6850
Wire Wire Line
	5950 6850 5950 7100
$Comp
L RCAS_Passives:Capacitor C3
U 1 1 602612C9
P 6300 6900
F 0 "C3" H 6450 6900 50  0000 L CNN
F 1 "100nF" H 6400 6800 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6338 6750 50  0001 C CNN
F 3 "~" H 6300 6900 50  0001 C CNN
F 4 "0.07" H 6300 6900 50  0001 C CNN "Cost"
F 5 "Samsung" H 6300 6900 50  0001 C CNN "Manufacturer"
F 6 "CL10B104KB8NNNL" H 6300 6900 50  0001 C CNN "Manufacturer Part Number"
F 7 "MLCC 100nF, 50V, X7R, 0603" H 6300 6900 50  0001 C CNN "Part Description"
F 8 "Digikey" H 6300 6900 50  0001 C CNN "Supplier"
F 9 "1276-CL10B104KB8NNNLCT-ND" H 6300 6900 50  0001 C CNN "Supplier Part Number"
	1    6300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7050 6300 7100
Wire Wire Line
	6300 7100 5950 7100
Connection ~ 5950 7100
Wire Wire Line
	5950 7100 5950 7150
$Comp
L RCAS_Power_Symbols:+3V3 #PWR06
U 1 1 602612D5
P 6300 6450
F 0 "#PWR06" H 6300 6300 50  0001 C CNN
F 1 "+3V3" H 6300 6600 50  0000 C CNN
F 2 "" H 6300 6450 50  0001 C CNN
F 3 "" H 6300 6450 50  0001 C CNN
	1    6300 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4050 7550 4050
Wire Wire Line
	8350 4050 8350 4700
Wire Wire Line
	8350 4700 9200 4700
Wire Wire Line
	9200 4900 8350 4900
Wire Wire Line
	8350 4900 8350 5350
Wire Wire Line
	8350 5350 7550 5350
Wire Wire Line
	8600 6650 8600 5200
Wire Wire Line
	8600 5200 9200 5200
$Comp
L RCAS_Passives:Resistor R1
U 1 1 6026D356
P 6850 6650
F 0 "R1" V 6950 6650 50  0000 C CNN
F 1 "0R" V 6750 6650 50  0000 C CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6780 6650 50  0001 C CNN
F 3 "~" H 6850 6650 50  0001 C CNN
F 4 "0.07" H 6850 6650 50  0001 C CNN "Cost"
F 5 "Yageo" H 6850 6650 50  0001 C CNN "Manufacturer"
F 6 "RC0603JR-070RL" H 6850 6650 50  0001 C CNN "Manufacturer Part Number"
F 7 "0R, 0.1W, 0603" H 6850 6650 50  0001 C CNN "Part Description"
F 8 "Digikey" H 6850 6650 50  0001 C CNN "Supplier"
F 9 "311-0.0GRCT-ND" H 6850 6650 50  0001 C CNN "Supplier Part Number"
	1    6850 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 6650 5850 6650
Wire Wire Line
	7000 6650 7200 6650
$Comp
L RCAS_Passives:Resistor R2
U 1 1 6026FFE3
P 7200 6400
F 0 "R2" H 7050 6350 50  0000 C CNN
F 1 "10k" H 7050 6450 50  0000 C CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7130 6400 50  0001 C CNN
F 3 "~" H 7200 6400 50  0001 C CNN
F 4 "DNF" H 7050 6550 50  0000 C CNN "Variant"
F 5 "0.07" H 7200 6400 50  0001 C CNN "Cost"
F 6 "Yageo" H 7200 6400 50  0001 C CNN "Manufacturer"
F 7 "RC0603FR-0710KL" H 7200 6400 50  0001 C CNN "Manufacturer Part Number"
F 8 "10k, 1%, 0.1W, 0603" H 7200 6400 50  0001 C CNN "Part Description"
F 9 "Digikey" H 7200 6400 50  0001 C CNN "Supplier"
F 10 "311-10.0KHRCT-ND" H 7200 6400 50  0001 C CNN "Supplier Part Number"
	1    7200 6400
	-1   0    0    1   
$EndComp
$Comp
L RCAS_Power_Symbols:+3V3 #PWR07
U 1 1 60270684
P 7200 6200
F 0 "#PWR07" H 7200 6050 50  0001 C CNN
F 1 "+3V3" H 7200 6350 50  0000 C CNN
F 2 "" H 7200 6200 50  0001 C CNN
F 3 "" H 7200 6200 50  0001 C CNN
	1    7200 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 6200 7200 6250
Wire Wire Line
	7200 6550 7200 6650
Connection ~ 7200 6650
Wire Wire Line
	7200 6650 7800 6650
Text Notes 6800 6900 0    50   ~ 0
Fit R2 and remove R1 if 36kHz sensor not used
$Comp
L RCAS_Test_Points:TestPoint TP1
U 1 1 60273EA4
P 7550 4050
F 0 "TP1" H 7550 4350 50  0000 C CNN
F 1 "TestPoint" H 7550 4250 50  0001 C CNN
F 2 "RCAS_TestPoint:TestPoint_Pad_1.5x1.5mm" H 7750 4050 50  0001 C CNN
F 3 "~" H 7750 4050 50  0001 C CNN
F 4 "38kHz Sensor A" H 7550 4250 50  0000 C CNN "Label"
	1    7550 4050
	1    0    0    -1  
$EndComp
Connection ~ 7550 4050
Wire Wire Line
	7550 4050 8350 4050
$Comp
L RCAS_Test_Points:TestPoint TP2
U 1 1 602747FF
P 7550 5350
F 0 "TP2" H 7550 5650 50  0000 C CNN
F 1 "TestPoint" H 7550 5550 50  0001 C CNN
F 2 "RCAS_TestPoint:TestPoint_Pad_1.5x1.5mm" H 7750 5350 50  0001 C CNN
F 3 "~" H 7750 5350 50  0001 C CNN
F 4 "38kHz Sensor B" H 7550 5550 50  0000 C CNN "Label"
	1    7550 5350
	1    0    0    -1  
$EndComp
Connection ~ 7550 5350
Wire Wire Line
	7550 5350 5850 5350
$Comp
L RCAS_Test_Points:TestPoint TP3
U 1 1 60274B24
P 7800 6650
F 0 "TP3" H 7800 6920 50  0000 C CNN
F 1 "Test Point" H 7800 6850 50  0001 C CNN
F 2 "RCAS_TestPoint:TestPoint_Pad_1.5x1.5mm" H 8000 6650 50  0001 C CNN
F 3 "~" H 8000 6650 50  0001 C CNN
F 4 "36kHz Sensor C" H 7800 6850 50  0000 C CNN "Label"
	1    7800 6650
	1    0    0    -1  
$EndComp
Text Label 7700 4050 0    50   ~ 0
SENSOR_A
Text Label 7700 5350 0    50   ~ 0
SENSOR_B
Connection ~ 7800 6650
Wire Wire Line
	7800 6650 8600 6650
Text Label 7950 6650 0    50   ~ 0
SENSOR_C
Text Label 10150 4800 0    50   ~ 0
~A.B
Text Label 10150 5300 0    50   ~ 0
A.B+~C
Text Notes 5400 3400 0    50   ~ 0
Uses 38kHz sensor x2 for beacon detection.\nAdditional 36kHz sensor to mask output when saturated by a source. Prevents false triggering by sunlight.\nOutput of sensors is LOW when modulated IR is detected.
Text Notes 12500 5650 0    50   ~ 0
Output LOW when either 38kHz sensor triggered \nand the 36kHz sensor is not triggered, else HIGH.\nSolder wires directly into board.
$Comp
L RCAS_Mechanical:MountingHole H1
U 1 1 60252380
P 4050 5000
F 0 "H1" H 4150 5050 50  0000 L CNN
F 1 "M3" H 4150 4950 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 4050 5000 50  0001 C CNN
F 3 "~" H 4050 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H2
U 1 1 60253294
P 4050 5250
F 0 "H2" H 4150 5300 50  0000 L CNN
F 1 "M3" H 4150 5200 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 4050 5250 50  0001 C CNN
F 3 "~" H 4050 5250 50  0001 C CNN
	1    4050 5250
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H3
U 1 1 6025349A
P 4050 5500
F 0 "H3" H 4150 5550 50  0000 L CNN
F 1 "M3" H 4150 5450 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 4050 5500 50  0001 C CNN
F 3 "~" H 4050 5500 50  0001 C CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H4
U 1 1 6025367E
P 4050 5750
F 0 "H4" H 4150 5800 50  0000 L CNN
F 1 "M3" H 4150 5700 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 4050 5750 50  0001 C CNN
F 3 "~" H 4050 5750 50  0001 C CNN
	1    4050 5750
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Ferrite_Bead FB1
U 1 1 602574BA
P 11900 5100
F 0 "FB1" V 11650 5100 50  0000 C CNN
F 1 "1k, 600mA" V 11750 5100 50  0000 C CNN
F 2 "RCAS_Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 11780 5150 50  0001 C CNN
F 3 "~" H 11850 5150 50  0001 C CNN
F 4 "0.12" H 11900 5100 50  0001 C CNN "Cost"
F 5 "Wurth" H 11900 5100 50  0001 C CNN "Manufacturer"
F 6 "742792662" H 11900 5100 50  0001 C CNN "Manufacturer Part Number"
F 7 "1K @ 100MHz, 600mA, 0603" H 11900 5100 50  0001 C CNN "Part Description"
F 8 "Digikey" H 11900 5100 50  0001 C CNN "Supplier"
F 9 "732-4670-1-ND" H 11900 5100 50  0001 C CNN "Supplier Part Number"
	1    11900 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	11500 5000 11500 5100
Wire Wire Line
	12050 5100 12200 5100
Wire Wire Line
	11750 5100 11500 5100
Connection ~ 11500 5100
Wire Wire Line
	11500 5100 11500 5200
Wire Wire Line
	9600 4300 9600 4100
Connection ~ 9600 4100
Wire Wire Line
	6300 6450 6300 6550
Wire Wire Line
	5850 6550 6300 6550
Connection ~ 6300 6550
Wire Wire Line
	6300 6550 6300 6750
$Comp
L RCAS_Power_Symbols:PWR_FLAG #FLG0101
U 1 1 60262E6B
P 11400 5200
F 0 "#FLG0101" H 11400 5275 50  0001 C CNN
F 1 "PWR_FLAG" V 11400 5350 50  0000 L CNN
F 2 "" H 11400 5200 50  0001 C CNN
F 3 "~" H 11400 5200 50  0001 C CNN
	1    11400 5200
	0    -1   -1   0   
$EndComp
$Comp
L RCAS_Power_Symbols:PWR_FLAG #FLG0102
U 1 1 602643C1
P 12350 5650
F 0 "#FLG0102" H 12350 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 12350 5850 50  0000 C CNN
F 2 "" H 12350 5650 50  0001 C CNN
F 3 "~" H 12350 5650 50  0001 C CNN
	1    12350 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	12350 5650 12350 5500
Wire Wire Line
	12350 5500 12050 5500
Connection ~ 12050 5500
Wire Wire Line
	12050 5500 12050 5400
Wire Wire Line
	11400 5200 11500 5200
Connection ~ 11500 5200
Wire Wire Line
	11500 5200 11500 5500
$Comp
L USER_Connectors_Generic:Conn_01x04 J1
U 1 1 60268ABE
P 12400 5200
F 0 "J1" H 12500 5250 50  0000 L CNN
F 1 "Header" H 12500 5150 50  0001 L CNN
F 2 "RCAS_Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 12400 5200 50  0001 C CNN
F 3 "~" H 12400 5200 50  0001 C CNN
F 4 "Main Board" H 12500 5150 50  0000 L CNN "Label"
F 5 "DNF" H 12400 5200 50  0001 C CNN "Variant"
	1    12400 5200
	1    0    0    -1  
$EndComp
$Comp
L RCAS_LEDs:LED D1
U 1 1 60256551
P 12250 6750
F 0 "D1" H 12250 7000 50  0000 C CNN
F 1 "Green LED" H 12250 6900 50  0001 C CNN
F 2 "RCAS_LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 12250 6750 50  0001 C CNN
F 3 "~" H 12250 6750 50  0001 C CNN
F 4 "Power" H 12250 6900 50  0000 C CNN "Label"
F 5 "" H 12250 6750 50  0001 C CNN "Description"
F 6 "0.10" H 12250 6750 50  0001 C CNN "Cost"
F 7 "Wurth" H 12250 6750 50  0001 C CNN "Manufacturer"
F 8 "150060VS75000" H 12250 6750 50  0001 C CNN "Manufacturer Part Number"
F 9 "Green 0603 LED 2V" H 12250 6750 50  0001 C CNN "Part Description"
F 10 "Digikey" H 12250 6750 50  0001 C CNN "Supplier"
F 11 "732-4980-1-ND" H 12250 6750 50  0001 C CNN "Supplier Part Number"
	1    12250 6750
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:+3V3 #PWR015
U 1 1 602568F8
P 12550 6600
F 0 "#PWR015" H 12550 6450 50  0001 C CNN
F 1 "+3V3" H 12550 6750 50  0000 C CNN
F 2 "" H 12550 6600 50  0001 C CNN
F 3 "" H 12550 6600 50  0001 C CNN
	1    12550 6600
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Passives:Resistor R3
U 1 1 602573C9
P 11750 6750
F 0 "R3" V 11850 6750 50  0000 C CNN
F 1 "1k" V 11650 6750 50  0000 C CNN
F 2 "RCAS_Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 11680 6750 50  0001 C CNN
F 3 "~" H 11750 6750 50  0001 C CNN
F 4 "0.07" H 11750 6750 50  0001 C CNN "Cost"
F 5 "Yageo" H 11750 6750 50  0001 C CNN "Manufacturer"
F 6 "RC0603FR-071KL" H 11750 6750 50  0001 C CNN "Manufacturer Part Number"
F 7 "1k, 1%, 0.1W, 0603" H 11750 6750 50  0001 C CNN "Part Description"
F 8 "Digikey" H 11750 6750 50  0001 C CNN "Supplier"
F 9 "311-1.00KHRCT-ND" H 11750 6750 50  0001 C CNN "Supplier Part Number"
	1    11750 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	12100 6750 11900 6750
Wire Wire Line
	12550 6600 12550 6750
Wire Wire Line
	12550 6750 12400 6750
Wire Wire Line
	11600 6750 11450 6750
Wire Wire Line
	11450 6750 11450 6900
$Comp
L RCAS_Power_Symbols:GND #PWR014
U 1 1 6025C80A
P 11450 6900
F 0 "#PWR014" H 11450 6650 50  0001 C CNN
F 1 "GND" H 11450 6750 50  0000 C CNN
F 2 "" H 11450 6900 50  0001 C CNN
F 3 "" H 11450 6900 50  0001 C CNN
	1    11450 6900
	1    0    0    -1  
$EndComp
$EndSCHEMATC

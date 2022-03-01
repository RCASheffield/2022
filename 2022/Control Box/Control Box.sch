EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 6
Title "Control Box"
Date "2021-05-26"
Rev "vB"
Comp ""
Comment1 "EA"
Comment2 "MJ"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RCAS_Passives:Ferrite_Bead FB101
U 1 1 5F74E712
P 3150 3750
F 0 "FB101" V 2950 3750 50  0000 C CNN
F 1 "600R, 2A" V 3050 3750 50  0000 C CNN
F 2 "RCAS_Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 3750 50  0001 C CNN
F 3 "~" H 3150 3750 50  0001 C CNN
F 4 "600R @ 100MHz, 2A, 80mR, 0805" H 3150 3750 50  0001 C CNN "Description"
F 5 "Wurth Elektronik" H 3150 3750 50  0001 C CNN "Manufacturer"
F 6 "74279220601" H 3150 3750 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 3150 3750 50  0001 C CNN "Supplier"
F 8 "732-6126-1-ND" H 3150 3750 50  0001 C CNN "Supplier Part Number"
F 9 "£0.25" H 3150 3750 50  0001 C CNN "Cost"
F 10 "" H 3150 3750 50  0001 C CNN "Basic/Extended"
F 11 "" H 3150 3750 50  0001 C CNN "LCSC"
	1    3150 3750
	0    1    1    0   
$EndComp
$Comp
L RCAS_Passives:Fuse F101
U 1 1 5F74F8DF
P 3850 3750
F 0 "F101" V 3653 3750 50  0000 C CNN
F 1 "Holder + 2A Fuse" V 3744 3750 50  0000 C CNN
F 2 "RCAS_Fuse:Fuseholder_Littelfuse_154" V 3780 3750 50  0001 C CNN
F 3 "~" H 3850 3750 50  0001 C CNN
F 4 "SM fuse holder, Omni-Blok, 125VDC" H 3850 3750 50  0001 C CNN "Description"
F 5 "Littlefuse" H 3850 3750 50  0001 C CNN "Manufacturer"
F 6 "0154002.DR" H 3850 3750 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 3850 3750 50  0001 C CNN "Supplier"
F 8 "F1224CT-ND" H 3850 3750 50  0001 C CNN "Supplier Part Number"
F 9 "£1.91" H 3850 3750 50  0001 C CNN "Cost"
	1    3850 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3600 2800 3750
Wire Wire Line
	3300 3750 3500 3750
Wire Wire Line
	3500 3850 3500 3750
Connection ~ 3500 3750
Wire Wire Line
	3500 4250 3500 4150
Wire Wire Line
	5300 3250 5300 4050
Wire Wire Line
	5300 4050 6050 4050
Wire Wire Line
	5400 3250 5400 3850
Wire Wire Line
	5400 3850 6050 3850
Text Label 5450 4800 0    30   ~ 0
LOCO_TX+
Text Label 5450 4700 0    30   ~ 0
LOCO_TX-
Text Label 5450 4400 0    30   ~ 0
LOCO_RX+
Text Label 5450 4500 0    30   ~ 0
LOCO_RX-
Text Label 5450 4050 0    30   ~ 0
INTERLOCK_OUT
Text Label 5450 3850 0    30   ~ 0
POWER_EN
Wire Wire Line
	7150 4150 7550 4150
Wire Wire Line
	7150 4050 7550 4050
Wire Wire Line
	7150 3950 7550 3950
Wire Wire Line
	7150 3850 7550 3850
$Comp
L RCAS_Diodes:D_Zener D101
U 1 1 5F75D459
P 3500 4000
F 0 "D101" V 3454 4080 50  0000 L CNN
F 1 "26V, 9.5A" V 3545 4080 50  0000 L CNN
F 2 "RCAS_Diode_SMD:D_SMA" H 3500 4000 50  0001 C CNN
F 3 "~" H 3500 4000 50  0001 C CNN
F 4 "TVS Diode, 26V Standoff, 42.1V Clamp, DO214AC" H 3500 4000 50  0001 C CNN "Description"
F 5 "Littlefuse" H 3500 4000 50  0001 C CNN "Manufacturer"
F 6 "SMAJ26A" H 3500 4000 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 3500 4000 50  0001 C CNN "Supplier"
F 8 "SMAJ26ALFCT-ND" H 3500 4000 50  0001 C CNN "Supplier Part Number"
F 9 "£0.28" H 3500 4000 50  0001 C CNN "Cost"
F 10 "Extended" H 3500 4000 50  0001 C CNN "Basic/Extended"
F 11 "C49370" H 3500 4000 50  0001 C CNN "LCSC"
	1    3500 4000
	0    1    1    0   
$EndComp
Text Notes 2300 4000 0    30   ~ 0
Blows fuse if reverse polarity or over-voltage
$Comp
L RCAS_Power_Symbols:PWR_FLAG #FLG0101
U 1 1 5F76450D
P 2800 3750
F 0 "#FLG0101" H 2800 3825 50  0001 C CNN
F 1 "PWR_FLAG" V 2800 3877 50  0000 L CNN
F 2 "" H 2800 3750 50  0001 C CNN
F 3 "~" H 2800 3750 50  0001 C CNN
	1    2800 3750
	0    -1   -1   0   
$EndComp
Connection ~ 2800 3750
$Comp
L RCAS_Power_Symbols:+24V0 #PWR0101
U 1 1 5F764DBA
P 2800 3600
F 0 "#PWR0101" H 2800 3450 50  0001 C CNN
F 1 "+24V0" H 2815 3773 50  0000 C CNN
F 2 "" H 2800 3600 50  0001 C CNN
F 3 "" H 2800 3600 50  0001 C CNN
	1    2800 3600
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR0102
U 1 1 5F76532D
P 4800 4350
F 0 "#PWR0102" H 4800 4100 50  0001 C CNN
F 1 "GND" H 4805 4177 50  0000 C CNN
F 2 "" H 4800 4350 50  0001 C CNN
F 3 "" H 4800 4350 50  0001 C CNN
	1    4800 4350
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H101
U 1 1 5F76A53D
P 1600 1450
F 0 "H101" H 1700 1496 50  0000 L CNN
F 1 "M3" H 1700 1405 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 1600 1450 50  0001 C CNN
F 3 "~" H 1600 1450 50  0001 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H102
U 1 1 5F76A9A3
P 2250 1450
F 0 "H102" H 2350 1496 50  0000 L CNN
F 1 "M3" H 2350 1405 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 2250 1450 50  0001 C CNN
F 3 "~" H 2250 1450 50  0001 C CNN
	1    2250 1450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H103
U 1 1 5F76ABA8
P 2850 1450
F 0 "H103" H 2950 1496 50  0000 L CNN
F 1 "M3" H 2950 1405 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 2850 1450 50  0001 C CNN
F 3 "~" H 2850 1450 50  0001 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
$Comp
L RCAS_Mechanical:MountingHole H104
U 1 1 5F76ADF3
P 3400 1450
F 0 "H104" H 3500 1496 50  0000 L CNN
F 1 "M3" H 3500 1405 50  0000 L CNN
F 2 "RCAS_MountingHole:MountingHole_3.2mm_M3" H 3400 1450 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4250 7550 4250
$Sheet
S 7150 8050 2750 450 
U 5F795081
F0 "Local Power Supplies" 30
F1 "Local Power Supplies.sch" 30
$EndSheet
Wire Wire Line
	9850 3850 10500 3850
Wire Wire Line
	9850 3950 10500 3950
Wire Wire Line
	10500 5800 9850 5800
Wire Wire Line
	10500 5700 9850 5700
Wire Wire Line
	9850 4200 10500 4200
Wire Wire Line
	9850 4350 10500 4350
Wire Wire Line
	9850 4450 10500 4450
Wire Wire Line
	9850 4550 10500 4550
Wire Wire Line
	6950 6200 7550 6200
Wire Wire Line
	6950 6300 7550 6300
Wire Wire Line
	7550 6100 6950 6100
Wire Wire Line
	6950 6000 7550 6000
Wire Wire Line
	6950 5900 7550 5900
Wire Wire Line
	6950 6550 7550 6550
Wire Wire Line
	6950 6450 7550 6450
Wire Wire Line
	7550 6750 6950 6750
Wire Wire Line
	6950 6650 7550 6650
Wire Wire Line
	6950 7000 7550 7000
Wire Wire Line
	6950 6900 7550 6900
$Sheet
S 5550 5050 1400 2500
U 5F75B1B6
F0 "Control Inputs" 30
F1 "Control Inputs.sch" 30
F2 "ENCODER_A" O R 6950 6900 30 
F3 "ENCODER_SWITCH" O R 6950 7100 30 
F4 "ENCODER_B" O R 6950 7000 30 
F5 "NAV_UP" O R 6950 5900 30 
F6 "NAV_RIGHT" O R 6950 6000 30 
F7 "NAV_DOWN" O R 6950 6100 30 
F8 "NAV_PUSH" O R 6950 6300 30 
F9 "NAV_LEFT" O R 6950 6200 30 
F10 "SWITCH_2A" O R 6950 6650 30 
F11 "SWITCH_2B" O R 6950 6750 30 
F12 "SWITCH_1A" O R 6950 6450 30 
F13 "SWITCH_1B" O R 6950 6550 30 
F14 "DEADMAN" O R 6950 5150 30 
F15 "HORN" O R 6950 5250 30 
F16 "POT_TOUCH" O R 6950 5400 30 
F17 "POT_WIPER" O R 6950 5500 30 
F18 "POT_MOTOR_A" I R 6950 5600 30 
F19 "POT_MOTOR_B" I R 6950 5700 30 
F20 "POT_MOTOR_FAULT" O R 6950 5800 30 
$EndSheet
Wire Wire Line
	6950 7100 7550 7100
Wire Wire Line
	6950 5250 7550 5250
Wire Wire Line
	6950 5150 7550 5150
$Sheet
S 7550 3750 2300 3400
U 5F7A51AC
F0 "Processor" 30
F1 "Processor.sch" 30
F2 "POWER_LATCH" O L 7550 3850 30 
F3 "nPOWER_SWITCH_PRESSED" I L 7550 3950 30 
F4 "INTERLOCK_EN" O L 7550 4050 30 
F5 "TETHER_PRESENT" I L 7550 4150 30 
F6 "LOCO_RX+" O L 7550 4400 30 
F7 "LOCO_RX-" O L 7550 4500 30 
F8 "LOCO_TX-" I L 7550 4700 30 
F9 "LOCO_TX+" I L 7550 4800 30 
F10 "ESTOP_PRESENT" I L 7550 4250 30 
F11 "ENCODER_A" I L 7550 6900 30 
F12 "ENCODER_B" I L 7550 7000 30 
F13 "ENCODER_SWITCH" I L 7550 7100 30 
F14 "AUDIO_ENABLE" O R 9850 5800 30 
F15 "AUDIO_SIGNAL" O R 9850 5700 30 
F16 "nOLED_RES" O R 9850 4200 30 
F17 "NAV_UP" I L 7550 5900 30 
F18 "NAV_RIGHT" I L 7550 6000 30 
F19 "NAV_DOWN" I L 7550 6100 30 
F20 "NAV_LEFT" I L 7550 6200 30 
F21 "NAV_PUSH" I L 7550 6300 30 
F22 "SWITCH_2A" I L 7550 6650 30 
F23 "SWITCH_1A" I L 7550 6450 30 
F24 "SWITCH_1B" I L 7550 6550 30 
F25 "SWITCH_2B" I L 7550 6750 30 
F26 "DEADMAN" I L 7550 5150 30 
F27 "HORN" I L 7550 5250 30 
F28 "OLED_MOSI" O R 9850 3950 30 
F29 "OLED_SCK" O R 9850 3850 30 
F30 "nOLED_1_CS" O R 9850 4350 30 
F31 "nOLED_2_CS" O R 9850 4450 30 
F32 "nOLED_3_CS" O R 9850 4550 30 
F33 "OLED_DC" O R 9850 4100 30 
F34 "POT_WIPER" I L 7550 5500 30 
F35 "POT_MOTOR_A" O L 7550 5600 30 
F36 "POT_MOTOR_B" O L 7550 5700 30 
F37 "POT_TOUCH" I L 7550 5400 30 
F38 "POWER_INDICATOR" O L 7550 4000 30 
F39 "POT_MOTOR_FAULT" I L 7550 5800 30 
$EndSheet
Wire Wire Line
	3500 3750 3700 3750
Wire Wire Line
	2800 3750 3000 3750
$Sheet
S 10500 3750 1400 2150
U 5F75B328
F0 "Displays" 30
F1 "Displays.sch" 30
F2 "AUDIO_ENABLE" I L 10500 5800 30 
F3 "AUDIO_SIGNAL" I L 10500 5700 30 
F4 "nOLED_RES" I L 10500 4200 30 
F5 "nOLED_3_CS" I L 10500 4550 30 
F6 "nOLED_2_CS" I L 10500 4450 30 
F7 "nOLED_1_CS" I L 10500 4350 30 
F8 "OLED_DC" I L 10500 4100 30 
F9 "OLED_MOSI" I L 10500 3950 30 
F10 "OLED_SCK" I L 10500 3850 30 
$EndSheet
Wire Wire Line
	9850 4100 10500 4100
Wire Wire Line
	4800 4250 4800 4350
Wire Wire Line
	4800 4250 4800 3250
Connection ~ 4800 4250
Wire Wire Line
	6950 5400 7550 5400
Wire Wire Line
	6950 5500 7550 5500
Wire Wire Line
	6950 5600 7550 5600
Wire Wire Line
	6950 5700 7550 5700
$Comp
L RCAS_Connectors_Generic:Conn_01x08_Shielded J102
U 1 1 5FAC567E
P 5000 3050
F 0 "J102" V 5225 2917 50  0000 C CNN
F 1 "RJ45" V 5134 2917 50  0000 C CNN
F 2 "RCAS_Connector_RJ:RJ45_Amphenol_RJHSE5380" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
F 4 "8p8c RJ45 Female Jack Single Shielded RA TH" H 5000 3050 50  0001 C CNN "Description"
F 5 "Amphenol" H 5000 3050 50  0001 C CNN "Manufacturer"
F 6 "RJHSE-5380" H 5000 3050 50  0001 C CNN "Manufacturer Part Number"
F 7 "Digikey" H 5000 3050 50  0001 C CNN "Supplier"
F 8 "RJHSE-5380" H 5000 3050 50  0001 C CNN "Supplier Part Number"
F 9 "£0.93" H 5000 3050 50  0001 C CNN "Cost"
	1    5000 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 3050 5850 3050
Wire Wire Line
	5850 3050 5850 3150
$Comp
L RCAS_Passives:Capacitor C?
U 1 1 5FAD4E45
P 5850 3300
AR Path="/5F75B1B6/5FAD4E45" Ref="C?"  Part="1" 
AR Path="/5FAD4E45" Ref="C101"  Part="1" 
F 0 "C101" H 5965 3346 50  0000 L CNN
F 1 "10nF" H 5965 3255 50  0000 L CNN
F 2 "RCAS_Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5888 3150 50  0001 C CNN
F 3 "~" H 5850 3300 50  0001 C CNN
F 4 "C57112" H 5850 3300 50  0001 C CNN "LCSC"
F 5 "Basic" H 5850 3300 50  0001 C CNN "Basic/Extended"
	1    5850 3300
	-1   0    0    1   
$EndComp
$Comp
L RCAS_Power_Symbols:GND #PWR0103
U 1 1 5FAD911E
P 5850 3500
F 0 "#PWR0103" H 5850 3250 50  0001 C CNN
F 1 "GND" H 5855 3327 50  0000 C CNN
F 2 "" H 5850 3500 50  0001 C CNN
F 3 "" H 5850 3500 50  0001 C CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5850 3450
$Sheet
S 6050 3650 1100 650 
U 5F7561A0
F0 "Power & Interlocks" 30
F1 "Power & Interlocks.sch" 30
F2 "INTERLOCK_OUT" O L 6050 4050 30 
F3 "POWER_EN" O L 6050 3850 30 
F4 "POWER_LATCH" I R 7150 3850 30 
F5 "nPOWER_SWITCH_PRESSED" O R 7150 3950 30 
F6 "INTERLOCK_EN" I R 7150 4050 30 
F7 "TETHER_PRESENT" O R 7150 4150 30 
F8 "ESTOP_PRESENT" O R 7150 4250 30 
F9 "POWER_INDICATOR" I R 7150 3750 30 
$EndSheet
Wire Wire Line
	7550 4000 7350 4000
Wire Wire Line
	7350 4000 7350 3750
Wire Wire Line
	7350 3750 7150 3750
Wire Wire Line
	4700 3250 4700 3750
Wire Wire Line
	3500 4250 4800 4250
Wire Wire Line
	4000 3750 4700 3750
Wire Wire Line
	6950 5800 7550 5800
Wire Wire Line
	5200 3250 5200 4800
Wire Wire Line
	5200 4800 7550 4800
Wire Wire Line
	7550 4700 4900 4700
Wire Wire Line
	4900 4700 4900 3250
Wire Wire Line
	5000 3250 5000 4400
Wire Wire Line
	5000 4400 7550 4400
Wire Wire Line
	7550 4500 5100 4500
Wire Wire Line
	5100 4500 5100 3250
$EndSCHEMATC

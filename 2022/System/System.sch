EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 4
Title "System Diagram"
Date "2021-05-24"
Rev "vA"
Comp ""
Comment1 "MJ"
Comment2 "AF"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2500 3300 1600 1600
U 5F802B02
F0 "Control Box" 50
F1 "Control Box.sch" 50
F2 "+24V0" U R 4100 3550 50 
F3 "LOCO_RX+" O R 4100 3950 50 
F4 "LOCO_RX-" O R 4100 3850 50 
F5 "LOCO_TX+" I R 4100 3750 50 
F6 "LOCO_TX-" I R 4100 4050 50 
F7 "POWER_EN" O R 4100 4250 50 
F8 "INTERLOCK_OUT" O R 4100 4150 50 
F9 "GND" U R 4100 3650 50 
$EndSheet
$Sheet
S 6250 3150 2900 2700
U 5F802B50
F0 "Module 1" 50
F1 "Module 1.sch" 50
F2 "+24V0" U L 6250 3550 50 
F3 "GND" U L 6250 3650 50 
F4 "LOCO_RX+" I L 6250 3950 50 
F5 "LOCO_RX-" I L 6250 3850 50 
F6 "LOCO_TX+" O L 6250 3750 50 
F7 "LOCO_TX-" O L 6250 4050 50 
F8 "POWER_EN" I L 6250 4250 50 
F9 "INTERLOCK_IN" I L 6250 4150 50 
F10 "INTERLOCK_RET" I R 9150 3550 50 
F11 "INTERLOCK_OUT" O R 9150 4150 50 
F12 "GND" U R 9150 3650 50 
F13 "LOCO_TX+" I R 9150 3750 50 
F14 "LOCO_RX-" O R 9150 3850 50 
F15 "LOCO_RX+" O R 9150 3950 50 
F16 "LOCO_TX-" I R 9150 4050 50 
F17 "POWER_EN" O R 9150 4250 50 
F18 "VBAT" U R 9150 4950 50 
F19 "VCAP" U R 9150 5050 50 
F20 "EARTH" U R 9150 5150 50 
$EndSheet
$Sheet
S 10950 3200 3000 2650
U 5F802BA9
F0 "Module 2" 50
F1 "Module 2.sch" 50
F2 "INTERLOCK_RET" O L 10950 3550 50 
F3 "GND" U L 10950 3650 50 
F4 "LOCO_RX+" I L 10950 3950 50 
F5 "LOCO_RX-" I L 10950 3850 50 
F6 "LOCO_TX+" O L 10950 3750 50 
F7 "LOCO_TX-" O L 10950 4050 50 
F8 "POWER_EN" I L 10950 4250 50 
F9 "INTERLOCK_IN" I L 10950 4150 50 
F10 "VBAT" U L 10950 4950 50 
F11 "VCAP" U L 10950 5050 50 
F12 "EARTH" U L 10950 5150 50 
$EndSheet
Wire Wire Line
	4100 3550 6250 3550
Wire Wire Line
	4100 3650 6250 3650
Wire Wire Line
	4100 3750 6250 3750
Wire Wire Line
	4100 3850 6250 3850
Wire Wire Line
	4100 3950 6250 3950
Wire Wire Line
	4100 4050 6250 4050
Wire Wire Line
	6250 4150 4100 4150
Wire Wire Line
	4100 4250 6250 4250
Text Notes 5300 3450 2    50   ~ 0
Ethernet cable
Wire Wire Line
	9150 3550 10950 3550
Wire Wire Line
	10950 3650 9150 3650
Wire Wire Line
	9150 3750 10950 3750
Wire Wire Line
	10950 3850 9150 3850
Wire Wire Line
	9150 3950 10950 3950
Wire Wire Line
	10950 4050 9150 4050
Wire Wire Line
	9150 4150 10950 4150
Wire Wire Line
	10950 4250 9150 4250
Text Notes 10250 3450 2    50   ~ 0
Ethernet cable
Text Notes 10250 4850 2    50   ~ 0
Power Connectors
Wire Wire Line
	9150 4950 10950 4950
Wire Wire Line
	10950 5050 9150 5050
Wire Wire Line
	9150 5150 10950 5150
$EndSCHEMATC

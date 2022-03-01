EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 4
Title "System Diagram"
Date "2021-05-24"
Rev "vA"
Comp ""
Comment1 "MJ"
Comment2 "AF"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10400 5000 2    50   UnSpc ~ 0
+24V0
Text HLabel 10400 5200 2    50   UnSpc ~ 0
GND
Text HLabel 10400 5400 2    50   Output ~ 0
LOCO_RX+
Text HLabel 10400 5600 2    50   Output ~ 0
LOCO_RX-
Text HLabel 10400 5800 2    50   Input ~ 0
LOCO_TX+
Text HLabel 10400 6000 2    50   Input ~ 0
LOCO_TX-
Text HLabel 10400 6200 2    50   Output ~ 0
POWER_EN
Text HLabel 10400 6400 2    50   Output ~ 0
INTERLOCK_OUT
Wire Notes Line
	5100 7050 8800 7050
Wire Notes Line
	8800 7050 8800 4450
Wire Notes Line
	8800 4450 5100 4450
Wire Notes Line
	5100 7050 5100 4450
Text Notes 7650 5800 2    100  ~ 0
Control Box PCA
Wire Wire Line
	10400 5000 8800 5000
Wire Wire Line
	10400 5200 8800 5200
Wire Wire Line
	10400 5400 8800 5400
Wire Wire Line
	10400 5600 8800 5600
Wire Wire Line
	10400 5800 8800 5800
Wire Wire Line
	10400 6000 8800 6000
Wire Wire Line
	10400 6200 8800 6200
Wire Wire Line
	10400 6400 8800 6400
$EndSCHEMATC

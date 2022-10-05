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
L Connector:Screw_Terminal_01x02 J?
U 1 1 63373A4A
P 800 1200
F 0 "J?" H 718 875 50  0000 C CNN
F 1 "Vin" H 850 950 50  0000 C CNN
F 2 "" H 800 1200 50  0001 C CNN
F 3 "~" H 800 1200 50  0001 C CNN
	1    800  1200
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6337435A
P 1150 1000
F 0 "D?" V 1104 1080 50  0000 L CNN
F 1 "1N4007" V 1250 1050 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1150 825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1150 1000 50  0001 C CNN
	1    1150 1000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 633753F1
P 1650 1000
F 0 "C?" H 1765 1046 50  0000 L CNN
F 1 "220uF" H 1700 900 50  0000 L CNN
F 2 "" H 1688 850 50  0001 C CNN
F 3 "~" H 1650 1000 50  0001 C CNN
	1    1650 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 633758E8
P 2000 1000
F 0 "C?" H 2115 1046 50  0000 L CNN
F 1 "100nF" H 2050 900 50  0000 L CNN
F 2 "" H 2038 850 50  0001 C CNN
F 3 "~" H 2000 1000 50  0001 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63375A43
P 3200 1000
F 0 "C?" H 3315 1046 50  0000 L CNN
F 1 "100nF" H 3250 900 50  0000 L CNN
F 2 "" H 3238 850 50  0001 C CNN
F 3 "~" H 3200 1000 50  0001 C CNN
	1    3200 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63375BB2
P 3550 1000
F 0 "C?" H 3665 1046 50  0000 L CNN
F 1 "100uF" H 3600 900 50  0000 L CNN
F 2 "" H 3588 850 50  0001 C CNN
F 3 "~" H 3550 1000 50  0001 C CNN
	1    3550 1000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U?
U 1 1 633764BE
P 2750 750
F 0 "U?" H 2750 992 50  0000 C CNN
F 1 "L7805" H 2750 901 50  0000 C CNN
F 2 "" H 2775 600 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2750 700 50  0001 C CNN
	1    2750 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63377365
P 3900 750
F 0 "R?" V 3693 750 50  0000 C CNN
F 1 "500" V 3784 750 50  0000 C CNN
F 2 "" V 3830 750 50  0001 C CNN
F 3 "~" H 3900 750 50  0001 C CNN
	1    3900 750 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 633776EE
P 4200 1000
F 0 "D?" V 4239 882 50  0000 R CNN
F 1 "LED" V 4148 882 50  0000 R CNN
F 2 "" H 4200 1000 50  0001 C CNN
F 3 "~" H 4200 1000 50  0001 C CNN
	1    4200 1000
	0    -1   -1   0   
$EndComp
$Comp
L Comparator:LM311 U?
U 1 1 63377EBD
P 5950 1800
F 0 "U?" H 6150 1950 50  0000 L CNN
F 1 "LM311" H 6050 1650 50  0000 L CNN
F 2 "" H 5950 1800 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm311.pdf" H 5950 1800 50  0001 C CNN
	1    5950 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 1150 1150 1200
Wire Wire Line
	1150 1200 1000 1200
$Comp
L Device:R R?
U 1 1 6337E2E3
P 2350 1000
F 0 "R?" H 2420 1046 50  0000 L CNN
F 1 "100k" H 2400 900 50  0000 L CNN
F 2 "" V 2280 1000 50  0001 C CNN
F 3 "~" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 850  1150 750 
Wire Wire Line
	1150 750  1650 750 
Wire Wire Line
	1650 750  1650 850 
Wire Wire Line
	1650 750  2000 750 
Wire Wire Line
	2000 750  2000 850 
Connection ~ 1650 750 
Wire Wire Line
	2000 750  2350 750 
Wire Wire Line
	2350 750  2350 850 
Connection ~ 2000 750 
Wire Wire Line
	1000 1100 1050 1100
Wire Wire Line
	1050 1100 1050 1300
Wire Wire Line
	1050 1300 1650 1300
Wire Wire Line
	2350 1300 2350 1150
Wire Wire Line
	2000 1150 2000 1300
Connection ~ 2000 1300
Wire Wire Line
	2000 1300 2350 1300
Wire Wire Line
	1650 1150 1650 1300
Connection ~ 1650 1300
Wire Wire Line
	1650 1300 2000 1300
Wire Wire Line
	2450 750  2350 750 
Connection ~ 2350 750 
Wire Wire Line
	2750 1050 2750 1300
Wire Wire Line
	2750 1300 2350 1300
Connection ~ 2350 1300
Wire Wire Line
	3200 850  3200 750 
Wire Wire Line
	3200 750  3050 750 
Wire Wire Line
	3200 750  3550 750 
Wire Wire Line
	3550 750  3550 850 
Connection ~ 3200 750 
Wire Wire Line
	3200 1150 3200 1300
Wire Wire Line
	3200 1300 2750 1300
Connection ~ 2750 1300
Wire Wire Line
	3200 1300 3550 1300
Wire Wire Line
	3550 1300 3550 1150
Connection ~ 3200 1300
Wire Wire Line
	4050 750  4200 750 
Wire Wire Line
	4200 750  4200 850 
Wire Wire Line
	3550 750  3750 750 
Connection ~ 3550 750 
Wire Wire Line
	4200 1150 4200 1300
Wire Wire Line
	4200 1300 3550 1300
Connection ~ 3550 1300
Text GLabel 3350 600  2    50   Input ~ 0
+5V
Wire Wire Line
	3350 600  3200 600 
Wire Wire Line
	3200 600  3200 750 
Text GLabel 1700 600  2    50   Input ~ 0
+11V
Wire Wire Line
	1700 600  1650 600 
Wire Wire Line
	1650 600  1650 750 
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 63388B1F
P 5400 6850
F 0 "U?" H 5400 7217 50  0000 C CNN
F 1 "LM324" H 5400 7126 50  0000 C CNN
F 2 "" H 5350 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5450 7050 50  0001 C CNN
	1    5400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6950 5050 6950
Wire Wire Line
	5050 6950 5050 7150
Wire Wire Line
	5050 7150 5800 7150
Wire Wire Line
	5800 7150 5800 6850
Wire Wire Line
	5800 6850 5700 6850
$Comp
L Device:C C?
U 1 1 6338CE59
P 6050 6550
F 0 "C?" H 6165 6596 50  0000 L CNN
F 1 "470uF" H 6100 6450 50  0000 L CNN
F 2 "" H 6088 6400 50  0001 C CNN
F 3 "~" H 6050 6550 50  0001 C CNN
	1    6050 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6338DEEB
P 6050 7100
F 0 "C?" H 6165 7146 50  0000 L CNN
F 1 "470uF" H 6100 7000 50  0000 L CNN
F 2 "" H 6088 6950 50  0001 C CNN
F 3 "~" H 6050 7100 50  0001 C CNN
	1    6050 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6338E660
P 4850 6450
F 0 "R?" H 4920 6496 50  0000 L CNN
F 1 "100k" H 4900 6350 50  0000 L CNN
F 2 "" V 4780 6450 50  0001 C CNN
F 3 "~" H 4850 6450 50  0001 C CNN
	1    4850 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6338ED38
P 4850 7100
F 0 "R?" H 4920 7146 50  0000 L CNN
F 1 "100k" H 4900 7000 50  0000 L CNN
F 2 "" V 4780 7100 50  0001 C CNN
F 3 "~" H 4850 7100 50  0001 C CNN
	1    4850 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6338F483
P 4500 7100
F 0 "C?" H 4615 7146 50  0000 L CNN
F 1 "100nF" H 4550 7000 50  0000 L CNN
F 2 "" H 4538 6950 50  0001 C CNN
F 3 "~" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6950 4850 6750
Wire Wire Line
	5100 6750 4850 6750
Connection ~ 4850 6750
Wire Wire Line
	4850 6750 4850 6600
Wire Wire Line
	4850 6750 4500 6750
Wire Wire Line
	4500 6750 4500 6950
Wire Wire Line
	4500 7450 4850 7450
Wire Wire Line
	4850 7450 6050 7450
Connection ~ 4850 7450
Wire Wire Line
	5800 6850 6050 6850
Connection ~ 5800 6850
Connection ~ 6050 6850
Wire Wire Line
	6050 6850 6050 6700
Wire Wire Line
	6050 6400 6050 6200
Wire Wire Line
	6050 6200 4850 6200
Wire Wire Line
	4850 6200 4850 6300
Text GLabel 6350 6850 2    50   Input ~ 0
Vgnd
Text GLabel 6350 6200 2    50   Input ~ 0
+5.5V
Text GLabel 6350 7450 2    50   Input ~ 0
-5.5V
Wire Wire Line
	4500 7250 4500 7450
Wire Wire Line
	4850 7250 4850 7450
Wire Wire Line
	6050 7250 6050 7450
Wire Wire Line
	6350 7450 6050 7450
Connection ~ 6050 7450
Wire Wire Line
	6050 6950 6050 6850
Wire Wire Line
	6350 6850 6050 6850
Wire Wire Line
	6350 6200 6050 6200
Connection ~ 6050 6200
Text GLabel 4450 6200 0    50   Input ~ 0
+11V
Wire Wire Line
	4450 6200 4850 6200
Connection ~ 4850 6200
Wire Wire Line
	5850 1500 5850 1450
Wire Wire Line
	5850 1450 5950 1450
Wire Wire Line
	5950 1450 5950 1500
Wire Wire Line
	6050 2100 6050 2150
Wire Wire Line
	6050 2150 5950 2150
Wire Wire Line
	5950 2150 5950 2100
$Comp
L Device:R R?
U 1 1 633A1943
P 5800 2250
F 0 "R?" V 5700 2200 50  0000 L CNN
F 1 "47k" V 5900 2150 50  0000 L CNN
F 2 "" V 5730 2250 50  0001 C CNN
F 3 "~" H 5800 2250 50  0001 C CNN
	1    5800 2250
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 2250 5600 2250
Wire Wire Line
	5600 2250 5600 1800
Wire Wire Line
	5600 1800 5650 1800
Wire Wire Line
	6250 1900 6350 1900
Wire Wire Line
	6350 1900 6350 2250
Wire Wire Line
	6350 2250 5950 2250
$Comp
L Device:C C?
U 1 1 633A92BF
P 6350 2500
F 0 "C?" H 6465 2546 50  0000 L CNN
F 1 "10uF" H 6400 2400 50  0000 L CNN
F 2 "" H 6388 2350 50  0001 C CNN
F 3 "~" H 6350 2500 50  0001 C CNN
	1    6350 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 2350 6350 2250
Connection ~ 6350 2250
$Comp
L Device:R R?
U 1 1 633AB2FB
P 6300 1350
F 0 "R?" H 6370 1396 50  0000 L CNN
F 1 "100k" H 6350 1250 50  0000 L CNN
F 2 "" V 6230 1350 50  0001 C CNN
F 3 "~" H 6300 1350 50  0001 C CNN
	1    6300 1350
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 633ABA69
P 6550 1000
F 0 "R?" H 6620 1046 50  0000 L CNN
F 1 "100k" H 6600 900 50  0000 L CNN
F 2 "" V 6480 1000 50  0001 C CNN
F 3 "~" H 6550 1000 50  0001 C CNN
	1    6550 1000
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 633AC460
P 6550 2500
F 0 "R?" H 6620 2546 50  0000 L CNN
F 1 "100k" H 6600 2400 50  0000 L CNN
F 2 "" V 6480 2500 50  0001 C CNN
F 3 "~" H 6550 2500 50  0001 C CNN
	1    6550 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 1150 6550 1350
Wire Wire Line
	6450 1350 6550 1350
Connection ~ 6550 1350
Wire Wire Line
	6550 1350 6550 1700
Wire Wire Line
	6150 1350 5600 1350
Wire Wire Line
	5600 1350 5600 1800
Connection ~ 5600 1800
Wire Wire Line
	6350 2650 6350 2800
Wire Wire Line
	6350 2800 6450 2800
Wire Wire Line
	6550 2800 6550 2650
$Comp
L 4xxx:4029 U?
U 1 1 633B5EEF
P 4550 2300
F 0 "U?" H 4350 1500 50  0000 C CNN
F 1 "4029" H 4400 3000 50  0000 C CNN
F 2 "" H 4550 2300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4029bms.pdf" H 4550 2300 50  0001 C CNN
	1    4550 2300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 633B7FA5
P 5600 1000
F 0 "R?" V 5500 950 50  0000 L CNN
F 1 "1k" V 5700 900 50  0000 L CNN
F 2 "" V 5530 1000 50  0001 C CNN
F 3 "~" H 5600 1000 50  0001 C CNN
	1    5600 1000
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 633B8A14
P 5200 1800
F 0 "R?" V 5100 1750 50  0000 L CNN
F 1 "2k2" V 5300 1700 50  0000 L CNN
F 2 "" V 5130 1800 50  0001 C CNN
F 3 "~" H 5200 1800 50  0001 C CNN
	1    5200 1800
	0    -1   1    0   
$EndComp
Wire Wire Line
	6550 850  6550 750 
Wire Wire Line
	6550 750  6050 750 
Wire Wire Line
	5600 750  5600 850 
Wire Wire Line
	5600 1150 5600 1350
Connection ~ 5600 1350
Wire Wire Line
	5350 1800 5600 1800
Wire Wire Line
	4550 3200 5100 3200
Wire Wire Line
	5100 3200 5100 2900
Wire Wire Line
	5100 2900 5050 2900
Wire Wire Line
	5050 2500 5100 2500
Wire Wire Line
	5100 2500 5100 2900
Connection ~ 5100 2900
NoConn ~ 5050 2300
NoConn ~ 5050 2000
NoConn ~ 4050 1800
NoConn ~ 4050 2600
Wire Wire Line
	4050 2500 3950 2500
Wire Wire Line
	3950 2500 3950 3200
Wire Wire Line
	3950 3200 4550 3200
Connection ~ 4550 3200
Wire Wire Line
	5100 3200 5300 3200
Wire Wire Line
	6450 3200 6450 2800
Connection ~ 5100 3200
Connection ~ 6450 2800
Wire Wire Line
	6450 2800 6550 2800
Wire Wire Line
	4050 2400 4000 2400
Wire Wire Line
	4000 2400 4000 1400
Wire Wire Line
	4000 1400 4550 1400
Wire Wire Line
	4550 1400 4550 1500
NoConn ~ 4050 1900
NoConn ~ 4050 2000
$Comp
L power:GND #PWR?
U 1 1 633FF209
P 5300 3400
F 0 "#PWR?" H 5300 3150 50  0001 C CNN
F 1 "GND" H 5305 3227 50  0000 C CNN
F 2 "" H 5300 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3400 5300 3200
Connection ~ 5300 3200
Wire Wire Line
	5300 3200 5450 3200
Text GLabel 6850 750  2    50   Input ~ 0
+5V
Wire Wire Line
	6850 750  6550 750 
Connection ~ 6550 750 
Wire Wire Line
	5600 750  5450 750 
Wire Wire Line
	4550 750  4550 1400
Connection ~ 5600 750 
Connection ~ 4550 1400
Text GLabel 3600 2100 0    50   Input ~ 0
OSC_div16Out
Wire Wire Line
	4050 2100 3600 2100
Text GLabel 2400 4300 2    50   Input ~ 0
DTX
Text GLabel 2400 4400 2    50   Input ~ 0
DRX
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U?
U 1 1 6342B3DF
P 1650 3800
F 0 "U?" H 1006 3846 50  0000 R CNN
F 1 "ATmega328-PU" H 1006 3755 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1650 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1650 3800 50  0001 C CNN
	1    1650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4400 2400 4400
Wire Wire Line
	2250 4300 2400 4300
Text GLabel 2400 4500 2    50   Input ~ 0
OSC_div16Out
Wire Wire Line
	2250 4500 2400 4500
Text GLabel 2400 4700 2    50   Input ~ 0
RELAY_Cref
Wire Wire Line
	2250 4700 2400 4700
$Comp
L Device:Crystal Y?
U 1 1 63444BB1
P 1650 5700
F 0 "Y?" V 1696 5569 50  0000 R CNN
F 1 "16MHz" V 1605 5569 50  0000 R CNN
F 2 "" H 1650 5700 50  0001 C CNN
F 3 "~" H 1650 5700 50  0001 C CNN
	1    1650 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 634457B8
P 1400 5700
F 0 "R?" V 1300 5650 50  0000 L CNN
F 1 "1M" V 1400 5650 50  0000 L CNN
F 2 "" V 1330 5700 50  0001 C CNN
F 3 "~" H 1400 5700 50  0001 C CNN
	1    1400 5700
	1    0    0    1   
$EndComp
Wire Wire Line
	1050 5650 1250 5650
Wire Wire Line
	1250 5650 1250 5550
Wire Wire Line
	1250 5550 1400 5550
Wire Wire Line
	1400 5550 1650 5550
Connection ~ 1400 5550
Wire Wire Line
	1050 5750 1250 5750
Wire Wire Line
	1250 5750 1250 5850
Wire Wire Line
	1250 5850 1400 5850
Wire Wire Line
	1650 5850 1400 5850
Connection ~ 1400 5850
$Comp
L Device:C C?
U 1 1 6335D674
P 2100 5550
F 0 "C?" V 1950 5550 50  0000 C CNN
F 1 "22pF" V 2050 5700 50  0000 C CNN
F 2 "" H 2138 5400 50  0001 C CNN
F 3 "~" H 2100 5550 50  0001 C CNN
	1    2100 5550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6335DA83
P 2100 5850
F 0 "C?" V 1950 5850 50  0000 C CNN
F 1 "22pF" V 2050 6000 50  0000 C CNN
F 2 "" H 2138 5700 50  0001 C CNN
F 3 "~" H 2100 5850 50  0001 C CNN
	1    2100 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 5550 1650 5550
Connection ~ 1650 5550
Wire Wire Line
	1950 5850 1650 5850
Connection ~ 1650 5850
Wire Wire Line
	2250 5850 2350 5850
Wire Wire Line
	2350 5850 2350 5700
Wire Wire Line
	2350 5550 2250 5550
$Comp
L Device:C C?
U 1 1 63374253
P 1650 1750
F 0 "C?" H 1765 1796 50  0000 L CNN
F 1 "100nF" H 1700 1650 50  0000 L CNN
F 2 "" H 1688 1600 50  0001 C CNN
F 3 "~" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2300 1650 2150
Wire Wire Line
	1650 2150 1750 2150
Wire Wire Line
	1750 2150 1750 2300
Connection ~ 1650 2150
Wire Wire Line
	1650 2150 1650 1900
$Comp
L Device:C C?
U 1 1 6337E374
P 950 1750
F 0 "C?" H 1065 1796 50  0000 L CNN
F 1 "100nF" H 1000 1650 50  0000 L CNN
F 2 "" H 988 1600 50  0001 C CNN
F 3 "~" H 950 1750 50  0001 C CNN
	1    950  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1900 950  2600
Wire Wire Line
	950  2600 1050 2600
Wire Wire Line
	950  1600 950  1400
Wire Wire Line
	950  1300 1050 1300
Connection ~ 1050 1300
Wire Wire Line
	1650 1600 1650 1300
Text GLabel 2050 2150 2    50   Input ~ 0
+5V
Wire Wire Line
	2050 2150 1750 2150
Connection ~ 1750 2150
$Comp
L power:GND #PWR?
U 1 1 6339A276
P 1650 5300
F 0 "#PWR?" H 1650 5050 50  0001 C CNN
F 1 "GND" H 1655 5127 50  0000 C CNN
F 2 "" H 1650 5300 50  0001 C CNN
F 3 "" H 1650 5300 50  0001 C CNN
	1    1650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6339AA4A
P 2750 1300
F 0 "#PWR?" H 2750 1050 50  0001 C CNN
F 1 "GND" H 2755 1127 50  0000 C CNN
F 2 "" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6339B5B4
P 4850 7550
F 0 "#PWR?" H 4850 7300 50  0001 C CNN
F 1 "GND" H 4855 7377 50  0000 C CNN
F 2 "" H 4850 7550 50  0001 C CNN
F 3 "" H 4850 7550 50  0001 C CNN
	1    4850 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7550 4850 7450
Wire Wire Line
	6250 1700 6550 1700
Connection ~ 6550 1700
Wire Wire Line
	6550 1700 6550 2350
$Comp
L Device:C C?
U 1 1 633A727C
P 6850 1700
F 0 "C?" V 7050 1650 50  0000 L CNN
F 1 "10uF" V 6750 1800 50  0000 L CNN
F 2 "" H 6888 1550 50  0001 C CNN
F 3 "~" H 6850 1700 50  0001 C CNN
	1    6850 1700
	0    1    -1   0   
$EndComp
Wire Wire Line
	6700 1700 6550 1700
$Comp
L Device:C C?
U 1 1 633AD9DD
P 7150 2250
F 0 "C?" V 7350 2200 50  0000 L CNN
F 1 "1000pF" H 7250 2400 50  0000 L CNN
F 2 "" H 7188 2100 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    7150 2250
	1    0    0    1   
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 633AE78D
P 8850 1700
F 0 "L?" H 8850 1915 50  0000 C CNN
F 1 "82uH" H 8850 1824 50  0000 C CNN
F 2 "" H 8850 1700 50  0001 C CNN
F 3 "~" H 8850 1700 50  0001 C CNN
	1    8850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1700 7150 1700
Wire Wire Line
	7150 2100 7150 1700
Connection ~ 7150 1700
Wire Wire Line
	7150 1700 7800 1700
$Comp
L Relay:ADW11 K?
U 1 1 633BCCF0
P 8000 2200
F 0 "K?" H 7550 2200 50  0000 R CNN
F 1 "?" H 7550 2300 50  0000 R CNN
F 2 "Relay_THT:Relay_1P1T_NO_10x24x18.8mm_Panasonic_ADW11xxxxW_THT" H 9325 2150 50  0001 C CNN
F 3 "https://www.panasonic-electric-works.com/pew/es/downloads/ds_dw_hl_en.pdf" H 8000 2200 50  0001 C CNN
	1    8000 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 1700 7800 1900
Connection ~ 7800 1700
Wire Wire Line
	7800 1700 8550 1700
$Comp
L Device:C C?
U 1 1 633D8A8E
P 7700 2650
F 0 "C?" V 7900 2600 50  0000 L CNN
F 1 "1000pF" H 7400 2750 50  0000 L CNN
F 2 "" H 7738 2500 50  0001 C CNN
F 3 "~" H 7700 2650 50  0001 C CNN
	1    7700 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 2800 7700 3200
Wire Wire Line
	7700 3200 7150 3200
Connection ~ 6450 3200
Wire Wire Line
	7150 2400 7150 3200
Connection ~ 7150 3200
Wire Wire Line
	7150 3200 6450 3200
Text GLabel 8050 750  0    50   Input ~ 0
+11V
$Comp
L Diode:1N4148 D?
U 1 1 63436AD1
P 8600 2200
F 0 "D?" H 8600 2417 50  0000 C CNN
F 1 "1N4148" H 8600 2326 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8600 2025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8600 2200 50  0001 C CNN
	1    8600 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2050 8600 1850
Wire Wire Line
	8600 1850 8200 1850
Connection ~ 8200 1850
Wire Wire Line
	8200 1850 8200 1900
Wire Wire Line
	8600 2350 8600 2550
Wire Wire Line
	8600 2550 8200 2550
Wire Wire Line
	8200 2550 8200 2500
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 6344D029
P 8300 2900
F 0 "Q?" H 8491 2946 50  0000 L CNN
F 1 "BC548" H 8491 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8500 2825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 8300 2900 50  0001 L CNN
	1    8300 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 2700 8200 2550
Connection ~ 8200 2550
$Comp
L Device:R R?
U 1 1 63454E13
P 8550 3100
F 0 "R?" H 8620 3146 50  0000 L CNN
F 1 "100k" H 8600 3000 50  0000 L CNN
F 2 "" V 8480 3100 50  0001 C CNN
F 3 "~" H 8550 3100 50  0001 C CNN
	1    8550 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	8500 2900 8550 2900
Wire Wire Line
	8550 2900 8550 2950
Connection ~ 8550 2900
Wire Wire Line
	8550 3300 8550 3250
Wire Wire Line
	8550 3300 8200 3300
Wire Wire Line
	8200 3300 8200 3200
Connection ~ 8550 3300
Wire Wire Line
	7700 3200 8200 3200
Connection ~ 7700 3200
Connection ~ 8200 3200
Wire Wire Line
	8200 3200 8200 3100
$Comp
L Device:R R?
U 1 1 6347965C
P 8850 2900
F 0 "R?" V 8950 2850 50  0000 L CNN
F 1 "10k" V 8750 2800 50  0000 L CNN
F 2 "" V 8780 2900 50  0001 C CNN
F 3 "~" H 8850 2900 50  0001 C CNN
	1    8850 2900
	0    -1   1    0   
$EndComp
Text GLabel 9100 2800 1    50   Input ~ 0
RELAY_Cref
$Comp
L Relay:AZ850-x K?
U 1 1 6348A8F0
P 9850 2200
F 0 "K?" H 9220 2154 50  0000 R CNN
F 1 "?" H 9220 2245 50  0000 R CNN
F 2 "Relay_THT:Relay_DPDT_FRT5" H 10400 2250 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" H 9850 2200 50  0001 C CNN
	1    9850 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 1700 9450 1700
Wire Wire Line
	9450 1700 9450 1900
Wire Wire Line
	9350 2500 9350 3300
Wire Wire Line
	9850 1900 9850 1400
Wire Wire Line
	9850 1400 8550 1400
Wire Wire Line
	8550 1400 8550 1700
Connection ~ 8550 1700
Wire Wire Line
	8550 1700 8600 1700
Wire Wire Line
	9550 2500 9550 2600
Wire Wire Line
	9550 2600 9650 2600
Wire Wire Line
	9750 2600 9750 2500
Wire Wire Line
	9000 2900 9100 2900
Wire Wire Line
	9100 2900 9100 2800
$Comp
L Relay:DIPxx-1Cxx-51x K?
U 1 1 634C6DDB
P 9550 3900
F 0 "K?" H 9980 3946 50  0000 L CNN
F 1 "DIPxx-1Cxx-51x" H 9980 3855 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 10000 3850 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
NoConn ~ 9950 2500
Wire Wire Line
	9650 3600 9650 2600
Connection ~ 9650 2600
Wire Wire Line
	9650 2600 9750 2600
Wire Wire Line
	8200 750  8200 1850
Wire Wire Line
	8200 750  8050 750 
Wire Wire Line
	8200 750  10250 750 
Wire Wire Line
	10250 750  10250 1800
Connection ~ 8200 750 
Wire Wire Line
	8550 3300 9100 3300
Wire Wire Line
	8550 2900 8700 2900
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 635816A0
P 10350 2900
F 0 "Q?" H 10541 2946 50  0000 L CNN
F 1 "BC548" H 10541 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10550 2825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 10350 2900 50  0001 L CNN
	1    10350 2900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 635816A7
P 10600 3100
F 0 "R?" H 10670 3146 50  0000 L CNN
F 1 "100k" H 10350 3150 50  0000 L CNN
F 2 "" V 10530 3100 50  0001 C CNN
F 3 "~" H 10600 3100 50  0001 C CNN
	1    10600 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	10550 2900 10600 2900
Wire Wire Line
	10600 2900 10600 2950
Connection ~ 10600 2900
Wire Wire Line
	10250 3300 10250 3100
$Comp
L Device:R R?
U 1 1 635816B4
P 10850 2900
F 0 "R?" V 10950 2850 50  0000 L CNN
F 1 "10k" V 10750 2800 50  0000 L CNN
F 2 "" V 10780 2900 50  0001 C CNN
F 3 "~" H 10850 2900 50  0001 C CNN
	1    10850 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	10600 2900 10700 2900
Wire Wire Line
	10250 2500 10250 2600
Wire Wire Line
	9350 3300 10250 3300
Connection ~ 9350 3300
Wire Wire Line
	10600 3250 10600 3300
Wire Wire Line
	10600 3300 10250 3300
Connection ~ 10250 3300
Text GLabel 11150 2750 1    50   Input ~ 0
RELAY_gnd_Cx
Wire Wire Line
	11150 2750 11150 2900
Wire Wire Line
	11150 2900 11000 2900
Text GLabel 9300 3450 0    50   Input ~ 0
+11V
Wire Wire Line
	9300 3450 9350 3450
Wire Wire Line
	9350 3450 9350 3550
Text GLabel 10000 3500 2    50   Input ~ 0
ESR
Wire Wire Line
	10000 3500 9850 3500
Wire Wire Line
	9850 3500 9850 3600
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 635DA011
P 9250 4550
F 0 "Q?" H 9441 4596 50  0000 L CNN
F 1 "BC548" H 9441 4505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9450 4475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 9250 4550 50  0001 L CNN
	1    9250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4350 9350 4300
$Comp
L Device:R R?
U 1 1 635DA018
P 9000 4750
F 0 "R?" H 9070 4796 50  0000 L CNN
F 1 "100k" H 9050 4650 50  0000 L CNN
F 2 "" V 8930 4750 50  0001 C CNN
F 3 "~" H 9000 4750 50  0001 C CNN
	1    9000 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 4550 9000 4550
Wire Wire Line
	9000 4550 9000 4600
Connection ~ 9000 4550
$Comp
L Device:R R?
U 1 1 635DA025
P 8700 4550
F 0 "R?" V 8800 4500 50  0000 L CNN
F 1 "10k" V 8600 4450 50  0000 L CNN
F 2 "" V 8630 4550 50  0001 C CNN
F 3 "~" H 8700 4550 50  0001 C CNN
	1    8700 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 4550 8450 4550
Wire Wire Line
	8450 4550 8450 4450
Wire Wire Line
	9000 4550 8850 4550
Wire Wire Line
	9350 4750 9350 4950
Wire Wire Line
	9350 4950 9000 4950
Wire Wire Line
	9000 4950 9000 4900
$Comp
L Device:C C?
U 1 1 635EDE99
P 3700 1750
F 0 "C?" H 3815 1796 50  0000 L CNN
F 1 "100nF" H 3750 1650 50  0000 L CNN
F 2 "" H 3738 1600 50  0001 C CNN
F 3 "~" H 3700 1750 50  0001 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 3700 1400
Wire Wire Line
	3700 1400 4000 1400
Connection ~ 4000 1400
Wire Wire Line
	3700 1900 3700 3200
Wire Wire Line
	3700 3200 3950 3200
Connection ~ 3950 3200
$Comp
L Device:C C?
U 1 1 6360DBC4
P 5450 2550
F 0 "C?" H 5565 2596 50  0000 L CNN
F 1 "100nF" H 5500 2450 50  0000 L CNN
F 2 "" H 5488 2400 50  0001 C CNN
F 3 "~" H 5450 2550 50  0001 C CNN
	1    5450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2700 5450 3200
Connection ~ 5450 3200
Wire Wire Line
	5450 3200 6050 3200
Wire Wire Line
	5450 2400 5450 750 
Connection ~ 5450 750 
Wire Wire Line
	5450 750  4550 750 
Wire Wire Line
	6050 1500 6050 750 
Connection ~ 6050 750 
Wire Wire Line
	6050 750  5600 750 
Wire Wire Line
	6050 2150 6050 3200
Connection ~ 6050 2150
Connection ~ 6050 3200
Wire Wire Line
	6050 3200 6450 3200
$Comp
L Device:C C?
U 1 1 63646455
P 9100 3100
F 0 "C?" H 9215 3146 50  0000 L CNN
F 1 "100nF" H 9150 3000 50  0000 L CNN
F 2 "" H 9138 2950 50  0001 C CNN
F 3 "~" H 9100 3100 50  0001 C CNN
	1    9100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2950 9100 2900
Connection ~ 9100 2900
Wire Wire Line
	9100 3250 9100 3300
Connection ~ 9100 3300
Wire Wire Line
	9100 3300 9350 3300
$Comp
L Device:C C?
U 1 1 6365DBC1
P 11150 3100
F 0 "C?" H 11265 3146 50  0000 L CNN
F 1 "100nF" H 11250 3200 50  0000 L CNN
F 2 "" H 11188 2950 50  0001 C CNN
F 3 "~" H 11150 3100 50  0001 C CNN
	1    11150 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	11150 2950 11150 2900
Connection ~ 11150 2900
Wire Wire Line
	11150 3250 11150 3300
Wire Wire Line
	11150 3300 10600 3300
Connection ~ 10600 3300
Text GLabel 2400 4800 2    50   Input ~ 0
RELAY_gnd_Cx
Wire Wire Line
	2400 4800 2250 4800
Text GLabel 8450 4450 1    50   Input ~ 0
RELAY|LC|ESR
Text GLabel 2400 4900 2    50   Input ~ 0
RELAY|LC|ESR
Wire Wire Line
	2250 4900 2400 4900
$Comp
L Device:C C?
U 1 1 6369B87C
P 8450 4750
F 0 "C?" H 8565 4796 50  0000 L CNN
F 1 "100nF" H 8550 4850 50  0000 L CNN
F 2 "" H 8488 4600 50  0001 C CNN
F 3 "~" H 8450 4750 50  0001 C CNN
	1    8450 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 4600 8450 4550
Connection ~ 8450 4550
Wire Wire Line
	8450 4950 8450 4900
Wire Wire Line
	8450 4950 9000 4950
Connection ~ 9000 4950
$Comp
L power:GND #PWR?
U 1 1 636C0B99
P 9350 5050
F 0 "#PWR?" H 9350 4800 50  0001 C CNN
F 1 "GND" H 9355 4877 50  0000 C CNN
F 2 "" H 9350 5050 50  0001 C CNN
F 3 "" H 9350 5050 50  0001 C CNN
	1    9350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5050 9350 5000
Connection ~ 9350 4950
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 636CE107
P 9950 5300
F 0 "J?" V 9822 5480 50  0000 L CNN
F 1 "Screw_Terminal_01x03" V 9913 5480 50  0000 L CNN
F 2 "" H 9950 5300 50  0001 C CNN
F 3 "~" H 9950 5300 50  0001 C CNN
	1    9950 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 4200 9750 4450
Wire Wire Line
	9750 4450 10050 4450
Wire Wire Line
	10050 4450 10050 5100
Wire Wire Line
	9850 5100 9850 5000
Wire Wire Line
	9850 5000 9350 5000
Connection ~ 9350 5000
Wire Wire Line
	9350 5000 9350 4950
NoConn ~ 9950 5100
$Comp
L Diode:1N4148 D?
U 1 1 63705B0E
P 10700 2200
F 0 "D?" H 10700 2417 50  0000 C CNN
F 1 "1N4148" H 10700 2326 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 10700 2025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10700 2200 50  0001 C CNN
	1    10700 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 2050 10700 1800
Wire Wire Line
	10700 1800 10250 1800
Connection ~ 10250 1800
Wire Wire Line
	10250 1800 10250 1900
Wire Wire Line
	10700 2350 10700 2600
Wire Wire Line
	10700 2600 10250 2600
Connection ~ 10250 2600
Wire Wire Line
	10250 2600 10250 2700
$Comp
L Diode:1N4148 D?
U 1 1 6372232A
P 9050 3900
F 0 "D?" H 9050 4117 50  0000 C CNN
F 1 "1N4148" H 9050 4026 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9050 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9050 3900 50  0001 C CNN
	1    9050 3900
	0    -1   1    0   
$EndComp
Wire Wire Line
	9050 3750 9050 3550
Wire Wire Line
	9050 3550 9350 3550
Connection ~ 9350 3550
Wire Wire Line
	9350 3550 9350 3600
Wire Wire Line
	9050 4050 9050 4300
Wire Wire Line
	9050 4300 9350 4300
Connection ~ 9350 4300
Wire Wire Line
	9350 4300 9350 4200
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 6338C61A
P 1050 7000
F 0 "SW?" V 1004 7148 50  0000 L CNN
F 1 "L" V 1095 7148 50  0000 L CNN
F 2 "" H 1050 7200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1050 7200 50  0001 C CNN
	1    1050 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6338C812
P 1050 6450
F 0 "R?" H 1120 6496 50  0000 L CNN
F 1 "10k" H 1100 6350 50  0000 L CNN
F 2 "" V 980 6450 50  0001 C CNN
F 3 "~" H 1050 6450 50  0001 C CNN
	1    1050 6450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 6338CD35
P 1300 6450
F 0 "D?" H 1300 6667 50  0000 C CNN
F 1 "1N4148" H 1300 6576 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1300 6275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1300 6450 50  0001 C CNN
	1    1300 6450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6338DA68
P 850 7000
F 0 "C?" H 965 7046 50  0000 L CNN
F 1 "100nF" H 950 7100 50  0000 L CNN
F 2 "" H 888 6850 50  0001 C CNN
F 3 "~" H 850 7000 50  0001 C CNN
	1    850  7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 6600 1050 6700
Wire Wire Line
	1050 6700 850  6700
Wire Wire Line
	850  6700 850  6850
Connection ~ 1050 6700
Wire Wire Line
	1050 6700 1050 6800
Wire Wire Line
	1050 6700 1300 6700
Wire Wire Line
	1300 6700 1300 6600
Wire Wire Line
	1050 6300 1050 6200
Wire Wire Line
	1050 6200 1300 6200
Wire Wire Line
	1300 6200 1300 6300
Wire Wire Line
	850  7150 850  7250
Wire Wire Line
	850  7250 950  7250
Wire Wire Line
	1050 7250 1050 7200
$Comp
L power:GND #PWR?
U 1 1 633DD952
P 950 7350
F 0 "#PWR?" H 950 7100 50  0001 C CNN
F 1 "GND" H 955 7177 50  0000 C CNN
F 2 "" H 950 7350 50  0001 C CNN
F 3 "" H 950 7350 50  0001 C CNN
	1    950  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7350 950  7250
Connection ~ 950  7250
Wire Wire Line
	950  7250 1050 7250
Text GLabel 1500 6700 2    50   Input ~ 0
L-mode
Wire Wire Line
	1500 6700 1300 6700
Connection ~ 1300 6700
Connection ~ 1300 6200
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 6341297B
P 2100 7000
F 0 "SW?" V 2054 7148 50  0000 L CNN
F 1 "C" V 2145 7148 50  0000 L CNN
F 2 "" H 2100 7200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2100 7200 50  0001 C CNN
	1    2100 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63412981
P 2100 6450
F 0 "R?" H 2170 6496 50  0000 L CNN
F 1 "10k" H 2150 6350 50  0000 L CNN
F 2 "" V 2030 6450 50  0001 C CNN
F 3 "~" H 2100 6450 50  0001 C CNN
	1    2100 6450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 63412987
P 2350 6450
F 0 "D?" H 2350 6667 50  0000 C CNN
F 1 "1N4148" H 2350 6576 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2350 6275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2350 6450 50  0001 C CNN
	1    2350 6450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6341298D
P 1900 7000
F 0 "C?" H 2015 7046 50  0000 L CNN
F 1 "100nF" H 2000 7100 50  0000 L CNN
F 2 "" H 1938 6850 50  0001 C CNN
F 3 "~" H 1900 7000 50  0001 C CNN
	1    1900 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 6600 2100 6700
Wire Wire Line
	2100 6700 1900 6700
Wire Wire Line
	1900 6700 1900 6850
Connection ~ 2100 6700
Wire Wire Line
	2100 6700 2100 6800
Wire Wire Line
	2100 6700 2350 6700
Wire Wire Line
	2350 6700 2350 6600
Wire Wire Line
	2100 6300 2100 6200
Wire Wire Line
	2100 6200 2350 6200
Wire Wire Line
	2350 6200 2350 6300
Wire Wire Line
	1900 7150 1900 7250
Wire Wire Line
	1900 7250 2000 7250
Wire Wire Line
	2100 7250 2100 7200
$Comp
L power:GND #PWR?
U 1 1 634129A0
P 2000 7350
F 0 "#PWR?" H 2000 7100 50  0001 C CNN
F 1 "GND" H 2005 7177 50  0000 C CNN
F 2 "" H 2000 7350 50  0001 C CNN
F 3 "" H 2000 7350 50  0001 C CNN
	1    2000 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7350 2000 7250
Connection ~ 2000 7250
Wire Wire Line
	2000 7250 2100 7250
Text GLabel 2550 6700 2    50   Input ~ 0
C-mode
Wire Wire Line
	2550 6700 2350 6700
Connection ~ 2350 6700
Connection ~ 2350 6200
Wire Wire Line
	1300 6200 2100 6200
Connection ~ 2100 6200
Text GLabel 2400 5000 2    50   Input ~ 0
L-mode
Wire Wire Line
	2250 5000 2400 5000
Text GLabel 3450 5850 2    50   Input ~ 0
+5V
Text GLabel 2950 5850 0    50   Input ~ 0
+5V
$Comp
L Device:R R?
U 1 1 6346AF4B
P 3050 3000
F 0 "R?" V 3100 2750 50  0000 L CNN
F 1 "1k" V 3050 2950 50  0000 L CNN
F 2 "" V 2980 3000 50  0001 C CNN
F 3 "~" H 3050 3000 50  0001 C CNN
	1    3050 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6346B284
P 3050 3100
F 0 "R?" V 3100 2850 50  0000 L CNN
F 1 "1k" V 3050 3050 50  0000 L CNN
F 2 "" V 2980 3100 50  0001 C CNN
F 3 "~" H 3050 3100 50  0001 C CNN
	1    3050 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J?
U 1 1 63453943
P 3150 5650
F 0 "J?" H 3200 5967 50  0000 C CNN
F 1 "SPI programmer" H 3200 5900 50  0000 C CNN
F 2 "" H 3150 5650 50  0001 C CNN
F 3 "~" H 3150 5650 50  0001 C CNN
	1    3150 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3100 2800 3100
Text GLabel 3350 3100 2    50   Input ~ 0
SCK
Text GLabel 3350 3000 2    50   Input ~ 0
MISO
Text GLabel 3350 2900 2    50   Input ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 63509823
P 3050 2900
F 0 "R?" V 3100 2650 50  0000 L CNN
F 1 "1k" V 3050 2850 50  0000 L CNN
F 2 "" V 2980 2900 50  0001 C CNN
F 3 "~" H 3050 2900 50  0001 C CNN
	1    3050 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 2900 3350 2900
Wire Wire Line
	3200 3000 3350 3000
Wire Wire Line
	3200 3100 3350 3100
Wire Wire Line
	2250 3000 2900 3000
Wire Wire Line
	2900 2900 2700 2900
Text GLabel 2450 3200 2    50   Input ~ 0
Xtal1
Text GLabel 2450 3300 2    50   Input ~ 0
Xtal2
Wire Wire Line
	2250 3200 2450 3200
Wire Wire Line
	2250 3300 2450 3300
Text GLabel 1050 5750 0    50   Input ~ 0
Xtal1
Text GLabel 1050 5650 0    50   Input ~ 0
Xtal2
$Comp
L power:GND #PWR?
U 1 1 635F935E
P 2350 5700
F 0 "#PWR?" H 2350 5450 50  0001 C CNN
F 1 "GND" H 2355 5527 50  0000 C CNN
F 2 "" H 2350 5700 50  0001 C CNN
F 3 "" H 2350 5700 50  0001 C CNN
	1    2350 5700
	0    -1   -1   0   
$EndComp
Connection ~ 2350 5700
Wire Wire Line
	2350 5700 2350 5550
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 635FCBBE
P 3300 7000
F 0 "SW?" V 3254 7148 50  0000 L CNN
F 1 "C" V 3345 7148 50  0000 L CNN
F 2 "" H 3300 7200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3300 7200 50  0001 C CNN
	1    3300 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 635FCBC4
P 3300 6450
F 0 "R?" H 3370 6496 50  0000 L CNN
F 1 "100k" H 3350 6350 50  0000 L CNN
F 2 "" V 3230 6450 50  0001 C CNN
F 3 "~" H 3300 6450 50  0001 C CNN
	1    3300 6450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 635FCBCA
P 3550 6450
F 0 "D?" H 3550 6667 50  0000 C CNN
F 1 "1N4148" H 3550 6576 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3550 6275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3550 6450 50  0001 C CNN
	1    3550 6450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 635FCBD0
P 3100 7000
F 0 "C?" H 3215 7046 50  0000 L CNN
F 1 "100nF" H 3200 7100 50  0000 L CNN
F 2 "" H 3138 6850 50  0001 C CNN
F 3 "~" H 3100 7000 50  0001 C CNN
	1    3100 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 6600 3300 6700
Wire Wire Line
	3300 6700 3100 6700
Wire Wire Line
	3100 6700 3100 6850
Connection ~ 3300 6700
Wire Wire Line
	3300 6700 3300 6800
Wire Wire Line
	3300 6700 3550 6700
Wire Wire Line
	3550 6700 3550 6600
Wire Wire Line
	3300 6300 3300 6200
Wire Wire Line
	3300 6200 3550 6200
Wire Wire Line
	3550 6200 3550 6300
Wire Wire Line
	3100 7150 3100 7250
Wire Wire Line
	3100 7250 3200 7250
Wire Wire Line
	3300 7250 3300 7200
$Comp
L power:GND #PWR?
U 1 1 635FCBE3
P 3200 7350
F 0 "#PWR?" H 3200 7100 50  0001 C CNN
F 1 "GND" H 3205 7177 50  0000 C CNN
F 2 "" H 3200 7350 50  0001 C CNN
F 3 "" H 3200 7350 50  0001 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7350 3200 7250
Connection ~ 3200 7250
Wire Wire Line
	3200 7250 3300 7250
Text GLabel 3750 6700 2    50   Input ~ 0
RESET
Wire Wire Line
	3750 6700 3550 6700
Connection ~ 3550 6700
Text GLabel 3750 6200 2    50   Input ~ 0
+5V
Wire Wire Line
	3750 6200 3550 6200
Connection ~ 3550 6200
Connection ~ 3300 6200
Wire Wire Line
	2350 6200 3300 6200
Text GLabel 3450 5650 2    50   Input ~ 0
RESET
Text GLabel 2950 5650 0    50   Input ~ 0
SCK
Text GLabel 2950 5550 0    50   Input ~ 0
MISO
Text GLabel 3450 5550 2    50   Input ~ 0
MOSI
Text GLabel 900  1400 0    50   Input ~ 0
GND
Wire Wire Line
	900  1400 950  1400
Connection ~ 950  1400
Wire Wire Line
	950  1400 950  1300
Text GLabel 2950 5750 0    50   Input ~ 0
GND
Text GLabel 3450 5750 2    50   Input ~ 0
GND
$Comp
L Connector_Generic_MountingPin:Conn_01x05_MountingPin J?
U 1 1 6364C410
P 4550 5650
F 0 "J?" H 4500 6050 50  0000 L CNN
F 1 "LowSpeed_SPI_display_conn" H 4050 5950 50  0000 L CNN
F 2 "" H 4550 5650 50  0001 C CNN
F 3 "~" H 4550 5650 50  0001 C CNN
	1    4550 5650
	1    0    0    -1  
$EndComp
Text GLabel 3050 2700 2    50   Input ~ 0
Display_SCK
Wire Wire Line
	3050 2700 2800 2700
Wire Wire Line
	2800 2700 2800 3100
Connection ~ 2800 3100
Wire Wire Line
	2800 3100 2900 3100
Text GLabel 3050 2600 2    50   Input ~ 0
DIsplay_MOSI
Wire Wire Line
	3050 2600 2700 2600
Wire Wire Line
	2700 2600 2700 2900
Connection ~ 2700 2900
Wire Wire Line
	2700 2900 2250 2900
Text GLabel 3050 2500 2    50   Input ~ 0
DIsplay_CS
Wire Wire Line
	3050 2500 2600 2500
Wire Wire Line
	2600 2500 2600 2800
Wire Wire Line
	2600 2800 2250 2800
Text GLabel 4350 5450 0    50   Input ~ 0
Display_SCK
Text GLabel 4350 5550 0    50   Input ~ 0
DIsplay_MOSI
Text GLabel 4350 5650 0    50   Input ~ 0
DIsplay_CS
Text GLabel 4350 5750 0    50   Input ~ 0
+5V
Text GLabel 4350 5850 0    50   Input ~ 0
GND
NoConn ~ 4550 6050
Text GLabel 3100 2400 2    50   Input ~ 0
C-mode
Wire Wire Line
	3100 2400 2500 2400
Wire Wire Line
	2500 2400 2500 2600
Wire Wire Line
	2500 2600 2250 2600
Text GLabel 2450 3500 2    50   Input ~ 0
A0_ESR_OUTPUT
Wire Wire Line
	2450 3500 2250 3500
Text GLabel 2450 3600 2    50   Input ~ 0
A1_BatteryLevel
Wire Wire Line
	2450 3600 2250 3600
Text GLabel 2400 4600 2    50   Input ~ 0
INT1_?
Wire Wire Line
	2250 4600 2400 4600
$Comp
L Device:Speaker LS?
U 1 1 637D1108
P 8200 5600
F 0 "LS?" H 8370 5596 50  0000 L CNN
F 1 "Speaker" H 8370 5505 50  0000 L CNN
F 2 "" H 8200 5400 50  0001 C CNN
F 3 "~" H 8190 5550 50  0001 C CNN
	1    8200 5600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 637D1632
P 7850 6050
F 0 "Q?" H 8041 6096 50  0000 L CNN
F 1 "BC548" H 8041 6005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8050 5975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 7850 6050 50  0001 L CNN
	1    7850 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 637D25FE
P 7300 6050
F 0 "R?" V 7400 6000 50  0000 L CNN
F 1 "10k" V 7200 5950 50  0000 L CNN
F 2 "" V 7230 6050 50  0001 C CNN
F 3 "~" H 7300 6050 50  0001 C CNN
	1    7300 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 637D2D1D
P 7550 6300
F 0 "R?" H 7620 6346 50  0000 L CNN
F 1 "100k" H 7600 6200 50  0000 L CNN
F 2 "" V 7480 6300 50  0001 C CNN
F 3 "~" H 7550 6300 50  0001 C CNN
	1    7550 6300
	1    0    0    -1  
$EndComp
Text GLabel 7950 5450 1    50   Input ~ 0
+5V
Wire Wire Line
	7950 5600 8000 5600
Wire Wire Line
	7950 5450 7950 5600
Wire Wire Line
	7950 5700 8000 5700
Wire Wire Line
	7950 5700 7950 5850
Wire Wire Line
	7550 6450 7550 6500
Wire Wire Line
	7550 6500 7950 6500
Wire Wire Line
	7950 6500 7950 6250
Wire Wire Line
	7650 6050 7550 6050
Wire Wire Line
	7550 6150 7550 6050
Connection ~ 7550 6050
Wire Wire Line
	7550 6050 7450 6050
$EndSCHEMATC

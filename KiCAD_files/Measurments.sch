EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 4
Title ""
Date "20/04/15"
Rev ""
Comp "https://redmine.laas.fr/laas/owntech-5-phase-board.git"
Comment1 "ALINEI"
Comment2 "VILLA"
Comment3 "VILLA"
Comment4 "PREL"
$EndDescr
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 5EA31F66
P 1900 4900
AR Path="/5EA31F66" Ref="U?"  Part="1" 
AR Path="/5E9B5CA6/5EA31F66" Ref="U9"  Part="1" 
F 0 "U9" V 1946 4259 50  0000 R CNN
F 1 "MCP3208" V 1855 4259 50  0000 R CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2000 5000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 2000 5000 50  0001 C CNN
	1    1900 4900
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5EA31F84
P 7450 8950
AR Path="/5EA31F84" Ref="U?"  Part="5" 
AR Path="/5E9B5CA6/5EA31F84" Ref="U11"  Part="5" 
F 0 "U11" H 7408 8996 50  0000 L CNN
F 1 "TL074" H 7408 8905 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7400 9050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7500 9150 50  0001 C CNN
	5    7450 8950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA31F93
P 5050 2450
AR Path="/5EA31F93" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA31F93" Ref="C15"  Part="1" 
F 0 "C15" V 4821 2450 50  0000 C CNN
F 1 "C_Small" V 4912 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5050 2450 50  0001 C CNN
F 3 "~" H 5050 2450 50  0001 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA31F9A
P 6100 3300
AR Path="/5EA31F9A" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA31F9A" Ref="C17"  Part="1" 
F 0 "C17" V 5871 3300 50  0000 C CNN
F 1 "C_Small" V 5962 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6100 3300 50  0001 C CNN
F 3 "~" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA31FB5
P 1200 4700
AR Path="/5EA31FB5" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA31FB5" Ref="C16"  Part="1" 
F 0 "C16" H 1292 4746 50  0000 L CNN
F 1 "C_Small" H 1292 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1200 4700 50  0001 C CNN
F 3 "~" H 1200 4700 50  0001 C CNN
	1    1200 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5P #PWR?
U 1 1 5EA31FCD
P 5050 2000
AR Path="/5EA31FCD" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA31FCD" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 5050 1850 50  0001 C CNN
F 1 "+5P" V 5065 2128 50  0000 L CNN
F 2 "" H 5050 2000 50  0001 C CNN
F 3 "" H 5050 2000 50  0001 C CNN
	1    5050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4700 2500 5000
Wire Wire Line
	2500 4700 2650 4700
Connection ~ 2500 4700
$Comp
L Isolator:ISO7341FC U?
U 1 1 5EA31FD8
P 2200 2700
AR Path="/5EA31FD8" Ref="U?"  Part="1" 
AR Path="/5E9B5CA6/5EA31FD8" Ref="U10"  Part="1" 
F 0 "U10" H 2200 3367 50  0000 C CNN
F 1 "ISO7341FC" H 2200 3276 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 2200 2150 50  0001 C CIN
F 3 "http://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=iso7341fc&fileType=pdf" H 2200 3100 50  0001 C CNN
	1    2200 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA31FE5
P 2700 3300
AR Path="/5EA31FE5" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA31FE5" Ref="C18"  Part="1" 
F 0 "C18" V 2471 3300 50  0000 C CNN
F 1 "C_Small" V 2562 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 3300 50  0001 C CNN
F 3 "~" H 2700 3300 50  0001 C CNN
	1    2700 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3100 2800 3100
Wire Wire Line
	2800 3100 2800 3300
Wire Wire Line
	2500 3100 2500 3300
Wire Wire Line
	2500 3300 2600 3300
Connection ~ 2800 3300
$Comp
L power:+5P #PWR?
U 1 1 5EA31FF3
P 3050 3300
AR Path="/5EA31FF3" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA31FF3" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 3050 3150 50  0001 C CNN
F 1 "+5P" H 3065 3473 50  0000 C CNN
F 2 "" H 3050 3300 50  0001 C CNN
F 3 "" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA31FF9
P 9000 6150
AR Path="/5EA31FF9" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA31FF9" Ref="R20"  Part="1" 
F 0 "R20" H 9059 6196 50  0000 L CNN
F 1 "R_Small" H 9059 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9000 6150 50  0001 C CNN
F 3 "~" H 9000 6150 50  0001 C CNN
	1    9000 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA32000
P 9450 6150
AR Path="/5EA32000" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32000" Ref="R24"  Part="1" 
F 0 "R24" H 9509 6196 50  0000 L CNN
F 1 "R_Small" H 9509 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9450 6150 50  0001 C CNN
F 3 "~" H 9450 6150 50  0001 C CNN
	1    9450 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA32007
P 9900 6150
AR Path="/5EA32007" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32007" Ref="R28"  Part="1" 
F 0 "R28" H 9959 6196 50  0000 L CNN
F 1 "R_Small" H 9959 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9900 6150 50  0001 C CNN
F 3 "~" H 9900 6150 50  0001 C CNN
	1    9900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA3200E
P 10350 6150
AR Path="/5EA3200E" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA3200E" Ref="R30"  Part="1" 
F 0 "R30" H 10409 6196 50  0000 L CNN
F 1 "R_Small" H 10409 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10350 6150 50  0001 C CNN
F 3 "~" H 10350 6150 50  0001 C CNN
	1    10350 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA32015
P 9000 6450
AR Path="/5EA32015" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32015" Ref="R21"  Part="1" 
F 0 "R21" H 9059 6496 50  0000 L CNN
F 1 "R_Small" H 9059 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9000 6450 50  0001 C CNN
F 3 "~" H 9000 6450 50  0001 C CNN
	1    9000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 6050 9450 6050
Connection ~ 9450 6050
Wire Wire Line
	9450 6050 9900 6050
Connection ~ 9900 6050
Wire Wire Line
	9900 6050 10350 6050
Wire Wire Line
	9450 6250 9900 6250
Connection ~ 9450 6250
Connection ~ 9900 6250
Wire Wire Line
	9900 6250 10350 6250
Wire Wire Line
	9000 6250 9000 6350
Wire Wire Line
	9450 6250 9000 6250
Connection ~ 9000 6250
$Comp
L Device:R_Small R?
U 1 1 5EA32033
P 9000 5450
AR Path="/5EA32033" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32033" Ref="R23"  Part="1" 
F 0 "R23" H 9059 5496 50  0000 L CNN
F 1 "R_Small" H 9059 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9000 5450 50  0001 C CNN
F 3 "~" H 9000 5450 50  0001 C CNN
	1    9000 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA3203A
P 9450 5450
AR Path="/5EA3203A" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA3203A" Ref="R25"  Part="1" 
F 0 "R25" H 9509 5496 50  0000 L CNN
F 1 "R_Small" H 9509 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9450 5450 50  0001 C CNN
F 3 "~" H 9450 5450 50  0001 C CNN
	1    9450 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA32041
P 9900 5450
AR Path="/5EA32041" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32041" Ref="R29"  Part="1" 
F 0 "R29" H 9959 5496 50  0000 L CNN
F 1 "R_Small" H 9959 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9900 5450 50  0001 C CNN
F 3 "~" H 9900 5450 50  0001 C CNN
	1    9900 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA32048
P 10350 5450
AR Path="/5EA32048" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32048" Ref="R31"  Part="1" 
F 0 "R31" H 10409 5496 50  0000 L CNN
F 1 "R_Small" H 10409 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10350 5450 50  0001 C CNN
F 3 "~" H 10350 5450 50  0001 C CNN
	1    10350 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA3204F
P 9000 5150
AR Path="/5EA3204F" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA3204F" Ref="R22"  Part="1" 
F 0 "R22" H 9059 5196 50  0000 L CNN
F 1 "R_Small" H 9059 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9000 5150 50  0001 C CNN
F 3 "~" H 9000 5150 50  0001 C CNN
	1    9000 5150
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 5550 9450 5550
Connection ~ 9450 5550
Wire Wire Line
	9450 5550 9900 5550
Connection ~ 9900 5550
Wire Wire Line
	9900 5550 10350 5550
Wire Wire Line
	9450 5350 9900 5350
Connection ~ 9450 5350
Connection ~ 9900 5350
Wire Wire Line
	9900 5350 10350 5350
Wire Wire Line
	9000 5350 9000 5250
Wire Wire Line
	9450 5350 9000 5350
Connection ~ 9000 5350
$Comp
L power:-5V #PWR?
U 1 1 5EA32072
P 7350 9500
AR Path="/5EA32072" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA32072" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 7350 9600 50  0001 C CNN
F 1 "-5V" H 7365 9673 50  0000 C CNN
F 2 "" H 7350 9500 50  0001 C CNN
F 3 "" H 7350 9500 50  0001 C CNN
	1    7350 9500
	-1   0    0    1   
$EndComp
$Comp
L power:+5P #PWR?
U 1 1 5EA3207B
P 7350 8550
AR Path="/5EA3207B" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA3207B" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 7350 8400 50  0001 C CNN
F 1 "+5P" H 7365 8723 50  0000 C CNN
F 2 "" H 7350 8550 50  0001 C CNN
F 3 "" H 7350 8550 50  0001 C CNN
	1    7350 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 8650 7350 8550
$Comp
L Reference_Voltage:REF3020 U?
U 1 1 5EA32091
P 5500 4600
AR Path="/5EA32091" Ref="U?"  Part="1" 
AR Path="/5E9B5CA6/5EA32091" Ref="U7"  Part="1" 
F 0 "U7" H 5270 4646 50  0000 R CNN
F 1 "REF3020" H 5270 4555 50  0000 R CIN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5500 4150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref3033.pdf" H 5600 4250 50  0001 C CIN
	1    5500 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5P #PWR?
U 1 1 5EA320A2
P 5400 4200
AR Path="/5EA320A2" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA320A2" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 5400 4050 50  0001 C CNN
F 1 "+5P" H 5415 4373 50  0000 C CNN
F 2 "" H 5400 4200 50  0001 C CNN
F 3 "" H 5400 4200 50  0001 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4200 5400 4250
Wire Wire Line
	1700 5500 1700 5850
Wire Wire Line
	1900 5500 1900 5850
Wire Wire Line
	1800 5500 1800 5850
$Comp
L Connector_Generic:Conn_01x04 J_15V?
U 1 1 5EA320C6
P 1700 5650
AR Path="/5EA320C6" Ref="J_15V?"  Part="1" 
AR Path="/5E9B5CA6/5EA320C6" Ref="J_15V2"  Part="1" 
F 0 "J_15V2" V 1666 5362 50  0000 R CNN
F 1 "Conn_01x04" V 1575 5362 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 1700 5650 50  0001 C CNN
F 3 "~" H 1700 5650 50  0001 C CNN
	1    1700 5650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_15V?
U 1 1 5EA320CD
P 2100 5650
AR Path="/5EA320CD" Ref="J_15V?"  Part="1" 
AR Path="/5E9B5CA6/5EA320CD" Ref="J_15V5"  Part="1" 
F 0 "J_15V5" V 2066 5362 50  0000 R CNN
F 1 "Conn_01x04" V 1975 5362 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 2100 5650 50  0001 C CNN
F 3 "~" H 2100 5650 50  0001 C CNN
	1    2100 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 5500 2100 5850
Wire Wire Line
	2200 5500 2200 5850
Wire Wire Line
	2300 5500 2300 5850
Wire Wire Line
	1900 3100 1900 3250
Wire Wire Line
	1900 3400 1800 3400
Wire Wire Line
	1800 3500 1850 3500
Wire Wire Line
	1850 3500 1850 3250
Wire Wire Line
	1850 3250 1900 3250
Wire Wire Line
	1800 3100 1800 3400
Connection ~ 1600 5850
Wire Wire Line
	1600 5850 1600 5500
Connection ~ 1700 5850
Wire Wire Line
	1700 5850 1700 6800
Connection ~ 1800 5850
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5EA3212D
P 8800 2700
AR Path="/5EA3212D" Ref="J?"  Part="1" 
AR Path="/5E9B5CA6/5EA3212D" Ref="J8"  Part="1" 
F 0 "J8" H 8880 2692 50  0000 L CNN
F 1 "Conn_01x04" H 8880 2601 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical" H 8800 2700 50  0001 C CNN
F 3 "~" H 8800 2700 50  0001 C CNN
	1    8800 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:+5P #PWR?
U 1 1 5EA32134
P 9100 2600
AR Path="/5EA32134" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA32134" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 9100 2450 50  0001 C CNN
F 1 "+5P" H 9115 2773 50  0000 C CNN
F 2 "" H 9100 2600 50  0001 C CNN
F 3 "" H 9100 2600 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5EA3213A
P 9100 2900
AR Path="/5EA3213A" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA3213A" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 9100 3000 50  0001 C CNN
F 1 "-5V" V 9115 3028 50  0000 L CNN
F 2 "" H 9100 2900 50  0001 C CNN
F 3 "" H 9100 2900 50  0001 C CNN
	1    9100 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 2900 9000 2900
Wire Wire Line
	9100 2600 9000 2600
Wire Wire Line
	9000 2800 9000 2750
Wire Wire Line
	9000 2700 9000 2750
Connection ~ 9000 2750
$Comp
L Connector_Generic:Conn_01x04 J_5V?
U 1 1 5EA3214C
P 8800 2000
AR Path="/5EA3214C" Ref="J_5V?"  Part="1" 
AR Path="/5E9B5CA6/5EA3214C" Ref="J_5V2"  Part="1" 
F 0 "J_5V2" V 8766 1712 50  0000 R CNN
F 1 "Conn_01x04" V 8675 1712 50  0000 R CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical" H 8800 2000 50  0001 C CNN
F 3 "~" H 8800 2000 50  0001 C CNN
	1    8800 2000
	-1   0    0    1   
$EndComp
$Comp
L power:+5C #PWR?
U 1 1 5EA32153
P 9100 2100
AR Path="/5EA32153" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA32153" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 9100 1950 50  0001 C CNN
F 1 "+5C" H 9115 2273 50  0000 C CNN
F 2 "" H 9100 2100 50  0001 C CNN
F 3 "" H 9100 2100 50  0001 C CNN
	1    9100 2100
	0    1    -1   0   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5EA32159
P 9100 1800
AR Path="/5EA32159" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA32159" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 9100 1550 50  0001 C CNN
F 1 "GNDD" H 9104 1645 50  0000 C CNN
F 2 "" H 9100 1800 50  0001 C CNN
F 3 "" H 9100 1800 50  0001 C CNN
	1    9100 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 1800 9000 1800
Wire Wire Line
	9100 2100 9000 2100
Wire Wire Line
	9000 2000 9000 2100
Connection ~ 9000 2100
Wire Wire Line
	9000 1900 9000 1800
Connection ~ 9000 1800
$Comp
L Device:C_Small C?
U 1 1 5EA32165
P 2800 2250
AR Path="/5EA32165" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA32165" Ref="C19"  Part="1" 
F 0 "C19" V 2571 2250 50  0000 C CNN
F 1 "C_Small" V 2662 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2800 2250 50  0001 C CNN
F 3 "~" H 2800 2250 50  0001 C CNN
	1    2800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2250 2700 2250
Connection ~ 2600 2250
Wire Wire Line
	2600 2250 2600 2300
$Comp
L power:GNDD #PWR?
U 1 1 5EA3216F
P 3000 2250
AR Path="/5EA3216F" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA3216F" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 3000 2000 50  0001 C CNN
F 1 "GNDD" H 3004 2095 50  0000 C CNN
F 2 "" H 3000 2250 50  0001 C CNN
F 3 "" H 3000 2250 50  0001 C CNN
	1    3000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2250 3000 2250
Wire Wire Line
	1800 5850 1800 6650
Wire Wire Line
	2600 1850 2600 1950
Wire Wire Line
	2100 2050 2350 2050
Wire Wire Line
	2100 2050 2100 2300
Wire Wire Line
	1800 1900 1800 2300
$Comp
L Device:C_Small C?
U 1 1 5EA2B94E
P 5900 4900
AR Path="/5EA2B94E" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA2B94E" Ref="C21"  Part="1" 
F 0 "C21" V 5671 4900 50  0000 C CNN
F 1 "C_Small" V 5762 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 4900 50  0001 C CNN
F 3 "~" H 5900 4900 50  0001 C CNN
	1    5900 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA6600C
P 5000 4800
AR Path="/5EA6600C" Ref="C?"  Part="1" 
AR Path="/5E9B5CA6/5EA6600C" Ref="C20"  Part="1" 
F 0 "C20" V 4771 4800 50  0000 C CNN
F 1 "C_Small" V 4862 4800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5000 4800 50  0001 C CNN
F 3 "~" H 5000 4800 50  0001 C CNN
	1    5000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4250 5000 4250
Wire Wire Line
	5000 4250 5000 4700
Connection ~ 5400 4250
Wire Wire Line
	5400 4250 5400 4300
Wire Wire Line
	2200 4150 2650 4150
Wire Wire Line
	2650 4150 2650 4700
Connection ~ 2650 4700
Wire Wire Line
	2650 4700 3000 4700
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 5EAB59FB
P 1900 3950
F 0 "J5" H 1980 3942 50  0000 L CNN
F 1 "Conn_01x06" H 1980 3851 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 1900 3950 50  0001 C CNN
F 3 "~" H 1900 3950 50  0001 C CNN
	1    1900 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3500 1800 4150
Wire Wire Line
	1900 3400 1900 4150
Wire Wire Line
	2000 3100 2000 4150
Wire Wire Line
	2100 3100 2100 4150
Connection ~ 1800 4150
Wire Wire Line
	1800 4150 1800 4300
Connection ~ 1900 4150
Wire Wire Line
	1900 4150 1900 4300
Connection ~ 2000 4150
Wire Wire Line
	2000 4150 2000 4300
Connection ~ 2100 4150
Wire Wire Line
	2100 4150 2100 4300
$Comp
L power:GNDD #PWR?
U 1 1 5EA2D352
P 2900 1500
AR Path="/5EA2D352" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EA2D352" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 2900 1250 50  0001 C CNN
F 1 "GNDD" H 2904 1345 50  0000 C CNN
F 2 "" H 2900 1500 50  0001 C CNN
F 3 "" H 2900 1500 50  0001 C CNN
	1    2900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5C #PWR0133
U 1 1 5EA39F85
P 3000 1950
F 0 "#PWR0133" H 3000 1800 50  0001 C CNN
F 1 "+5C" H 3015 2123 50  0000 C CNN
F 2 "" H 3000 1950 50  0001 C CNN
F 3 "" H 3000 1950 50  0001 C CNN
	1    3000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1950 3000 1950
Connection ~ 2600 1950
Wire Wire Line
	2600 1950 2600 2250
Wire Wire Line
	2000 5500 2000 5850
Wire Wire Line
	2000 5850 2000 6350
Wire Wire Line
	2000 6350 2450 6350
Connection ~ 2000 5850
Text Label 8400 6050 0    50   ~ 0
Iin_raw
Wire Wire Line
	8400 5550 9000 5550
Connection ~ 9000 5550
Wire Wire Line
	8400 6050 9000 6050
Connection ~ 9000 6050
$Comp
L Amplifier_Operational:TL074 U11
U 3 1 5EB812E4
P 6050 9150
F 0 "U11" H 6050 8783 50  0000 C CNN
F 1 "TL074" H 6050 8874 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6000 9250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6100 9350 50  0001 C CNN
	3    6050 9150
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EB8DCBD
P 5450 9050
AR Path="/5EB8DCBD" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EB8DCBD" Ref="R3"  Part="1" 
F 0 "R3" H 5509 9096 50  0000 L CNN
F 1 "20k" H 5509 9005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5450 9050 50  0001 C CNN
F 3 "~" H 5450 9050 50  0001 C CNN
	1    5450 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 9050 5650 9050
Wire Wire Line
	6350 9150 6450 9150
$Comp
L Device:R_Small R?
U 1 1 5EBD9B57
P 5950 8650
AR Path="/5EBD9B57" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EBD9B57" Ref="R34"  Part="1" 
F 0 "R34" H 6009 8696 50  0000 L CNN
F 1 "20k" H 6009 8605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5950 8650 50  0001 C CNN
F 3 "~" H 5950 8650 50  0001 C CNN
	1    5950 8650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 9050 5650 8650
Connection ~ 5650 9050
Wire Wire Line
	5650 9050 5750 9050
Wire Wire Line
	5850 8650 5650 8650
Wire Wire Line
	6050 8650 6450 8650
Wire Wire Line
	6450 8650 6450 9150
Text Label 1900 6500 0    50   ~ 0
VDC_ADC
Wire Wire Line
	1900 5850 1900 6500
Connection ~ 1900 5850
Text Label 2500 3300 0    50   ~ 0
N
Text Label 2200 3350 0    50   ~ 0
N
Wire Wire Line
	2300 3100 2300 3350
Wire Wire Line
	2300 3350 2200 3350
Text Label 3000 4700 0    50   ~ 0
N
Text Label 6100 3650 0    50   ~ 0
N
Text Label 5450 3650 0    50   ~ 0
N
Text Label 1250 4150 0    50   ~ 0
N
Text Label 1000 4700 1    50   ~ 0
N
Text Label 9000 4950 0    50   ~ 0
N
Wire Wire Line
	9000 4950 9000 5050
Text Label 9000 6750 0    50   ~ 0
N
Wire Wire Line
	9000 6550 9000 6750
Text Label 5400 5300 0    50   ~ 0
N
Text Label 5900 5300 0    50   ~ 0
N
Wire Wire Line
	5900 5000 5900 5300
Wire Wire Line
	5400 4900 5400 5300
Text Label 9150 2750 0    50   ~ 0
N
Wire Wire Line
	9000 2750 9150 2750
Text Label 5450 9250 0    50   ~ 0
N
Wire Wire Line
	5450 9250 5750 9250
Text Label 6650 9150 0    50   ~ 0
GND_ADC
Wire Wire Line
	6650 9150 6450 9150
Connection ~ 6450 9150
Text Label 4850 9050 0    50   ~ 0
GND_opamp
Wire Wire Line
	5350 9050 4850 9050
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EC0C0B2
P 5700 8150
AR Path="/5E9944F3/5EC0C0B2" Ref="J?"  Part="1" 
AR Path="/5E9B5CA6/5EC0C0B2" Ref="J20"  Part="1" 
F 0 "J20" H 5780 8142 50  0000 L CNN
F 1 "Conn_01x02" H 5780 8051 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x02_P1.27mm_Vertical" H 5700 8150 50  0001 C CNN
F 3 "~" H 5700 8150 50  0001 C CNN
	1    5700 8150
	-1   0    0    -1  
$EndComp
Text Label 6250 8150 0    50   ~ 0
GND_opamp
Text Label 6150 8250 0    50   ~ 0
N
Text Label 5000 5300 0    50   ~ 0
N
Wire Wire Line
	5000 4900 5000 5300
Text Label 2300 6200 0    50   ~ 0
V_Th
Wire Wire Line
	2100 6200 2100 5850
Connection ~ 2100 5850
Wire Wire Line
	2300 6200 2100 6200
Text Label 2450 6350 2    50   ~ 0
GND_ADC
Text Label 1700 6800 0    50   ~ 0
Iin_ADC
Text Label 1600 6900 0    50   ~ 0
Iout_ADC
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5ED54AB4
P 3650 8150
AR Path="/5E9944F3/5ED54AB4" Ref="J?"  Part="1" 
AR Path="/5E9B5CA6/5ED54AB4" Ref="J22"  Part="1" 
F 0 "J22" H 3730 8142 50  0000 L CNN
F 1 "Conn_01x02" H 3730 8051 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x02_P1.27mm_Vertical" H 3650 8150 50  0001 C CNN
F 3 "~" H 3650 8150 50  0001 C CNN
	1    3650 8150
	-1   0    0    -1  
$EndComp
Text Label 4150 8150 0    50   ~ 0
VDC_opamp
Text Label 4050 8250 0    50   ~ 0
N
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5ED91AD8
P 8800 3600
AR Path="/5E9944F3/5ED91AD8" Ref="J?"  Part="1" 
AR Path="/5E9B5CA6/5ED91AD8" Ref="J6"  Part="1" 
F 0 "J6" H 8880 3592 50  0000 L CNN
F 1 "Conn_01x06" H 8880 3501 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x06_P1.27mm_Vertical" H 8800 3600 50  0001 C CNN
F 3 "~" H 8800 3600 50  0001 C CNN
	1    8800 3600
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U11
U 2 1 5EAF0631
P 3900 9150
F 0 "U11" H 3900 9517 50  0000 C CNN
F 1 "TL074" H 3900 9426 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3850 9250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3950 9350 50  0001 C CNN
	2    3900 9150
	1    0    0    -1  
$EndComp
Text Label 3050 9050 0    50   ~ 0
VDC_opamp
Wire Wire Line
	3050 9050 3600 9050
Wire Wire Line
	3600 9250 3450 9250
Wire Wire Line
	3450 9250 3450 9500
Wire Wire Line
	3450 9500 4300 9500
Wire Wire Line
	4300 9500 4300 9150
Wire Wire Line
	4300 9150 4200 9150
Wire Wire Line
	4300 9150 4450 9150
Connection ~ 4300 9150
Text Label 4450 9150 0    50   ~ 0
VDC_ADC
Text Label 8400 6250 0    50   ~ 0
Iin_ADC
Text Label 1850 6650 0    50   ~ 0
VAC_ADC
Wire Wire Line
	1850 6650 1800 6650
Text Label 8400 5550 0    50   ~ 0
Iout_raw
Text Label 8400 5350 0    50   ~ 0
Iout_ADC
Wire Wire Line
	9000 5350 8400 5350
Wire Wire Line
	9000 6250 8400 6250
Wire Wire Line
	1600 5850 1600 6900
Wire Wire Line
	5800 4600 5900 4600
Wire Wire Line
	5900 4600 5900 4800
Connection ~ 5900 4600
Wire Wire Line
	5900 4600 6100 4600
Text Label 6100 4600 0    50   ~ 0
REF2.048
Wire Wire Line
	3850 8150 4150 8150
Wire Wire Line
	3850 8250 4050 8250
Wire Wire Line
	5900 8150 6250 8150
Wire Wire Line
	5900 8250 6150 8250
Wire Wire Line
	7350 9500 7350 9250
Text Label 6300 3000 0    50   ~ 0
REF4.048
Wire Wire Line
	5850 3000 6100 3000
Wire Wire Line
	6100 3200 6100 3000
Connection ~ 6100 3000
Wire Wire Line
	6100 3000 6300 3000
Wire Wire Line
	6100 3400 6100 3650
Wire Wire Line
	5050 2000 5050 2250
Wire Wire Line
	5450 2250 5050 2250
Connection ~ 5050 2250
Wire Wire Line
	5050 2250 5050 2350
Text Label 5050 2700 0    50   ~ 0
N
Wire Wire Line
	5450 3300 5450 3650
Wire Wire Line
	5050 2550 5050 2700
Text Label 950  5000 0    50   ~ 0
REF4.048
Wire Wire Line
	950  5000 1400 5000
Wire Wire Line
	1000 4700 1100 4700
Wire Wire Line
	1250 4150 1700 4150
Wire Wire Line
	2800 3300 3050 3300
Wire Wire Line
	1300 4700 1400 4700
Wire Wire Line
	5450 2250 5450 2700
Text Label 1100 9600 0    50   ~ 0
REF2.048
Wire Wire Line
	1100 8600 1100 8750
Text Label 1100 8600 0    50   ~ 0
VAC_opamp
Text Label 2450 9150 0    50   ~ 0
VAC_ADC
Wire Wire Line
	1700 9250 1750 9250
Wire Wire Line
	1700 9250 1700 9550
Text Label 1700 9550 0    50   ~ 0
N
Text Label 1950 8150 0    50   ~ 0
VAC_opamp
Wire Wire Line
	1600 8250 1750 8250
Text Label 1750 8250 0    50   ~ 0
N
Wire Wire Line
	1600 8150 1950 8150
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EEBAE3E
P 1400 8150
AR Path="/5E9944F3/5EEBAE3E" Ref="J?"  Part="1" 
AR Path="/5E9B5CA6/5EEBAE3E" Ref="J7"  Part="1" 
F 0 "J7" H 1480 8142 50  0000 L CNN
F 1 "Conn_01x02" H 1480 8051 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x02_P1.27mm_Vertical" H 1400 8150 50  0001 C CNN
F 3 "~" H 1400 8150 50  0001 C CNN
	1    1400 8150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 9150 2450 9150
Wire Wire Line
	1100 9050 1100 9150
Connection ~ 1100 9050
Wire Wire Line
	1750 9050 1100 9050
Wire Wire Line
	1100 8950 1100 9050
Wire Wire Line
	1100 9350 1100 9600
$Comp
L Device:R_Small R?
U 1 1 5EA3208A
P 1100 9250
AR Path="/5EA3208A" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA3208A" Ref="R27"  Part="1" 
F 0 "R27" H 1159 9296 50  0000 L CNN
F 1 "R_Small" H 1159 9205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1100 9250 50  0001 C CNN
F 3 "~" H 1100 9250 50  0001 C CNN
	1    1100 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EA32083
P 1100 8850
AR Path="/5EA32083" Ref="R?"  Part="1" 
AR Path="/5E9B5CA6/5EA32083" Ref="R26"  Part="1" 
F 0 "R26" H 1159 8896 50  0000 L CNN
F 1 "R_Small" H 1159 8805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1100 8850 50  0001 C CNN
F 3 "~" H 1100 8850 50  0001 C CNN
	1    1100 8850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5EA31F76
P 2050 9150
AR Path="/5EA31F76" Ref="U?"  Part="1" 
AR Path="/5E9B5CA6/5EA31F76" Ref="U11"  Part="1" 
F 0 "U11" H 2050 9517 50  0000 C CNN
F 1 "TL074" H 2050 9426 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 9250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2100 9350 50  0001 C CNN
	1    2050 9150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J23
U 1 1 5F516213
P 2250 1600
F 0 "J23" V 2085 1528 50  0000 C CNN
F 1 "Conn_01x08_Male" V 2176 1528 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0871_1x08-1MP_P1.25mm_Vertical" H 2250 1600 50  0001 C CNN
F 3 "~" H 2250 1600 50  0001 C CNN
	1    2250 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1850 2600 1850
Wire Wire Line
	2450 2300 2500 2300
Wire Wire Line
	2550 1850 2550 1800
Wire Wire Line
	2450 1800 2450 2300
Wire Wire Line
	2350 1800 2350 2050
Wire Wire Line
	2150 1800 2150 1950
Wire Wire Line
	2050 1800 2050 1900
Wire Wire Line
	2250 1800 2250 2000
Wire Wire Line
	2000 2000 2250 2000
Wire Wire Line
	2300 2150 2300 2300
Wire Wire Line
	2300 2150 1950 2150
Wire Wire Line
	1950 2150 1950 1800
Wire Wire Line
	2000 2000 2000 2300
Wire Wire Line
	2050 1900 1800 1900
Wire Wire Line
	2150 1950 1900 1950
Wire Wire Line
	1900 1950 1900 2300
Wire Wire Line
	1850 1500 1850 1800
Wire Wire Line
	2450 1800 2450 1500
Wire Wire Line
	1850 1500 2450 1500
Connection ~ 2450 1800
Connection ~ 2450 1500
Wire Wire Line
	2450 1500 2900 1500
$Comp
L power:+5P #PWR?
U 1 1 5EF16431
P 10000 3750
AR Path="/5E99427A/5EF16431" Ref="#PWR?"  Part="1" 
AR Path="/5E9B5CA6/5EF16431" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 10000 3600 50  0001 C CNN
F 1 "+5P" H 10015 3923 50  0000 C CNN
F 2 "" H 10000 3750 50  0001 C CNN
F 3 "" H 10000 3750 50  0001 C CNN
	1    10000 3750
	-1   0    0    -1  
$EndComp
Text Label 9850 3600 2    50   ~ 0
Iin_raw
Text Label 9600 3700 2    50   ~ 0
V_Th
Wire Wire Line
	9650 3900 9000 3900
Wire Wire Line
	9850 3600 9000 3600
Wire Wire Line
	9600 3700 9000 3700
Text Label 9550 3500 2    50   ~ 0
N
Wire Wire Line
	9000 3500 9550 3500
Text Label 9550 3400 2    50   ~ 0
N
Wire Wire Line
	9000 3400 9550 3400
Text Label 9650 3900 2    50   ~ 0
Iout_raw
Wire Wire Line
	10000 3800 10000 3750
Wire Wire Line
	10000 3800 9000 3800
Text HLabel 13700 1550 0    50   Input ~ 0
V_Th
Text HLabel 13700 1650 0    50   Input ~ 0
Iout_raw
Text HLabel 13700 1750 0    50   Input ~ 0
Iin_raw
Text HLabel 13700 1900 0    50   Input ~ 0
GND_opamp
Text HLabel 13700 2000 0    50   Input ~ 0
VAC_opamp
Text HLabel 13700 2100 0    50   Input ~ 0
VDC_opamp
$Comp
L Reference_Voltage:MCP1541-TT U?
U 1 1 5F2A1E78
P 5450 3000
F 0 "U?" H 5320 3046 50  0000 R CNN
F 1 "MCP1541-TT" H 5320 2955 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5475 2750 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21653b.pdf" H 5450 3000 50  0001 C CIN
	1    5450 3000
	1    0    0    -1  
$EndComp
$EndSCHEMATC

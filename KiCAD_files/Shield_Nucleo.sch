EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Symbols:Shield_nucleo_stage_outline J1
U 1 1 5F47B34E
P 10150 2350
F 0 "J1" H 10200 3015 50  0000 C CNN
F 1 "Shield_nucleo_stage_outline" H 10200 2924 50  0000 C CNN
F 2 "Footprints:Shield_nucleo_outline" H 9950 3100 50  0001 C CNN
F 3 "" H 9950 3100 50  0001 C CNN
	1    10150 2350
	1    0    0    -1  
$EndComp
$Comp
L Symbols:NUCLEO-F401RE U1
U 1 1 5F480C44
P 2350 3200
F 0 "U1" H 2350 4967 50  0000 C CNN
F 1 "NUCLEO-F401RE" H 2350 4876 50  0000 C CNN
F 2 "Footprints:ST_NUCLEO-G474" H 2350 3200 50  0001 L BNN
F 3 "Manufacturer Recommendations" H 2350 3200 50  0001 L BNN
F 4 "13" H 2350 3200 50  0001 L BNN "Field4"
F 5 "STMicroelectronics" H 2350 3200 50  0001 L BNN "Field5"
F 6 "N/A" H 2350 3200 50  0001 L BNN "Field6"
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F54E278
P 1200 10400
F 0 "BT1" H 1318 10496 50  0000 L CNN
F 1 "Battery_Cell" H 1318 10405 50  0000 L CNN
F 2 "Footprints:CR2032" V 1200 10460 50  0001 C CNN
F 3 "~" V 1200 10460 50  0001 C CNN
	1    1200 10400
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5F54F1D4
P 1950 9950
F 0 "#PWR0101" H 1950 9800 50  0001 C CNN
F 1 "+BATT" H 1965 10123 50  0000 C CNN
F 2 "" H 1950 9950 50  0001 C CNN
F 3 "" H 1950 9950 50  0001 C CNN
	1    1950 9950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0102
U 1 1 5F551569
P 1200 10650
F 0 "#PWR0102" H 1200 10400 50  0001 C CNN
F 1 "GNDD" H 1204 10495 50  0000 C CNN
F 2 "" H 1200 10650 50  0001 C CNN
F 3 "" H 1200 10650 50  0001 C CNN
	1    1200 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 10500 1200 10650
Wire Wire Line
	1950 9950 1950 10050
$Comp
L power:+BATT #PWR0103
U 1 1 5F558A3C
P 3650 2000
F 0 "#PWR0103" H 3650 1850 50  0001 C CNN
F 1 "+BATT" H 3665 2173 50  0000 C CNN
F 2 "" H 3650 2000 50  0001 C CNN
F 3 "" H 3650 2000 50  0001 C CNN
	1    3650 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2000 3600 2000
$Comp
L Symbols:NUCLEO-F401RE U1
U 2 1 5F57B1FA
P 5800 3250
F 0 "U1" H 5800 4917 50  0000 C CNN
F 1 "NUCLEO-F401RE" H 5800 4826 50  0000 C CNN
F 2 "Footprints:ST_NUCLEO-G474" H 5800 3250 50  0001 L BNN
F 3 "Manufacturer Recommendations" H 5800 3250 50  0001 L BNN
F 4 "13" H 5800 3250 50  0001 L BNN "Field4"
F 5 "STMicroelectronics" H 5800 3250 50  0001 L BNN "Field5"
F 6 "N/A" H 5800 3250 50  0001 L BNN "Field6"
	2    5800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1900 3150 1900
Text Label 1100 3700 0    50   ~ 0
I1_low
Text Label 1100 3800 0    50   ~ 0
I2_low
Text Label 1100 3900 0    50   ~ 0
I_high
Text Label 1100 4000 0    50   ~ 0
EEPROM_WP
Text Label 1100 2700 0    50   ~ 0
V1_low_P
Text Label 1100 2800 0    50   ~ 0
V1_low_N
Text Label 4550 2450 0    50   ~ 0
V2_low_P
Text Label 4550 2550 0    50   ~ 0
V2_low_N
Text Label 6550 2250 0    50   ~ 0
V_high_P
Text Label 4550 3350 0    50   ~ 0
V_high_N
Wire Wire Line
	6500 2250 6550 2250
Wire Wire Line
	5100 3350 4550 3350
Wire Wire Line
	5100 2550 4550 2550
Wire Wire Line
	5100 2450 4550 2450
Wire Wire Line
	1550 4000 1100 4000
Wire Wire Line
	1550 3900 1100 3900
Wire Wire Line
	1550 3800 1100 3800
Wire Wire Line
	1550 3700 1100 3700
Wire Wire Line
	1550 2800 1100 2800
Wire Wire Line
	1550 2700 1100 2700
Text Label 4550 3050 0    50   ~ 0
HRTIM1_FLT1
Text Label 4550 2950 0    50   ~ 0
HRTIM1_CHB2
Text Label 4550 2850 0    50   ~ 0
HRTIM1_CHB1
Text Label 4550 2750 0    50   ~ 0
HRTIM1_CHA2
Text Label 4550 2650 0    50   ~ 0
HRTIM1_CHA1
Wire Wire Line
	4550 3050 5100 3050
Wire Wire Line
	5100 2950 4550 2950
Wire Wire Line
	5100 2850 4550 2850
Wire Wire Line
	5100 2750 4550 2750
Wire Wire Line
	5100 2650 4550 2650
Text Label 4550 3950 0    50   ~ 0
FDCAN1_TX
Text Label 4550 3850 0    50   ~ 0
FDCAN1_RX
Text Label 4550 3650 0    50   ~ 0
SPI3_MOSI
Text Label 4550 3550 0    50   ~ 0
SPI3_MISO
Wire Wire Line
	5100 3550 4550 3550
Wire Wire Line
	5100 3650 4550 3650
Text Label 4550 3750 0    50   ~ 0
USART1_TX
Text Label 1100 3500 0    50   ~ 0
USART1_RX
Text Label 4550 4150 0    50   ~ 0
N_GND
Wire Wire Line
	5100 4150 4550 4150
Wire Wire Line
	4550 3950 5100 3950
Wire Wire Line
	5100 3850 4550 3850
Wire Wire Line
	4550 3750 5100 3750
Text Label 1100 4200 0    50   ~ 0
SPI3_SCK
Wire Wire Line
	1550 4200 1100 4200
Text Label 5050 3250 2    50   ~ 0
Temp
Wire Wire Line
	5100 3250 5050 3250
Text Label 1100 3400 0    50   ~ 0
EEPROM_HOLD
Wire Wire Line
	1550 3400 1100 3400
$Comp
L Device:R R2
U 1 1 605148BD
P 11800 2700
F 0 "R2" H 11870 2746 50  0000 L CNN
F 1 "R" H 11870 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11730 2700 50  0001 C CNN
F 3 "~" H 11800 2700 50  0001 C CNN
	1    11800 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 60515C79
P 12300 2700
F 0 "R3" H 12370 2746 50  0000 L CNN
F 1 "R" H 12370 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12230 2700 50  0001 C CNN
F 3 "~" H 12300 2700 50  0001 C CNN
	1    12300 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 605168DE
P 12750 2950
F 0 "R4" H 12820 2996 50  0000 L CNN
F 1 "R" H 12820 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12680 2950 50  0001 C CNN
F 3 "~" H 12750 2950 50  0001 C CNN
	1    12750 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 60517542
P 13250 2950
F 0 "R5" H 13320 2996 50  0000 L CNN
F 1 "R" H 13320 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13180 2950 50  0001 C CNN
F 3 "~" H 13250 2950 50  0001 C CNN
	1    13250 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60518213
P 13600 3200
F 0 "R6" H 13670 3246 50  0000 L CNN
F 1 "R" H 13670 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13530 3200 50  0001 C CNN
F 3 "~" H 13600 3200 50  0001 C CNN
	1    13600 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 60518EB5
P 14100 3200
F 0 "R7" H 14170 3246 50  0000 L CNN
F 1 "R" H 14170 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 14030 3200 50  0001 C CNN
F 3 "~" H 14100 3200 50  0001 C CNN
	1    14100 3200
	0    -1   -1   0   
$EndComp
$Comp
L Interface_CAN_LIN:TCAN334 U3
U 1 1 6051D100
P 7450 9350
F 0 "U3" H 7150 9900 50  0000 C CNN
F 1 "TCAN334" H 7150 9800 50  0000 C CNN
F 2 "Footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7450 8850 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tcan337.pdf" H 7450 9350 50  0001 C CNN
	1    7450 9350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6051E55D
P 8500 9700
F 0 "R1" H 8570 9746 50  0000 L CNN
F 1 "R" H 8570 9655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8430 9700 50  0001 C CNN
F 3 "~" H 8500 9700 50  0001 C CNN
	1    8500 9700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6051F185
P 7700 8600
F 0 "C2" H 7792 8646 50  0000 L CNN
F 1 "100nF" H 7792 8555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7700 8600 50  0001 C CNN
F 3 "~" H 7700 8600 50  0001 C CNN
	1    7700 8600
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J2
U 1 1 60523A79
P 10750 8850
F 0 "J2" H 10807 9517 50  0000 C CNN
F 1 "RJ45" H 10807 9426 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 10750 8875 50  0001 C CNN
F 3 "~" V 10750 8875 50  0001 C CNN
	1    10750 8850
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J3
U 1 1 6053822E
P 10750 10100
F 0 "J3" H 10807 10767 50  0000 C CNN
F 1 "RJ45" H 10807 10676 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 10750 10125 50  0001 C CNN
F 3 "~" V 10750 10125 50  0001 C CNN
	1    10750 10100
	-1   0    0    1   
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 6053C1CC
P 8500 9200
F 0 "JP1" V 8454 9327 50  0000 L CNN
F 1 "Jumper" V 8545 9327 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 8500 9200 50  0001 C CNN
F 3 "~" H 8500 9200 50  0001 C CNN
	1    8500 9200
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 9500 8500 9550
Wire Wire Line
	8150 8750 8150 9250
Wire Wire Line
	8150 9250 7950 9250
Wire Wire Line
	7950 9450 8150 9450
Wire Wire Line
	8150 9450 8150 9950
Wire Wire Line
	8150 9950 8500 9950
Wire Wire Line
	8500 9850 8500 9950
Connection ~ 8500 9950
Wire Wire Line
	8150 8750 8500 8750
Wire Wire Line
	8500 8750 8500 8900
Wire Wire Line
	7700 8500 7700 8400
Wire Wire Line
	7700 8400 7450 8400
Wire Wire Line
	7450 8400 7450 8950
Wire Wire Line
	11650 2700 11100 2700
Wire Wire Line
	13450 3200 11100 3200
Wire Wire Line
	11950 2700 12050 2700
Wire Wire Line
	12900 2950 13000 2950
Wire Wire Line
	13750 3200 13850 3200
$Comp
L Device:R R8
U 1 1 6059F7CD
P 14650 3450
F 0 "R8" H 14720 3496 50  0000 L CNN
F 1 "R" H 14720 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 14580 3450 50  0001 C CNN
F 3 "~" H 14650 3450 50  0001 C CNN
	1    14650 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 6059F7D3
P 15150 3450
F 0 "R9" H 15220 3496 50  0000 L CNN
F 1 "R" H 15220 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15080 3450 50  0001 C CNN
F 3 "~" H 15150 3450 50  0001 C CNN
	1    15150 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 3450 14900 3450
Text Label 8650 4000 0    50   ~ 0
HRTIM1_CHA1
Text Label 8650 4100 0    50   ~ 0
HRTIM1_CHA2
Wire Wire Line
	8650 4100 9300 4100
Wire Wire Line
	9300 4000 8650 4000
Text Label 8650 4500 0    50   ~ 0
HRTIM1_CHB1
Text Label 8650 4600 0    50   ~ 0
HRTIM1_CHB2
Wire Wire Line
	8650 4600 9300 4600
Wire Wire Line
	9300 4500 8650 4500
Text Label 8650 2700 0    50   ~ 0
V1_low_P
Text Label 8650 2800 0    50   ~ 0
V1_low_N
Wire Wire Line
	9300 2800 8650 2800
Wire Wire Line
	8650 2700 9300 2700
Text Label 8650 2950 0    50   ~ 0
V2_low_P
Text Label 8650 3050 0    50   ~ 0
V2_low_N
Wire Wire Line
	9300 3050 8650 3050
Wire Wire Line
	9300 2950 8650 2950
Text Label 8650 3300 0    50   ~ 0
V_high_N
Wire Wire Line
	9300 3300 8650 3300
Text Label 8650 3200 0    50   ~ 0
V_high_P
Wire Wire Line
	9300 3200 8650 3200
Wire Wire Line
	11100 2950 12600 2950
Text Label 3350 1900 0    50   ~ 0
E5V
Text Label 9050 1950 0    50   ~ 0
E5V
Wire Wire Line
	9050 1950 9300 1950
$Comp
L power:GNDD #PWR0104
U 1 1 6063A3AE
P 3250 4850
F 0 "#PWR0104" H 3250 4600 50  0001 C CNN
F 1 "GNDD" H 3254 4695 50  0000 C CNN
F 2 "" H 3250 4850 50  0001 C CNN
F 3 "" H 3250 4850 50  0001 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4850 3250 4800
Wire Wire Line
	3250 4800 3150 4800
Text Label 11350 3050 0    50   ~ 0
AGND
Text Label 11350 3300 0    50   ~ 0
AGND
Text Label 11350 3550 0    50   ~ 0
AGND
Text Label 14350 3200 0    50   ~ 0
AGND
Text Label 15400 3450 0    50   ~ 0
AGND
Text Label 13500 2950 0    50   ~ 0
AGND
Text Label 12550 2700 0    50   ~ 0
AGND
Wire Wire Line
	12450 2700 12550 2700
Wire Wire Line
	13400 2950 13500 2950
Wire Wire Line
	14250 3200 14350 3200
Wire Wire Line
	15300 3450 15400 3450
Wire Wire Line
	11350 3300 11100 3300
Wire Wire Line
	11350 3050 11100 3050
Wire Wire Line
	11350 3550 11100 3550
Wire Wire Line
	11100 3450 14500 3450
$Comp
L power:GNDD #PWR0105
U 1 1 6067FA61
P 6600 4800
F 0 "#PWR0105" H 6600 4550 50  0001 C CNN
F 1 "GNDD" H 6604 4645 50  0000 C CNN
F 2 "" H 6600 4800 50  0001 C CNN
F 3 "" H 6600 4800 50  0001 C CNN
	1    6600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4800 6600 4750
Wire Wire Line
	6600 4750 6500 4750
Text Label 6600 4650 0    50   ~ 0
AGND
Wire Wire Line
	6600 4650 6500 4650
Wire Wire Line
	1550 3500 1100 3500
Wire Wire Line
	1100 4300 1550 4300
Text Label 1100 4100 0    50   ~ 0
HRTIM_EEV1
Text Label 1100 4300 0    50   ~ 0
HRTIM_EEV2
Wire Wire Line
	1550 4100 1100 4100
Text Label 12200 2450 0    50   ~ 0
I1_low
Wire Wire Line
	12400 2450 12050 2450
Wire Wire Line
	12050 2450 12050 2700
Connection ~ 12050 2700
Wire Wire Line
	12050 2700 12150 2700
Text Label 13150 2700 0    50   ~ 0
I2_low
Wire Wire Line
	13400 2700 13000 2700
Wire Wire Line
	13000 2700 13000 2950
Connection ~ 13000 2950
Wire Wire Line
	13000 2950 13100 2950
Text Label 13950 2950 0    50   ~ 0
I_high
Wire Wire Line
	14250 2950 13850 2950
Wire Wire Line
	13850 2950 13850 3200
Connection ~ 13850 3200
Wire Wire Line
	13850 3200 13950 3200
Text Label 15000 3150 0    50   ~ 0
Temp
Wire Wire Line
	15250 3150 14900 3150
Wire Wire Line
	14900 3150 14900 3450
Connection ~ 14900 3450
Wire Wire Line
	14900 3450 15000 3450
$Comp
L power:GNDD #PWR0106
U 1 1 6070A7E6
P 9050 2100
F 0 "#PWR0106" H 9050 1850 50  0001 C CNN
F 1 "GNDD" H 9054 1945 50  0000 C CNN
F 2 "" H 9050 2100 50  0001 C CNN
F 3 "" H 9050 2100 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2100 9050 2050
Wire Wire Line
	9300 2050 9050 2050
$Comp
L Device:D_Schottky_Small D1
U 1 1 60720972
P 8500 7400
F 0 "D1" V 8546 7330 50  0000 R CNN
F 1 "D_Schottky_Small" V 8455 7330 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 8500 7400 50  0001 C CNN
F 3 "~" V 8500 7400 50  0001 C CNN
	1    8500 7400
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 607216AF
P 9600 7400
F 0 "D2" V 9646 7330 50  0000 R CNN
F 1 "D_Schottky_Small" V 9555 7330 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 9600 7400 50  0001 C CNN
F 3 "~" V 9600 7400 50  0001 C CNN
	1    9600 7400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 6072210F
P 8850 7950
F 0 "F1" V 9055 7950 50  0000 C CNN
F 1 "0ZCJ0050AF2E" V 8964 7950 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 8900 7750 50  0001 L CNN
F 3 "~" H 8850 7950 50  0001 C CNN
	1    8850 7950
	0    -1   -1   0   
$EndComp
$Comp
L Device:Polyfuse_Small F2
U 1 1 60722BE6
P 8850 8250
F 0 "F2" V 8645 8250 50  0000 C CNN
F 1 "0ZCJ0050AF2E" V 8736 8250 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 8900 8050 50  0001 L CNN
F 3 "~" H 8850 8250 50  0001 C CNN
	1    8850 8250
	0    1    1    0   
$EndComp
Text Label 9600 7150 0    50   ~ 0
GND_CAN
Wire Wire Line
	9600 7300 9600 7200
$Comp
L power:GNDD #PWR0107
U 1 1 60779D49
P 9600 7600
F 0 "#PWR0107" H 9600 7350 50  0001 C CNN
F 1 "GNDD" H 9604 7445 50  0000 C CNN
F 2 "" H 9600 7600 50  0001 C CNN
F 3 "" H 9600 7600 50  0001 C CNN
	1    9600 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 7500 9600 7600
Text Label 8500 7150 0    50   ~ 0
V_BUS_CAN
Wire Wire Line
	8500 8750 8950 8750
Connection ~ 8500 8750
Wire Wire Line
	8500 9950 8950 9950
Text Label 8950 8750 0    50   ~ 0
CAN_H
Text Label 8950 9950 0    50   ~ 0
CAN_L
Text Label 9800 9900 0    50   ~ 0
CAN_L
Text Label 9800 8650 0    50   ~ 0
CAN_L
Text Label 9800 8550 0    50   ~ 0
CAN_H
Text Label 9800 9800 0    50   ~ 0
CAN_H
Wire Wire Line
	9800 9800 10350 9800
Wire Wire Line
	10350 9900 9800 9900
Wire Wire Line
	10350 8650 9800 8650
Wire Wire Line
	9800 8550 10350 8550
Text Label 9800 10000 0    50   ~ 0
GND_CAN
Text Label 9800 10400 0    50   ~ 0
GND_CAN
Text Label 9800 8750 0    50   ~ 0
GND_CAN
Text Label 9800 9150 0    50   ~ 0
GND_CAN
NoConn ~ 10350 9250
NoConn ~ 10350 9050
NoConn ~ 10350 10500
NoConn ~ 10350 10300
Wire Wire Line
	10350 10400 9800 10400
Wire Wire Line
	10350 10000 9800 10000
Wire Wire Line
	10350 9150 9800 9150
Wire Wire Line
	10350 8750 9800 8750
Wire Wire Line
	8500 7500 8500 7950
Wire Wire Line
	8500 7950 8750 7950
Wire Wire Line
	8500 7950 8500 8250
Wire Wire Line
	8500 8250 8750 8250
Connection ~ 8500 7950
Wire Wire Line
	8500 7300 8500 7200
Wire Wire Line
	8950 7950 9150 7950
Wire Wire Line
	8950 8250 9150 8250
Text Label 9150 7950 0    50   ~ 0
PWR_CAN1
Text Label 9150 8250 0    50   ~ 0
PWR_CAN2
Text Label 9800 8900 0    50   ~ 0
PWR_CAN1
Text Label 9800 10150 0    50   ~ 0
PWR_CAN2
Wire Wire Line
	9800 10150 10250 10150
Wire Wire Line
	10250 10150 10250 10100
Wire Wire Line
	10250 10100 10350 10100
Wire Wire Line
	10250 10150 10250 10200
Wire Wire Line
	10250 10200 10350 10200
Connection ~ 10250 10150
Wire Wire Line
	9800 8900 10250 8900
Wire Wire Line
	10250 8900 10250 8850
Wire Wire Line
	10250 8850 10350 8850
Wire Wire Line
	10250 8900 10250 8950
Wire Wire Line
	10250 8950 10350 8950
Connection ~ 10250 8900
Wire Notes Line
	11500 11000 11500 6700
Text Notes 4150 8750 0    98   ~ 0
CAN bus power supply\n- 10V-32V\n- 600 mA (like PoE)\n\n\nDiodes necessary to prevent\nseparate GND loops.\n\nPolyfuse to prevent \nover-current in daisy-chained \nbus with multiple sources and \nsinks.
Wire Notes Line
	3900 6700 3900 11000
Wire Notes Line
	3900 6700 11500 6700
Wire Notes Line
	3900 11000 11500 11000
$Comp
L power:+3.3V #PWR0108
U 1 1 6086ECDB
P 3450 1700
F 0 "#PWR0108" H 3450 1550 50  0001 C CNN
F 1 "+3.3V" H 3465 1873 50  0000 C CNN
F 2 "" H 3450 1700 50  0001 C CNN
F 3 "" H 3450 1700 50  0001 C CNN
	1    3450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1700 3200 1700
$Comp
L power:+3.3V #PWR0109
U 1 1 6087743D
P 7450 8300
F 0 "#PWR0109" H 7450 8150 50  0001 C CNN
F 1 "+3.3V" H 7465 8473 50  0000 C CNN
F 2 "" H 7450 8300 50  0001 C CNN
F 3 "" H 7450 8300 50  0001 C CNN
	1    7450 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 8300 7450 8400
Connection ~ 7450 8400
$Comp
L power:GNDD #PWR0110
U 1 1 60889269
P 7450 9950
F 0 "#PWR0110" H 7450 9700 50  0001 C CNN
F 1 "GNDD" H 7454 9795 50  0000 C CNN
F 2 "" H 7450 9950 50  0001 C CNN
F 3 "" H 7450 9950 50  0001 C CNN
	1    7450 9950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0111
U 1 1 6088E1A9
P 7700 8800
F 0 "#PWR0111" H 7700 8550 50  0001 C CNN
F 1 "GNDD" H 7704 8645 50  0000 C CNN
F 2 "" H 7700 8800 50  0001 C CNN
F 3 "" H 7700 8800 50  0001 C CNN
	1    7700 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 8700 7700 8800
Wire Wire Line
	7450 9750 7450 9850
Text Label 6050 9150 0    50   ~ 0
FDCAN1_TX
Text Label 6050 9250 0    50   ~ 0
FDCAN1_RX
Wire Wire Line
	6050 9150 6550 9150
Wire Wire Line
	6950 9250 6550 9250
Text Label 4550 4050 0    50   ~ 0
CAN1_STB
Wire Wire Line
	4550 4050 5100 4050
Text Label 6050 9550 0    50   ~ 0
CAN1_STB
Wire Wire Line
	6050 9550 6550 9550
NoConn ~ 6950 9450
Text Notes 4150 10850 0    98   ~ 0
CopyLeft LibreSolar\n
Wire Wire Line
	6550 9650 6550 9550
Connection ~ 6550 9550
Wire Wire Line
	6550 9550 6950 9550
Wire Wire Line
	6550 9300 6550 9250
Connection ~ 6550 9250
Wire Wire Line
	6550 9250 6050 9250
Wire Wire Line
	6550 9000 6550 9150
Connection ~ 6550 9150
Wire Wire Line
	6550 9150 6950 9150
Wire Wire Line
	6800 9800 6800 9850
Wire Wire Line
	6800 9850 7450 9850
Connection ~ 7450 9850
Wire Wire Line
	7450 9850 7450 9950
Text Label 4550 4550 0    50   ~ 0
HRTIM1_CHD2
Text Label 4550 4450 0    50   ~ 0
HRTIM1_CHD1
Text Label 4550 4350 0    50   ~ 0
HRTIM1_CHC2
Text Label 4550 4250 0    50   ~ 0
HRTIM1_CHC1
Wire Wire Line
	5100 4550 4550 4550
Wire Wire Line
	5100 4450 4550 4450
Wire Wire Line
	5100 4350 4550 4350
Wire Wire Line
	5100 4250 4550 4250
Text Label 7050 2350 2    50   ~ 0
HRTIM1_CHF1
Text Label 7050 2450 2    50   ~ 0
HRTIM1_CHF2
Text Label 7050 2550 2    50   ~ 0
HRTIM1_CHE1
Text Label 7050 2650 2    50   ~ 0
HRTIM1_CHE2
Wire Wire Line
	6500 2450 7050 2450
Wire Wire Line
	6500 2550 7050 2550
Wire Wire Line
	6500 2650 7050 2650
Wire Wire Line
	6500 2350 7050 2350
$Comp
L Connector:TestPoint TP22
U 1 1 60AD2F76
P 8650 2800
F 0 "TP22" V 8650 3050 50  0000 L CNN
F 1 "TestPoint" V 8650 3250 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8850 2800 50  0001 C CNN
F 3 "~" H 8850 2800 50  0001 C CNN
	1    8650 2800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 60B3AE0D
P 8650 3050
F 0 "TP24" V 8650 3300 50  0000 L CNN
F 1 "TestPoint" V 8650 3500 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8850 3050 50  0001 C CNN
F 3 "~" H 8850 3050 50  0001 C CNN
	1    8650 3050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP23
U 1 1 60B3AE13
P 8650 2950
F 0 "TP23" V 8650 3200 50  0000 L CNN
F 1 "TestPoint" V 8650 3400 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8850 2950 50  0001 C CNN
F 3 "~" H 8850 2950 50  0001 C CNN
	1    8650 2950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP26
U 1 1 60B420F6
P 8650 3300
F 0 "TP26" V 8650 3550 50  0000 L CNN
F 1 "TestPoint" V 8650 3750 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8850 3300 50  0001 C CNN
F 3 "~" H 8850 3300 50  0001 C CNN
	1    8650 3300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 60B420FC
P 8650 3200
F 0 "TP25" V 8650 3450 50  0000 L CNN
F 1 "TestPoint" V 8650 3650 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8850 3200 50  0001 C CNN
F 3 "~" H 8850 3200 50  0001 C CNN
	1    8650 3200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 60B9FBC5
P 6550 9000
F 0 "TP13" H 6600 9050 50  0000 L CNN
F 1 "TestPoint" V 6550 9450 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 6750 9000 50  0001 C CNN
F 3 "~" H 6750 9000 50  0001 C CNN
	1    6550 9000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 60BB536A
P 6550 9300
F 0 "TP14" H 6600 9350 50  0000 L CNN
F 1 "TestPoint" V 6550 9750 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 6750 9300 50  0001 C CNN
F 3 "~" H 6750 9300 50  0001 C CNN
	1    6550 9300
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 60BC3390
P 6550 9650
F 0 "TP15" H 6600 9700 50  0000 L CNN
F 1 "TestPoint" V 6550 10100 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 6750 9650 50  0001 C CNN
F 3 "~" H 6750 9650 50  0001 C CNN
	1    6550 9650
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 60BD10AF
P 6800 9800
F 0 "TP16" H 6850 9850 50  0000 L CNN
F 1 "TestPoint" V 6800 10250 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7000 9800 50  0001 C CNN
F 3 "~" H 7000 9800 50  0001 C CNN
	1    6800 9800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 60BDDC66
P 3200 1450
F 0 "TP2" H 3250 1500 50  0000 L CNN
F 1 "TestPoint" V 3200 1900 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3400 1450 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1450 3200 1700
Connection ~ 3200 1700
Wire Wire Line
	3200 1700 3450 1700
$Comp
L power:GNDD #PWR0112
U 1 1 60BFC48F
P 1750 5200
F 0 "#PWR0112" H 1750 4950 50  0001 C CNN
F 1 "GNDD" H 1754 5045 50  0000 C CNN
F 2 "" H 1750 5200 50  0001 C CNN
F 3 "" H 1750 5200 50  0001 C CNN
	1    1750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5200 1750 5150
$Comp
L power:GNDD #PWR0113
U 1 1 60C06989
P 4950 5200
F 0 "#PWR0113" H 4950 4950 50  0001 C CNN
F 1 "GNDD" H 4954 5045 50  0000 C CNN
F 2 "" H 4950 5200 50  0001 C CNN
F 3 "" H 4950 5200 50  0001 C CNN
	1    4950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5200 4950 5150
$Comp
L Connector:TestPoint TP3
U 1 1 60C3CFCB
P 3600 1900
F 0 "TP3" H 3650 1950 50  0000 L CNN
F 1 "TestPoint" V 3600 2350 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3800 1900 50  0001 C CNN
F 3 "~" H 3800 1900 50  0001 C CNN
	1    3600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 3600 2000
Connection ~ 3600 2000
Wire Wire Line
	3600 2000 3650 2000
$Comp
L Connector:TestPoint TP27
U 1 1 60C71DF3
P 12400 2450
F 0 "TP27" V 12300 2550 50  0000 L CNN
F 1 "TestPoint" V 12400 2900 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 12600 2450 50  0001 C CNN
F 3 "~" H 12600 2450 50  0001 C CNN
	1    12400 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP28
U 1 1 60C79C7E
P 13400 2700
F 0 "TP28" V 13300 2800 50  0000 L CNN
F 1 "TestPoint" V 13400 3150 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 13600 2700 50  0001 C CNN
F 3 "~" H 13600 2700 50  0001 C CNN
	1    13400 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP29
U 1 1 60C816CE
P 14250 2950
F 0 "TP29" V 14150 3050 50  0000 L CNN
F 1 "TestPoint" V 14250 3400 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 14450 2950 50  0001 C CNN
F 3 "~" H 14450 2950 50  0001 C CNN
	1    14250 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP30
U 1 1 60C88FC4
P 15250 3150
F 0 "TP30" V 15150 3250 50  0000 L CNN
F 1 "TestPoint" V 15250 3600 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 15450 3150 50  0001 C CNN
F 3 "~" H 15450 3150 50  0001 C CNN
	1    15250 3150
	0    1    1    0   
$EndComp
Wire Notes Line
	650  6700 3850 6700
Wire Notes Line
	3850 6700 3850 9550
Wire Notes Line
	3850 9550 650  9550
Wire Notes Line
	650  9550 650  6700
Wire Notes Line
	650  9600 3850 9600
Wire Notes Line
	3850 9600 3850 11000
Wire Notes Line
	3850 11000 650  11000
Wire Notes Line
	650  11000 650  9600
Text Notes 2550 9950 0    98   ~ 0
Real Time Clock \nBattery\n
Text Notes 2550 6950 0    98   ~ 0
EEPROM - SPI\n
$Comp
L Memory_EEPROM:AT25xxx U2
U 1 1 60D65E5A
P 2000 8150
F 0 "U2" H 1700 8650 50  0000 C CNN
F 1 "AT25xxx" H 1800 8550 50  0000 C CNN
F 2 "Footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2000 8150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8707-SEEPROM-AT25010B-020B-040B-Datasheet.pdf" H 2000 8150 50  0001 C CNN
	1    2000 8150
	1    0    0    -1  
$EndComp
Text Label 2950 8150 2    50   ~ 0
SPI3_MOSI
Text Label 2950 8250 2    50   ~ 0
SPI3_MISO
Wire Wire Line
	2400 8250 2950 8250
Wire Wire Line
	2400 8150 2950 8150
Text Label 2950 8050 2    50   ~ 0
SPI3_SCK
Wire Wire Line
	2400 8050 2950 8050
Text Label 1000 8150 0    50   ~ 0
EEPROM_HOLD
Wire Wire Line
	1000 8150 1600 8150
Text Label 1000 8050 0    50   ~ 0
EEPROM_WP
Wire Wire Line
	1000 8050 1600 8050
Text Label 1000 8250 0    50   ~ 0
SPI3_CS
Wire Wire Line
	1000 8250 1600 8250
$Comp
L power:GNDD #PWR0114
U 1 1 60E2D434
P 2000 8550
F 0 "#PWR0114" H 2000 8300 50  0001 C CNN
F 1 "GNDD" H 2004 8395 50  0000 C CNN
F 2 "" H 2000 8550 50  0001 C CNN
F 3 "" H 2000 8550 50  0001 C CNN
	1    2000 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 8450 2000 8550
$Comp
L Device:C_Small C1
U 1 1 60E4324B
P 2350 7500
F 0 "C1" H 2442 7546 50  0000 L CNN
F 1 "100nF" H 2442 7455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2350 7500 50  0001 C CNN
F 3 "~" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7400 2350 7350
$Comp
L power:GNDD #PWR0115
U 1 1 60E43252
P 2350 7650
F 0 "#PWR0115" H 2350 7400 50  0001 C CNN
F 1 "GNDD" H 2354 7495 50  0000 C CNN
F 2 "" H 2350 7650 50  0001 C CNN
F 3 "" H 2350 7650 50  0001 C CNN
	1    2350 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7600 2350 7650
Wire Wire Line
	2000 7350 2350 7350
$Comp
L power:+3.3V #PWR0116
U 1 1 60E5B310
P 2000 7250
F 0 "#PWR0116" H 2000 7100 50  0001 C CNN
F 1 "+3.3V" H 2015 7423 50  0000 C CNN
F 2 "" H 2000 7250 50  0001 C CNN
F 3 "" H 2000 7250 50  0001 C CNN
	1    2000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7850 2000 7350
Connection ~ 2000 7350
Wire Wire Line
	2000 7350 2000 7250
Wire Notes Line
	650  6600 650  700 
Wire Notes Line
	650  700  7900 700 
Wire Notes Line
	7900 700  7900 6600
Wire Notes Line
	7900 6600 650  6600
Wire Notes Line
	15950 700  7950 700 
Wire Notes Line
	15950 5950 15950 700 
Wire Notes Line
	7950 5950 15950 5950
Wire Notes Line
	7950 700  7950 5950
Text Notes 8050 5800 0    98   ~ 0
Signal acquisition from power converter
Wire Notes Line
	11600 2200 11600 4000
Wire Notes Line
	11600 4000 15700 4000
Wire Notes Line
	15700 4000 15700 2200
Wire Notes Line
	15700 2200 11600 2200
Text Notes 11650 3900 0    98   ~ 0
Precision divider to adapt 5V signals to 3,3V. 
Text Notes 800  6500 0    98   ~ 0
NUCLEO-G474RE  Pin Mapping
$Comp
L power:GNDD #PWR0117
U 1 1 60480F85
P 8450 4440
F 0 "#PWR0117" H 8450 4190 50  0001 C CNN
F 1 "GNDD" H 8454 4285 50  0000 C CNN
F 2 "" H 8450 4440 50  0001 C CNN
F 3 "" H 8450 4440 50  0001 C CNN
	1    8450 4440
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4440 8450 4400
$Comp
L power:GNDD #PWR0118
U 1 1 6048A106
P 8450 3940
F 0 "#PWR0118" H 8450 3690 50  0001 C CNN
F 1 "GNDD" H 8454 3785 50  0000 C CNN
F 2 "" H 8450 3940 50  0001 C CNN
F 3 "" H 8450 3940 50  0001 C CNN
	1    8450 3940
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3940 8450 3900
Wire Wire Line
	9300 3900 8450 3900
Connection ~ 8450 3900
Wire Wire Line
	8450 3900 8450 3890
Wire Wire Line
	9300 4400 8450 4400
Connection ~ 8450 4400
Wire Wire Line
	8450 4400 8450 4390
Text Label 8650 4700 0    50   ~ 0
N_GND
Wire Wire Line
	8650 4700 9300 4700
Wire Wire Line
	9100 4200 9300 4200
Text Label 9100 4200 2    50   ~ 0
E5V
Wire Wire Line
	9100 4800 9300 4800
Text Label 9100 4800 2    50   ~ 0
E5V
Wire Wire Line
	11300 2550 11100 2550
Text Label 11300 2550 0    50   ~ 0
E5V
Wire Wire Line
	11350 2800 11100 2800
Text Label 11350 2800 0    50   ~ 0
AGND
$Comp
L Device:Jumper JP2
U 1 1 604AA020
P 1500 10050
F 0 "JP2" H 1500 10314 50  0000 C CNN
F 1 "Jumper" H 1500 10223 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1500 10050 50  0001 C CNN
F 3 "~" H 1500 10050 50  0001 C CNN
	1    1500 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 10050 1200 10200
Wire Wire Line
	1800 10050 1950 10050
$Comp
L Connector:TestPoint TP1
U 1 1 60C12F4B
P 1750 5150
F 0 "TP1" H 1800 5200 50  0000 L CNN
F 1 "TestPoint" V 1750 5600 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 1950 5150 50  0001 C CNN
F 3 "~" H 1950 5150 50  0001 C CNN
	1    1750 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 60C23937
P 4950 5150
F 0 "TP12" H 5000 5200 50  0000 L CNN
F 1 "TestPoint" V 4950 5600 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 5150 5150 50  0001 C CNN
F 3 "~" H 5150 5150 50  0001 C CNN
	1    4950 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 60B53C8C
P 7050 2450
F 0 "TP18" V 7050 2700 50  0000 L CNN
F 1 "TestPoint" V 7050 2900 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7250 2450 50  0001 C CNN
F 3 "~" H 7250 2450 50  0001 C CNN
	1    7050 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 60B53C86
P 7050 2350
F 0 "TP17" V 7050 2600 50  0000 L CNN
F 1 "TestPoint" V 7050 2800 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7250 2350 50  0001 C CNN
F 3 "~" H 7250 2350 50  0001 C CNN
	1    7050 2350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 60B5AD7F
P 7050 2650
F 0 "TP20" V 7050 2900 50  0000 L CNN
F 1 "TestPoint" V 7050 3100 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7250 2650 50  0001 C CNN
F 3 "~" H 7250 2650 50  0001 C CNN
	1    7050 2650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 60B5AD79
P 7050 2550
F 0 "TP19" V 7050 2800 50  0000 L CNN
F 1 "TestPoint" V 7050 3000 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 7250 2550 50  0001 C CNN
F 3 "~" H 7250 2550 50  0001 C CNN
	1    7050 2550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 60B8ADD7
P 4550 4550
F 0 "TP11" V 4550 4800 50  0000 L CNN
F 1 "TestPoint" V 4550 5000 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 4550 50  0001 C CNN
F 3 "~" H 4750 4550 50  0001 C CNN
	1    4550 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 60B8ADDD
P 4550 4450
F 0 "TP10" V 4550 4700 50  0000 L CNN
F 1 "TestPoint" V 4550 4900 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 4450 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
	1    4550 4450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 60B83AFE
P 4550 4350
F 0 "TP9" V 4550 4600 50  0000 L CNN
F 1 "TestPoint" V 4550 4800 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 4350 50  0001 C CNN
F 3 "~" H 4750 4350 50  0001 C CNN
	1    4550 4350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 60B83B04
P 4550 4250
F 0 "TP8" V 4550 4500 50  0000 L CNN
F 1 "TestPoint" V 4550 4700 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 4250 50  0001 C CNN
F 3 "~" H 4750 4250 50  0001 C CNN
	1    4550 4250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 60B7361A
P 4550 2950
F 0 "TP7" V 4550 3200 50  0000 L CNN
F 1 "TestPoint" V 4550 3400 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 2950 50  0001 C CNN
F 3 "~" H 4750 2950 50  0001 C CNN
	1    4550 2950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 60B73620
P 4550 2850
F 0 "TP6" V 4550 3100 50  0000 L CNN
F 1 "TestPoint" V 4550 3300 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4550 2850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 60B6C36F
P 4550 2750
F 0 "TP5" V 4550 3000 50  0000 L CNN
F 1 "TestPoint" V 4550 3200 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 2750 50  0001 C CNN
F 3 "~" H 4750 2750 50  0001 C CNN
	1    4550 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 60B6C375
P 4550 2650
F 0 "TP4" V 4550 2900 50  0000 L CNN
F 1 "TestPoint" V 4550 3100 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4750 2650 50  0001 C CNN
F 3 "~" H 4750 2650 50  0001 C CNN
	1    4550 2650
	0    -1   -1   0   
$EndComp
Text Label 5350 5300 0    50   ~ 0
AGND
$Comp
L Connector:TestPoint TP21
U 1 1 60AD2F7C
P 8650 2700
F 0 "TP21" V 8650 2950 50  0000 L CNN
F 1 "TestPoint" V 8650 3150 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8850 2700 50  0001 C CNN
F 3 "~" H 8850 2700 50  0001 C CNN
	1    8650 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP31
U 1 1 60591945
P 5350 5150
F 0 "TP31" H 5400 5200 50  0000 L CNN
F 1 "TestPoint" V 5350 5600 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 5550 5150 50  0001 C CNN
F 3 "~" H 5550 5150 50  0001 C CNN
	1    5350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5150 5350 5300
Text Label 1000 3200 0    50   ~ 0
HRTIM1_FLT2
Wire Wire Line
	1000 3200 1550 3200
Wire Wire Line
	1100 2900 1550 2900
$Comp
L Connector:TestPoint TP32
U 1 1 6075AFB6
P 8200 7150
F 0 "TP32" H 8250 7200 50  0000 L CNN
F 1 "TestPoint" V 8200 7600 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 8400 7150 50  0001 C CNN
F 3 "~" H 8400 7150 50  0001 C CNN
	1    8200 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP33
U 1 1 60765C2E
P 9350 7150
F 0 "TP33" H 9400 7200 50  0000 L CNN
F 1 "TestPoint" V 9350 7600 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 9550 7150 50  0001 C CNN
F 3 "~" H 9550 7150 50  0001 C CNN
	1    9350 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 7200 8500 7200
Connection ~ 8500 7200
Wire Wire Line
	8500 7200 8500 7150
Wire Wire Line
	9350 7200 9600 7200
Connection ~ 9600 7200
Wire Wire Line
	9600 7200 9600 7150
Wire Wire Line
	9350 7150 9350 7200
Wire Wire Line
	8200 7150 8200 7200
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 605189A2
P 4350 5850
F 0 "J5" H 4458 6131 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4458 6040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4350 5850 50  0001 C CNN
F 3 "~" H 4350 5850 50  0001 C CNN
	1    4350 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 6051B580
P 2750 5750
F 0 "J4" H 2858 5931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2858 5840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2750 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
Text Label 3050 5750 0    50   ~ 0
USART1_TX
Wire Wire Line
	3050 5750 2950 5750
Text Label 3050 5850 0    50   ~ 0
USART1_RX
Wire Wire Line
	3050 5850 2950 5850
Text Label 4700 5850 0    50   ~ 0
SPI3_MOSI
Text Label 4700 5750 0    50   ~ 0
SPI3_MISO
Text Label 4700 5950 0    50   ~ 0
SPI3_SCK
Wire Wire Line
	4700 5950 4550 5950
Text Label 1100 2900 0    50   ~ 0
SPI3_CS
Text Label 4700 6050 0    50   ~ 0
SPI3_CS2
Wire Wire Line
	4700 6050 4550 6050
Wire Wire Line
	4700 5850 4550 5850
Wire Wire Line
	4700 5750 4550 5750
Text Label 6550 2150 0    50   ~ 0
SPI3_CS2
Wire Wire Line
	6550 2150 6500 2150
$EndSCHEMATC

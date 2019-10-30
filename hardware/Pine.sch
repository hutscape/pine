EESchema Schematic File Version 4
LIBS:Pine-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pine"
Date "2019-10-30"
Rev "V1.0"
Comp "Hutscape"
Comment1 "Control aircon by monitoring temperature in other parts of the room"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_Optical:TSOP43xx U1
U 1 1 5D38286F
P 1650 5250
F 0 "U1" H 1250 5550 50  0000 L CNN
F 1 "IR Receiver" H 1250 4900 50  0000 L CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 1600 4875 50  0001 C CNN
F 3 "https://docs-apac.rs-online.com/webdocs/0e30/0900766b80e30b9e.pdf" H 2300 5550 50  0001 C CNN
F 4 "Electronics" H -100 3500 50  0001 C CNN "Category"
F 5 "Vishay" H -100 3500 50  0001 C CNN "Manufacturer"
F 6 "5" H -100 3500 50  0001 C CNN "Minimum Order"
F 7 "TH" H -100 3500 50  0001 C CNN "Package"
F 8 "TSOP4838" H 1450 4800 50  0000 C CNN "Part No."
F 9 "1.876" H -100 3500 50  0001 C CNN "Unit cost"
F 10 "RS Components" H -100 3500 50  0001 C CNN "Vendor"
F 11 "https://sg.rs-online.com/web/p/ir-receivers/7085115/?sra=pstk" H -100 3500 50  0001 C CNN "Vendor link"
F 12 "4" H -50 200 50  0001 C CNN "Stock"
F 13 "38" H -50 200 50  0001 C CNN "Stock No."
	1    1650 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D387A81
P 2350 5750
F 0 "#PWR02" H 2350 5500 50  0001 C CNN
F 1 "GND" H 2355 5577 50  0000 C CNN
F 2 "" H 2350 5750 50  0001 C CNN
F 3 "" H 2350 5750 50  0001 C CNN
	1    2350 5750
	1    0    0    -1  
$EndComp
Text Notes 1100 4350 0    79   ~ 16
IR Receiver
Text Label 3000 5250 0    50   ~ 0
IR_Receiver
NoConn ~ 6550 5750
$Comp
L power:GND #PWR013
U 1 1 5D652F63
P 6750 5800
F 0 "#PWR013" H 6750 5550 50  0001 C CNN
F 1 "GND" H 6755 5627 50  0000 C CNN
F 2 "" H 6750 5800 50  0001 C CNN
F 3 "" H 6750 5800 50  0001 C CNN
	1    6750 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 5800 6750 5750
Text Label 7800 5550 0    50   ~ 0
SCL
Text Label 7800 5350 0    50   ~ 0
SDA
Text Notes 6300 4350 0    79   ~ 16
Temperature Sensor
$Comp
L power:GND #PWR016
U 1 1 5D77CBEB
P 10300 2400
F 0 "#PWR016" H 10300 2150 50  0001 C CNN
F 1 "GND" H 10305 2227 50  0000 C CNN
F 2 "" H 10300 2400 50  0001 C CNN
F 3 "" H 10300 2400 50  0001 C CNN
	1    10300 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5D77E188
P 9900 3450
F 0 "R9" V 10000 3400 50  0000 L CNN
F 1 "10k" V 9800 3400 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9900 3450 50  0001 C CNN
F 3 "" H 9900 3450 50  0001 C CNN
F 4 "Electronics" H -250 300 50  0001 C CNN "Category"
F 5 "0805" H -250 200 50  0001 C CNN "Package"
F 6 "5" H -250 0   50  0001 C CNN "Stock"
F 7 "31" H -250 0   50  0001 C CNN "Stock No."
F 8 "Internal stock" H -250 0   50  0001 C CNN "Vendor"
	1    9900 3450
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5D77FC5D
P 9700 3700
F 0 "SW2" V 9700 3850 50  0000 L CNN
F 1 "Push button" V 9800 3850 50  0000 L CNN
F 2 "Push_Button:Tactile_pushbutton" H 9700 3900 50  0001 C CNN
F 3 "~" H 9700 3900 50  0001 C CNN
F 4 "Connector" H -250 200 50  0001 C CNN "Category"
F 5 "SMD" H -250 250 50  0001 C CNN "Package"
F 6 "7" H -250 250 50  0001 C CNN "Stock"
F 7 "14" H -250 250 50  0001 C CNN "Stock No."
F 8 "Internal stock" H -250 0   50  0001 C CNN "Vendor"
	1    9700 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D78151A
P 9700 3900
F 0 "#PWR015" H 9700 3650 50  0001 C CNN
F 1 "GND" H 9705 3727 50  0000 C CNN
F 2 "" H 9700 3900 50  0001 C CNN
F 3 "" H 9700 3900 50  0001 C CNN
	1    9700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D7A2BCE
P 6050 1850
F 0 "C4" V 6100 1750 50  0000 C CNN
F 1 "1uF" V 6100 1950 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6050 1850 50  0001 C CNN
F 3 "" H 6050 1850 50  0001 C CNN
F 4 "Electronics" H -250 100 50  0001 C CNN "Category"
F 5 "0805" H -250 0   50  0001 C CNN "Package"
F 6 "Internal stock" H -250 0   50  0001 C CNN "Vendor"
F 7 "0" H -250 0   50  0001 C CNN "Unit cost"
F 8 "40" H 0   0   50  0001 C CNN "Stock"
F 9 "17" H 0   0   50  0001 C CNN "Stock No."
	1    6050 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D7A4936
P 5750 1850
F 0 "#PWR012" H 5750 1600 50  0001 C CNN
F 1 "GND" H 5750 1900 50  0000 C CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5D7EA3D5
P 1350 1750
F 0 "J1" H 1200 2150 50  0000 C CNN
F 1 "USB Micro type-B" H 1500 2250 50  0000 C CNN
F 2 "USB_Micro-B_Horizontal:USB_Micro-B_Horizontal-U254-051T-4BH23-S2B" H 1500 1700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Jing-Extension-of-the-Electronic-Co-LCSC-MICRO-USB-5S-B-Type-horns-High-temperature_C10418.pdf" H 1500 1700 50  0001 C CNN
F 4 "Connector" H -100 0   50  0001 C CNN "Category"
F 5 "SMD" H -100 0   50  0001 C CNN "Package"
F 6 "Jing Extension of the Electronic Co." H -100 0   50  0001 C CNN "Manufacturer"
F 7 "C10418" H -100 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -100 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/USB-Connectors_Jing-Extension-of-the-Electronic-Co-Jing-Extension-of-the-Electronic-Co-MICRO-USB-5S-B-Type-horns-High-temperature_C10418.html" H -100 0   50  0001 C CNN "Vendor link"
F 10 "0.079" H -100 0   50  0001 C CNN "Unit cost"
F 11 "5" H 0   0   50  0001 C CNN "Minimum Order"
	1    1350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5D7EC8A5
P 2250 1550
F 0 "D1" H 2400 1500 50  0000 C CNN
F 1 "Schottky diode" H 2250 1400 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2250 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR230LSFT1G_C126673.pdf" H 2250 1550 50  0001 C CNN
F 4 "Electronics" H -100 0   50  0001 C CNN "Category"
F 5 "ON Semi" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "MBR230LSFT1G" H 2250 1400 50  0000 C CNN "Part No."
F 7 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 8 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_ON-Semicon_MBR230LSFT1G_ON-Semicon-ON-MBR230LSFT1G_C126673.html" H 0   0   50  0001 C CNN "Vendor link"
F 9 "5" H 0   0   50  0001 C CNN "Minimum Order"
F 10 "0.087" H 0   0   50  0001 C CNN "Unit cost"
F 11 "SOD-123F " H 0   0   50  0001 C CNN "Package"
	1    2250 1550
	-1   0    0    1   
$EndComp
Text Notes 1100 1100 0    79   ~ 16
Power Management
Text Label 8650 3550 2    50   ~ 0
USB_D-
Text Label 8650 3650 2    50   ~ 0
USB_D+
Text Label 2000 1850 0    50   ~ 0
USB_D-
Text Label 2000 1750 0    50   ~ 0
USB_D+
$Comp
L power:GND #PWR01
U 1 1 5D7F78DD
P 1350 2450
F 0 "#PWR01" H 1350 2200 50  0001 C CNN
F 1 "GND" H 1355 2277 50  0000 C CNN
F 2 "" H 1350 2450 50  0001 C CNN
F 3 "" H 1350 2450 50  0001 C CNN
	1    1350 2450
	1    0    0    -1  
$EndComp
NoConn ~ 1250 2150
$Comp
L power:GND #PWR03
U 1 1 5D80158C
P 2200 3450
F 0 "#PWR03" H 2200 3200 50  0001 C CNN
F 1 "GND" H 2205 3277 50  0000 C CNN
F 2 "" H 2200 3450 50  0001 C CNN
F 3 "" H 2200 3450 50  0001 C CNN
	1    2200 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS83P Q1
U 1 1 5D8038F4
P 2250 2850
F 0 "Q1" V 2500 2850 50  0000 C CNN
F 1 "p-channel MOSFET" V 2250 2250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2450 2775 50  0001 L CIN
F 3 "https://docs-apac.rs-online.com/webdocs/0f74/0900766b80f74f2c.pdf" H 2250 2850 50  0001 L CNN
F 4 "Electronics" H -100 0   50  0001 C CNN "Category"
F 5 "BSH203,215 " V 2150 2350 50  0000 C CNN "Part No."
F 6 "Nexperia" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "RS Components" H 0   0   50  0001 C CNN "Vendor"
F 8 "https://sg.rs-online.com/web/p/mosfets/7258366/" H 0   0   50  0001 C CNN "Vendor link"
F 9 "20" H 0   0   50  0001 C CNN "Minimum Order"
F 10 "0.312" H 0   0   50  0001 C CNN "Unit cost"
F 11 "SOT-23" H 0   0   50  0001 C CNN "Package"
	1    2250 2850
	0    -1   -1   0   
$EndComp
Text Label 8000 3800 2    50   ~ 0
IR_Receiver
Text Label 7150 3600 2    50   ~ 0
IR_Emitter
Text Label 8650 3450 2    50   ~ 0
SCL
Text Label 8650 3350 2    50   ~ 0
SDA
Wire Wire Line
	8800 3200 8800 3350
Wire Wire Line
	8650 3350 8800 3350
$Comp
L Device:R_Small R1
U 1 1 5D85EFAF
P 2600 3250
F 0 "R1" H 2500 3250 50  0000 C CNN
F 1 "10k" H 2750 3250 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 3250 50  0001 C CNN
F 3 "" H 2600 3250 50  0001 C CNN
F 4 "Electronics" H -100 0   50  0001 C CNN "Category"
F 5 "0805" H -100 0   50  0001 C CNN "Package"
F 6 "5" H 0   0   50  0001 C CNN "Stock"
F 7 "31" H 0   0   50  0001 C CNN "Stock No."
F 8 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
	1    2600 3250
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5D7FCA7A
P 1350 2950
F 0 "SW1" V 1450 3150 50  0000 R CNN
F 1 "Switch" V 1450 2850 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 1350 2950 50  0001 C CNN
F 3 "" H 1350 2950 50  0001 C CNN
F 4 "Connector" H -100 0   50  0001 C CNN "Category"
F 5 "SMD" H -100 0   50  0001 C CNN "Package"
F 6 "Internal stock" H -100 0   50  0001 C CNN "Vendor"
F 7 "50" H 0   0   50  0001 C CNN "Stock"
F 8 "40" H 0   0   50  0001 C CNN "Stock No."
	1    1350 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D885207
P 3450 2250
F 0 "#PWR06" H 3450 2000 50  0001 C CNN
F 1 "GND" H 3455 2077 50  0000 C CNN
F 2 "" H 3450 2250 50  0001 C CNN
F 3 "" H 3450 2250 50  0001 C CNN
	1    3450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2750 2150 2750
Wire Wire Line
	1350 2750 1650 2750
Connection ~ 2050 2750
Wire Wire Line
	1900 3050 2250 3050
Connection ~ 2250 3050
Wire Wire Line
	2400 1550 2600 1550
Wire Wire Line
	2600 2750 2450 2750
Wire Notes Line
	1050 1150 2300 1150
Wire Notes Line
	2300 1150 2300 950 
Text Notes 3000 4100 0    43   ~ 0
2 alternative sources of power can be used:\n- 3 AA batteries (4.5V)\n- USB power (5.0V)\n\nWhen both the power sources \nare connected, only the USB \npower will be used as the \nMOSFET will cut-off power \nfrom the batteries.
Wire Wire Line
	10100 2100 10300 2100
Wire Wire Line
	10300 2100 10300 2300
Wire Wire Line
	10100 2300 10300 2300
Connection ~ 10300 2300
Wire Wire Line
	10300 2300 10300 2400
Wire Wire Line
	7150 3600 7300 3600
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-AUT U4
U 1 1 5D778115
P 8200 2200
F 0 "U4" V 9050 2150 50  0000 C CNN
F 1 "MCU" V 9050 1450 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 7250 450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAMD21-Family-DataSheet-DS40001882D.pdf" H 8200 3200 50  0001 C CNN
F 4 "Electronics" H -250 100 50  0001 C CNN "Category"
F 5 "ATSAMD21G18A-AUT" V 9050 900 50  0000 C CNN "Part No."
F 6 "6.05" H -250 0   50  0001 C CNN "Unit cost"
F 7 "LCSC" H -250 0   50  0001 C CNN "Vendor"
F 8 "https://lcsc.com/product-detail/ATMEL-AVR_ATMEL_ATSAMD21G18A-AU_ATSAMD21G18A-AU_C78624.html" H -250 0   50  0001 C CNN "Vendor link"
F 9 "TQFN-48" H -250 0   50  0001 C CNN "Package"
F 10 "Microchip Tech" H -250 0   50  0001 C CNN "Manufacturer"
F 11 "1" H -250 0   50  0001 C CNN "Minimum Order"
	1    8200 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 1850 6300 1850
Wire Wire Line
	5750 1850 5950 1850
Wire Notes Line
	1050 950  10650 950 
Text Notes 4600 1100 0    79   ~ 16
Micro-controller
Wire Notes Line
	5650 1150 5650 950 
NoConn ~ 6600 3200
NoConn ~ 6700 3200
NoConn ~ 6800 3200
NoConn ~ 6900 3200
NoConn ~ 7000 3200
NoConn ~ 7100 3200
NoConn ~ 7400 3200
NoConn ~ 7500 3200
NoConn ~ 7600 3200
NoConn ~ 7700 3200
NoConn ~ 8000 3200
NoConn ~ 8400 3200
NoConn ~ 8500 3200
NoConn ~ 8600 3200
NoConn ~ 8700 3200
NoConn ~ 9300 3200
NoConn ~ 7300 1200
NoConn ~ 6600 1200
NoConn ~ 7000 1200
NoConn ~ 7100 1200
NoConn ~ 7200 1200
$Comp
L Device:R_Small R2
U 1 1 5DA3ACF8
P 2950 1650
F 0 "R2" V 3050 1650 50  0000 C CNN
F 1 "100k" V 3150 1650 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2950 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/RALEC-RTT051003BTP_C312260.pdf" H 2950 1650 50  0001 C CNN
F 4 "Electronics" H -100 0   50  0001 C CNN "Category"
F 5 "0805" H -100 0   50  0001 C CNN "Package"
F 6 "RALEC" H -100 0   50  0001 C CNN "Manufacturer"
F 7 "RTT051003BTP" H -100 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -100 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Others_RALEC-RTT051003BTP_C312260.html" H -100 0   50  0001 C CNN "Vendor link"
F 10 "0.042" H -100 0   50  0001 C CNN "Unit cost"
F 11 "20" H 0   0   50  0001 C CNN "Minimum Order"
	1    2950 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1550 2700 1550
Connection ~ 2600 1550
Wire Wire Line
	2700 1650 2700 1550
Wire Wire Line
	3050 1650 3150 1650
Wire Wire Line
	2700 1650 2850 1650
Connection ~ 2700 1550
Wire Notes Line
	2950 4150 2950 3400
Wire Notes Line
	2950 3400 4550 3400
Wire Notes Line
	1050 6100 10650 6100
Wire Notes Line
	1050 4400 1850 4400
Wire Notes Line
	1850 4400 1850 4150
Wire Notes Line
	6200 4400 7600 4400
Wire Notes Line
	7600 4400 7600 4150
Text Label 4350 1550 0    50   ~ 0
2V8
Wire Wire Line
	1350 3150 1350 3300
Wire Wire Line
	2600 3050 2600 3150
Wire Wire Line
	2250 3050 2600 3050
Wire Wire Line
	2600 3350 2600 3450
Wire Wire Line
	2600 3450 2200 3450
Connection ~ 2200 3450
Text Label 5550 1650 0    50   ~ 0
2V8
Text Label 10200 3450 0    50   ~ 0
2V8
Text Label 7900 4450 0    50   ~ 0
2V8
Text Label 3000 4800 0    50   ~ 0
2V8
Wire Wire Line
	6300 2450 6150 2450
Wire Wire Line
	5150 2100 5250 2100
$Comp
L power:GND #PWR010
U 1 1 5D98C190
P 5150 2100
F 0 "#PWR010" H 5150 1850 50  0001 C CNN
F 1 "GND" H 5150 2150 50  0000 C CNN
F 2 "" H 5150 2100 50  0001 C CNN
F 3 "" H 5150 2100 50  0001 C CNN
	1    5150 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5D7B30A9
P 5350 2100
F 0 "C3" V 5250 2100 50  0000 C CNN
F 1 "100nF" V 5450 2100 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 2100 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/281/murata_03122018_GCM_Series-1310150.pdf" H 5350 2100 50  0001 C CNN
F 4 "Electronics" H -200 100 50  0001 C CNN "Category"
F 5 "0805" H -200 0   50  0001 C CNN "Package"
F 6 "Murata Electronics" H -200 0   50  0001 C CNN "Manufacturer"
F 7 "GCM21BR72A104KA37L" H -200 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -200 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_MuRata_GCM21BR72A104KA37L_100nF-104-10-100V-Car-level_C85866.html" H -200 0   50  0001 C CNN "Vendor link"
F 10 "0.030" H -200 0   50  0001 C CNN "Unit cost"
F 11 "20" H -200 0   50  0001 C CNN "Minimum Order"
	1    5350 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DB58B62
P 5450 2450
F 0 "C2" V 5550 2350 50  0000 C CNN
F 1 "100nF" V 5550 2600 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 2450 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/281/murata_03122018_GCM_Series-1310150.pdf" H 5450 2450 50  0001 C CNN
F 4 "Electronics" H 350 100 50  0001 C CNN "Category"
F 5 "0805" H 350 0   50  0001 C CNN "Package"
F 6 "Murata Electronics" H 350 0   50  0001 C CNN "Manufacturer"
F 7 "GCM21BR72A104KA37L" H 350 0   50  0001 C CNN "Part No."
F 8 "LCSC" H 350 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_MuRata_GCM21BR72A104KA37L_100nF-104-10-100V-Car-level_C85866.html" H 350 0   50  0001 C CNN "Vendor link"
F 10 "0.030" H 350 0   50  0001 C CNN "Unit cost"
F 11 "20" H 350 0   50  0001 C CNN "Minimum Order"
	1    5450 2450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DB59128
P 4950 2250
F 0 "C1" V 4900 2150 50  0000 C CNN
F 1 "100nF" V 4800 2200 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 2250 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/281/murata_03122018_GCM_Series-1310150.pdf" H 4950 2250 50  0001 C CNN
F 4 "Electronics" H 200 100 50  0001 C CNN "Category"
F 5 "0805" H 200 0   50  0001 C CNN "Package"
F 6 "Murata Electronics" H 200 0   50  0001 C CNN "Manufacturer"
F 7 "GCM21BR72A104KA37L" H 200 0   50  0001 C CNN "Part No."
F 8 "LCSC" H 200 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_MuRata_GCM21BR72A104KA37L_100nF-104-10-100V-Car-level_C85866.html" H 200 0   50  0001 C CNN "Vendor link"
F 10 "0.030" H 200 0   50  0001 C CNN "Unit cost"
F 11 "20" H 200 0   50  0001 C CNN "Minimum Order"
	1    4950 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2450 5200 2450
Wire Wire Line
	5200 2450 5200 2650
Wire Wire Line
	4850 2250 4850 2650
$Comp
L power:GND #PWR08
U 1 1 5DB665D4
P 5200 2650
F 0 "#PWR08" H 5200 2400 50  0001 C CNN
F 1 "GND" H 5200 2500 50  0000 C CNN
F 2 "" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DB6693D
P 4850 2650
F 0 "#PWR07" H 4850 2400 50  0001 C CNN
F 1 "GND" H 4850 2500 50  0000 C CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "" H 4850 2650 50  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2150 1350 2200
Wire Wire Line
	2900 1550 3100 1550
Wire Wire Line
	2700 1550 2900 1550
Connection ~ 2900 1550
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DB1A789
P 2900 1550
F 0 "#FLG03" H 2900 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 1723 50  0000 C CNN
F 2 "" H 2900 1550 50  0001 C CNN
F 3 "~" H 2900 1550 50  0001 C CNN
	1    2900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1550 1750 1550
Wire Wire Line
	5450 2100 5550 2100
Connection ~ 5550 2100
$Comp
L Sensor_Humidity:Si7021-A20 U3
U 1 1 5D78D887
P 6650 5450
F 0 "U3" H 6350 5200 50  0000 L CNN
F 1 "Temperature sensor" H 5700 5100 50  0000 L CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_3x3mm_P1mm_EP1.5x2.4mm" H 6650 5050 50  0001 C CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/Si7021-A20.pdf" H 6450 5750 50  0001 C CNN
F 4 "Si7021-A20" H 6200 5000 50  0000 C CNN "Part No."
F 5 "Electronics" H -2700 500 50  0001 C CNN "Category"
F 6 "1" H -450 300 50  0001 C CNN "Stock"
F 7 "5" H -450 300 50  0001 C CNN "Stock No."
F 8 "Internal stock" H -450 300 50  0001 C CNN "Vendor"
F 9 "DFN" H -450 300 50  0001 C CNN "Package"
F 10 "Si Labs" H 0   0   50  0001 C CNN "Manufacturer"
	1    6650 5450
	-1   0    0    -1  
$EndComp
Text Label 8650 3750 2    50   ~ 0
TX_LED
Wire Wire Line
	8900 3200 8900 3450
Wire Wire Line
	8900 3450 8650 3450
Wire Wire Line
	9000 3200 9000 3550
Wire Wire Line
	9000 3550 8650 3550
Wire Wire Line
	9100 3200 9100 3650
Wire Wire Line
	9100 3650 8650 3650
Wire Wire Line
	9200 3200 9200 3750
Wire Wire Line
	9200 3750 8650 3750
Wire Notes Line
	5650 1150 4550 1150
Text Label 6500 1050 2    50   ~ 0
RX_LED
Wire Wire Line
	6700 1050 6700 1200
Wire Notes Line
	8050 4150 8050 6100
Text Notes 8100 4350 0    79   ~ 16
LEDs
Wire Notes Line
	8050 4400 8500 4400
Wire Notes Line
	8500 4400 8500 4150
Text Label 8450 5800 2    50   ~ 0
TX_LED
$Comp
L Device:R_Small R6
U 1 1 5D80AD25
P 8450 5100
F 0 "R6" H 8500 5100 50  0000 L CNN
F 1 "470R" H 8200 5100 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8450 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 8450 5100 50  0001 C CNN
F 4 "Electronics" H -1700 1950 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "Yes" H 0   0   50  0001 C CNN "DNP"
F 10 "50" H 0   0   50  0001 C CNN "Minimum Order"
F 11 "0.0050 " H 0   0   50  0001 C CNN "Unit cost"
F 12 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 0   0   50  0001 C CNN "Vendor link"
	1    8450 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5D80BD25
P 8450 4750
F 0 "D4" V 8550 4750 50  0000 R CNN
F 1 "LED Yellow" H 8600 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8450 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 8450 4750 50  0001 C CNN
F 4 "Electronics" H 0   200 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H 0   0   50  0001 C CNN "Vendor link"
F 10 "0.058" H 0   0   50  0001 C CNN "Unit cost"
F 11 "Yes" H 0   0   50  0001 C CNN "DNP"
F 12 "10" H 0   0   50  0001 C CNN "Minimum Order"
	1    8450 4750
	0    -1   -1   0   
$EndComp
Text Label 8450 4550 2    50   ~ 0
2V8
Text Label 9050 4550 2    50   ~ 0
2V8
$Comp
L Device:LED D5
U 1 1 5D81359F
P 9050 4750
F 0 "D5" V 9150 4750 50  0000 R CNN
F 1 "LED Yellow" H 9250 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9050 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 9050 4750 50  0001 C CNN
F 4 "Electronics" H 50  200 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H 0   0   50  0001 C CNN "Vendor link"
F 10 "0.058" H 0   0   50  0001 C CNN "Unit cost"
F 11 "Yes" H 0   0   50  0001 C CNN "DNP"
F 12 "10" H 0   0   50  0001 C CNN "Minimum Order"
	1    9050 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5D813FF5
P 9050 5100
F 0 "R7" H 9100 5100 50  0000 L CNN
F 1 "470R" H 8800 5100 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9050 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 9050 5100 50  0001 C CNN
F 4 "Electronics" H -1100 1950 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "Yes" H 0   0   50  0001 C CNN "DNP"
F 10 "50" H 0   0   50  0001 C CNN "Minimum Order"
F 11 "0.0050 " H 0   0   50  0001 C CNN "Unit cost"
F 12 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 0   0   50  0001 C CNN "Vendor link"
	1    9050 5100
	1    0    0    -1  
$EndComp
Text Label 9050 5800 2    50   ~ 0
RX_LED
Text Label 9600 4550 2    50   ~ 0
2V8
$Comp
L Device:LED D6
U 1 1 5D81C9CF
P 9600 4750
F 0 "D6" V 9700 4750 50  0000 R CNN
F 1 "LED Yellow" H 9800 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9600 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 9600 4750 50  0001 C CNN
F 4 "Electronics" H 100 200 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H 0   0   50  0001 C CNN "Vendor link"
F 10 "0.058" H 0   0   50  0001 C CNN "Unit cost"
F 11 "10" H 0   0   50  0001 C CNN "Minimum Order"
	1    9600 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5D81D0F9
P 9600 5100
F 0 "R8" H 9650 5100 50  0000 L CNN
F 1 "470R" H 9350 5100 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9600 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 9600 5100 50  0001 C CNN
F 4 "Electronics" H -550 1950 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "50" H 0   0   50  0001 C CNN "Minimum Order"
F 10 "0.0050 " H 0   0   50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 0   0   50  0001 C CNN "Vendor link"
	1    9600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D822E57
P 9600 5600
F 0 "#PWR014" H 9600 5350 50  0001 C CNN
F 1 "GND" H 9600 5450 50  0000 C CNN
F 2 "" H 9600 5600 50  0001 C CNN
F 3 "" H 9600 5600 50  0001 C CNN
	1    9600 5600
	1    0    0    -1  
$EndComp
Text Label 8000 4000 2    50   ~ 0
LED
Text Label 10200 4550 2    50   ~ 0
2V8
$Comp
L Device:LED D7
U 1 1 5D8386A1
P 10200 4750
F 0 "D7" V 10300 4750 50  0000 R CNN
F 1 "LED Yellow" H 10400 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10200 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 10200 4750 50  0001 C CNN
F 4 "Electronics" H 100 200 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H 0   0   50  0001 C CNN "Vendor link"
F 10 "0.058" H 0   0   50  0001 C CNN "Unit cost"
F 11 "10" H 0   0   50  0001 C CNN "Minimum Order"
	1    10200 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5D839392
P 10200 5100
F 0 "R10" H 10250 5100 50  0000 L CNN
F 1 "470R" H 9950 5100 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10200 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 10200 5100 50  0001 C CNN
F 4 "Electronics" H 50  1950 50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H 0   0   50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H 0   0   50  0001 C CNN "Part No."
F 8 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 9 "50" H 0   0   50  0001 C CNN "Minimum Order"
F 10 "0.0050 " H 0   0   50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 0   0   50  0001 C CNN "Vendor link"
	1    10200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4900 8450 5000
Wire Wire Line
	8450 4550 8450 4600
Wire Wire Line
	9050 4550 9050 4600
Wire Wire Line
	9600 4550 9600 4600
Wire Wire Line
	10200 4550 10200 4600
Wire Wire Line
	10200 4900 10200 5000
Wire Wire Line
	9600 4900 9600 5000
Wire Wire Line
	9050 4900 9050 5000
Wire Wire Line
	8450 5200 8450 5800
Wire Wire Line
	9050 5200 9050 5800
Text Label 10200 5800 2    50   ~ 0
LED
Text Notes 2250 2950 0    39   ~ 0
G
Text Notes 2350 2750 0    39   ~ 0
S
Text Notes 2100 2750 0    39   ~ 0
D
Text Notes 4050 1400 0    28   Italic 0
solder after \ntesting power \nmanagement circuit\nand programming \nMCU via the SWD
Text Notes 2550 4500 0    28   Italic 0
solder after \ntesting power \nmanagement circuit\n
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D814B22
P 2200 4800
F 0 "#FLG01" H 2200 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 4950 50  0000 C CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "~" H 2200 4800 50  0001 C CNN
	1    2200 4800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5D8154F9
P 6150 2450
F 0 "#FLG05" H 6150 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 2623 50  0000 C CNN
F 2 "" H 6150 2450 50  0001 C CNN
F 3 "~" H 6150 2450 50  0001 C CNN
	1    6150 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 5200 10200 5800
Text Notes 7550 4600 0    28   Italic 0
solder after \ntesting power \nmanagement \ncircuit\n
Text Notes 1100 6300 0    79   ~ 16
SWD Programming
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5D7FC57C
P 2150 6850
F 0 "J2" H 2050 7050 50  0000 C CNN
F 1 "01x06 Male conn" H 2300 6450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2150 6850 50  0001 C CNN
F 3 "~" H 2150 6850 50  0001 C CNN
F 4 "Connector" H 150 150 50  0001 C CNN "Category"
F 5 "TH" H 150 150 50  0001 C CNN "Package"
F 6 "Yes" H -200 100 50  0001 C CNN "DNP"
F 7 "DNP" H 0   0   50  0001 C CNN "Vendor"
	1    2150 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6650 2500 6650
Text Label 8650 3850 2    50   ~ 0
SWCLK
Wire Wire Line
	9400 3200 9400 3850
Wire Wire Line
	9400 3850 8650 3850
Wire Wire Line
	6300 1850 6300 2000
Wire Wire Line
	6300 2250 6300 2300
Wire Wire Line
	6300 2450 6300 2400
Text Label 8650 3950 2    50   ~ 0
SWDIO
Wire Wire Line
	8650 3950 9500 3950
Wire Wire Line
	9500 3950 9500 3200
Wire Notes Line
	4550 950  4550 4150
Text Label 2500 6750 0    50   ~ 0
SWCLK
Wire Wire Line
	2350 6750 2500 6750
Text Label 2500 6950 0    50   ~ 0
SWDIO
Wire Wire Line
	2350 6950 2500 6950
Wire Wire Line
	2350 6850 2900 6850
Wire Wire Line
	2900 6850 2900 7000
$Comp
L power:GND #PWR05
U 1 1 5D87EFCF
P 2900 7000
F 0 "#PWR05" H 2900 6750 50  0001 C CNN
F 1 "GND" H 2905 6827 50  0000 C CNN
F 2 "" H 2900 7000 50  0001 C CNN
F 3 "" H 2900 7000 50  0001 C CNN
	1    2900 7000
	1    0    0    -1  
$EndComp
Wire Notes Line
	3700 4150 3700 7350
Wire Notes Line
	1050 6350 2300 6350
Wire Notes Line
	2300 6350 2300 6100
NoConn ~ 2350 7150
Wire Notes Line
	1050 4150 10650 4150
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5D80DB41
P 4200 1550
F 0 "JP2" H 4200 1650 50  0000 C CNN
F 1 "Open solder jumper" H 4250 1400 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4200 1550 50  0001 C CNN
F 3 "~" H 4200 1550 50  0001 C CNN
F 4 "Electronics" H 150 0   50  0001 C CNN "Category"
F 5 "Solder" H 150 0   50  0001 C CNN "Package"
F 6 "Yes" H 150 0   50  0001 C CNN "DNP"
F 7 "DNP" H 150 0   50  0001 C CNN "Vendor"
	1    4200 1550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5D86D561
P 7750 4750
F 0 "JP4" H 7750 4850 50  0000 C CNN
F 1 "Open solder jumper" H 7750 4650 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7750 4750 50  0001 C CNN
F 3 "~" H 7750 4750 50  0001 C CNN
F 4 "Electronics" H 400 0   50  0001 C CNN "Category"
F 5 "Solder" H 400 0   50  0001 C CNN "Package"
F 6 "Yes" H 400 0   50  0001 C CNN "DNP"
F 7 "DNP" H 400 0   50  0001 C CNN "Vendor"
	1    7750 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9700 3200 9700 3450
Wire Wire Line
	9700 3450 9800 3450
Connection ~ 9700 3450
Wire Wire Line
	9700 3450 9700 3500
Wire Wire Line
	10000 3450 10200 3450
Wire Wire Line
	9700 3200 9950 3200
Connection ~ 9700 3200
Text Label 9950 3200 0    50   ~ 0
RST
Text Label 2500 7050 0    50   ~ 0
RST
Wire Wire Line
	2350 7050 2500 7050
Wire Notes Line
	1050 950  1050 7350
Wire Notes Line
	10650 950  10650 6100
Text Notes 1650 7000 0    28   Italic 0
DNP: Pogopins\nwill be used for\nprogramming\nthe bootloader
NoConn ~ 1650 1950
Wire Wire Line
	1900 1550 1900 3050
Connection ~ 1900 1550
Wire Wire Line
	1900 1550 2100 1550
Wire Wire Line
	5550 1650 5550 2100
Text Notes 8300 5950 0    50   ~ 0
TX led
Text Notes 8900 5950 0    50   ~ 0
RX led
Text Notes 9450 5950 0    50   ~ 0
power led
Wire Wire Line
	9600 5200 9600 5600
Text Notes 10000 5950 0    50   ~ 0
program led
Text Notes 8250 5250 0    50   ~ 0
DNP
Text Notes 8850 4800 0    50   ~ 0
DNP
Text Notes 8250 4800 0    50   ~ 0
DNP
Text Notes 8850 5250 0    50   ~ 0
DNP
Text Notes 8150 6050 0    43   ~ 0
optional to populate TX / RX LEDs
Text Label 7150 3400 2    50   ~ 0
Batt
Wire Wire Line
	7200 3200 7200 3400
Wire Wire Line
	7200 3400 7150 3400
Wire Wire Line
	7300 3200 7300 3600
Text Label 5050 6700 2    50   ~ 0
Batt
Text Notes 3750 6300 0    79   ~ 16
Measure battery voltage
$Comp
L Device:R_Small R4
U 1 1 5D85783A
P 5350 6500
F 0 "R4" H 5409 6546 50  0000 L CNN
F 1 "100k" H 5409 6455 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 6500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/RALEC-RTT051003BTP_C312260.pdf" H 5350 6500 50  0001 C CNN
F 4 "LCSC" H -350 0   50  0001 C CNN "Vendor"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT051003BTP_C312260.html" H -350 0   50  0001 C CNN "Vendor link"
F 6 "Electronics" H -350 0   50  0001 C CNN "Category"
F 7 "RALEC" H -350 0   50  0001 C CNN "Manufacturer"
F 8 "RTT051003BTP" H -350 0   50  0001 C CNN "Part No."
F 9 "20" H -350 0   50  0001 C CNN "Minimum Order"
F 10 "0805" H -350 0   50  0001 C CNN "Package"
F 11 "0.042" H -350 0   50  0001 C CNN "Unit cost"
	1    5350 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D858007
P 5350 6850
F 0 "R5" H 5409 6896 50  0000 L CNN
F 1 "100k" H 5409 6805 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 6850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/RALEC-RTT051003BTP_C312260.pdf" H 5350 6850 50  0001 C CNN
F 4 "LCSC" H -350 0   50  0001 C CNN "Vendor"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT051003BTP_C312260.html" H -350 0   50  0001 C CNN "Vendor link"
F 6 "Electronics" H -350 0   50  0001 C CNN "Category"
F 7 "RALEC" H -350 0   50  0001 C CNN "Manufacturer"
F 8 "RTT051003BTP" H -350 0   50  0001 C CNN "Part No."
F 9 "20" H -350 0   50  0001 C CNN "Minimum Order"
F 10 "0805" H -350 0   50  0001 C CNN "Package"
F 11 "0.042" H -350 0   50  0001 C CNN "Unit cost"
	1    5350 6850
	1    0    0    -1  
$EndComp
Text Label 5350 6250 0    50   ~ 0
VBAT
Wire Wire Line
	5350 6250 5350 6400
Wire Wire Line
	5350 6600 5350 6700
Wire Wire Line
	5050 6700 5350 6700
Connection ~ 5350 6700
Wire Wire Line
	5350 6700 5350 6750
Wire Notes Line
	3700 6350 5250 6350
Wire Notes Line
	5250 6350 5250 6100
Text Notes 3750 7300 0    50   ~ 0
Measured battery \nvoltage =\nanalogRead(Batt) * 2 * 2.8 / 1024
$Comp
L Device:C_Small C5
U 1 1 5D84D506
P 2350 5050
F 0 "C5" H 2442 5096 50  0000 L CNN
F 1 "1uF" H 2442 5005 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 5050 50  0001 C CNN
F 3 "" H 2350 5050 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
F 6 "0805" H 0   0   50  0001 C CNN "Package"
F 7 "0" H 0   0   50  0001 C CNN "Unit cost"
F 8 "40" H 0   0   50  0001 C CNN "Stock"
F 9 "17" H 0   0   50  0001 C CNN "Stock No."
	1    2350 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5D876A22
P 2700 4800
F 0 "R11" V 2504 4800 50  0000 C CNN
F 1 "470R" V 2595 4800 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2700 4800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 2700 4800 50  0001 C CNN
F 4 "Electronics" H 150 0   50  0001 C CNN "Category"
F 5 "LCSC" H 150 0   50  0001 C CNN "Vendor"
F 6 "0805" H 150 0   50  0001 C CNN "Package"
F 7 "Walsin Tech Corp" H 150 0   50  0001 C CNN "Manufacturer"
F 8 "50" H 150 0   50  0001 C CNN "Minimum Order"
F 9 "WR08X4700FTL" H 150 0   50  0001 C CNN "Part No."
F 10 "0.0050 " H 150 0   50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 150 0   50  0001 C CNN "Vendor link"
F 12 "Yes" H 0   0   50  0001 C CNN "DNP"
	1    2700 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 5050 2200 5050
Wire Wire Line
	2200 5050 2200 4800
Wire Wire Line
	2200 4800 2350 4800
Wire Wire Line
	2350 4800 2350 4950
Connection ~ 2350 4800
Wire Wire Line
	2050 5450 2200 5450
Wire Wire Line
	2200 5450 2200 5700
Wire Wire Line
	2200 5700 2350 5700
Wire Wire Line
	2350 5150 2350 5700
Connection ~ 2200 4800
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5D80B2E8
P 6650 4700
F 0 "#FLG06" H 6650 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 4850 50  0000 L CNN
F 2 "" H 6650 4700 50  0001 C CNN
F 3 "~" H 6650 4700 50  0001 C CNN
	1    6650 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 4450 7900 4750
$Comp
L Device:C_Small C7
U 1 1 5D942F99
P 6950 4850
F 0 "C7" H 7050 4900 50  0000 L CNN
F 1 "1uF" H 7050 4800 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 4850 50  0001 C CNN
F 3 "" H 6950 4850 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
F 6 "0805" H 0   0   50  0001 C CNN "Package"
F 7 "0" H 0   0   50  0001 C CNN "Unit cost"
F 8 "40" H 0   0   50  0001 C CNN "Stock"
F 9 "17" H 0   0   50  0001 C CNN "Stock No."
	1    6950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4700 6650 4750
Connection ~ 6650 4750
Wire Wire Line
	6650 4750 6650 5150
$Comp
L power:GND #PWR017
U 1 1 5D95FD70
P 6950 4950
F 0 "#PWR017" H 6950 4700 50  0001 C CNN
F 1 "GND" H 6955 4777 50  0000 C CNN
F 2 "" H 6950 4950 50  0001 C CNN
F 3 "" H 6950 4950 50  0001 C CNN
	1    6950 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7150 5350 7300 5350
Wire Wire Line
	7150 5550 7600 5550
$Comp
L Device:R_Small R12
U 1 1 5D96BAB5
P 7300 5000
F 0 "R12" H 7350 5050 50  0000 L CNN
F 1 "10k" H 7350 4950 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7300 5000 50  0001 C CNN
F 3 "" H 7300 5000 50  0001 C CNN
F 4 "Electronics" H -2850 1850 50  0001 C CNN "Category"
F 5 "0805" H -1150 -100 50  0001 C CNN "Package"
F 6 "Internal stock" H -1150 -100 50  0001 C CNN "Vendor"
F 7 "5" H 0   0   50  0001 C CNN "Stock"
F 8 "31" H 0   0   50  0001 C CNN "Stock No."
	1    7300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5D96CA00
P 7600 5150
F 0 "R13" H 7650 5200 50  0000 L CNN
F 1 "10k" H 7650 5100 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7600 5150 50  0001 C CNN
F 3 "" H 7600 5150 50  0001 C CNN
F 4 "Electronics" H -2550 2000 50  0001 C CNN "Category"
F 5 "0805" H -850 50  50  0001 C CNN "Package"
F 6 "Internal stock" H -850 50  50  0001 C CNN "Vendor"
F 7 "5" H 0   0   50  0001 C CNN "Stock"
F 8 "31" H 0   0   50  0001 C CNN "Stock No."
	1    7600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4750 7300 4900
Wire Wire Line
	7300 5100 7300 5350
Connection ~ 7300 4750
Wire Wire Line
	7300 4750 7600 4750
Wire Wire Line
	7600 4750 7600 5050
Wire Wire Line
	7600 5250 7600 5550
Connection ~ 7600 4750
Connection ~ 6950 4750
Wire Wire Line
	6950 4750 6650 4750
Wire Wire Line
	6950 4750 7300 4750
Wire Wire Line
	1650 1850 2000 1850
Wire Wire Line
	1650 1750 2000 1750
$Comp
L Device:C_Small C8
U 1 1 5D887ED7
P 5350 3350
F 0 "C8" H 5442 3396 50  0000 L CNN
F 1 "10uF" H 5442 3305 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 3350 50  0001 C CNN
F 3 "~" H 5350 3350 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "3" H 0   0   50  0001 C CNN "Stock"
F 7 "30" H 0   0   50  0001 C CNN "Stock No."
F 8 "0" H 0   0   50  0001 C CNN "Unit cost"
F 9 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
	1    5350 3350
	1    0    0    -1  
$EndComp
Text Label 5350 3100 0    50   ~ 0
2V8
$Comp
L power:GND #PWR018
U 1 1 5D8889D5
P 5350 3600
F 0 "#PWR018" H 5350 3350 50  0001 C CNN
F 1 "GND" H 5350 3400 50  0000 C CNN
F 2 "" H 5350 3600 50  0001 C CNN
F 3 "" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3100 5350 3250
Wire Wire Line
	5350 3450 5350 3600
Wire Wire Line
	5550 2100 5550 2250
Connection ~ 5550 2250
Wire Wire Line
	5550 2250 5550 2450
Wire Wire Line
	2050 5250 3000 5250
Text Notes 3000 6000 0    50   ~ 0
R = 470R\nC = 1uF\n\nCut off frequency \n= 330.8Hz
Wire Wire Line
	2350 5700 2350 5750
Connection ~ 2350 5700
Wire Notes Line
	2950 5550 2950 6100
$Comp
L Regulator_Linear:LD3985M28R_SOT23 U2
U 1 1 5D901E16
P 3450 1650
F 0 "U2" H 3300 1900 50  0000 C CNN
F 1 "LDO" H 3500 1900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3450 1975 50  0001 C CIN
F 3 "https://docs-apac.rs-online.com/webdocs/151f/0900766b8151fea1.pdf" H 3450 1650 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "STMicroelectronics" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "SOT-23" H 0   0   50  0001 C CNN "Package"
F 7 "LD3985M28R_SOT23" H 3600 2000 50  0000 C CNN "Part No."
F 8 "0.32" H 0   0   50  0001 C CNN "Unit cost"
F 9 "RS Components" H 0   0   50  0001 C CNN "Vendor"
F 10 "https://sg.rs-online.com/web/p/low-dropout-voltage-regulators/6868792/" H 0   0   50  0001 C CNN "Vendor link"
	1    3450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5D90F0D3
P 3100 2050
F 0 "C6" H 2900 2050 50  0000 L CNN
F 1 "1uF" H 2900 1950 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3100 2050 50  0001 C CNN
F 3 "" H 3100 2050 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "40" H 0   0   50  0001 C CNN "Stock"
F 7 "17" H 0   0   50  0001 C CNN "Stock No."
F 8 "0" H 0   0   50  0001 C CNN "Unit cost"
F 9 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
	1    3100 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5D90F40F
P 3850 1950
F 0 "C9" H 3650 1950 50  0000 L CNN
F 1 "10nF" H 3650 1850 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 1950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811301232_Huaxin-S-T-0805B103K631CT_C338146.pdf" H 3850 1950 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "Walsin Tech Corp" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "20" H 0   0   50  0001 C CNN "Minimum Order"
F 7 "0805" H 0   0   50  0001 C CNN "Package"
F 8 "0805B103K631CT" H 0   0   50  0001 C CNN "Part No."
F 9 "LCSC" H 0   0   50  0001 C CNN "Vendor"
F 10 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B103K631CT_C338146.html" H 0   0   50  0001 C CNN "Vendor link"
F 11 "0.026" H 0   0   50  0001 C CNN "Unit cost"
	1    3850 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5D90FAE9
P 4000 1800
F 0 "C10" H 4100 1800 50  0000 L CNN
F 1 "1uF" H 4100 1700 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4000 1800 50  0001 C CNN
F 3 "" H 4000 1800 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "40" H 0   0   50  0001 C CNN "Stock"
F 7 "17" H 0   0   50  0001 C CNN "Stock No."
F 8 "0" H 0   0   50  0001 C CNN "Unit cost"
F 9 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
	1    4000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1550 3100 1950
Connection ~ 3100 1550
Wire Wire Line
	3100 1550 3150 1550
Wire Wire Line
	3750 1550 4000 1550
Wire Wire Line
	3750 1650 3850 1650
Wire Wire Line
	3850 1650 3850 1850
Wire Wire Line
	3450 1950 3450 2150
Wire Wire Line
	3100 2150 3450 2150
Connection ~ 3450 2150
Wire Wire Line
	3450 2150 3450 2250
Wire Wire Line
	3450 2150 3850 2150
Wire Wire Line
	3850 2150 3850 2050
Wire Wire Line
	4000 1700 4000 1550
Connection ~ 4000 1550
Wire Wire Line
	4000 1550 4050 1550
Wire Wire Line
	4000 1900 4000 2150
Wire Wire Line
	3850 2150 4000 2150
Connection ~ 3850 2150
Wire Wire Line
	5550 2100 6300 2100
Wire Wire Line
	6300 2250 5550 2250
Wire Wire Line
	5050 2250 5550 2250
Wire Wire Line
	7300 5350 7800 5350
Connection ~ 7300 5350
Wire Wire Line
	7600 5550 7800 5550
Connection ~ 7600 5550
Wire Wire Line
	5550 2450 6150 2450
Connection ~ 5550 2450
Connection ~ 6150 2450
Wire Wire Line
	2600 1550 2600 2750
$Comp
L Device:C_Small C11
U 1 1 5D8AA8EF
P 1750 2100
F 0 "C11" H 1700 1950 50  0000 L CNN
F 1 "10uF" H 1700 1850 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 2100 50  0001 C CNN
F 3 "~" H 1750 2100 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "0805" H 0   0   50  0001 C CNN "Package"
F 6 "3" H 0   0   50  0001 C CNN "Stock"
F 7 "30" H 0   0   50  0001 C CNN "Stock No."
F 8 "0" H 0   0   50  0001 C CNN "Unit cost"
F 9 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
	1    1750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1550 1750 2000
Connection ~ 1750 1550
Wire Wire Line
	1750 1550 1900 1550
Wire Wire Line
	1750 2200 1350 2200
Connection ~ 1350 2200
Wire Wire Line
	1350 2200 1350 2450
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5D8BB59E
P 1500 3650
F 0 "J3" V 1600 3450 50  0000 R CNN
F 1 "Battery connector" V 1400 3900 50  0000 R CNN
F 2 "BatteryHolder_Takachi_SN3-3PC_3xAA:BatteryHolder_Takachi_SN3-3PC_3AA" H 1500 3650 50  0001 C CNN
F 3 "https://docs-apac.rs-online.com/webdocs/1659/0900766b81659aed.pdf" H 1500 3650 50  0001 C CNN
F 4 "Connector" H 0   0   50  0001 C CNN "Category"
F 5 "Takachi Electric Industrial" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "1" H 0   0   50  0001 C CNN "Minimum Order"
F 7 "TH" H 0   0   50  0001 C CNN "Package"
F 8 "SN3-3PC" H 0   0   50  0001 C CNN "Part No."
F 9 "2.484" H 0   0   50  0001 C CNN "Unit cost"
F 10 "RS Components" H 0   0   50  0001 C CNN "Vendor"
F 11 "https://sg.rs-online.com/web/p/products/1756075" H 0   0   50  0001 C CNN "Vendor link"
	1    1500 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 3450 1500 3450
Wire Wire Line
	1600 3450 1700 3450
Text Notes 1450 3450 0    50   ~ 0
+
Text Notes 1600 3450 0    50   ~ 0
-
$Comp
L Device:D_Schottky D2
U 1 1 5D8CD108
P 1550 3300
F 0 "D2" H 1650 3350 50  0000 C CNN
F 1 "Schottky diode" H 1700 3400 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1550 3300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR230LSFT1G_C126673.pdf" H 1550 3300 50  0001 C CNN
F 4 "Electronics" H -800 1750 50  0001 C CNN "Category"
F 5 "ON Semi" H -700 1750 50  0001 C CNN "Manufacturer"
F 6 "MBR230LSFT1G" H 1700 3450 50  0000 C CNN "Part No."
F 7 "LCSC" H -700 1750 50  0001 C CNN "Vendor"
F 8 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_ON-Semicon_MBR230LSFT1G_ON-Semicon-ON-MBR230LSFT1G_C126673.html" H -700 1750 50  0001 C CNN "Vendor link"
F 9 "5" H -700 1750 50  0001 C CNN "Minimum Order"
F 10 "0.087" H -700 1750 50  0001 C CNN "Unit cost"
F 11 "SOD-123F " H -700 1750 50  0001 C CNN "Package"
	1    1550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3300 1700 3450
Connection ~ 1700 3450
Wire Wire Line
	1700 3450 2200 3450
Wire Wire Line
	1400 3300 1350 3300
Connection ~ 1350 3300
Wire Wire Line
	1350 3300 1350 3450
Text Label 1650 2600 0    50   ~ 0
VBAT
Wire Wire Line
	1650 2600 1650 2750
Connection ~ 1650 2750
Wire Wire Line
	1650 2750 2050 2750
Text Label 2500 6650 0    50   ~ 0
SWD_POWER_IN
Text Label 2750 1150 0    50   ~ 0
SWD_POWER_IN
Wire Wire Line
	2750 1150 2600 1150
Wire Wire Line
	2600 1150 2600 1550
Wire Wire Line
	6500 1050 6700 1050
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5DB61D31
P 7550 1200
F 0 "TP1" H 7703 1255 50  0000 L CNN
F 1 "TestPoint_Probe" H 7703 1210 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7750 1200 50  0001 C CNN
F 3 "~" H 7750 1200 50  0001 C CNN
	1    7550 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5DB62E76
P 7550 1300
F 0 "TP2" H 7703 1355 50  0000 L CNN
F 1 "TestPoint_Probe" H 7703 1310 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7750 1300 50  0001 C CNN
F 3 "~" H 7750 1300 50  0001 C CNN
	1    7550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1200 6800 1050
Wire Wire Line
	7500 1050 7500 1200
Wire Wire Line
	7500 1200 7550 1200
Wire Wire Line
	6800 1050 7500 1050
Wire Wire Line
	6900 1100 7450 1100
Wire Wire Line
	7450 1100 7450 1300
Wire Wire Line
	7450 1300 7550 1300
Wire Wire Line
	6900 1100 6900 1200
Wire Wire Line
	7800 3200 7800 3300
Wire Wire Line
	7800 3300 7400 3300
Wire Wire Line
	7400 3300 7400 3750
Wire Wire Line
	7400 3750 7150 3750
Wire Wire Line
	8100 3200 8100 3800
Wire Wire Line
	8300 3200 8300 4000
Wire Wire Line
	7900 3200 7900 3400
Wire Wire Line
	7900 3400 7500 3400
Wire Wire Line
	7500 3400 7500 3900
Wire Wire Line
	7500 3900 7150 3900
Wire Wire Line
	8000 3800 8100 3800
Wire Wire Line
	8000 4000 8300 4000
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5DC3C693
P 7150 3750
F 0 "TP3" V 7200 3950 50  0000 C CNN
F 1 "TestPoint_Probe" H 7303 3760 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7350 3750 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7150 3750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 5DC3DCFC
P 7150 3900
F 0 "TP4" V 7200 4100 50  0000 C CNN
F 1 "TestPoint_Probe" H 7303 3910 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7350 3900 50  0001 C CNN
F 3 "~" H 7350 3900 50  0001 C CNN
	1    7150 3900
	0    -1   -1   0   
$EndComp
Wire Notes Line
	3050 5550 4750 5550
Wire Notes Line
	4750 5550 4750 6100
Text Notes 3750 6050 0    50   ~ 0
R3 value 470R is used, \nbut it is interchangeable.\n\nTransistor calculation:\nMax: 3.36K\nMin: 168R
Text Notes 5650 4600 0    28   Italic 0
solder after \ntesting power \nmanagement circuit\n
Text Label 5850 4450 0    50   ~ 0
2V8
Wire Notes Line
	4500 4400 4500 4150
Wire Notes Line
	3700 4400 4500 4400
Text Label 4250 5350 2    50   ~ 0
IR_Emitter
Text Notes 3800 4350 0    79   ~ 16
IR Emitter
Wire Wire Line
	5100 4450 5100 4600
Text Notes 4600 4600 0    50   ~ 0
Anode (-)\n(long leg)
Text Notes 4600 5000 0    50   ~ 0
Cathode (+)\n(short leg)
Text Notes 4900 5500 0    50   ~ 0
B
Text Notes 5100 5600 0    50   ~ 0
E
Text Notes 5100 5150 0    50   ~ 0
C
Wire Wire Line
	5100 4900 5100 5150
$Comp
L LED:LD274 D3
U 1 1 5D38C59F
P 5100 4700
F 0 "D3" V 5096 4623 50  0000 R CNN
F 1 "IR LED Emitter" V 5005 4623 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5100 4875 50  0001 C CNN
F 3 "https://docs-apac.rs-online.com/webdocs/1674/0900766b816747ad.pdf" H 5050 4700 50  0001 C CNN
F 4 "Electronics" H -400 3200 50  0001 C CNN "Category"
F 5 "ROHM" H -400 3200 50  0001 C CNN "Manufacturer"
F 6 "10" H -400 3200 50  0001 C CNN "Minimum Order"
F 7 "TH" H -400 3200 50  0001 C CNN "Package"
F 8 "SIR-56ST3F " V 4900 4400 50  0000 C CNN "Part No."
F 9 "9" H -400 3200 50  0001 C CNN "Stock"
F 10 "0.778" H -400 3200 50  0001 C CNN "Unit cost"
F 11 "RS Components" H -400 3200 50  0001 C CNN "Vendor"
F 12 "https://sg.rs-online.com/web/p/ir-leds/1780575/?sra=pstk" H -400 3200 50  0001 C CNN "Vendor link"
F 13 "39" H 100 0   50  0001 C CNN "Stock No."
	1    5100 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 5550 5100 5700
Wire Wire Line
	4550 5350 4800 5350
Wire Wire Line
	4250 5350 4350 5350
$Comp
L Device:R_Small R3
U 1 1 5D38A758
P 4450 5350
F 0 "R3" V 4350 5350 50  0000 C CNN
F 1 "470R" V 4550 5350 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 5350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 4450 5350 50  0001 C CNN
F 4 "Electronics" H -400 3200 50  0001 C CNN "Category"
F 5 "0805" H 100 0   50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H 100 0   50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H 100 0   50  0001 C CNN "Part No."
F 8 "LCSC" H 100 0   50  0001 C CNN "Vendor"
F 9 "50" H 100 0   50  0001 C CNN "Minimum Order"
F 10 "0.0050 " H 100 0   50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 100 0   50  0001 C CNN "Vendor link"
	1    4450 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D38A326
P 5100 5700
F 0 "#PWR09" H 5100 5450 50  0001 C CNN
F 1 "GND" H 5105 5527 50  0000 C CNN
F 2 "" H 5100 5700 50  0001 C CNN
F 3 "" H 5100 5700 50  0001 C CNN
	1    5100 5700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5D3886A5
P 5000 5350
F 0 "Q2" H 4800 5450 50  0000 L CNN
F 1 "NPN Transistor" H 5200 5400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 5275 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-BC817-25LT3G_C191221.pdf" H 5000 5350 50  0001 L CNN
F 4 "Electronics" H -400 3200 50  0001 C CNN "Category"
F 5 "ON Semiconductor" H -400 3200 50  0001 C CNN "Manufacturer"
F 6 "BC817-25LT3G" H 5500 5300 50  0000 C CNN "Part No."
F 7 "LCSC" H 100 0   50  0001 C CNN "Vendor"
F 8 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semicon_BC817-25LT3G_ON-Semicon-ON-BC817-25LT3G_C191221.html" H 100 0   50  0001 C CNN "Vendor link"
F 9 "5" H 100 0   50  0001 C CNN "Minimum Order"
F 10 "0.021" H 100 0   50  0001 C CNN "Unit cost"
F 11 "SOT-23" H 100 0   50  0001 C CNN "Package"
	1    5000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4800 2600 4800
Wire Wire Line
	2800 4800 3000 4800
$Comp
L power:GND #PWR0101
U 1 1 5DBA5765
P 5350 7050
F 0 "#PWR0101" H 5350 6800 50  0001 C CNN
F 1 "GND" H 5355 6877 50  0000 C CNN
F 2 "" H 5350 7050 50  0001 C CNN
F 3 "" H 5350 7050 50  0001 C CNN
	1    5350 7050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 6950 5350 7050
NoConn ~ 8200 3200
Wire Notes Line
	3700 7000 5200 7000
Wire Notes Line
	5200 7000 5200 7350
Wire Notes Line
	5700 7350 5700 6100
Wire Notes Line
	1050 7350 5700 7350
$Comp
L Device:R_Small R14
U 1 1 5DB98984
P 5450 4450
F 0 "R14" V 5550 4350 50  0000 C CNN
F 1 "0R" V 5550 4550 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 4450 50  0001 C CNN
F 3 "~" H 5450 4450 50  0001 C CNN
F 4 "Yes" H 0   0   50  0001 C CNN "DNP"
F 5 "42" H 0   0   50  0001 C CNN "Stock"
F 6 "15" H 0   0   50  0001 C CNN "Stock No."
F 7 "Internal stock" H 0   0   50  0001 C CNN "Vendor"
	1    5450 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 4450 5850 4450
Wire Wire Line
	5100 4450 5350 4450
Text Notes 4550 4300 0    31   ~ 0
R14 can be 0R:\ngithub.com/hutscape/pine/issues/14#issuecomment-547702446
Wire Notes Line
	6200 4150 6200 6100
Wire Notes Line
	4500 4350 6200 4350
$EndSCHEMATC

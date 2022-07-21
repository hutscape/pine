EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pine"
Date "2020-09-16"
Rev "V1.2"
Comp "Hutscape"
Comment1 "Control aircon by monitoring temperature in other parts of the room"
Comment2 ""
Comment3 "Authored by: Sayanee Basu"
Comment4 "Project website: https://hutscape.com/pine"
$EndDescr
$Comp
L Interface_Optical:TSOP43xx U1
U 1 1 5D38286F
P 1600 5050
F 0 "U1" H 1200 5350 50  0000 L CNN
F 1 "IR Receiver" H 1200 4700 50  0000 L CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 1550 4675 50  0001 C CNN
F 3 "https://docs-apac.rs-online.com/webdocs/0e30/0900766b80e30b9e.pdf" H 2250 5350 50  0001 C CNN
F 4 "Electronics" H -150 3300 50  0001 C CNN "Category"
F 5 "Vishay" H -150 3300 50  0001 C CNN "Manufacturer"
F 6 "5" H -150 3300 50  0001 C CNN "Minimum Order"
F 7 "TH" H -150 3300 50  0001 C CNN "Package"
F 8 "TSOP4838" H 1400 4600 50  0000 C CNN "Part No."
F 9 "1.876" H -150 3300 50  0001 C CNN "Unit cost"
F 10 "RS Components" H -150 3300 50  0001 C CNN "Vendor"
F 11 "https://sg.rs-online.com/web/p/ir-receivers/7085115/?sra=pstk" H -150 3300 50  0001 C CNN "Vendor link"
F 12 "4" H -100 0   50  0001 C CNN "Stock"
F 13 "38" H -100 0   50  0001 C CNN "Stock No."
	1    1600 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D387A81
P 2300 5550
F 0 "#PWR02" H 2300 5300 50  0001 C CNN
F 1 "GND" H 2305 5377 50  0000 C CNN
F 2 "" H 2300 5550 50  0001 C CNN
F 3 "" H 2300 5550 50  0001 C CNN
	1    2300 5550
	1    0    0    -1  
$EndComp
Text Notes 1050 4150 0    79   ~ 16
IR Receiver
Text Label 2950 5050 0    50   ~ 0
IR_Receiver
NoConn ~ 6500 5550
$Comp
L power:GND #PWR013
U 1 1 5D652F63
P 6700 5600
F 0 "#PWR013" H 6700 5350 50  0001 C CNN
F 1 "GND" H 6705 5427 50  0000 C CNN
F 2 "" H 6700 5600 50  0001 C CNN
F 3 "" H 6700 5600 50  0001 C CNN
	1    6700 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6700 5600 6700 5550
Text Label 7750 5350 0    50   ~ 0
SCL
Text Label 7750 5150 0    50   ~ 0
SDA
Text Notes 6250 4150 0    79   ~ 16
Temperature Sensor
$Comp
L power:GND #PWR016
U 1 1 5D77CBEB
P 10250 2200
F 0 "#PWR016" H 10250 1950 50  0001 C CNN
F 1 "GND" H 10255 2027 50  0000 C CNN
F 2 "" H 10250 2200 50  0001 C CNN
F 3 "" H 10250 2200 50  0001 C CNN
	1    10250 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5D77E188
P 9850 3250
F 0 "R9" V 9950 3200 50  0000 L CNN
F 1 "10k" V 9750 3200 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9850 3250 50  0001 C CNN
F 3 "" H 9850 3250 50  0001 C CNN
F 4 "Electronics" H -300 100 50  0001 C CNN "Category"
F 5 "0805" H -300 0   50  0001 C CNN "Package"
F 6 "5" H -300 -200 50  0001 C CNN "Stock"
F 7 "31" H -300 -200 50  0001 C CNN "Stock No."
F 8 "Internal stock" H -300 -200 50  0001 C CNN "Vendor"
	1    9850 3250
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5D77FC5D
P 9650 3500
F 0 "SW2" V 9650 3650 50  0000 L CNN
F 1 "Push button" V 9750 3650 50  0000 L CNN
F 2 "Push_Button:Tactile_pushbutton" H 9650 3700 50  0001 C CNN
F 3 "~" H 9650 3700 50  0001 C CNN
F 4 "Connector" H -300 0   50  0001 C CNN "Category"
F 5 "SMD" H -300 50  50  0001 C CNN "Package"
F 6 "7" H -300 50  50  0001 C CNN "Stock"
F 7 "14" H -300 50  50  0001 C CNN "Stock No."
F 8 "Internal stock" H -300 -200 50  0001 C CNN "Vendor"
	1    9650 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D78151A
P 9650 3700
F 0 "#PWR015" H 9650 3450 50  0001 C CNN
F 1 "GND" H 9655 3527 50  0000 C CNN
F 2 "" H 9650 3700 50  0001 C CNN
F 3 "" H 9650 3700 50  0001 C CNN
	1    9650 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D7A2BCE
P 6000 1650
F 0 "C4" V 6050 1550 50  0000 C CNN
F 1 "1uF" V 6050 1750 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 1650 50  0001 C CNN
F 3 "" H 6000 1650 50  0001 C CNN
F 4 "Electronics" H -300 -100 50  0001 C CNN "Category"
F 5 "0805" H -300 -200 50  0001 C CNN "Package"
F 6 "Internal stock" H -300 -200 50  0001 C CNN "Vendor"
F 7 "0" H -300 -200 50  0001 C CNN "Unit cost"
F 8 "40" H -50 -200 50  0001 C CNN "Stock"
F 9 "17" H -50 -200 50  0001 C CNN "Stock No."
	1    6000 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D7A4936
P 5700 1650
F 0 "#PWR012" H 5700 1400 50  0001 C CNN
F 1 "GND" H 5700 1700 50  0000 C CNN
F 2 "" H 5700 1650 50  0001 C CNN
F 3 "" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5D7EA3D5
P 1300 1550
F 0 "J1" H 1150 1950 50  0000 C CNN
F 1 "USB Micro type-B" H 1450 2050 50  0000 C CNN
F 2 "USB_Micro-B_Horizontal:USB_Micro-B_Horizontal-U254-051T-4BH23-S2B" H 1450 1500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Jing-Extension-of-the-Electronic-Co-LCSC-MICRO-USB-5S-B-Type-horns-High-temperature_C10418.pdf" H 1450 1500 50  0001 C CNN
F 4 "Connector" H -150 -200 50  0001 C CNN "Category"
F 5 "SMD" H -150 -200 50  0001 C CNN "Package"
F 6 "Jing Extension of the Electronic Co." H -150 -200 50  0001 C CNN "Manufacturer"
F 7 "C10418" H -150 -200 50  0001 C CNN "Part No."
F 8 "LCSC" H -150 -200 50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/USB-Connectors_Jing-Extension-of-the-Electronic-Co-Jing-Extension-of-the-Electronic-Co-MICRO-USB-5S-B-Type-horns-High-temperature_C10418.html" H -150 -200 50  0001 C CNN "Vendor link"
F 10 "0.079" H -150 -200 50  0001 C CNN "Unit cost"
F 11 "5" H -50 -200 50  0001 C CNN "Minimum Order"
F 12 "60" H 0   0   50  0001 C CNN "Stock No."
	1    1300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5D7EC8A5
P 2200 1350
F 0 "D1" H 2350 1300 50  0000 C CNN
F 1 "Schottky diode" H 2200 1200 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2200 1350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR230LSFT1G_C126673.pdf" H 2200 1350 50  0001 C CNN
F 4 "Electronics" H -150 -200 50  0001 C CNN "Category"
F 5 "Nexperia" H -50 -200 50  0001 C CNN "Manufacturer"
F 6 "PMEG3020EH" H 2200 1200 50  0000 C CNN "Part No."
F 7 "RS Components" H -50 -200 50  0001 C CNN "Vendor"
F 8 "https://sg.rs-online.com/web/p/rectifier-diodes-schottky-diodes/0485319" H -50 -200 50  0001 C CNN "Vendor link"
F 9 "20" H -50 -200 50  0001 C CNN "Minimum Order"
F 10 "0.388" H -50 -200 50  0001 C CNN "Unit cost"
F 11 "SOD-123F " H -50 -200 50  0001 C CNN "Package"
F 12 "52" H 0   0   50  0001 C CNN "Stock No."
	1    2200 1350
	-1   0    0    1   
$EndComp
Text Notes 1050 900  0    79   ~ 16
Power Management
Text Label 8600 3350 2    50   ~ 0
USB_D-
Text Label 8600 3450 2    50   ~ 0
USB_D+
Text Label 1950 1650 0    50   ~ 0
USB_D-
Text Label 1950 1550 0    50   ~ 0
USB_D+
$Comp
L power:GND #PWR01
U 1 1 5D7F78DD
P 1300 2250
F 0 "#PWR01" H 1300 2000 50  0001 C CNN
F 1 "GND" H 1305 2077 50  0000 C CNN
F 2 "" H 1300 2250 50  0001 C CNN
F 3 "" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
NoConn ~ 1200 1950
$Comp
L power:GND #PWR03
U 1 1 5D80158C
P 2150 3250
F 0 "#PWR03" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2155 3077 50  0000 C CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 3250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS83P Q1
U 1 1 5D8038F4
P 2200 2650
F 0 "Q1" V 2450 2650 50  0000 C CNN
F 1 "p-channel MOSFET" V 2200 2050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2400 2575 50  0001 L CIN
F 3 "https://docs-apac.rs-online.com/webdocs/0f74/0900766b80f74f2c.pdf" H 2200 2650 50  0001 L CNN
F 4 "Electronics" H -150 -200 50  0001 C CNN "Category"
F 5 "BSH203,215 " V 2100 2150 50  0000 C CNN "Part No."
F 6 "Nexperia" H -50 -200 50  0001 C CNN "Manufacturer"
F 7 "RS Components" H -50 -200 50  0001 C CNN "Vendor"
F 8 "https://sg.rs-online.com/web/p/mosfets/7258366/" H -50 -200 50  0001 C CNN "Vendor link"
F 9 "20" H -50 -200 50  0001 C CNN "Minimum Order"
F 10 "0.312" H -50 -200 50  0001 C CNN "Unit cost"
F 11 "SOT-23" H -50 -200 50  0001 C CNN "Package"
F 12 "49" H 0   0   50  0001 C CNN "Stock No."
	1    2200 2650
	0    -1   -1   0   
$EndComp
Text Label 7950 3600 2    50   ~ 0
IR_Receiver
Text Label 7100 3400 2    50   ~ 0
IR_Emitter
Text Label 8600 3250 2    50   ~ 0
SCL
Text Label 8600 3150 2    50   ~ 0
SDA
Wire Wire Line
	8750 3000 8750 3150
Wire Wire Line
	8600 3150 8750 3150
$Comp
L Device:R_Small R1
U 1 1 5D85EFAF
P 2550 3050
F 0 "R1" H 2450 3050 50  0000 C CNN
F 1 "10k" H 2700 3050 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2550 3050 50  0001 C CNN
F 3 "" H 2550 3050 50  0001 C CNN
F 4 "Electronics" H -150 -200 50  0001 C CNN "Category"
F 5 "0805" H -150 -200 50  0001 C CNN "Package"
F 6 "5" H -50 -200 50  0001 C CNN "Stock"
F 7 "31" H -50 -200 50  0001 C CNN "Stock No."
F 8 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
	1    2550 3050
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5D7FCA7A
P 1300 2750
F 0 "SW1" V 1400 2950 50  0000 R CNN
F 1 "Switch" V 1400 2650 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 1300 2750 50  0001 C CNN
F 3 "" H 1300 2750 50  0001 C CNN
F 4 "Connector" H -150 -200 50  0001 C CNN "Category"
F 5 "SMD" H -150 -200 50  0001 C CNN "Package"
F 6 "Internal stock" H -150 -200 50  0001 C CNN "Vendor"
F 7 "50" H -50 -200 50  0001 C CNN "Stock"
F 8 "40" H -50 -200 50  0001 C CNN "Stock No."
	1    1300 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D885207
P 3400 2050
F 0 "#PWR06" H 3400 1800 50  0001 C CNN
F 1 "GND" H 3405 1877 50  0000 C CNN
F 2 "" H 3400 2050 50  0001 C CNN
F 3 "" H 3400 2050 50  0001 C CNN
	1    3400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2550 2100 2550
Wire Wire Line
	1300 2550 1600 2550
Connection ~ 2000 2550
Wire Wire Line
	1850 2850 2200 2850
Connection ~ 2200 2850
Wire Wire Line
	2350 1350 2550 1350
Wire Wire Line
	2550 2550 2400 2550
Wire Notes Line
	1000 950  2250 950 
Wire Notes Line
	2250 950  2250 750 
Text Notes 2950 3900 0    43   ~ 0
2 alternative sources of power can be used:\n- 3 AA batteries (4.5V)\n- USB power (5.0V)\n\nWhen both the power sources \nare connected, only the USB \npower will be used as the \nMOSFET will cut-off power \nfrom the batteries.
Wire Wire Line
	10050 1900 10250 1900
Wire Wire Line
	10250 1900 10250 2100
Wire Wire Line
	10050 2100 10250 2100
Connection ~ 10250 2100
Wire Wire Line
	10250 2100 10250 2200
Wire Wire Line
	7100 3400 7250 3400
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-AUT U4
U 1 1 5D778115
P 8150 2000
F 0 "U4" V 9000 1950 50  0000 C CNN
F 1 "MCU" V 9000 1250 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 7200 250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAMD21-Family-DataSheet-DS40001882D.pdf" H 8150 3000 50  0001 C CNN
F 4 "Electronics" H -300 -100 50  0001 C CNN "Category"
F 5 "ATSAMD21G18A-AUT" V 9000 700 50  0000 C CNN "Part No."
F 6 "6.05" H -300 -200 50  0001 C CNN "Unit cost"
F 7 "LCSC" H -300 -200 50  0001 C CNN "Vendor"
F 8 "https://lcsc.com/product-detail/ATMEL-AVR_ATMEL_ATSAMD21G18A-AU_ATSAMD21G18A-AU_C78624.html" H -300 -200 50  0001 C CNN "Vendor link"
F 9 "TQFN-48" H -300 -200 50  0001 C CNN "Package"
F 10 "Microchip Tech" H -300 -200 50  0001 C CNN "Manufacturer"
F 11 "1" H -300 -200 50  0001 C CNN "Minimum Order"
F 12 "59" H 0   0   50  0001 C CNN "Stock No."
	1    8150 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1650 6250 1650
Wire Wire Line
	5700 1650 5900 1650
Wire Notes Line
	1000 750  10600 750 
Text Notes 4550 900  0    79   ~ 16
Micro-controller
Wire Notes Line
	5600 950  5600 750 
NoConn ~ 6550 3000
NoConn ~ 6650 3000
NoConn ~ 6750 3000
NoConn ~ 6850 3000
NoConn ~ 6950 3000
NoConn ~ 7050 3000
NoConn ~ 7350 3000
NoConn ~ 7450 3000
NoConn ~ 7550 3000
NoConn ~ 7650 3000
NoConn ~ 7950 3000
NoConn ~ 8350 3000
NoConn ~ 8450 3000
NoConn ~ 8550 3000
NoConn ~ 8650 3000
NoConn ~ 9250 3000
NoConn ~ 7250 1000
NoConn ~ 6550 1000
NoConn ~ 6950 1000
NoConn ~ 7050 1000
NoConn ~ 7150 1000
$Comp
L Device:R_Small R2
U 1 1 5DA3ACF8
P 2900 1450
F 0 "R2" V 3000 1450 50  0000 C CNN
F 1 "100k" V 3100 1450 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2900 1450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/RALEC-RTT051003BTP_C312260.pdf" H 2900 1450 50  0001 C CNN
F 4 "Electronics" H -150 -200 50  0001 C CNN "Category"
F 5 "0805" H -150 -200 50  0001 C CNN "Package"
F 6 "RALEC" H -150 -200 50  0001 C CNN "Manufacturer"
F 7 "RTT051003BTP" H -150 -200 50  0001 C CNN "Part No."
F 8 "LCSC" H -150 -200 50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Others_RALEC-RTT051003BTP_C312260.html" H -150 -200 50  0001 C CNN "Vendor link"
F 10 "0.042" H -150 -200 50  0001 C CNN "Unit cost"
F 11 "20" H -50 -200 50  0001 C CNN "Minimum Order"
F 12 "56" H 0   0   50  0001 C CNN "Stock No."
	1    2900 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1350 2650 1350
Connection ~ 2550 1350
Wire Wire Line
	2650 1450 2650 1350
Wire Wire Line
	3000 1450 3100 1450
Wire Wire Line
	2650 1450 2800 1450
Connection ~ 2650 1350
Wire Notes Line
	2900 3950 2900 3200
Wire Notes Line
	2900 3200 4500 3200
Wire Notes Line
	1000 5900 10600 5900
Wire Notes Line
	1000 4200 1800 4200
Wire Notes Line
	1800 4200 1800 3950
Wire Notes Line
	6150 4200 7550 4200
Wire Notes Line
	7550 4200 7550 3950
Wire Wire Line
	1300 2950 1300 3100
Wire Wire Line
	2550 2850 2550 2950
Wire Wire Line
	2200 2850 2550 2850
Wire Wire Line
	2550 3150 2550 3250
Wire Wire Line
	2550 3250 2150 3250
Connection ~ 2150 3250
Wire Wire Line
	5100 1900 5200 1900
$Comp
L power:GND #PWR010
U 1 1 5D98C190
P 5100 1900
F 0 "#PWR010" H 5100 1650 50  0001 C CNN
F 1 "GND" H 5100 1950 50  0000 C CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "" H 5100 1900 50  0001 C CNN
	1    5100 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5D7B30A9
P 5300 1900
F 0 "C3" V 5200 1900 50  0000 C CNN
F 1 "100nF" V 5400 1900 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5300 1900 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/281/murata_03122018_GCM_Series-1310150.pdf" H 5300 1900 50  0001 C CNN
F 4 "Electronics" H -250 -100 50  0001 C CNN "Category"
F 5 "0805" H -250 -200 50  0001 C CNN "Package"
F 6 "Murata Electronics" H -250 -200 50  0001 C CNN "Manufacturer"
F 7 "GCM21BR72A104KA37L" H -250 -200 50  0001 C CNN "Part No."
F 8 "LCSC" H -250 -200 50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_MuRata_GCM21BR72A104KA37L_100nF-104-10-100V-Car-level_C85866.html" H -250 -200 50  0001 C CNN "Vendor link"
F 10 "0.030" H -250 -200 50  0001 C CNN "Unit cost"
F 11 "20" H -250 -200 50  0001 C CNN "Minimum Order"
F 12 "53" H 0   0   50  0001 C CNN "Stock No."
	1    5300 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DB58B62
P 5400 2250
F 0 "C2" V 5500 2150 50  0000 C CNN
F 1 "100nF" V 5500 2400 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 2250 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/281/murata_03122018_GCM_Series-1310150.pdf" H 5400 2250 50  0001 C CNN
F 4 "Electronics" H 300 -100 50  0001 C CNN "Category"
F 5 "0805" H 300 -200 50  0001 C CNN "Package"
F 6 "Murata Electronics" H 300 -200 50  0001 C CNN "Manufacturer"
F 7 "GCM21BR72A104KA37L" H 300 -200 50  0001 C CNN "Part No."
F 8 "LCSC" H 300 -200 50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_MuRata_GCM21BR72A104KA37L_100nF-104-10-100V-Car-level_C85866.html" H 300 -200 50  0001 C CNN "Vendor link"
F 10 "0.030" H 300 -200 50  0001 C CNN "Unit cost"
F 11 "20" H 300 -200 50  0001 C CNN "Minimum Order"
F 12 "53" H 0   0   50  0001 C CNN "Stock No."
	1    5400 2250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DB59128
P 4900 2050
F 0 "C1" V 4850 1950 50  0000 C CNN
F 1 "100nF" V 4750 2000 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4900 2050 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/281/murata_03122018_GCM_Series-1310150.pdf" H 4900 2050 50  0001 C CNN
F 4 "Electronics" H 150 -100 50  0001 C CNN "Category"
F 5 "0805" H 150 -200 50  0001 C CNN "Package"
F 6 "Murata Electronics" H 150 -200 50  0001 C CNN "Manufacturer"
F 7 "GCM21BR72A104KA37L" H 150 -200 50  0001 C CNN "Part No."
F 8 "LCSC" H 150 -200 50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_MuRata_GCM21BR72A104KA37L_100nF-104-10-100V-Car-level_C85866.html" H 150 -200 50  0001 C CNN "Vendor link"
F 10 "0.030" H 150 -200 50  0001 C CNN "Unit cost"
F 11 "20" H 150 -200 50  0001 C CNN "Minimum Order"
F 12 "53" H 0   0   50  0001 C CNN "Stock No."
	1    4900 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2250 5150 2250
Wire Wire Line
	5150 2250 5150 2450
Wire Wire Line
	4800 2050 4800 2450
$Comp
L power:GND #PWR08
U 1 1 5DB665D4
P 5150 2450
F 0 "#PWR08" H 5150 2200 50  0001 C CNN
F 1 "GND" H 5150 2300 50  0000 C CNN
F 2 "" H 5150 2450 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DB6693D
P 4800 2450
F 0 "#PWR07" H 4800 2200 50  0001 C CNN
F 1 "GND" H 4800 2300 50  0000 C CNN
F 2 "" H 4800 2450 50  0001 C CNN
F 3 "" H 4800 2450 50  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1950 1300 2000
Wire Wire Line
	1600 1350 1700 1350
Wire Wire Line
	5400 1900 5500 1900
Connection ~ 5500 1900
$Comp
L Sensor_Humidity:Si7021-A20 U3
U 1 1 5D78D887
P 6600 5250
F 0 "U3" H 6300 5000 50  0000 L CNN
F 1 "Temperature sensor" H 5650 4900 50  0000 L CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_3x3mm_P1mm_EP1.5x2.4mm" H 6600 4850 50  0001 C CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/Si7021-A20.pdf" H 6400 5550 50  0001 C CNN
F 4 "Si7021-A20" H 6150 4800 50  0000 C CNN "Part No."
F 5 "Electronics" H -2750 300 50  0001 C CNN "Category"
F 6 "1" H -500 100 50  0001 C CNN "Stock"
F 7 "5" H -500 100 50  0001 C CNN "Stock No."
F 8 "Internal stock" H -500 100 50  0001 C CNN "Vendor"
F 9 "DFN" H -500 100 50  0001 C CNN "Package"
F 10 "Si Labs" H -50 -200 50  0001 C CNN "Manufacturer"
	1    6600 5250
	-1   0    0    -1  
$EndComp
Text Label 8600 3550 2    50   ~ 0
TX_LED
Wire Wire Line
	8850 3000 8850 3250
Wire Wire Line
	8850 3250 8600 3250
Wire Wire Line
	8950 3000 8950 3350
Wire Wire Line
	8950 3350 8600 3350
Wire Wire Line
	9050 3000 9050 3450
Wire Wire Line
	9050 3450 8600 3450
Wire Wire Line
	9150 3000 9150 3550
Wire Wire Line
	9150 3550 8600 3550
Wire Notes Line
	5600 950  4500 950 
Text Label 6450 850  2    50   ~ 0
RX_LED
Wire Wire Line
	6650 850  6650 1000
Wire Notes Line
	8000 3950 8000 5900
Text Notes 8050 4150 0    79   ~ 16
LEDs
Wire Notes Line
	8000 4200 8450 4200
Wire Notes Line
	8450 4200 8450 3950
Text Label 8400 5600 2    50   ~ 0
TX_LED
$Comp
L Device:LED D4
U 1 1 5D80BD25
P 8400 4750
F 0 "D4" V 8500 4750 50  0000 R CNN
F 1 "LED Yellow" H 8550 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8400 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 8400 4750 50  0001 C CNN
F 4 "Electronics" H -50 200 50  0001 C CNN "Category"
F 5 "0805" H -50 0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H -50 0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H -50 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -50 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H -50 0   50  0001 C CNN "Vendor link"
F 10 "0.058" H -50 0   50  0001 C CNN "Unit cost"
F 11 "Yes" H -50 0   50  0001 C CNN "DNP"
F 12 "10" H -50 0   50  0001 C CNN "Minimum Order"
F 13 "54" H 0   0   50  0001 C CNN "Stock No."
	1    8400 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D81359F
P 9000 4750
F 0 "D5" V 9100 4750 50  0000 R CNN
F 1 "LED Yellow" H 9200 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 9000 4750 50  0001 C CNN
F 4 "Electronics" H 0   200 50  0001 C CNN "Category"
F 5 "0805" H -50 0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H -50 0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H -50 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -50 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H -50 0   50  0001 C CNN "Vendor link"
F 10 "0.058" H -50 0   50  0001 C CNN "Unit cost"
F 11 "Yes" H -50 0   50  0001 C CNN "DNP"
F 12 "10" H -50 0   50  0001 C CNN "Minimum Order"
F 13 "54" H 0   0   50  0001 C CNN "Stock No."
	1    9000 4750
	0    -1   -1   0   
$EndComp
Text Label 9000 5600 2    50   ~ 0
RX_LED
$Comp
L Device:LED D6
U 1 1 5D81C9CF
P 9550 4750
F 0 "D6" V 9650 4750 50  0000 R CNN
F 1 "LED Yellow" H 9750 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9550 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 9550 4750 50  0001 C CNN
F 4 "Electronics" H 50  200 50  0001 C CNN "Category"
F 5 "0805" H -50 0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H -50 0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H -50 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -50 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H -50 0   50  0001 C CNN "Vendor link"
F 10 "0.058" H -50 0   50  0001 C CNN "Unit cost"
F 11 "10" H -50 0   50  0001 C CNN "Minimum Order"
F 12 "54" H 0   0   50  0001 C CNN "Stock No."
	1    9550 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D822E57
P 9550 5400
F 0 "#PWR014" H 9550 5150 50  0001 C CNN
F 1 "GND" H 9550 5250 50  0000 C CNN
F 2 "" H 9550 5400 50  0001 C CNN
F 3 "" H 9550 5400 50  0001 C CNN
	1    9550 5400
	1    0    0    -1  
$EndComp
Text Label 7950 3800 2    50   ~ 0
LED
$Comp
L Device:LED D7
U 1 1 5D8386A1
P 10150 4750
F 0 "D7" V 10250 4750 50  0000 R CNN
F 1 "LED Yellow" H 10350 4600 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 10150 4750 50  0001 C CNN
F 4 "Electronics" H 50  200 50  0001 C CNN "Category"
F 5 "0805" H -50 0   50  0001 C CNN "Package"
F 6 "Everlight Elec" H -50 0   50  0001 C CNN "Manufacturer"
F 7 "17-215UYC/S530-A3/TR8" H -50 0   50  0001 C CNN "Part No."
F 8 "LCSC" H -50 0   50  0001 C CNN "Vendor"
F 9 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H -50 0   50  0001 C CNN "Vendor link"
F 10 "0.058" H -50 0   50  0001 C CNN "Unit cost"
F 11 "10" H -50 0   50  0001 C CNN "Minimum Order"
F 12 "54" H 0   0   50  0001 C CNN "Stock No."
	1    10150 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5D839392
P 10150 5200
F 0 "R10" H 10200 5200 50  0000 L CNN
F 1 "470R" H 9900 5200 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 10150 5200 50  0001 C CNN
F 4 "Electronics" H 0   2050 50  0001 C CNN "Category"
F 5 "0805" H -50 100 50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H -50 100 50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H -50 100 50  0001 C CNN "Part No."
F 8 "LCSC" H -50 100 50  0001 C CNN "Vendor"
F 9 "50" H -50 100 50  0001 C CNN "Minimum Order"
F 10 "0.0050 " H -50 100 50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H -50 100 50  0001 C CNN "Vendor link"
F 12 "57" H 0   0   50  0001 C CNN "Stock No."
	1    10150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4900 8400 5100
Wire Wire Line
	8400 4500 8400 4600
Wire Wire Line
	9000 4500 9000 4600
Wire Wire Line
	9550 4500 9550 4600
Wire Wire Line
	10150 4500 10150 4600
Wire Wire Line
	10150 4900 10150 5100
Wire Wire Line
	9000 4900 9000 5100
Text Label 10150 5600 2    50   ~ 0
LED
Text Notes 2200 2750 0    39   ~ 0
G
Text Notes 2300 2550 0    39   ~ 0
S
Text Notes 2050 2550 0    39   ~ 0
D
Text Notes 3950 1100 0    28   Italic 0
solder after \ntesting power \nmanagement circuit\nand programming \nMCU via the SWD
Text Notes 2500 4300 0    28   Italic 0
solder after \ntesting power \nmanagement circuit\n
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D814B22
P 2150 4600
F 0 "#FLG01" H 2150 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 4750 50  0000 C CNN
F 2 "" H 2150 4600 50  0001 C CNN
F 3 "~" H 2150 4600 50  0001 C CNN
	1    2150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5300 10150 5600
Text Notes 7500 4400 0    28   Italic 0
solder after \ntesting power \nmanagement \ncircuit\n
Text Notes 1050 6100 0    79   ~ 16
SWD Programming
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5D7FC57C
P 1550 6600
F 0 "J2" H 1450 6800 50  0000 C CNN
F 1 "01x06 Male conn" H 1700 6200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1550 6600 50  0001 C CNN
F 3 "~" H 1550 6600 50  0001 C CNN
F 4 "Connector" H -450 -100 50  0001 C CNN "Category"
F 5 "TH" H -450 -100 50  0001 C CNN "Package"
F 6 "Yes" H -800 -150 50  0001 C CNN "DNP"
F 7 "DNP" H -600 -250 50  0001 C CNN "Vendor"
	1    1550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6400 1900 6400
Text Label 8600 3650 2    50   ~ 0
SWCLK
Wire Wire Line
	9350 3000 9350 3650
Wire Wire Line
	9350 3650 8600 3650
Wire Wire Line
	6250 1650 6250 1800
Wire Wire Line
	6250 2050 6250 2100
Wire Wire Line
	6250 2250 6250 2200
Text Label 8600 3750 2    50   ~ 0
SWDIO
Wire Wire Line
	8600 3750 9450 3750
Wire Wire Line
	9450 3750 9450 3000
Wire Notes Line
	4500 750  4500 3950
Text Label 1900 6500 0    50   ~ 0
SWCLK
Wire Wire Line
	1750 6500 1900 6500
Text Label 1900 6700 0    50   ~ 0
SWDIO
Wire Wire Line
	1750 6700 1900 6700
Wire Wire Line
	1750 6600 2300 6600
Wire Wire Line
	2300 6600 2300 6750
$Comp
L power:GND #PWR05
U 1 1 5D87EFCF
P 2300 6750
F 0 "#PWR05" H 2300 6500 50  0001 C CNN
F 1 "GND" H 2305 6577 50  0000 C CNN
F 2 "" H 2300 6750 50  0001 C CNN
F 3 "" H 2300 6750 50  0001 C CNN
	1    2300 6750
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 6150 2250 6150
Wire Notes Line
	2250 6150 2250 5900
NoConn ~ 1750 6900
Wire Notes Line
	1000 3950 10600 3950
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5D80DB41
P 4150 1350
F 0 "JP2" H 4150 1450 50  0000 C CNN
F 1 "Open solder jumper" H 4200 1200 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4150 1350 50  0001 C CNN
F 3 "~" H 4150 1350 50  0001 C CNN
F 4 "Electronics" H 100 -200 50  0001 C CNN "Category"
F 5 "Solder" H 100 -200 50  0001 C CNN "Package"
F 6 "Yes" H 100 -200 50  0001 C CNN "DNP"
F 7 "DNP" H 100 -200 50  0001 C CNN "Vendor"
	1    4150 1350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5D86D561
P 7700 4550
F 0 "JP4" H 7700 4650 50  0000 C CNN
F 1 "Open solder jumper" H 7700 4450 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7700 4550 50  0001 C CNN
F 3 "~" H 7700 4550 50  0001 C CNN
F 4 "Electronics" H 350 -200 50  0001 C CNN "Category"
F 5 "Solder" H 350 -200 50  0001 C CNN "Package"
F 6 "Yes" H 350 -200 50  0001 C CNN "DNP"
F 7 "DNP" H 350 -200 50  0001 C CNN "Vendor"
	1    7700 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 3000 9650 3250
Wire Wire Line
	9650 3250 9750 3250
Connection ~ 9650 3250
Wire Wire Line
	9650 3250 9650 3300
Wire Wire Line
	9950 3250 10150 3250
Wire Wire Line
	9650 3000 9900 3000
Connection ~ 9650 3000
Text Label 9900 3000 0    50   ~ 0
RST
Text Label 1900 6800 0    50   ~ 0
RST
Wire Wire Line
	1750 6800 1900 6800
Wire Notes Line
	10600 750  10600 5900
Text Notes 1050 6750 0    28   Italic 0
DNP: Pogopins\nwill be used for\nprogramming\nthe bootloader
NoConn ~ 1600 1750
Wire Wire Line
	1850 1350 1850 2850
Connection ~ 1850 1350
Wire Wire Line
	1850 1350 2050 1350
Text Notes 8250 5750 0    50   ~ 0
TX led
Text Notes 8850 5750 0    50   ~ 0
RX led
Text Notes 9400 5750 0    50   ~ 0
power led
Text Notes 9950 5750 0    50   ~ 0
program led
Text Notes 8200 5350 0    50   ~ 0
DNP
Text Notes 8750 4750 0    50   ~ 0
DNP
Text Notes 8150 4750 0    50   ~ 0
DNP
Text Notes 8800 5350 0    50   ~ 0
DNP
Text Notes 8100 5850 0    43   ~ 0
optional to populate TX / RX LEDs
Text Label 7100 3200 2    50   ~ 0
Batt
Wire Wire Line
	7150 3000 7150 3200
Wire Wire Line
	7150 3200 7100 3200
Wire Wire Line
	7250 3000 7250 3400
Text Label 3000 6750 2    50   ~ 0
Batt
Text Notes 2550 6100 0    79   ~ 16
Measure battery voltage
$Comp
L Device:R_Small R4
U 1 1 5D85783A
P 3300 6550
F 0 "R4" H 3359 6596 50  0000 L CNN
F 1 "100k" H 3359 6505 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 6550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/RALEC-RTT051003BTP_C312260.pdf" H 3300 6550 50  0001 C CNN
F 4 "LCSC" H -2400 50  50  0001 C CNN "Vendor"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT051003BTP_C312260.html" H -2400 50  50  0001 C CNN "Vendor link"
F 6 "Electronics" H -2400 50  50  0001 C CNN "Category"
F 7 "RALEC" H -2400 50  50  0001 C CNN "Manufacturer"
F 8 "RTT051003BTP" H -2400 50  50  0001 C CNN "Part No."
F 9 "20" H -2400 50  50  0001 C CNN "Minimum Order"
F 10 "0805" H -2400 50  50  0001 C CNN "Package"
F 11 "0.042" H -2400 50  50  0001 C CNN "Unit cost"
F 12 "56" H 0   0   50  0001 C CNN "Stock No."
	1    3300 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D858007
P 3300 6900
F 0 "R5" H 3359 6946 50  0000 L CNN
F 1 "100k" H 3359 6855 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 6900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/RALEC-RTT051003BTP_C312260.pdf" H 3300 6900 50  0001 C CNN
F 4 "LCSC" H -2400 50  50  0001 C CNN "Vendor"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT051003BTP_C312260.html" H -2400 50  50  0001 C CNN "Vendor link"
F 6 "Electronics" H -2400 50  50  0001 C CNN "Category"
F 7 "RALEC" H -2400 50  50  0001 C CNN "Manufacturer"
F 8 "RTT051003BTP" H -2400 50  50  0001 C CNN "Part No."
F 9 "20" H -2400 50  50  0001 C CNN "Minimum Order"
F 10 "0805" H -2400 50  50  0001 C CNN "Package"
F 11 "0.042" H -2400 50  50  0001 C CNN "Unit cost"
F 12 "56" H 0   0   50  0001 C CNN "Stock No."
	1    3300 6900
	1    0    0    -1  
$EndComp
Text Label 3300 6300 0    50   ~ 0
VBAT
Wire Wire Line
	3300 6300 3300 6450
Wire Wire Line
	3300 6650 3300 6750
Wire Wire Line
	3000 6750 3300 6750
Connection ~ 3300 6750
Wire Wire Line
	3300 6750 3300 6800
Text Notes 2550 7500 0    50   ~ 0
Measured battery voltage =\nanalogRead(Batt) * 2 * 2.8 / 1024
$Comp
L Device:C_Small C5
U 1 1 5D84D506
P 2300 4850
F 0 "C5" H 2392 4896 50  0000 L CNN
F 1 "1uF" H 2392 4805 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 4850 50  0001 C CNN
F 3 "" H 2300 4850 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
F 6 "0805" H -50 -200 50  0001 C CNN "Package"
F 7 "0" H -50 -200 50  0001 C CNN "Unit cost"
F 8 "40" H -50 -200 50  0001 C CNN "Stock"
F 9 "17" H -50 -200 50  0001 C CNN "Stock No."
	1    2300 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5D876A22
P 2650 4600
F 0 "R11" V 2454 4600 50  0000 C CNN
F 1 "470R" V 2545 4600 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 2650 4600 50  0001 C CNN
F 4 "Electronics" H 100 -200 50  0001 C CNN "Category"
F 5 "LCSC" H 100 -200 50  0001 C CNN "Vendor"
F 6 "0805" H 100 -200 50  0001 C CNN "Package"
F 7 "Walsin Tech Corp" H 100 -200 50  0001 C CNN "Manufacturer"
F 8 "50" H 100 -200 50  0001 C CNN "Minimum Order"
F 9 "WR08X4700FTL" H 100 -200 50  0001 C CNN "Part No."
F 10 "0.0050 " H 100 -200 50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 100 -200 50  0001 C CNN "Vendor link"
F 12 "Yes" H -50 -200 50  0001 C CNN "DNP"
F 13 "57" H 0   0   50  0001 C CNN "Stock No."
	1    2650 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4850 2150 4850
Wire Wire Line
	2150 4850 2150 4600
Wire Wire Line
	2150 4600 2300 4600
Wire Wire Line
	2300 4600 2300 4750
Connection ~ 2300 4600
Wire Wire Line
	2000 5250 2150 5250
Wire Wire Line
	2150 5250 2150 5500
Wire Wire Line
	2150 5500 2300 5500
Wire Wire Line
	2300 4950 2300 5500
Connection ~ 2150 4600
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5D80B2E8
P 6600 4500
F 0 "#FLG06" H 6600 4575 50  0001 C CNN
F 1 "PWR_FLAG" H 6400 4650 50  0000 L CNN
F 2 "" H 6600 4500 50  0001 C CNN
F 3 "~" H 6600 4500 50  0001 C CNN
	1    6600 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 4250 7850 4550
$Comp
L Device:C_Small C7
U 1 1 5D942F99
P 6900 4650
F 0 "C7" H 7000 4700 50  0000 L CNN
F 1 "1uF" H 7000 4600 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6900 4650 50  0001 C CNN
F 3 "" H 6900 4650 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
F 6 "0805" H -50 -200 50  0001 C CNN "Package"
F 7 "0" H -50 -200 50  0001 C CNN "Unit cost"
F 8 "40" H -50 -200 50  0001 C CNN "Stock"
F 9 "17" H -50 -200 50  0001 C CNN "Stock No."
	1    6900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4500 6600 4550
Connection ~ 6600 4550
Wire Wire Line
	6600 4550 6600 4950
$Comp
L power:GND #PWR017
U 1 1 5D95FD70
P 6900 4750
F 0 "#PWR017" H 6900 4500 50  0001 C CNN
F 1 "GND" H 6905 4577 50  0000 C CNN
F 2 "" H 6900 4750 50  0001 C CNN
F 3 "" H 6900 4750 50  0001 C CNN
	1    6900 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 5150 7250 5150
Wire Wire Line
	7100 5350 7550 5350
$Comp
L Device:R_Small R12
U 1 1 5D96BAB5
P 7250 4800
F 0 "R12" H 7300 4850 50  0000 L CNN
F 1 "10k" H 7300 4750 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7250 4800 50  0001 C CNN
F 3 "" H 7250 4800 50  0001 C CNN
F 4 "Electronics" H -2900 1650 50  0001 C CNN "Category"
F 5 "0805" H -1200 -300 50  0001 C CNN "Package"
F 6 "Internal stock" H -1200 -300 50  0001 C CNN "Vendor"
F 7 "5" H -50 -200 50  0001 C CNN "Stock"
F 8 "31" H -50 -200 50  0001 C CNN "Stock No."
	1    7250 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5D96CA00
P 7550 4950
F 0 "R13" H 7600 5000 50  0000 L CNN
F 1 "10k" H 7600 4900 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7550 4950 50  0001 C CNN
F 3 "" H 7550 4950 50  0001 C CNN
F 4 "Electronics" H -2600 1800 50  0001 C CNN "Category"
F 5 "0805" H -900 -150 50  0001 C CNN "Package"
F 6 "Internal stock" H -900 -150 50  0001 C CNN "Vendor"
F 7 "5" H -50 -200 50  0001 C CNN "Stock"
F 8 "31" H -50 -200 50  0001 C CNN "Stock No."
	1    7550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4550 7250 4700
Wire Wire Line
	7250 4900 7250 5150
Connection ~ 7250 4550
Wire Wire Line
	7250 4550 7550 4550
Wire Wire Line
	7550 4550 7550 4850
Wire Wire Line
	7550 5050 7550 5350
Connection ~ 7550 4550
Connection ~ 6900 4550
Wire Wire Line
	6900 4550 6600 4550
Wire Wire Line
	6900 4550 7250 4550
Wire Wire Line
	1600 1650 1950 1650
Wire Wire Line
	1600 1550 1950 1550
$Comp
L Device:C_Small C8
U 1 1 5D887ED7
P 5950 2950
F 0 "C8" H 6042 2996 50  0000 L CNN
F 1 "10uF" H 6042 2905 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5950 2950 50  0001 C CNN
F 3 "~" H 5950 2950 50  0001 C CNN
F 4 "Electronics" H 600 -400 50  0001 C CNN "Category"
F 5 "0805" H 600 -400 50  0001 C CNN "Package"
F 6 "3" H 600 -400 50  0001 C CNN "Stock"
F 7 "30" H 600 -400 50  0001 C CNN "Stock No."
F 8 "0" H 600 -400 50  0001 C CNN "Unit cost"
F 9 "Internal stock" H 600 -400 50  0001 C CNN "Vendor"
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5D8889D5
P 5950 3200
F 0 "#PWR018" H 5950 2950 50  0001 C CNN
F 1 "GND" H 5950 3000 50  0000 C CNN
F 2 "" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2700 5950 2850
Wire Wire Line
	5950 3050 5950 3200
Wire Wire Line
	5500 1900 5500 2050
Connection ~ 5500 2050
Wire Wire Line
	5500 2050 5500 2250
Wire Wire Line
	2000 5050 2950 5050
Text Notes 4250 6750 0    50   ~ 0
R11 = 470R\nC5 = 1uF\n\nCut off frequency \n= 330.8Hz
Wire Wire Line
	2300 5500 2300 5550
Connection ~ 2300 5500
$Comp
L Regulator_Linear:LD3985M28R_SOT23 U2
U 1 1 5D901E16
P 3400 1450
F 0 "U2" H 3250 1700 50  0000 C CNN
F 1 "LDO" H 3450 1700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3400 1775 50  0001 C CIN
F 3 "https://docs-apac.rs-online.com/webdocs/151f/0900766b8151fea1.pdf" H 3400 1450 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "STMicroelectronics" H -50 -200 50  0001 C CNN "Manufacturer"
F 6 "SOT-23" H -50 -200 50  0001 C CNN "Package"
F 7 "LD3985M28R_SOT23" H 3550 1800 50  0000 C CNN "Part No."
F 8 "0.32" H -50 -200 50  0001 C CNN "Unit cost"
F 9 "RS Components" H -50 -200 50  0001 C CNN "Vendor"
F 10 "https://sg.rs-online.com/web/p/low-dropout-voltage-regulators/6868792/" H -50 -200 50  0001 C CNN "Vendor link"
F 11 "50" H 0   0   50  0001 C CNN "Stock No."
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5D90F0D3
P 3050 1850
F 0 "C6" H 2850 1850 50  0000 L CNN
F 1 "1uF" H 2850 1750 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3050 1850 50  0001 C CNN
F 3 "" H 3050 1850 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "0805" H -50 -200 50  0001 C CNN "Package"
F 6 "40" H -50 -200 50  0001 C CNN "Stock"
F 7 "17" H -50 -200 50  0001 C CNN "Stock No."
F 8 "0" H -50 -200 50  0001 C CNN "Unit cost"
F 9 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
	1    3050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5D90F40F
P 3800 1750
F 0 "C9" H 3600 1750 50  0000 L CNN
F 1 "10nF" H 3600 1650 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811301232_Huaxin-S-T-0805B103K631CT_C338146.pdf" H 3800 1750 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Walsin Tech Corp" H -50 -200 50  0001 C CNN "Manufacturer"
F 6 "20" H -50 -200 50  0001 C CNN "Minimum Order"
F 7 "0805" H -50 -200 50  0001 C CNN "Package"
F 8 "0805B103K631CT" H -50 -200 50  0001 C CNN "Part No."
F 9 "LCSC" H -50 -200 50  0001 C CNN "Vendor"
F 10 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B103K631CT_C338146.html" H -50 -200 50  0001 C CNN "Vendor link"
F 11 "0.026" H -50 -200 50  0001 C CNN "Unit cost"
F 12 "55" H 0   0   50  0001 C CNN "Stock No."
	1    3800 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5D90FAE9
P 3950 1600
F 0 "C10" H 4050 1600 50  0000 L CNN
F 1 "1uF" H 4050 1500 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3950 1600 50  0001 C CNN
F 3 "" H 3950 1600 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "0805" H -50 -200 50  0001 C CNN "Package"
F 6 "40" H -50 -200 50  0001 C CNN "Stock"
F 7 "17" H -50 -200 50  0001 C CNN "Stock No."
F 8 "0" H -50 -200 50  0001 C CNN "Unit cost"
F 9 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
	1    3950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1350 3050 1750
Connection ~ 3050 1350
Wire Wire Line
	3050 1350 3100 1350
Wire Wire Line
	3700 1350 3950 1350
Wire Wire Line
	3700 1450 3800 1450
Wire Wire Line
	3800 1450 3800 1650
Wire Wire Line
	3400 1750 3400 1950
Wire Wire Line
	3050 1950 3400 1950
Connection ~ 3400 1950
Wire Wire Line
	3400 1950 3400 2050
Wire Wire Line
	3400 1950 3800 1950
Wire Wire Line
	3800 1950 3800 1850
Wire Wire Line
	3950 1500 3950 1350
Connection ~ 3950 1350
Wire Wire Line
	3950 1350 4000 1350
Wire Wire Line
	3950 1700 3950 1950
Wire Wire Line
	3800 1950 3950 1950
Connection ~ 3800 1950
Wire Wire Line
	5500 1900 6250 1900
Wire Wire Line
	6250 2050 5500 2050
Wire Wire Line
	5000 2050 5500 2050
Wire Wire Line
	7250 5150 7750 5150
Connection ~ 7250 5150
Wire Wire Line
	7550 5350 7750 5350
Connection ~ 7550 5350
Connection ~ 5500 2250
Wire Wire Line
	2550 1350 2550 2550
$Comp
L Device:C_Small C11
U 1 1 5D8AA8EF
P 1700 1900
F 0 "C11" H 1650 1750 50  0000 L CNN
F 1 "10uF" H 1650 1650 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 1900 50  0001 C CNN
F 3 "~" H 1700 1900 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "0805" H -50 -200 50  0001 C CNN "Package"
F 6 "3" H -50 -200 50  0001 C CNN "Stock"
F 7 "30" H -50 -200 50  0001 C CNN "Stock No."
F 8 "0" H -50 -200 50  0001 C CNN "Unit cost"
F 9 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
	1    1700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1350 1700 1800
Connection ~ 1700 1350
Wire Wire Line
	1700 1350 1850 1350
Wire Wire Line
	1700 2000 1300 2000
Connection ~ 1300 2000
Wire Wire Line
	1300 2000 1300 2250
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5D8BB59E
P 1450 3450
F 0 "J3" V 1550 3250 50  0000 R CNN
F 1 "Battery connector" V 1350 3700 50  0000 R CNN
F 2 "BatteryHolder_Takachi_SN3-3PC_3xAA:BatteryHolder_Takachi_SN3-3PC_3AA" H 1450 3450 50  0001 C CNN
F 3 "https://docs-apac.rs-online.com/webdocs/1659/0900766b81659aed.pdf" H 1450 3450 50  0001 C CNN
F 4 "Connector" H -50 -200 50  0001 C CNN "Category"
F 5 "Takachi Electric Industrial" H -50 -200 50  0001 C CNN "Manufacturer"
F 6 "1" H -50 -200 50  0001 C CNN "Minimum Order"
F 7 "TH" H -50 -200 50  0001 C CNN "Package"
F 8 "SN3-3PC" H -50 -200 50  0001 C CNN "Part No."
F 9 "2.484" H -50 -200 50  0001 C CNN "Unit cost"
F 10 "RS Components" H -50 -200 50  0001 C CNN "Vendor"
F 11 "https://sg.rs-online.com/web/p/products/1756075" H -50 -200 50  0001 C CNN "Vendor link"
	1    1450 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3250 1450 3250
Wire Wire Line
	1550 3250 1650 3250
Text Notes 1400 3250 0    50   ~ 0
+
Text Notes 1550 3250 0    50   ~ 0
-
$Comp
L Device:D_Schottky D2
U 1 1 5D8CD108
P 1500 3100
F 0 "D2" H 1600 3150 50  0000 C CNN
F 1 "Schottky diode" H 1650 3200 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1500 3100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR230LSFT1G_C126673.pdf" H 1500 3100 50  0001 C CNN
F 4 "Electronics" H -850 1550 50  0001 C CNN "Category"
F 5 "Nexperia" H -750 1550 50  0001 C CNN "Manufacturer"
F 6 "PMEG3020EH" H 1650 3250 50  0000 C CNN "Part No."
F 7 "RS Components" H -750 1550 50  0001 C CNN "Vendor"
F 8 "https://sg.rs-online.com/web/p/rectifier-diodes-schottky-diodes/0485319" H -750 1550 50  0001 C CNN "Vendor link"
F 9 "20" H -750 1550 50  0001 C CNN "Minimum Order"
F 10 "0.388" H -750 1550 50  0001 C CNN "Unit cost"
F 11 "SOD-123F " H -750 1550 50  0001 C CNN "Package"
F 12 "52" H 0   0   50  0001 C CNN "Stock No."
	1    1500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3100 1650 3250
Connection ~ 1650 3250
Wire Wire Line
	1650 3250 2150 3250
Wire Wire Line
	1350 3100 1300 3100
Connection ~ 1300 3100
Wire Wire Line
	1300 3100 1300 3250
Text Label 1600 2400 0    50   ~ 0
VBAT
Wire Wire Line
	1600 2400 1600 2550
Connection ~ 1600 2550
Wire Wire Line
	1600 2550 2000 2550
Text Label 1900 6400 0    50   ~ 0
SWD_POWER_IN
Text Label 2700 950  0    50   ~ 0
SWD_POWER_IN
Wire Wire Line
	2700 950  2550 950 
Wire Wire Line
	2550 950  2550 1350
Wire Wire Line
	6450 850  6650 850 
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5DB61D31
P 7500 1000
F 0 "TP1" H 7653 1055 50  0000 L CNN
F 1 "TestPoint_Probe" H 7653 1010 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7700 1000 50  0001 C CNN
F 3 "~" H 7700 1000 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Yes" H 0   0   50  0001 C CNN "DNP"
	1    7500 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5DB62E76
P 7500 1100
F 0 "TP2" H 7653 1155 50  0000 L CNN
F 1 "TestPoint_Probe" H 7653 1110 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7700 1100 50  0001 C CNN
F 3 "~" H 7700 1100 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Yes" H 0   0   50  0001 C CNN "DNP"
	1    7500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1000 6750 850 
Wire Wire Line
	7450 850  7450 1000
Wire Wire Line
	7450 1000 7500 1000
Wire Wire Line
	6750 850  7450 850 
Wire Wire Line
	6850 900  7400 900 
Wire Wire Line
	7400 900  7400 1100
Wire Wire Line
	7400 1100 7500 1100
Wire Wire Line
	6850 900  6850 1000
Wire Wire Line
	7750 3000 7750 3100
Wire Wire Line
	7750 3100 7350 3100
Wire Wire Line
	7350 3100 7350 3550
Wire Wire Line
	7350 3550 7100 3550
Wire Wire Line
	8050 3000 8050 3600
Wire Wire Line
	8250 3000 8250 3800
Wire Wire Line
	7850 3000 7850 3200
Wire Wire Line
	7850 3200 7450 3200
Wire Wire Line
	7450 3200 7450 3700
Wire Wire Line
	7450 3700 7100 3700
Wire Wire Line
	7950 3600 8050 3600
Wire Wire Line
	7950 3800 8250 3800
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5DC3C693
P 7100 3550
F 0 "TP3" V 7150 3750 50  0000 C CNN
F 1 "TestPoint_Probe" H 7253 3560 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7300 3550 50  0001 C CNN
F 3 "~" H 7300 3550 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Yes" H 0   0   50  0001 C CNN "DNP"
	1    7100 3550
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 5DC3DCFC
P 7100 3700
F 0 "TP4" V 7150 3900 50  0000 C CNN
F 1 "TestPoint_Probe" H 7253 3710 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7300 3700 50  0001 C CNN
F 3 "~" H 7300 3700 50  0001 C CNN
F 4 "Electronics" H -50 -200 50  0001 C CNN "Category"
F 5 "Yes" H 0   0   50  0001 C CNN "DNP"
	1    7100 3700
	0    -1   -1   0   
$EndComp
Text Notes 5600 4400 0    28   Italic 0
solder after \ntesting power \nmanagement circuit\n
Wire Notes Line
	4450 4200 4450 3950
Wire Notes Line
	3650 4200 4450 4200
Text Label 4200 5150 2    50   ~ 0
IR_Emitter
Text Notes 3750 4150 0    79   ~ 16
IR Emitter
Wire Wire Line
	5050 4250 5050 4400
Text Notes 4550 4400 0    50   ~ 0
Anode (-)\n(long leg)
Text Notes 4550 4800 0    50   ~ 0
Cathode (+)\n(short leg)
Text Notes 4850 5300 0    50   ~ 0
B
Text Notes 5050 5400 0    50   ~ 0
E
Text Notes 5050 4950 0    50   ~ 0
C
Wire Wire Line
	5050 4700 5050 4950
$Comp
L LED:LD274 D3
U 1 1 5D38C59F
P 5050 4500
F 0 "D3" V 5046 4423 50  0000 R CNN
F 1 "IR LED Emitter" V 4955 4423 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5050 4675 50  0001 C CNN
F 3 "https://docs-apac.rs-online.com/webdocs/1674/0900766b816747ad.pdf" H 5000 4500 50  0001 C CNN
F 4 "Electronics" H -450 3000 50  0001 C CNN "Category"
F 5 "ROHM" H -450 3000 50  0001 C CNN "Manufacturer"
F 6 "10" H -450 3000 50  0001 C CNN "Minimum Order"
F 7 "TH" H -450 3000 50  0001 C CNN "Package"
F 8 "SIR-56ST3F " V 4850 4200 50  0000 C CNN "Part No."
F 9 "9" H -450 3000 50  0001 C CNN "Stock"
F 10 "0.778" H -450 3000 50  0001 C CNN "Unit cost"
F 11 "RS Components" H -450 3000 50  0001 C CNN "Vendor"
F 12 "https://sg.rs-online.com/web/p/ir-leds/1780575/?sra=pstk" H -450 3000 50  0001 C CNN "Vendor link"
F 13 "39" H 50  -200 50  0001 C CNN "Stock No."
	1    5050 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 5350 5050 5500
Wire Wire Line
	4500 5150 4750 5150
Wire Wire Line
	4200 5150 4300 5150
$Comp
L Device:R_Small R3
U 1 1 5D38A758
P 4400 5150
F 0 "R3" V 4300 5150 50  0000 C CNN
F 1 "47R" V 4500 5150 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4400 5150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 4400 5150 50  0001 C CNN
F 4 "Electronics" H -450 3000 50  0001 C CNN "Category"
F 5 "0805" H 50  -200 50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H 50  -200 50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H 50  -200 50  0001 C CNN "Part No."
F 8 "LCSC" H 50  -200 50  0001 C CNN "Vendor"
F 9 "50" H 50  -200 50  0001 C CNN "Minimum Order"
F 10 "0.0050 " H 50  -200 50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H 50  -200 50  0001 C CNN "Vendor link"
F 12 "57" H 0   0   50  0001 C CNN "Stock No."
	1    4400 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D38A326
P 5050 5500
F 0 "#PWR09" H 5050 5250 50  0001 C CNN
F 1 "GND" H 5055 5327 50  0000 C CNN
F 2 "" H 5050 5500 50  0001 C CNN
F 3 "" H 5050 5500 50  0001 C CNN
	1    5050 5500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 5D3886A5
P 4950 5150
F 0 "Q2" H 4750 5250 50  0000 L CNN
F 1 "NPN Transistor" H 5150 5200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5150 5075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-BC817-25LT3G_C191221.pdf" H 4950 5150 50  0001 L CNN
F 4 "Electronics" H -450 3000 50  0001 C CNN "Category"
F 5 "ON Semiconductor" H -450 3000 50  0001 C CNN "Manufacturer"
F 6 "BC817-25LT3G" H 5450 5100 50  0000 C CNN "Part No."
F 7 "LCSC" H 50  -200 50  0001 C CNN "Vendor"
F 8 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semicon_BC817-25LT3G_ON-Semicon-ON-BC817-25LT3G_C191221.html" H 50  -200 50  0001 C CNN "Vendor link"
F 9 "5" H 50  -200 50  0001 C CNN "Minimum Order"
F 10 "0.021" H 50  -200 50  0001 C CNN "Unit cost"
F 11 "SOT-23" H 50  -200 50  0001 C CNN "Package"
F 12 "58" H 0   0   50  0001 C CNN "Stock No."
	1    4950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4600 2550 4600
Wire Wire Line
	2750 4600 2950 4600
$Comp
L power:GND #PWR0101
U 1 1 5DBA5765
P 3300 7100
F 0 "#PWR0101" H 3300 6850 50  0001 C CNN
F 1 "GND" H 3305 6927 50  0000 C CNN
F 2 "" H 3300 7100 50  0001 C CNN
F 3 "" H 3300 7100 50  0001 C CNN
	1    3300 7100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 7000 3300 7100
NoConn ~ 8150 3000
$Comp
L Device:R_Small R14
U 1 1 5DB98984
P 5400 4250
F 0 "R14" V 5500 4150 50  0000 C CNN
F 1 "0R" V 5500 4350 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 4250 50  0001 C CNN
F 3 "~" H 5400 4250 50  0001 C CNN
F 4 "Yes" H -50 -200 50  0001 C CNN "DNP"
F 5 "42" H -50 -200 50  0001 C CNN "Stock"
F 6 "15" H -50 -200 50  0001 C CNN "Stock No."
F 7 "Internal stock" H -50 -200 50  0001 C CNN "Vendor"
F 8 "Electronics" H -50 -200 50  0001 C CNN "Category"
	1    5400 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4250 5800 4250
Wire Wire Line
	5050 4250 5300 4250
Text Notes 4250 7050 0    50   ~ 0
R14 can be 0R:\ngithub.com/hutscape/pine/issues/14#issuecomment-547702446
Wire Notes Line
	6150 3950 6150 5900
$Comp
L power:+2V8 #PWR0102
U 1 1 5DBCC07C
P 5500 1450
F 0 "#PWR0102" H 5500 1300 50  0001 C CNN
F 1 "+2V8" H 5515 1623 50  0000 C CNN
F 2 "" H 5500 1450 50  0001 C CNN
F 3 "" H 5500 1450 50  0001 C CNN
	1    5500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1450 5500 1900
$Comp
L power:+2V8 #PWR0103
U 1 1 5DBD5DC3
P 4350 1350
F 0 "#PWR0103" H 4350 1200 50  0001 C CNN
F 1 "+2V8" H 4365 1523 50  0000 C CNN
F 2 "" H 4350 1350 50  0001 C CNN
F 3 "" H 4350 1350 50  0001 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0104
U 1 1 5DBEDE3F
P 5950 2700
F 0 "#PWR0104" H 5950 2550 50  0001 C CNN
F 1 "+2V8" H 5965 2873 50  0000 C CNN
F 2 "" H 5950 2700 50  0001 C CNN
F 3 "" H 5950 2700 50  0001 C CNN
	1    5950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0105
U 1 1 5DBEE785
P 2950 4600
F 0 "#PWR0105" H 2950 4450 50  0001 C CNN
F 1 "+2V8" H 2965 4773 50  0000 C CNN
F 2 "" H 2950 4600 50  0001 C CNN
F 3 "" H 2950 4600 50  0001 C CNN
	1    2950 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0106
U 1 1 5DBEEE13
P 5800 4250
F 0 "#PWR0106" H 5800 4100 50  0001 C CNN
F 1 "+2V8" H 5815 4423 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0107
U 1 1 5DBEF842
P 7850 4250
F 0 "#PWR0107" H 7850 4100 50  0001 C CNN
F 1 "+2V8" H 7865 4423 50  0000 C CNN
F 2 "" H 7850 4250 50  0001 C CNN
F 3 "" H 7850 4250 50  0001 C CNN
	1    7850 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0109
U 1 1 5DBF23F9
P 9000 4500
F 0 "#PWR0109" H 9000 4350 50  0001 C CNN
F 1 "+2V8" H 9015 4673 50  0000 C CNN
F 2 "" H 9000 4500 50  0001 C CNN
F 3 "" H 9000 4500 50  0001 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0110
U 1 1 5DBF2AC7
P 9550 4500
F 0 "#PWR0110" H 9550 4350 50  0001 C CNN
F 1 "+2V8" H 9565 4673 50  0000 C CNN
F 2 "" H 9550 4500 50  0001 C CNN
F 3 "" H 9550 4500 50  0001 C CNN
	1    9550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0111
U 1 1 5DBF31A5
P 10150 4500
F 0 "#PWR0111" H 10150 4350 50  0001 C CNN
F 1 "+2V8" H 10165 4673 50  0000 C CNN
F 2 "" H 10150 4500 50  0001 C CNN
F 3 "" H 10150 4500 50  0001 C CNN
	1    10150 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0112
U 1 1 5DBF3B86
P 10150 3250
F 0 "#PWR0112" H 10150 3100 50  0001 C CNN
F 1 "+2V8" H 10165 3423 50  0000 C CNN
F 2 "" H 10150 3250 50  0001 C CNN
F 3 "" H 10150 3250 50  0001 C CNN
	1    10150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1350 2850 1350
Wire Wire Line
	2850 1350 3050 1350
Connection ~ 2850 1350
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DB1A789
P 2850 1350
F 0 "#FLG03" H 2850 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 1523 50  0000 C CNN
F 2 "" H 2850 1350 50  0001 C CNN
F 3 "~" H 2850 1350 50  0001 C CNN
	1    2850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2250 6100 2250
Wire Wire Line
	6250 2250 6100 2250
Connection ~ 6100 2250
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5D8154F9
P 6100 2250
F 0 "#FLG05" H 6100 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 2300 50  0000 C CNN
F 2 "" H 6100 2250 50  0001 C CNN
F 3 "~" H 6100 2250 50  0001 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5300 9550 5400
Wire Wire Line
	9550 4900 9550 5100
$Comp
L Device:R_Small R8
U 1 1 5D81D0F9
P 9550 5200
F 0 "R8" H 9600 5200 50  0000 L CNN
F 1 "470R" H 9300 5200 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9550 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 9550 5200 50  0001 C CNN
F 4 "Electronics" H -600 2050 50  0001 C CNN "Category"
F 5 "0805" H -50 100 50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H -50 100 50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H -50 100 50  0001 C CNN "Part No."
F 8 "LCSC" H -50 100 50  0001 C CNN "Vendor"
F 9 "50" H -50 100 50  0001 C CNN "Minimum Order"
F 10 "0.0050 " H -50 100 50  0001 C CNN "Unit cost"
F 11 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H -50 100 50  0001 C CNN "Vendor link"
F 12 "57" H 0   0   50  0001 C CNN "Stock No."
	1    9550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5300 9000 5600
$Comp
L Device:R_Small R7
U 1 1 5D813FF5
P 9000 5200
F 0 "R7" H 9050 5200 50  0000 L CNN
F 1 "470R" H 8750 5200 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 9000 5200 50  0001 C CNN
F 4 "Electronics" H -1150 2050 50  0001 C CNN "Category"
F 5 "0805" H -50 100 50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H -50 100 50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H -50 100 50  0001 C CNN "Part No."
F 8 "LCSC" H -50 100 50  0001 C CNN "Vendor"
F 9 "Yes" H -50 100 50  0001 C CNN "DNP"
F 10 "50" H -50 100 50  0001 C CNN "Minimum Order"
F 11 "0.0050 " H -50 100 50  0001 C CNN "Unit cost"
F 12 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H -50 100 50  0001 C CNN "Vendor link"
F 13 "57" H 0   0   50  0001 C CNN "Stock No."
	1    9000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5300 8400 5600
$Comp
L Device:R_Small R6
U 1 1 5D80AD25
P 8400 5200
F 0 "R6" H 8450 5200 50  0000 L CNN
F 1 "470R" H 8150 5200 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8400 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-WR08X4700FTL_C163998.pdf" H 8400 5200 50  0001 C CNN
F 4 "Electronics" H -1750 2050 50  0001 C CNN "Category"
F 5 "0805" H -50 100 50  0001 C CNN "Package"
F 6 "Walsin Tech Corp" H -50 100 50  0001 C CNN "Manufacturer"
F 7 "WR08X4700FTL" H -50 100 50  0001 C CNN "Part No."
F 8 "LCSC" H -50 100 50  0001 C CNN "Vendor"
F 9 "Yes" H -50 100 50  0001 C CNN "DNP"
F 10 "50" H -50 100 50  0001 C CNN "Minimum Order"
F 11 "0.0050 " H -50 100 50  0001 C CNN "Unit cost"
F 12 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-WR08X4700FTL_C163998.html" H -50 100 50  0001 C CNN "Vendor link"
F 13 "57" H 0   0   50  0001 C CNN "Stock No."
	1    8400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+2V8 #PWR0108
U 1 1 5DBF052C
P 8400 4500
F 0 "#PWR0108" H 8400 4350 50  0001 C CNN
F 1 "+2V8" H 8415 4673 50  0000 C CNN
F 2 "" H 8400 4500 50  0001 C CNN
F 3 "" H 8400 4500 50  0001 C CNN
	1    8400 4500
	1    0    0    -1  
$EndComp
Wire Notes Line
	3650 5900 3650 3950
Wire Notes Line
	1000 750  1000 7550
Wire Notes Line
	4050 5900 4050 7550
Wire Notes Line
	2500 5900 2500 7550
Text Notes 4250 6250 0    79   ~ 16
Footnotes: Design explanations
Wire Notes Line
	4200 6800 6850 6800
Wire Notes Line
	1000 7550 4050 7550
Wire Notes Line width 8 style solid
	6850 6050 4200 6050
Wire Notes Line
	4200 6300 6850 6300
Wire Wire Line
	4300 1350 4350 1350
Wire Notes Line
	2500 6150 4050 6150
Text Notes 4550 3900 0    50   ~ 0
Note: MCU does not have any crystal at pins PA00 \nand PA01. Use crystalless options when uploading \nthe bootloader and firmware application code.
Wire Notes Line
	4500 3600 6550 3600
Wire Notes Line
	6550 3600 6550 3950
Wire Notes Line width 8 style solid
	6850 6050 6850 7100
Wire Notes Line width 8 style solid
	6850 7100 4200 7100
Wire Notes Line width 8 style solid
	4200 7100 4200 6050
$EndSCHEMATC

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
L MCU_Espressif:ESP8266EX U0
U 1 1 60F440F9
P 8550 2950
F 0 "U0" H 8983 1761 50  0000 C CNN
F 1 "ESP8266EX" H 8983 1670 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 8550 1650 50  0001 C CNN
F 3 "http://espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 8650 1650 50  0001 C CNN
	1    8550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60F4840B
P 8550 4100
F 0 "#PWR?" H 8550 3850 50  0001 C CNN
F 1 "GND" H 8555 3927 50  0000 C CNN
F 2 "" H 8550 4100 50  0001 C CNN
F 3 "" H 8550 4100 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4050 8550 4100
$Comp
L Connector:USB_C_Receptacle J0
U 1 1 60F53DBC
P 2000 2750
F 0 "J0" H 2107 4017 50  0000 C CNN
F 1 "USB_C_Receptacle" H 2107 3926 50  0000 C CNN
F 2 "" H 2150 2750 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2150 2750 50  0001 C CNN
	1    2000 2750
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U?
U 1 1 60F57AEC
P 4450 2100
F 0 "U?" H 4450 3181 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 4450 3090 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 4900 1300 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 4500 1050 50  0001 C CNN
	1    4450 2100
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX485E U?
U 1 1 60F58A7E
P 4750 4150
F 0 "U?" H 4750 4831 50  0000 C CNN
F 1 "MAX485E" H 4750 4740 50  0000 C CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 4750 4200 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45_LED J?
U 1 1 60F5AE40
P 2150 5500
F 0 "J?" H 2150 6167 50  0000 C CNN
F 1 "RJ45_LED" H 2150 6076 50  0000 C CNN
F 2 "" V 2150 5525 50  0001 C CNN
F 3 "~" V 2150 5525 50  0001 C CNN
	1    2150 5500
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:W25Q32JVSS U?
U 1 1 60F5D13B
P 4700 5750
F 0 "U?" H 4700 6331 50  0000 C CNN
F 1 "W25Q32JVSS" H 4700 6240 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 4700 5750 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 4700 5750 50  0001 C CNN
	1    4700 5750
	1    0    0    -1  
$EndComp
Text Notes 4350 850  0    50   ~ 0
USB to UART
Text Notes 4450 3350 0    50   ~ 0
UART to RS485
Text Notes 4600 5100 0    50   ~ 0
ROM
$EndSCHEMATC

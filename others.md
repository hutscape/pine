---
layout: others
title: Others
permalink: /others
sequence: 8

# Lessons
lessons:
  - title: Lessons learnt
    subtitle: Good practices to continue for future projects
    list:
      - name: Do not reset annotations for components as previously annotated components might have already been associated with BOM
      - name: Do not copy and paste symbols for different parts of the schematic as they might copy over other field values
      - name: Refer to application circuit in datasheets to connect various passives
      - name: Consider pulling out some unused pins as pads if the board is to be used for future development and iteration E.g. <a href="https://www.pjrc.com/store/teensy36b.jpg">Teensy</a>
      - name: Consolidate shipping orders for parts and components so that fewer deliveries are made
      - name: Use a <a href="https://www.youtube.com/watch?v=IrB-FPcv1Dc">p-channel MOSFET for reverse polarity circuit protection</a>
  - title: V2.0
    subtitle: For next iteration
    list:
      - name: Use SMD components for IR receiver and emitter
      - name: Use standard 9-pin JTAG/SWD connector for burning the bootloader
        image: 9-pin-jtag-swd-pins.png
      - name: Use WiFi to control IR emission

# References
similar:
  - name: CHUNGHOP Universal Air Conditioner Remote Controls
    url: https://www.amazon.com/Chunghop-Universal-Conditioner-Controller-Conditioning/dp/B07C6STH7P/
    type: consumer
    cost: 8
  - name: Xiaomi Mijia IR Blaster Remote Control
    url: https://sea.banggood.com/Xiaomi-Mijia-Universal-IR-Remote-Controller-Smart-Home-APP-Remote-Switch-Support-Mi-AI-Speaker-Voice-Control-p-1215271.html?rmmds=buy&cur_warehouse=CN
    year: 2019
    type: consumer
    cost: 20
    components:
      - type: wifi
  - name: Nature Remo Mini
    url: https://en.nature.global/nature-remo-3/
    year: 2020
    type: consumer
    cost: 69
    components:
      - type: wifi
      - type: temperature sensor
  - name: IR Blaster with CEC
    url: https://hackaday.io/project/18911-ir-blaster-with-cec
    year: 2017
    type: developer
    components:
      - type: raspberry pi
      - type: IR receiver
        name: RMP7100
        url: https://www.jaycar.com.au/medias/sys_master/images/images/9403522842654/ZD1952-dataSheetMain.pdf
      - type: software
        name: Home Assisstant
        url: https://www.home-assistant.io/
  - name: IR Kit
    url: https://getirkit.com/en/
    year: 2018
    type: developer
    components:
      - type: mcu
        name: ATMEGA32U
        url: http://ww1.microchip.com/downloads/en/devicedoc/atmel-7766-8-bit-avr-atmega16u4-32u4_datasheet.pdf
      - type: wifi
        name: GX1011MX
        url: https://www.digikey.bg/htmldatasheets/production/1947555/0/0/1/gs1011m-datasheet.html
      - type: ir led
        name: VSLB3940
        url: https://www.vishay.com/docs/81931/vslb3940.pdf
  - name: Logitech Harmony 350 universal remote
    url: https://www.logitech.com/assets/51207/4/harmony-350-qsg-and-iid.pdf
    type: consumer
    components:
      - type: demo
        name: How to Program Your LOGITECH Universal Remote to ANY Device!
        url: https://www.youtube.com/watch?v=J9r9m82f_hc&t=201

references:
  - topic: Infrared
    list:
      - name: IRLib2
        url: https://github.com/cyborg5/IRLib2
      - name: Infrared receiver with supported protocols
        url: https://hutscape.com/components/ir-receiver
      - name: Receiving and Decoding IR tutorial by Adafruit
        url: https://learn.adafruit.com/using-an-infrared-library/hardware-needed
      - name: Infrared receiver for raw codes
        url: https://hutscape.com/components/ir-raw-receive
      - name: Raw receive code example
        url: https://github.com/cyborg5/IRLib2/blob/master/IRLib2/examples/rawRecv/rawRecv.ino
      - name: IR Emitter
        url: https://hutscape.com/components/ir-emitter
      - name: 171 Arduino Guide to Infrared (IR) Communication also for ESP32 and ESP8266 by Andreas Spiess
        url: https://www.youtube.com/watch?v=gADIb1Xw8PE
      - name: How should I wire up the circuit to connect a TSOP4838 (Radio Shack 276-64) infrared receiver to an Arduino?
        url: https://electronics.stackexchange.com/questions/68098/how-should-i-wire-up-the-circuit-to-connect-a-tsop4838-radio-shack-276-64-infr

  - topic: Increasing IR LED range
    list:
      - name: IR LED doesn't work from a distance?
        url: https://forum.arduino.cc/index.php?topic=361619.0
      - name: Increase IR transmitter directivity and range
        url: https://arduino.stackexchange.com/questions/35190/increase-ir-transmitter-directivity-and-range
      - name: How to get the best range out of an IR LED?
        url: https://www.instructables.com/community/How-to-get-the-best-range-out-of-an-IR-LED/

  - topic: SAMD21
    list:
      - name: Arduino Zero
        url: https://store.arduino.cc/usa/arduino-zero
      - name: ATmel SAMD21 Datasheet
        url: https://www.electrokit.com/uploads/productfile/41014/Atmel-42181-SAM-D21_Datasheet.pdf
      - name: RobotDyn SAMD21 M0-Mini
        url: https://robotdyn.com/samd21-m0-mini.html
      - name: RobotDyn SAMD21 M0-Mini pinout
        url: https://robotdyn.com/pub/media/0G-00005516==SAMD21-MINI/DOCS/PINOUT==0G-00005516==SAMD21-MINI.jpg
      - name: Arduino M0 Schematic
        url: https://www.arduino.cc/en/uploads/Main/arduino-M0-schematic.pdf
      - name: RobotDyn M0 Mini Schematic
        url: https://robotdyn.com/pub/media/0G-00005516==SAMD21-MINI/DOCS/Schematic==0G-00005516==SAMD21-MINI.pdf
      - name: Adafruit M0 Express Schematic
        url: https://cdn-learn.adafruit.com/assets/assets/000/040/553/original/arduino_schem.png?1490994398

  - topic: Bootloader
    list:
      - name: Arduino M0 bootloader
        url: https://github.com/arduino/ArduinoCore-samd/tree/master/bootloaders/zero
      - name: Adafruit Adalink to automate flashing ARM CPUs with new program code using a Segger J-link or STMicro STLink V2 device
        url: https://github.com/adafruit/Adafruit_Adalink
      - name: How to burn / flash a bootloader into an external ATSAMD21
        url: https://www.avdweb.nl/arduino/samd21/samd21-programmer
      - name: SWD Header pinout
        url: https://wiki.paparazziuav.org/wiki/STLink#SWD_Header
      - name: How to burn Arduino Zero bootloader to an Atmel ATSAMD21G18-based custom dev board
        url: https://www.youtube.com/watch?v=VQWhjzLoHB8
      - name: ATSAMD21g18 Bootloader With J-link Debugger
        url: https://www.instructables.com/id/ATSAMD21g18-Bootloader-With-J-link-Debugger/
      - name: Converting an STM32F103 board to a Black Magic Probe
        url: https://medium.com/@paramaggarwal/converting-an-stm32f103-board-to-a-black-magic-probe-c013cf2cc38c
      - name: JTAG/SWD debugging via Black Magic Probe on an STM32 blue pill and blinking a LED using STM32CubeMX, libopencm3, and bare metal C
        url: https://satoshinm.github.io/blog/171223_jtagswdpillblink_jtagswd_debugging_via_black_magic_probe_on_an_stm32_blue_pill_and_blinking_a_led_using_stm32cubemx_libopencm3_and_bare_metal_c.html
      - name: Topic burn arduino zero's bootloader to SAMD21 with STlink_v2
        url: https://forum.arduino.cc/index.php?topic=532385.15

  - topic: Transistor
    list:
      - name: Transistors by Sparkfun
        url: https://learn.sparkfun.com/tutorials/transistors/applications-i-switches
      - name: NPN Transistor
        url: https://www.electronics-tutorials.ws/transistor/tran_2.html

  - topic: Power and battery
    list:
      - name: switch between battery and usb power no microcontroller circuit
        url: https://electronics.stackexchange.com/questions/96059/switch-between-battery-and-usb-power-no-microcontroller-circuit
      - name: Powering MCU from both USB or Battery
        url: https://electronics.stackexchange.com/questions/245087/powering-mcu-from-both-usb-or-battery
      - name: LTC4412
        url: https://www.analog.com/en/products/ltc4412.html#product-overview
      - name: Measuring battery voltage in Adafruit feather M0
        url: https://learn.adafruit.com/adafruit-feather-m0-adalogger/power-management#measuring-battery-4-9
      - name: Measuring Lithium battery voltage with nRF52
        url: https://devzone.nordicsemi.com/nordic/nordic-blog/b/blog/posts/measuring-lithium-battery-voltage-with-nrf52
      - name: RC Charging Circuit
        url: https://www.electronics-tutorials.ws/rc/rc_1.html

  - topic: Sleep
    list:
      - name: MKR Zero board goes to sleep mode and wake up periodically
        url: https://forum.arduino.cc/index.php?topic=626452.0
      - name: Arduino RTC Library for SAMD21 based boards
        url: https://github.com/arduino-libraries/RTCZero

  - topic: Web USB
    list:
      - name: Access USB Devices on the Web
        url: https://developers.google.com/web/updates/2016/03/access-usb-devices-on-the-web
      - name: webusb arduino
        url: https://github.com/webusb/arduino
      - name: List of USB ID's
        url: http://www.linux-usb.org/usb.ids
      - name: Why Arduino UNO cannot be used with webusb
        url: https://forum.arduino.cc/index.php?topic=464751.0

  - topic: EFM32 (not used in this project)
    list:
      - name: EFM32 HG Datasheet page 112/168, Section 5.6.1 Pinout
        url: https://www.silabs.com/documents/public/data-sheets/efm32hg-datasheet.pdf
      - name: Tomu samples
        url: https://github.com/im-tomu/tomu-samples
      - name: Tomu bootloader
        url: https://github.com/im-tomu/tomu-bootloader

  - topic: Design
    list:
      - name: On-Off controller
        url: http://www.eeeguide.com/on-off-controller/
      - name: PID controller
        url: https://en.wikipedia.org/wiki/PID_controller

# Schedule
design_start: '2019-07-14'
design_end: '2019-11-02'
manufacturing_start: '2019-11-03'
manufacturing_end: '2019-11-16'
integration_start: '2019-11-17'
integration_end: '2020-09-16'
deployment_start:
deployment_end:
---

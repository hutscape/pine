---
layout: csq
title: CSQ
permalink: /csq
sequence: 7

# Lessons
lessons:
  - name: (Schematic) Do not reset annotations for components as previously annotated components might have already been associated with BOM
  - name: (Schematic) Do not copy and paste symbols for different parts of the schematic as they might copy over other field values
  - name: (Schematic) Refer to application circuit in datasheets to connect various passives
  - name: (Schematic) Consider pulling out some unused pins as pads if the board is to be used for future development and iteration E.g. <a href="https://www.pjrc.com/store/teensy36b.jpg">Teensy</a>
  - name: (BOM) Consolidate shipping orders for parts and components so that fewer deliveries are made
  - name: (Schematic) Use a <a href="https://www.youtube.com/watch?v=IrB-FPcv1Dc">p-channel MOSFET for reverse polarity circuit protection</a>
  - name: (Layout) Use SMD components for IR receiver and emitter
  - name: (Layout) Use standard 9-pin JTAG/SWD connector for burning the bootloader
    image: 9-pin-jtag-swd-pins.png
  - name: (Firmware) Use WiFi to control IR emission

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

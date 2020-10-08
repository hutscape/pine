---
layout: default
title: Lessons learnt
permalink: /lessons
sequence: 9
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
improvements:
  - title: Improvements
    subtitle: Simple iterations that were implemented in this project because of the learnings from the previous projects
    list:
      - name: Added power annotations on the silkscreen
      - name: Used standard grid size for component placements and routing
      - name: Used standard text size
      - name: Used standard component sizes
      - name: Added a power on/off button
      - name: De-modularised to use only the micro-controller and no dev boards
      - name: Created a complete 3D rendering with all components
      - name: Pulled out some unused pins as test points
      - name: Added solder jumper points for circuit isolation

---

---
layout: default
title: Getting Started
permalink: /
sequence: 1

manufacturing: true
download_schematic: true
download_layout: true
download_kicad: true
download_gerber: true
download_bom: true
software:
  - name: Firmware
    code: firmware
  - name: WebUSB
    code: webusb
---
<section class="section is-small">
<div class="container">
  <h2 class="title is-1">Getting Started</h2>
  <div class="tags has-addons">
    <span class="tag is-medium is-light">status</span>
    <span class="tag is-medium is-success">completed</span>
  </div>

  <div class="tile is-ancestor">
    <div class="tile is-vertical is-12">
      <div class="tile">
        <div class="tile is-parent">
          <article class="tile is-child notification">
            <p class="title">Step 1</p>
            <p class="subtitle">The PCB has 2 battery holder connector holes that can be used to attach the battery holder.</p>
            <a href="{{site.url}}/images/prototype/pcb-connector.jpg"><img src="{{site.url}}/images/prototype/pcb-connector.jpg" alt="PCB battery connector holes"></a>
            <p class="subtitle">Put in 3 AA batteries and turn on the switch. The power LED should turn on.</p>
            <a href="{{site.url}}/images/prototype/battery.jpg"><img src="{{site.url}}/images/prototype/battery.jpg" alt="PCB with battery holder"></a>
          </article>
        </div>
        <div class="tile is-parent">
          <article class="tile is-child notification">
            <p class="title">Step 2</p>
            <p class="subtitle">Flash the <a href="software#firmware">firmware</a> onto the Arduino Zero compatible board with a micro-USB cable.</p>
            <a href="{{site.url}}/images/prototype/setup-page.png"><img src="{{site.url}}/images/prototype/setup-page.png" alt="Web USB setup page"></a>
            <p class="subtitle">Connect to the serial monitor to see the debug messages.</p>
            <a href="{{site.url}}/images/prototype/serial.png"><img src="{{site.url}}/images/prototype/serial.png" alt="Serial console"></a>
          </article>
        </div>
        <div class="tile is-parent">
          <article class="tile is-child notification">
            <div class="content">
              <p class="title">Step 3</p>
              <!-- TODO: Program the actual sleep and turning on to check the temperature -->
              <p class="subtitle">Notice that the aircon should turn ON and OFF every 5 seconds as a test.</p>
            </div>
          </article>
        </div>
      </div>
    </div>
  </div>
</div>
</section>

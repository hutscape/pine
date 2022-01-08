---
layout: design
title: Design
permalink: /design
sequence: 5

# Mechanical
items:
  - name: Battery holder for 3AA
    url: https://docs-apac.rs-online.com/webdocs/1659/0900766b81659aed.pdf
    height: 57.7
    width: 47
    depth: 16.6
    dimension_unit: mm
    weight: 9.4
    weight_unit: g
    comment: enclosure

# Design
sub_system: true
state_machine: true
terminologies:
  - term: Device
    definition: Pine, the entire electronics with embedded firmware and associated software
  - term: Ideal temperature
    definition: Desired room temperature as configured by the first-time user
  - term: Power on
    definition: A DPST switch to power on the entire device
  - term: Power off
    definition: A DPST switch to power off the entire device
  - term: Start button
    definition: A push button to start the device function every interval for a duration of time
  - term: ON command
    definition: Array of raw IR code to turn on the aircon at a certain temperature
  - term: OFF command
    definition: Array of raw IR code to turn off the aircon
  - term: Interval
    definition: Time period after which the device will check for room temperature and turn on or off the aircon E.g. 30 minutes
  - term: Duration
    definition: Length of total time during which the device will start functioning and then stop until it is started again
  - term: Ideal temperature
    definition: Desired room temperature as configured by the first-time user

user_stories:
  - user: first-time user
    actions:
      - goal: save the ON command of the aircon remote controller
        reason: it can be stored and replayed
      - goal: save the OFF command of the aircon remote controller
        reason: it can be stored and replayed
      - goal: configure the interval time for checking the room temperature
        reason: it can wakeup periodically to check the temperature
      - goal: configure the total period of time when the device should be checking the temperature
        reason: it can stop checking the temperature to regulate the room environment after a while
      - goal: configure the ideal room temperature
        reason: it can turn ON/OFF the aircon according to the measured temperature
  - user: user
    actions:
      - goal: turn ON the device with an on-board button
        reason: it can measure the current temperature and turn ON/OFF the aircon periodically
      - goal: turn OFF the device with an on-board button
        reason: it can measure the current temperature and turn ON/OFF the aircon periodically
      - goal: replace the battery
        reason: the device can be powered again
      - goal: turn ON the aircon automatically
        reason: the room becomes cooler towards my ideal temperature
      - goal: turn OFF the aircon automatically
        reason: the room becomes warmer towards my ideal temperature
      - goal: place the device on a vertical surface in line of sight with the aircon
        reason: it can communicate with the aircon via infrared
        reason: it can send the ON command to the aircon
      - goal: know whether the room temperature is colder or warmer than the ideal temperature through an on-board LED
        reason: it can send the OFF command to the aircon
features:
  - name: Store 2 arrays of about 300 elements of 12-bit integer for raw IR code
  - name: Flash in a program with sufficient memory containing IRLib2 with both IR emitter and receiver, compression algorithm. <code> Sketch uses 5476 bytes (16%) of program storage space. Maximum is 32256 bytes. Global variables use 2156 bytes (105%) of dynamic memory, leaving -108 bytes for local variables. Maximum is 2048 bytes.</code> Not enough memory; see <a href="https://www.arduino.cc/en/Guide/Troubleshooting#size">Troubleshooting Guide</a> for tips on reducing your footprint.
  - name: Sleep and wakeup periodically with a timer
  - name: Support Web USB protocol
  - name: Support I2C protocol for temperature sensor

comparison:
  - title: Arduino board
    samd21: <a href="https://store.arduino.cc/usa/arduino-mkrzero">Arduino Mkr Zero</a>
    atmega328p: <a href="https://store.arduino.cc/usa/arduino-uno-rev3">Arduino UNO Rev3</a>
  - title: Flash (usage)
    samd21: 256 kB Flash (program and config)
    atmega328p: 32 kB Flash (program)
  - title: EEPROM (usage)
    samd21: no EEPROM
    atmega328p: 1 kB EEPROM (config)
  - title: RAM (usage)
    samd21: 32KB (variables)
    atmega328p: 2KB (variables)
  - title: RTC
    samd21: 32-bit
  - title: Sleep modes
    samd21: IDLE / STANDBY (<a href="https://www.electrokit.com/uploads/productfile/41014/Atmel-42181-SAM-D21_Datasheet.pdf">Section 18.6.8 Sleep Mode Operation</a>)
  - title: USB
    samd21: USB 2.0 host and device interface
  - title: I2C
    samd21: yes
    atmega328p: yes

# Power
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Required features</h2>
    <div class="content is-medium">
      <ol>
        {% for f in page.features %}
        <li>{{ f.name }}</li>
        {% endfor %}
      </ol>
    </div>
  </div>
</section>

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Aircon compatibility for IR protocols</h2>
    <p class="subtitle">Options for both supported and unsupported IR protocols are available.</p>
    <div class="content is-medium">
      <ul>
        <li><strong>Supported protocols:</strong> Check <a href="https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibProtocols.h#L15-L29">IRLib2 supported protocols</a></li>
        <li><strong>Unsupported protocols:</strong> Record the IR raw code.</li>
        <li>
          Example of unsupported protocols: Mitsubishi Aircon remote
          <img src="{{site.url}}/images/design/example-aircon.jpg" alt="Example aircon model for unsupported protocol">
        </li>
      </ul>
    </div>
  </div>
</section>

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Power consumption of main components</h2>
    <table class="table is-fullwidth">
      <thead>
        <tr>
          <th>Chip #</th>
          <th>Description</th>
          <th>Operating Voltage</th>
          <th>Output Voltage</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><a href="https://cdn.sparkfun.com/datasheets/Dev/Arduino/Boards/Atmel-42181-SAM-D21_Datasheet.pdf">SAMD21G</a></td>
          <td>MCU</td>
          <td><code>1.62V</code> to <code>3.63V</code></td>
          <td></td>
        </tr>
        <tr>
          <td><a href="https://www.vishay.com/docs/82459/tsop48.pdf">TSOP4383</a></td>
          <td>IR Receiver</td>
          <td><code>2.5V</code> to <code>5.5V</code></td>
          <td></td>
        </tr>
        <tr>
          <td><a href="https://docs-apac.rs-online.com/webdocs/1674/0900766b816747ad.pdf">SIR-56ST3F</a></td>
          <td>IR LED Emitter</td>
          <td><code>1.3V</code> to <code>1.6V</code></td>
          <td></td>
        </tr>
        <tr>
          <td><a href="https://www.silabs.com/documents/public/data-sheets/Si7021-A20.pdf">Si7021-A20</a></td>
          <td>Temperature and humidity sensor</td>
          <td><code>1.9V</code> to <code>3.6V</code></td>
          <td></td>
        </tr>
        <tr>
          <td><a href="https://docs-apac.rs-online.com/webdocs/151f/0900766b8151fea1.pdf">LD3985</a></td>
          <td>Low dropout voltage regulator</td>
          <td><code>2.5V</code> to <code>6.0V</code></td>
          <td><code>1.22 V</code>, <code>1.8 V</code>, <code>2.5 V</code>, <code>2.6 V</code>, <code>2.7 V</code>, <code>2.8 V</code>, <code>2.9 V</code>, <code>3 V</code>, <code>3.3 V</code>, <code>4.7 V</code></td>
        </tr>
      </tbody>
    </table>
  </div>
</section>

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Circuit simulation</h2>
    <p class="subtitle">Simulation of the power management circuit with <a href="https://www.falstad.com/circuit/circuitjs.html">Falstad</a> [File > Import from Text]. </p>
    <br>
    <a class="button is-primary" href="{{site.github.repository_url}}/tree/master/power">Download code</a>
    {% highlight text %}{%- include_relative power/circuit-falstald.txt -%}{% endhighlight %}
    <img src="{{ site.url }}/images/power/power-management.gif" alt="Power management circuit simulation">
  </div>
</section>

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">SAMD21 vs ATmega328p</h2>
    <div class="table-container">
      <table class="table is-fullwidth is-hoverable">
      <thead>
        <tr>
          <th></th>
          <th>SAMD21</th>
          <th>ATmega328p</th>
        </tr>
      </thead>
      <tbody>
      {% for chip in page.comparison %}
        <tr>
          <td><strong>{{ chip.title }}</strong></td>
          <td>{{ chip.samd21 }}</td>
          <td>{{ chip.atmega328p }}</td>
        </tr>
      {% endfor %}
      </tbody>
      </table>
    </div>
  </div>
</section>

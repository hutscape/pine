---
layout: default
title: Design
permalink: /design
sequence: 5
power_tree: false
state_machine: false
user_stories:
  - user: first-time user
    actions:
      - goal: save the ON command of the aircon remote controller
        reason: it can be stored and replayed
      - goal: save the OFF command of the aircon remote controller
        reason: it can be stored and replayed
      - goal: configure the interval time for checking the room temperature
        reason: it can wakeup periodically to check the temperature
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
      - goal: know that the room temperature is warmer than the ideal temperature through an on-board RGB LED
        reason: it can send the ON command to the aircon
      - goal: know that the room temperature is colder than the ideal temperature through an on-board RGB LED
        reason: it can send the OFF command to the aircon
features:
  - name: Store 2 arrays of about 300 elements of 12-bit integer for raw IR code
  - name: Flash in a program with sufficient memory containing IRLib2 with both IR emitter and receiver, compression algorithm. <code> Sketch uses 5476 bytes (16%) of program storage space. Maximum is 32256 bytes. Global variables use 2156 bytes (105%) of dynamic memory, leaving -108 bytes for local variables. Maximum is 2048 bytes.</code> Not enough memory; see <a href="https://www.arduino.cc/en/Guide/Troubleshooting#size">Troubleshooting Guide</a> for tips on reducing your footprint.
  - name: Sleep and wakeup periodically with a timer
  - name: Support Web USB protocol
  - name: Support I2C protocol for temperature sensor
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

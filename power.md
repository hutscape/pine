---
layout: default
title: Power
permalink: /power
sequence: 6
power_tree: true
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Main components</h2>

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

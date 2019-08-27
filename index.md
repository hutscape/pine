---
layout: default
title: Getting Started
permalink: /
sequence: 1

manufacturing: false
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Getting Started</h2>

    <div class="tile is-ancestor">
      <div class="tile is-vertical is-12">
        <div class="tile">
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <p class="title">Step 1</p>
              <p class="subtitle">Wire up the prototype components.</p>
              <a href="{{site.url}}/images/hardware/schematic.png"><img src="{{site.url}}/images/hardware/schematic.png" alt="Schematic"></a>
            </article>
          </div>
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <p class="title">Step 2</p>
              <p class="subtitle">Flash the <a href="software#firmware">firmware</a> onto the Arduino compatible M0 board with SAMD21 micro-controller.</p>
              <a href="{{site.url}}/images/prototype/front.jpg"><img src="{{site.url}}/images/prototype/front.jpg" alt="Hardware prototype"></a>
            </article>
          </div>
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <div class="content">
                <p class="title">Step 3</p>
                <p class="subtitle">Turn on and off the aircon through the serial console.</p>
                <a href="{{site.url}}/images/software/console.png"><img src="{{site.url}}/images/software/console.png" alt="Firmware serial console"></a>
              </div>
            </article>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Compatible Aircons</h2>

    <div class="content is-medium">
      <ul>
        <li><a href="https://github.com/cyborg5/IRLib2/blob/master/IRLibProtocols/IRLibProtocols.h#L15-L29">Supported protocols</a> for infrared</li>
        <li>Mitsubishi Aircon remote controller with raw infrared code</li>
      </ul>
    </div>
  </div>
</section>

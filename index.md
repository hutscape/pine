---
layout: default
title: Getting Started
permalink: /
sequence: 1

manufacturing: false
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Downloads</h2>

    <div class="content is-medium">
      <div class="buttons">
        <a class="button is-info is-outlined" href="{{ site.url }}/hardware/docs/schematic.pdf">
          <span class="icon">
            <i class="far fa-file-pdf"></i>
          </span>
          <span>Schematic</span>
        </a>

        <a class="button is-info is-outlined" href="{{ site.url }}/hardware/docs/layout.pdf">
          <span class="icon">
            <i class="far fa-file-pdf"></i>
          </span>
          <span>Layout</span>
        </a>

        <a class="button is-info is-outlined" href="{{site.github.repository_url}}/tree/master/hardware">
          <span class="icon">
            <i class="fas fa-file-contract"></i>
          </span>
          <span>ECAD KiCad files</span>
        </a>

        <a class="button is-success is-outlined" href="{{site.github.repository_url}}/tree/master/firmware">
          <span class="icon">
            <i class="fas fa-file-code"></i>
          </span>
          <span>Firmware</span>
        </a>

        <a class="button is-success is-outlined" href="{{site.github.repository_url}}/tree/master/webusb">
          <span class="icon">
            <i class="fas fa-file-code"></i>
          </span>
          <span>WebUSB</span>
        </a>

        <a class="button is-danger is-outlined" href="{{site.url}}/_data/bill_of_materials.csv">
          <span class="icon">
            <i class="fas fa-table"></i>
          </span>
          <span>Bill of Materials</span>
        </a>
      </div>
    </div>
  </div>
</section>

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Getting Started</h2>
    <div class="tags has-addons">
      <span class="tag is-medium is-white">status</span>
      <span class="tag is-medium is-warning">ongoing</span>
    </div>
    <p class="subtitle">Note: Currently this project is on-going where the <a href="/hardware">PCB schematics and layout</a> are being made for manufacturing so that breadboarding will not be required upon completion.</p>

    <div class="tile is-ancestor">
      <div class="tile is-vertical is-12">
        <div class="tile">
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <p class="title">Step 1</p>
              <p class="subtitle">Wire up the prototype components.</p>
              <a href="{{site.url}}/images/prototype/breadboard-schematic.png"><img src="{{site.url}}/images/prototype/breadboard-schematic.png" alt="Breadboard Schematic"></a>
              <a href="{{site.url}}/images/prototype/front.jpg"><img src="{{site.url}}/images/prototype/front.jpg" alt="Hardware prototype"></a>
            </article>
          </div>
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <p class="title">Step 2</p>
              <p class="subtitle">Flash the <a href="software#firmware">firmware</a> onto the Arduino compatible M0 board with SAMD21 micro-controller.</p>
              <p class="subtitle">Open the <a href="webusb">setup page</a> with <a href="software#web-usb">Web USB</a> and record the aircon's ON and OFF infrared commands by pressing the relevant buttons on the remote controller.</p>
              <a href="{{site.url}}/images/prototype/serial.png"><img src="{{site.url}}/images/prototype/serial.png" alt="Serial console"></a>
              <a href="{{site.url}}/images/prototype/setup-page.png"><img src="{{site.url}}/images/prototype/setup-page.png" alt="Web USB setup page"></a>
            </article>
          </div>
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <div class="content">
                <p class="title">Step 3</p>
                <p class="subtitle">Edit <a href="{{ site.github.repository_url }}/tree/master/firmware">data.h</a> with the ON and OFF command codes. Turn on and off the aircon through the serial console.</p>
                <a href="{{site.url}}/images/software/console.png"><img src="{{site.url}}/images/software/console.png" alt="Firmware serial console"></a>
              </div>
            </article>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

---
layout: power
title: Power
permalink: /power
sequence: 6
---
# Power consumption of main components

| Chip # | Description | Operating Voltage | Output Voltage |
|--------|-------------|------------------|----------------|
| [SAMD21G](https://cdn.sparkfun.com/datasheets/Dev/Arduino/Boards/Atmel-42181-SAM-D21_Datasheet.pdf) | MCU | `1.62V` to `3.63V` | |
| [TSOP4383](https://www.vishay.com/docs/82459/tsop48.pdf) | IR Receiver | `2.5V` to `5.5V` | |
| [SIR-56ST3F](https://docs-apac.rs-online.com/webdocs/1674/0900766b816747ad.pdf) | IR LED Emitter | `1.3V` to `1.6V` | |
| [Si7021-A20](https://www.silabs.com/documents/public/data-sheets/Si7021-A20.pdf) | Temperature and humidity sensor | `1.9V` to `3.6V` | |
| [LD3985](https://docs-apac.rs-online.com/webdocs/151f/0900766b8151fea1.pdf) | Low dropout voltage regulator | `2.5V` to `6.0V` | `1.22 V`, `1.8 V`, `2.5 V`, `2.6 V`, `2.7 V`, `2.8 V`, `2.9 V`, `3 V`, `3.3 V`, `4.7 V` |

# Circuit simulation

Simulation of the power management circuit with [Falstad](https://www.falstad.com/circuit/circuitjs.html) [File > Import from Text].

<a class="button is-primary" href="{{site.github.repository_url}}/tree/master/power">Download code</a>
{% highlight text %}{%- include_relative power/circuit-falstald.txt -%}{% endhighlight %}
![Power management circuit simulation]({{ site.url }}/images/power/power-management.gif)

---
layout: default
title: Software
permalink: /software
sequence: 3
features:
  - detail: Turn on or off the aircon
  - detail: Measure temperature of the room in another part with <code>Si7021</code>
  - detail: Go into sleep mode after turning on or off the aircon

test: false
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Web USB</h2>
    <p class="subtitle is-4 is-spaced">Web USB on Chrome browser is used to take in user configuration about how they want to control their aircon.</p>

    <a class="button is-primary" href="{{ site.github.repository_url }}/tree/master/webusb">Download code</a>
    <a class="button is-primary" href="{{ site.url }}/webusb">View demo</a>
    <br>

    {% highlight html %}{%- include_relative webusb/index.html -%}{% endhighlight %}
  </div>
</section>

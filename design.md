---
layout: default
title: Design
permalink: /design
sequence: 5
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
      - goal: turn ON the device
        reason: it can measure the current temperature and turn ON/OFF the aircon accordingly
      - goal: turn OFF the device
        reason: it can measure the current temperature and turn ON/OFF the aircon accordingly
      - goal: replace the battery
        reason: the device can be powered again
      - goal: turn ON the aircon automatically
        reason: the room becomes cooler towards my ideal temperature
      - goal: turn OFF the aircon automatically
        reason: the room becomes warmer towards my ideal temperature
      - goal: place the device on a vertical surface in line of sight with the aircon
        reason: it can communicate with the aircon via infrared
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">User Stories</h2>

    {% for story in page.user_stories %}
      <p class="subtitle is-3">{{ story.user | capitalize }}</p>
      <hr>

      <div class="columns is-multiline">
      {% for action in story.actions %}
        <div class="column is-4">
          <div class="card">
            <div class="card-content">
              <p class="subtitle">
                As a {{ story.user }}, I want to <strong>{{ action.goal }}</strong> so that <em>{{ action.reason }}</em>.
              </p>
            </div>
          </div>
        </div>
      {% endfor %}
      </div>
    {% endfor %}

  </div>
</section>

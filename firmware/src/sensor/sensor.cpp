#include <Adafruit_Si7021.h>
Adafruit_Si7021 sensor = Adafruit_Si7021();

bool initSensor() {
  if (!sensor.begin()) {
    return false;
  }

  return true;
}

float readTemperature() {
  float temperature = (float)(sensor.readTemperature()) / 1.0;
  return temperature;
}

float readHumidity() {
  float humidity = (float)(sensor.readHumidity()) / 1.0;
  return humidity;
}

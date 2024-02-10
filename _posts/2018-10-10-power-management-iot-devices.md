---
layout: post
title:  "Power Management for IoT Devices"
source: https://www.particle.io/resources/power-management-for-iot-devices
category: [4]
---

IoT components using power:

- A radio that allows the device to communicate
- A microprocessor or microcontroller (MCU)
- Peripheral components such as sensors and actuators

Energy budget model for IoT:

> Power remaining = (battery capacity) – (send data) – (receive data) – (collect data) – (control actuators) – (ambient loss) + (power generated)


Power consumer:

> Power consumed = (current consumption) [mA] * (duration of transmission) [s] / 3600

Conserving power for radio

> The best way to conserve power for an IoT device with a wireless radio is to ensure that the **radio is only fully powered when actively in use**. Whenever possible, the radio should be powered off when not in use. If the device is collecting and transmitting sensor data, it is preferable to keep the radio turned off until needed, storing data for transmission in the interim.

Conserving power for data

- transmission
- frequency of transmission
- data compression

Frequency of data transmission

> Rather than sending every sensor reading immediately to the network, a product creator can collect a reading every 5 minutes, **save it locally on the device, and send the list of collected readings** once every 2 hours. Thus the same amount of information can be gathered remotely with much lower power consumption. The **primary trade-off in this example is latency** — your readings may be up to 2 hours old.

Data compression

> Further savings can be obtained through data compression, which can be simple. As an example, a product creator **can send the average of those readings** rather than the entire list of readings. For data more complexly structured than simple numbers, a text description can be **base64 encoded rather than sending the full text content**.

High bandwidth data

> For high bandwidth applications, it is highly recommended that the device be connected directly to an AC power supply or have a charge management circuit that allows for frequent recharging of the device.

API endpoints

> Leveraging dedicated API endpoints in the cloud can also conserve data usage. Instead of programming an IoT device to send and receive messages directly to and from open Internet services (ie: weather.com or AWS IoT), it is **preferable to send smaller amounts of data using a byte-efficient communication protocol designed for IoT to the Cloud**, where the data can be stored and processed.

Increasing efficiency using sleep modes

| | Radio on | Radio off
| ------ | ------ | ------ |
| MCU on | Normal operation | WiFi / BLE / Cellular off
| MCU off | network standby mode | all off


Checklist for selection a battery for IoT device:

- Physical
  1. enclosure for the device?
  1. battery is rechargeable?
  1. weight of the product?
- Capacity Constraints
  1. How often can the battery be charged?
  1. How long will the battery last?
- Environmental Constraints
  1. temperature ranges?
  1. How often will the battery be replaced through the charging cycles?

Minimum voltages

> Interpreting the capacity of a battery for energy budgeting can be difficult. Radios and microcontrollers **have minimum voltages below which they will brown out or turn off altogether, and as batteries discharge the voltage they provide decreases to below their nominal voltage**. A battery-powered device must be designed with the interaction between these two parameters in mind.

Battery tested

> It is highly recommended that any battery that is included in the electrical design of an IoT system be tested at load and certified for compliance by the appropriate regulatory body.

Types of Power Generation

1. **Episodic charging** is charging that occurs on a regular or recurring interval.
1. **Intermittent charging** is charging that occurs opportunistically, like solar panels or regenerative braking on vehicles.
1. **Battery backups** are used for devices that have an alter- nate power supply or are hooked up to the power grid.

Common interfaces for charing IoT devices:

- USB variants (5V)
- Power barrel jack connectors (5-24V typical)
- Ethernet or RJ-45 connectors (48V typical)

Wireless charging

- Inductive charging through materials E.g. Amazon Tap, or QI chargers for smartphones
- Resonant charging over greater distances

Cons of wireless charging

> Although both wireless inductive and resonant charging have distinct advantages because they do not require a cable or physical interface for energy transfer, they both have a lower charging speed than wired charging.

Intermittent power

- Solar panels
- Energy harvesting

Energy budget considerations:

- Energy consumption
- Battery capacity
- Power generation

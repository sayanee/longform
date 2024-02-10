---
layout: post
title:  "Chipping Away at Moore’s Law"
source: https://queue.acm.org/detail.cfm?id=3388515
category: [6]
author: Jessie Frazelle
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Definitions](#definitions)
- [7nm Manufacturing](#7nm-manufacturing)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Definitions

Transistors

> CPUs are made up of billions of teeny, tiny transistors. **Transistors are electrical gates** that can be switched on and off individually...Smaller transistors can do more calculations without overheating, which makes them more power efficient.

Multichip Module (MCM)

> Traditionally, chip manufacturers connect two monolithic CPUs together in an MCM (multichip module). An MCM is a package with pins where multiple ICs (integrated circuits, or chips), semiconductor dies, and/or other components are integrated.

Chiplets

> Using chiplets over monolithic die architecture guarantees no single core on a package will act as a single point of failure for the MCM since there are multiple individual cores.

Moore’s Law

> Moore's law observed that the **number of transistors on a chip doubles every year, while the costs are halved**. While this theory has held for a long time, it has been slowing down lately. In the late 1990s and early 2000s, transistors shrunk in size by half every two years, leading to massive improvements on a regular schedule.

Other innovations since slowing down of Moore’s Law

> The slowdown of transistor size in semiconductor devices led to the **development of multichip modules and other innovations**, since semiconductor designers are always looking for new ways to provide increased compute capabilities.

First single chip microprocessor by Intel

> In November 1971, Intel introduced the world’s first single-chip microprocessor, the Intel 4004. It had **2,300 transistors, ran at a clock speed of up to 740 KHz, and delivered 60,000 instructions per second while dissipating 0.5 watts**. The following four decades witnessed exponential growth in compute power.

Blocks

> modern-day CPUs are actually just a few chiplets connected together into one package. The ability to **construct packages of chiplets** gives a Lego-like building power to people for designing their own MCMs and innovating faster.

## 7nm Manufacturing

Advantages of 7nm process

> Compared with 14nm, 7nm can achieve 25 percent more performance under the same power, or the **same performance for half the power**. This means longer battery life for laptops and phones, and more power-efficient data centers, with the same performance.

Challenge in 7nm: Lithography

> What makes 7nm manufacturing so capital intensive? Foundries need to increase their capital expenditures to deal with the technical difficulties of decreasing the size of transistors, among which **lithography remains the biggest hurdle**. Lithography, also known as photolithography, is the process used in microfabrication to **pattern transistor circuits onto silicon**.

Companies that have used 7nm chips

> The companies that have built products with 7nm chips include **AMD, Apple, Samsung, Huawei, NVIDIA, and Barefoot Networks**. What all these companies have in common is the **motivation to be on the bleeding edge of technology** in order to remain or become a market leader.

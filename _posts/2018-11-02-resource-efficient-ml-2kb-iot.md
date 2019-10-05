---
layout: post
title:  "Resource-efficient Machine Learning in 2 KB RAM for the Internet of Things"
source: https://www.microsoft.com/en-us/research/publication/resource-efficient-machine-learning-2-kb-ram-internet-things/
category: research paper
---

Summary

> This paper develops a novel **tree-based algorithm, called Bonsai**, for efficient prediction on IoT devices – such as those based on the Arduino Uno board having an 8 bit ATmega328P microcontroller operating at 16 MHz **with no native floating point support, 2 KB RAM** and 32 KB read-only flash.

Benefits

> Experimental results on multiple benchmark datasets demonstrate that Bonsai can **make predictions in milliseconds even on slow microcontrollers, can fit in KB of memory, has lower battery consumption** than all other algorithms while achieving prediction accuracies that can be as much as 30% higher than state- of-the-art methods for resource-efficient machine learning.

Training the model and shipping

>  Bonsai, which **can be trained on a laptop, or the cloud, and can then be shipped onto severely resource constrained** Internet of Things (IoT) devices.

Memory constraints on edge

> Before deployment, the OS and all application code and data are burnt onto flash, **leaving only a few KB for storing the trained ML model, prediction code**, feature extraction code and associated data and parameters.

Running ML on the edge without cloud connectivity

> This paper proposes an alternative paradigm where the **IoT device can make predictions locally** without necessarily connecting to the cloud. This enables many scenarios, beyond the pale of the traditional paradigm, where it is not possible to transmit data to the cloud due to latency, bandwidth, privacy and energy concerns.

Conserving battery and heat

> In addition, since the **energy required for executing an instruction might be much lower than the energy required to transmit a byte**, making predictions locally would extend battery life significantly thereby avoiding repeated brain surgery and **might also prevent brain tissue damage due to excess heat dissipation from the communicating radio**.

Properties of Bonsai

> First, Bonsai **learns a single, shallow, sparse tree so as to reduce model size** but with powerful nodes for accurate prediction. Second, **both internal and leaf nodes in Bonsai make non-linear predictions**... Third, Bonsai learns a sparse matrix which **projects all data points into a low-dimensional space** in which the tree is learnt.

- reduce model size
- make non-linear predictions
- low-dimensional space

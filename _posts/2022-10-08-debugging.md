---
layout: post
title:  "Some ways to get better at debugging"
author: Julia Evans
source: https://jvns.ca/blog/2022/08/30/a-way-to-categorize-debugging-skills/
category: [6]
---

Steps:

1. learn the codebase
2. learn the system
3. learn your tools
4. learn strategies
5. get experience

Debugging tools:

>  There are lots of debugging tools out there, for example: debuggers (gdb etc) browser developer tools profilers strace / ltrace tcpdump / wireshark core dumps and even basic things like error messages

Write a unit test

> writing a unit test writing a tiny standalone program to reproduce the bug finding a working version of the code and seeing what changed printing out a million things adding extra logging taking a break explaining the bug to a friend

Did anyone else have this problem?

> looking through the github issues to see if anything matches

How does a novice and an expert debug?

> Their findings did not show a significant difference in the strategies employed by the novices and experts. Experts simply formed more correct hypotheses and were more efficient at finding the fault.

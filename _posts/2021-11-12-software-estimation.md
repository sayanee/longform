---
layout: post
title: "My Software Estimation Technique"
source: https://jacobian.org/2021/may/25/my-estimation-technique/
author: Jacob Kaplan-Moss
category: article
---

Time and uncertainty

> I believe any effective estimation technique should have: it captures both **time and uncertainty**.

Process:

1. Break down the work into less complex tasks
2. Estimate uncertainty
3. Do the math
4. Refine, if necessary
5. Track your accuracy

Use the following sizes:

- small: 1 day
- medium: 3 days
- large: 1 week (5 days)
- extra-large: 2 weeks (10 days)

Use real wall clock time

> It is critical to use real wall-clock time, which means: You must map complexity to actual time units. The whole point here is to eventually get to a calendar-time estimate (e.g. “4 - 6 weeks”), and you should do that mapping in as granular a way as possible. Use real wall-clock hours and days, not idealized “programmer days” that assume engineers will write code 8 hours a day.

Dealing with spikes

> Spikes are a concept from agile software development specifically designed for these sorts of cases. The idea is that you spend a bit of time exploring a potential solution, usually by diving in and writing some software. Sometimes the spike ends up becoming part of your project, but more often it’s throw-away code designed to just prove a point.

PERT

> Program Evaluation and Review Technique: PERT is a system that’s very close to the one I’ve presented above. PERT asks you to make three estimates: pessimistic (P), optimistic (O), and most likely (M). Then, you calculate a PERT estimate with the formula (O + 4M + P) / 6.

Evidence-based scheduling

> Evidence-based scheduling takes a radically different approach to estimation. Instead of starting with estimates, you start with work: dive in without an estimate at first, and track tasks/stories, their sizes, and how long they _actually__ take as you go. **Over time, you can then apply the observed times from past stories to your remaining backlog, and an estimate naturally reveals itself.**

Cons of evidence based schedule

> However, I’ve struggled to make it work: it requires a stable team, relatively consistent work, and projects that are long-lived enough to provide sufficient data to make projections.

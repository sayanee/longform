---
layout: post
title:  "Why is it so difficult to retrain neural networks and get the same results?"
author: Pete Warden
source: https://petewarden.com/2022/11/25/why-is-it-so-difficult-to-retrain-neural-networks-and-get-the-same-results/
category: [6]
keywords: ["neural networks", "retraining", "reproducibility", "floating point numbers", "precision limits"]
---

Same training code and same result?

> He wanted to be able to run the **same training code multiple times and get exactly the same results**, which on the surface doesn’t seem like an unreasonable expectation.

Reproducibility is hard

> One reason **reproducibility is so hard** is that every single calculation in the process has the potential to change the end results, which means every step is a potential weak link.

Root cause: floating point numbers

> Your high school math class might have taught you that x + y + z will produce the same result as z + y + x , but in the imperfect world of **floating point numbers** that ain’t necessarily so.

Precision limits

> The short answer is that floating point numbers **only have so much precision**, and if you try to add a very small number to a larger one, there’s a limit below which the small number gets rounded to zero and so the addition has no effect

Full stack is no longer possible

> It does feel like it’s **no longer possible for any one person** to have a full and deep understanding of the whole stack on any modern platform, even just for software.

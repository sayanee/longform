---
layout: post
title:  "Why Is Apple’s M1 Chip So Fast?"
source: https://debugger.medium.com/why-is-apples-m1-chip-so-fast-3262b158cba2
category: blog
author: Erik Engheim
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Definitions](#definitions)
- [Differences](#differences)
- [Optimization](#optimization)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Meta Platforms

How does the web thrive?

> Like other meta-platforms the web thrives or declines to the extent it can accomplish the lion's share of the things we expect most computers to do.

Portability of the Web

> The web wasn't the only meta-platform in this era. Meta-platforms exist to abstract over their hosts, providing a uniform surface API to create portability. **Portability reduces single-platform lock-in**, often (but not always) buttressed by open standards option-value

What computers can do vs the Web

> Some legacy devices lack some of these features, however, all commodity operating systems support them and the plurality of devices sold have them. The set of things "most computers do" started larger than what the early web supported (particularly without plug-ins) and continues to accelerate away.

Advantages

> One way to conceive of meta-platforms and open standards is that, like Open Source, they help to **reduce the pricing power of incumbents** regarding commodity features that just happen to be wrapped up in proprietary APIs.

## Adding features

How features expand

> As OS and hardware deployed base integrate these components, the set of what most computers can do is expanded. This is often determined by hardware integration and device replacement rates. The fates of these advances occupy the majority of tech press (and, sadly, developer) attention thanks to marketing from vendors looking to differentiate at the high-end (where margins both exist and require justification).

Why we should increase the features

> **Growing a platform's success requires unlocking use-cases not already serviced**. That mean finding needs that combine things your platform is already good at with a small number of missing capabilities, as big-bang

How to identify what to add

> Same with IDEs and developer tools. Same with utilities. Instead of adding direct support for hardware features available on less than 1% of deployed devices and supported by a single OS, we should **focus on features already within the set of things most computers can do that enjoy wide OS support**.

What happens when a platform does not keep adding features

> But there have been others that have fallen into relative disuse, and once the smell of death hangs over a platform and **its use declines below a fuzzy threshold, precipitous ecosystem collapse follows**, reducing the platform's carrying capacity going forward. This doom-loop effect precludes even medium-term recovery to growth. Importantly, **collapse isn't the same thing as extinction**; mainframes hardly went away, but the set of use-cases primarily addressed by Fortan and COBOL programmers has been fixed in a narrow band for a long, long time

Why competition is important

> Competition is key to unlocking new, creative approaches to this set of problems and the next. Without competition, and paired to structural under-investment by both Apple and Mozilla, we know what a growing relevance gap will do; it's just a question of time.

How to fight being irrelevant

> Unlocking what's needed to bring computing to the web on mobile is the only way to stave off irrelevance.

## Challenges of developments

Developers

> Developers deliver content. Compelling content and services draw users. If the weight of these experiences is compelling enough, it can even convince potential users to acquire your device or runtime to get access. The resulting install base of a platform and it's capabilities are an asset in convincing the next developer to build for a platform

Teams

> Teams make roughly exclusive choices about platforms for each project. Maximizing user-experience quality and reach from the smallest possible investment is how developers justify outsized rewards for easily learned skills.

Developers are using specific technologies

> The Twitter bios of any 10 randomly picked programmers will confirm the identitarian aspects of platforms and their communities. Breaks with these **identities are sharp and painful**, leading to tribal flight. Assuming the capability gap doesn't close, developers moving their attention seals the fate of our straw-person meta-platform.

What happens when there is a relevance gap

> Tools like Cordova and Electron are **manifestations of a relevance gap so large**, so painful that **developers are willing to abandon** one (or more) core benefits of web deployment in return for (presumed) necessary discovery and capability access parity.

Working with new features

> What developers should reasonably expect from viable meta-platforms is not instant access to every single feature of high-margin, low-volume devices. However, **steady integration of things most computers can do into the safer, standards-based, open, universally available** meta-platforms should be the norm.

Build for 2 platforms, or build once and deploy to many

> **Experiences might be faster** because they're custom-written, but not often enough to justify the **adjacent costs**. From coordinating design, to iteration speed, to launch coordination, to merging metrics feedback, the slowdowns incurred at the business level can let

You can simply continue to just "improve" and optimise to stay relevant

> If iteration can unlock outsized value, you'll know it by investigating the performance of the best-constructed apps on your platform. My experience from a decade of platform work, though, suggests that efficiency gains are most often returned to developer comfort rather than user experience. What can be built is often the same at the start and end of an optimisation journey unless the gains are at least an order of magnitude.

## The web

Benifits

> The web's benefits of frictionless deployment, universal access, streaming execution, collaboration, security, and user choice are model advantages for both content and services. Together, they make software better.

How to work with new features

> New APIs always have issues, and ironing out the kinks, removing performance cliffs, and understanding the next set of adjacent needs happens best when talking with bought-in developers who are succeeding (if trailblazing) in your newly-opened space.

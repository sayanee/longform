---
layout: post
title:  "Should the web expose hardware capibilities"
source: https://www.smashingmagazine.com/2021/01/web-expose-hardware-capabilities/
category: [6]
author: Noam Rosenthal
---

Web vs Native

> ...the various efforts to push web platform capabilities closer to native platforms, such as [Chromium’s Project Fugu](https://www.chromium.org/teams/web-capabilities-fugu)

Google vs Apple / Mozilla approach

> Google (together with partners like Intel, Microsoft and Samsung) is aggressively **pushing forward and innovating** with a plethora of new APIs like the ones in Fugu, and ships them in Chromium; Apple is pushing back with a more conservative approach, marking many of the new APIs as **raising security & privacy concerns**

Meta-platforms

> The web is a meta-platform - **a platform abstracted form its operating system**... The meta-platforms mentioned earlier are indeed competing against their host OSes in the race for capabilities, but unlike the web, they are not opinionated about trust and distribution.

Users: unaware of technologies, but aware of distribution

> Users are mostly unaware of what was used to develop their content, but are aware to some degree of how it is distributed.

User should know they are browsing the web

> In fact, it’s important for the web platform that users know that they’re currently “browsing the web”. That’s why, for example, switching to full-screen mode shows a clear prompt to the user, with instructions of how to get back from it.

Web vs Web technologies

> On the other hand, web technologies are also used for cross-platform development, with frameworks like [Electron](https://www.electronjs.org/) and [Cordova](https://cordova.apache.org/). But those are not exactly “the web”. When compared to Java or node.js, The term “The web” needs to be substituted with “Web Technologies”. And “web technologies” used in this way don’t necessarily need to be standard-based or work on multiple browsers.

Native apps

> Granted, native apps have their [own security issues](https://www.imore.com/malicious-apps-ios-and-android-clock-24-million-downloads-500000-revenue) and challenges. But I don’t see how that’s an argument in favor of more web capabilities, [like here](https://infrequently.org/2020/06/platform-adjacency-theory/#fn-platform-adjacency-theory-25). This is a fallacy — the conclusion should be fixing security issues with native apps, not relaxing security for web apps because they’re in a relevance catch-up game with OS capabilities.

Should apps be allowed to ship any web framework?

> By **allowing apps to ship any web framework**, the app store would essentially allow the **“app” to run any unaudited code, or change the product completely, circumventing the store’s review process**... As a user of both web sites and apps, I think both of them have space in the computing world, although I hope as much as possible could move to the web. But when considering the current state of web standards, and how the dimension of **trust and sandboxing around things like Bluetooth and USB is far from being solved**, I don’t see how allowing apps to freely execute content from the web would be beneficial for users.

Are web apps safe by default?

> I agree with the notion that the definition of “app” is arbitrary, and that its definition relies on whoever defines the app store policies. But today, the same is true for browsers. The claim from the post that web applications are safe by default is also somewhat arbitrary. Who draws the line in the sand of “what is a browser”? Is the Facebook app with a built-in browser “a browser”?

Everything can be a browser

> Without drawing a line of “what’s a browser”, which is what the Apple app store essentially does, every app could ship its own web engine, lure the user to browse to any website using its in-app browser, and add whatever tracking code it wants, collapsing the 3rd dimension difference between apps and websites.

User prompts that could work

> I wish that for device-access capabilities we could come up with **prompts that encourage engagement and ensure that the engagement is safe**, rather than **discourage it and transfer the liability to the user**, with no remediation available for the web developer.

Where to be open and allow quik iterations

> I truly wish platforms found ways to be more open and allow quick iterations on educational hardware/software projects, as an example.

Granting permission should focus on content, not device

> When granting access to the printer, camera, microphone, [GPS](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation_API), or even to a few of the more contained [WebBluetooth](https://web.dev/bluetooth/) GATT profiles like [heart rate monitoring](https://www.bluetooth.com/specifications/gatt/), this question is relatively clear, and **focuses on the content or action rather than on the device**. There is a clear understanding of what information I want from the peripheral or what action I want to perform with it, and the user-agent mediates and makes sure that this particular action is handled.

USB is generic

> Unlike the devices mentioned above that are exposed via special APIs, USB is not content-specific. As mentioned in the [intro of the spec](https://wicg.github.io/webusb/#introduction), WebUSB goes further and is **intentionally designed for unknown or not-yet-invented types of devices**, not for well-known device classes like keyboards or external drives.

Blocklist

> So Chrome’s actual defense against WebUSB exploits that happened in the wild, in addition to the currently very general permission prompt, was to **block specific devices and device classes**. This may be a straightforward solution for a new technology or experiment, but **will become harder and harder to accomplish when (and if) WebUSB becomes more popular**. I’m afraid that the people innovating on educational devices via WebUSB might reach a difficult situation. **By the time they’re done prototyping, they could be facing a set of ever-changing non-standard block lists**, that only update together with browser versions, based on security issues that have nothing to do with them. I think that standardizing this API without addressing this will end up being counterproductive to the developers relying on it.

Browser vs WebUSB

> In browsers, there is a **clear distinction between user interactions and synthetic interactions** (interactions instantiated by the web page). For example, a web page can’t decide on its own to click a link on or wake up the CPU/display. But external devices can — for example, a mouse device **can click a link on behalf of the user** and almost any USB device can wake up the CPU, depending on the OS.

Informed consent vs content

> The problem with informed consent and USB, as mentioned before, is that USB (specifically in the extra-generic WebUSB use-cases) is **not content-specific**. Users know what a printer is, what a camera is, but “USB” for most users is merely a cable (or a socket) — a means to an end — **very few users know that USB is a protocol** and what enabling it between websites and devices means.

Challenges with prompts

> But as scary as prompts get, they **cannot explain the breadth of possible things that can be done with raw access to a USB peripheral** that the browser doesn’t know intimately, and if they did, no user in their right mind would click “Yes”, unless it’s a device that they fully trust to be bug-free and a website they truly trust to be up-to-date and not malicious.

Enabling hardware web APIs for prototyping only:

- Use language in the specs that set expectations about this being for prototyping
- Have these APIs available only after some opt-in gesture, like having the user enable them manually in the browser settings
- Have “scary” permission prompts, like the ones for invalid SSL certificates

Prompt best practices

> The main case I’m going to make is that the **prompt should be about the content or action, and not about the peripheral**, and that informed consent can be granted for a specific straightforward action with a **specific set of verified parameters, not for a general action** like “taking over” or “connecting to” a device.

Duties of the browser

- When permission is granted, the **action performed will be printing** a 3D model, and nothing but that
- The **selected parameters** (refinement/thickness/dimensions etc.) are going to be respected
- A verified preview of what is going to be printed was shown to the user
- In certain sensitive cases, an additional verification that this is in fact AutoDesk, maybe with something like a revokable short-lived token

Solution in the meantime

> Because of the above, using WebUSB for 3D printing will probably be hacky and short- lived, and developers relying on it will have to **provide a “real” driver for their printer at some point**.

Proposal for a driver auditing authority

> I see this as being similar to [certificate authorities](https://en.wikipedia.org/wiki/Certificate_authority), an important piece in the web ecosystem that is somewhat disconnected from the browser vendors.

Driver syndication

> The drivers don’t have to be audited by Google/Apple, though the browser/OS vendor can choose to audit drivers on its own. It can work like SSL certificate authorities — the issuer is a highly trusted organization; for example, the manufacturer of the particular peripheral or an organization that certifies many drivers, or a platform like Arduino.

---
layout: post
title:  "PCB Design tutorial"
source: https://alternatezone.com/electronics/files/PCBDesignTutorialRevA.pdf
category: paper
author: David L. Jones
---

## General

PCB design is creative and subjective

> There are many basic rules and good practices to follow, but apart from that PCB design is a **highly creative and individual process**. It is like trying to teach someone how to paint a picture. Everyone will have their **own unique style**, while some people may have no creative flair at all!

From hand-drawn to CAD programs

> Those days are well and truly gone, with **computer based PCB design having replaced this method completely in both hobbyist and professional electronics**. Computer based CAD programs allow the utmost in **flexibility in board design and editing** over the traditional techniques. What used to take hours can now be done in seconds.

Industry standards

> There are industry standards for almost every aspect of PCB design. These standards are controlled by the former Institute for Interconnecting and Packaging Electronic Circuits, who are now known simply as the IPC (www.ipc.org). There is an **IPC standard for every aspect of PCB design, manufacture, testing**, and anything else that you could ever need. The major document that covers PCB design is **IPC-2221, “Generic Standard on Printed Board Design”**. This standard superseded the old IPC-D-275 standard (also Military Std 275) which has been used for the last half century.

## Schematic

Schematic diagram

> Before you even begin to lay out your PCB, you **MUST have a complete and accurate schematic diagram**. Many people jump straight into the PCB design with nothing more than the circuit in their head, or the schematic drawn on loose post-it notes with no pin numbers and no order.

Some tips

> Good practice will have **signals flowing from inputs at the left to outputs on the right**. With electrically important sections drawn correctly, the way the designer would like them to be laid out on the PCB. Like putting **bypass capacitors next to the component** they are meant for. **Little notes on the schematic** that aid in the layout are very useful.

## Units

Imperial units

> As any long time PCB designer will tell you, you should always use imperial units (i.e. inches) when designing PCBs. This isn’t just for the sake of nostalgia, although that is a major reason! The **majority of electronic components were (and still are) manufactured with imperial pin spacing**.

Thou

> **A “thou” is 1/1000th of an inch**, and is universally used and recognised by PCB designers and manufacturers everywhere.

Mil

> **1 “mil” is the same as 1 thou**, and is NOT to be confused with the millimeter (mm), which is often spoken the same as “mil”. The term “mil” comes from **1 thou being equal to 1 mili inch**. As a general rule avoid the use of “mil” and stick to “thou”, it’s less confusing when trying to explain PCB dimensions to those metricated non-PCB people.

Thous vs mm

> As a general rule, use **thous for tracks, pads, spacings and grids**, which are most of your basic “design and layout” requirements. Only use **mm for “mechanical and manufacturing” type requirements like hole sizes and board dimensions**.

Metric to Imperial

> It will help you greatly if you memorise a few key conversions, like **100 thou (0.1 inch) = 2.54mm**, and **200 thou (0.2 inch) = 5.08mm** etc

Pitch

> **1 inch is also commonly known as 1 “pitch”**. So it is common to hear the phrase **“0.1 inch pitch”, or more simply “0.1 pitch”** with the inches units being assumed. This is often used for **pin spacing on components**.

100 thou

> **100 thou is a basic “reference point”** for all aspects of PCB design, and a vast array of common component lead spacing are multiples or fractions of this basic unit. **50 and 200 thou** are the most common.

Using 100, 50, 25 thou

> **100 thou is a standard placement grid for very basic through hole work**, with **50 thou being a standard for general tracking work, like running tracks between through-hole pads**. For even finer work you may use a 25 thou snap grid or even lower. Many designers will argue over the merits of a 20 thou grid vs a 25 thou grid for instance. In practice, **25 thou is often more useful as it allows you to go exactly half way between 50 thou spaced pads**.

## Grids

Coarse grid

> Why is a coarse snap grid so important? It’s important because it will keep your **components neat and symmetrical**; aesthetically pleasing if you may. It’s not just for aesthetics though - it makes **future editing, dragging, movement and alignment of your tracks, components and blocks of components easier** as your layout grows in size and complexity.

Not snapping to grids...

> A bad and amateurish PCB design is instantly recognisable, as many of the **tracks will not line up exactly in the center of pads**. Little bits of tracks will be “tacked” on to fill in gaps etc. This is the result of not using a snap grid effectively.

Changing grid sizes: `100`, `50`, `25`, `10`, `5`

> Good PCB layout practice would involve you **starting out with a coarse grid like 50 thou** and using a progressively finer snap grid if your design becomes “tight” on space. Drop to 25 thou and 10 thou for finer routing and placement when needed. This **will do 99% of boards**. Make sure the **finer grid you choose is a nice even division of your standard 100 thou**. This means 50, 25, 20, 10, or 5 thou. Don’t use anything else, you’ll regret it.

Hotkeys for changing grid sizes

> A good PCB package will have hotkeys or programmable macro keys to help you switch between different snap grid sizes instantly, as you will need to do this often.

Or use the Flip board viewer...

> PCB design is always done looking from the top of your board, **looking through the various layers as if they were transparent**. This is how all the PCB packages work. The only time you will look at your board from the bottom is for manufacturing or checking purposes. This “through the board” method means that you will have to get used to reading text on the bottom layers as a mirror image, get used to it!

## Tracks, Pads and Vias

Bigger track width

> As a general rule though, the **bigger the track width, the better**. Bigger tracks have lower DC resistance, lower inductance, can be easier and cheaper for the manufacturer to etch, and are easier to inspect and rework. The lower limit of your track width will depend upon the “track/space” resolution that your PCB manufacturer is capable of.

Pad shapes

> As a general rule, **use circular or oval pads** unless you need to use rectangular.

Vias

> Vias connect the tracks from one side of your board to another, by way of a hole in your board. On all but cheap home made and low end commercial prototypes, vias are made with electrically plated holes, called Plated Through Holes (PTH). **Plated through holes allow electrical connection between different layers on your board**.

## Component placement & design

90% placement and 10% design

> An old saying is that PCB design is 90% placement and 10% routing. Whilst the actual figures are of no importance, the concept that component placement is by far the most important aspect of laying out a board certainly holds true. **Good component placement will make your layout job easier and give the best electrical performance.** Bad component placement can turn your routing job into a nightmare and give poor electrical performance.

Steps for laying out a complete board:

1. Set your snap grid, visible grid, and default track/pad sizes.
1. Throw down all the components onto the board.
1. Divide and place your components into functional “building blocks” where possible.
1. Identify layout critical tracks on your circuit and route them first.
1. Place and route each building block separately, off the board.
1. Move completed building blocks into position on your main board.
1. Route the remaining signal and power connections between blocks.
1. Do a general “tidy up” of the board.
1. Do a Design Rule Check.
1. Get someone to check it

Don't place all components evenly spaced out

> The hallmark of an inexperienced designer is a board that has **every component evenly spaced out**, and then has thousands of tracks and vias crisscrossing the board. It might work, but it can be **ugly and inefficient**, not to mention bigger and more expensive to manufacture. The best way to start your layout is to get ALL of your components onto the screen first.

Partitioning parts of circuits: analog/digital, high frequency-high current / low frequency-low current

> You will also need to **partition off electrically sensitive parts of your design into bigger blocks**. One major example is with **mixed digital and analog circuits**. Digital and analog just do not mix, and will need to be physically and electrically separated. Another example is with **high frequency and high current circuits, they do not mix with low frequency and low current sensitive circuits**.

Symmetry

> Symmetry is really nice in PCB design, it’s aesthetically pleasing and just “looks right”. If you have something like two identical building block circuits side by side, and one is laid out slightly differently, it sticks out like a sore thumb.

Basic routing:

- Keep nets as short as possible
- Tracks should only have angles of 45°
- “Snake” your tracks around the board
- Enable “snap to center” or “snap to nearest” option
- Make sure your tracks go right through the exact center of pads and components
- Use a single track, not multiple tracks tacked together end to end
- For high currents, use multiple vias when going between layers
- Lay down power and ground tracks first

Other tips:

- Ensure that all your vias are identical, with the same pad and hole sizes
- Minimise the number of hole sizes
- Check that there is adequate physical distance between all your components

Common mistake

> Many (inexperienced) designers tend to become lazy when laying out double sided boards. They think that component placement doesn’t matter all that much, and **hundreds of vias can be used to get them out of trouble**. They will often lay out components like ICs in neat rows, and then proceed to route everything using a right angle rules. This means that they will route all the tracks on the bottom layer in one direction, and then all the tracks on the top layer perpendicular to the bottom layer.

## Silkscreen

> When designing your board, make sure that you keep all your component designators the **same text size, and oriented in the same direction**. When laying out your own component footprints, were possible, make sure that you **add a component overlay that reflects the actual size of your component**. This way you will be able to tell at a glance how close you can physically position your components. Ensure that **all polarised components are marked**, and that **pin 1 is identified**.

## Netlist

> A netlist is essentially a list of connections (“nets”) which correspond to your schematic. It also contains the list of components, component designators, component footprints and other information related to your schematic. The netlist file can be generated by your schematic package. Generating a netlist is also called “schematic capture”.

## Rats Nest

> A rats nest display is one where the program will draw a straight line (not a track) between the pads of components which are connected on the schematic. In effect, it shows the connectivity of your circuit before you start laying out tracks. At the start of your board layout, with all your components placed down randomly, this will appear as a huge and complicated random maze of lines. Hence the name rats nest.

Disappearing rats nest

> The rats nest lines should disappear when you route your tracks between components, so your design will get less and less “complicated looking” as you go along. When all the rats nest lines disappear, your board is fully routed.

## Design Rules Checking

- Circuit connectivity
- Electrical clearance
- Manufacturing tolerances E.g. hole sizes, track widths, via widths, annulus sizes, short circuits

## Annotations

Forward annotation

> Forward Annotation is when you **make changes to your existing PCB layout via the schematic editor**. The program will take your schematic netlist and component designators, and import them into your PCB design, and making any relevant changes.

Back Annotation

> Back Annotation is when you change one of the component designators (eg. “C1” to “C2”) on your PCB and then automatically update this information back into your Schematic. More advanced back annotation features allow you to swap gates on chips, and perform other electrical changes. There **should never be much real need to use back annotation**.

## Multi-layer board

> A multi layer PCB is much more expensive and difficult to manufacture than a single or double sided board, but it really does give you a lot of extra density to route power and signal tracks. By having your signals running on the inside of your board, **you can pack your components more tightly on your board to give you a more compact design**.

Decide carefully

> Deciding to go from double sided to multi layer can be a big decision, so **make sure that a multi layer board is warranted on the grounds of board size and complexity**.

4, 6, 8 even layers

> Multi layer boards come in **even number of layers**. With 4, 6, and 8 layer being the most common. You can go many layers above this, but now you are in the realm of the very specialised. Technically you can get an odd number of layers manufactured, like a 3 layer board for instance. But it really won’t save you any cost over a 4 layer board. In fact a 3 layer board might even be more expensive than a 4 layer board because it calls for a **non-standard manufacturing process**.

Vias

> With multi layer design comes the options of using different types of vias to improve your routing density. There are three types of vias - **standard, blind, and buried**. **Standard vias** go through the whole board, and can connect any of the top, bottom or inner layers. These can be wasteful of space on layers which aren’t connected. **“Blind” vias** go from the outside surface to one of the inner layers only. The hole does not protrude through the other side of the board. The via is in effect “blind” from the other side of the board. **“Buried” vias** only connect two or more inner layers, with no hole being visible on the outside of the board. So the hole is completely buried inside your board.

## Power planes

> It is good practice to use “power planes” to distribute power across your board. Using power planes can drastically **reduce the power wiring inductance and impedance to your components**. This can be vital for high speed digital design for instance.

Placing signal tracks

> As a matter of course, you should **place “tracks” completely around the outer edge of your board**. This will ensure that the power planes do not extend right to the edge of the board. Power planes on the edges of your board **can short to not only one another, but also to any guide rails or mounting hardware**.

## Grounding

- Use copper, and lots of it
- Dedicate one of the planes to ground
- Use multiple vias to decrease your trace impedance to ground

## Bypassing

> Active components and points in your circuit which draw significant switching current should always be “bypassed”. This is to “smooth” out your power rail going to a particular device. “Bypassing” is using a capacitor across your power rails as **physically and electrically close to the desired component** or point in your circuit as possible.

## High frequency

> A “critical length” track is one in which the propagation time of the signal starts to get close to the length of the track. On standard FR4 copper boards, **a signal will travel roughly 6 inches every nano second**. A rule of thumb states that you need to get really concerned when your track length approaches half of this figure. But in reality it can actually be much less than this. Remember that digital square wave signals have a harmonic content, so a 100MHz square wave can actually have signal components extending into the GHz region.

Tips on HF design:

- Keep your high frequency signal tracks as short as possible
- Avoid running critical high frequency signal tracks over any cutout in your ground plane
- Have one decoupling capacitor per power pin
- If possible, track the IC power pin to the bypass capacitor first, and then to the power plane
- Be aware that vias will cause discontinuities in the characteristic impedance of a transmission line
- Minimise the distance between the plane and trace, and maximise the distance between traces to minimize crosstalk between 2 tracks
- Do not connect your main power input connector directly to your power planes

## Double sided loading

2 reasons for double sided loading

> The first is that of board size. If you **require a particular board size**, and all your components won’t fit on one side, then double sided load is an obvious way to go. The second reason is that it is required to **meet certain electrical requirements**.

A common pattern E.g. bypass capacitors and BGAs

> Indeed, it is common to find double sided loaded boards with nothing but bypass capacitors mounted on the back. This allows the bypass capacitor to get as close to the physical device power pin as possible.

# Auto routing

> Many people think that auto routers are a tool to help not so experienced PCB designers. In fact, the opposite it true! In the hands of an inexperienced designer, an auto router will produce a complete mess. But in the hands of a very experienced designer, an auto router can produce excellent results much quicker than the human designer could do.

Where can we use auto-routing?

> Auto routers come in handy when you have complex boards with not much routing space, on **non-critical parts of your layout**. Non-critical parts of a board might include low frequency or static control signals to components like LED displays, switches and relays to name a few. Advanced autorouters do come with tools to let you specify exactly how you want electrically important tracks laid out.


## Manufacturing

> A PCB usually consists of a blank fibreglass substrate (“the board”), which is usually 1.6mm thick. Other **common thicknesses are 0.8mm and 2.4mm**. There are many types PCB substrate material, but by far the most common is a **standard woven epoxy glass material known as FR4**. 

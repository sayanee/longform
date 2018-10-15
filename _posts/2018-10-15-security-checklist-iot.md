---
layout: post
title:  "Security Checklist for the Internet of Things"
source: https://www.particle.io/resources/securing-internet-of-things-products/
category: whitepaper

---

Risks include:

- Customer data exposure E.g. fitness trackers, heart rate monitors, sleep trackers
- Corporate Data Exposure
- Physical Damage E.g. Heating elements found in connected ovens and coffee makers
- High-Risk downtime E.g. Connected medical devices
- Broader Liability
- Reputation and Brand damage

Security checklist for IoT products:

- **Operating systems**: Each open port and available protocol is a potential point of attack
- **Applications**: The more programs runnings on a device, the larger the task of auditing those programs for security
- **Dependancies**: Outside code dependancies such as libraries must be kept up to date and validated
- **Communication**: Device to cloud communications should be encrypted
- **Cloud**: Securing cloud and cloud servers
- **User access and security**: 2FA and strong password requirements
- **Penetration testing**
- **Firmware application code reviews**
- **Security update mechanism**

Operating system vs Micro-controllers

> Each open port and available protocol is a potential point of attack. Code on micro-controller units (MCUs) runs “bare metal” with no supporting operating system; each type of communication required by a product is intentionally added by the product developer. In contrast, many SOCs and Linux systems have multiple open ports by default, adding a vast array of attack vectors product developers may not even be aware of.

Cloud

> Every device ships with a **unique device-specific RSA** or Elliptic Curve key-pair, and has a pinned **Cloud public key**. The device public key is typically pinned in the cloud during manufacturing, but can be updated later by an authorized user. Strong unique keys and bidirectional pinning help prevent man-in-the-middle attacks against devices and data.

TCP handshake

> Particle’s TCP service uses an RSA handshake to establish a session key for a fast rotating AES-128-CBC session. Each message is encrypted and is checked via a message id for replay attacks or out-of-order messages. Any anomaly in the session causes it to immediately end. Although all Particle devices include hardware random number generators, the RSA/AES cloud handshake includes a cryptographically random nonce, to ensure there is sufficient randomness on these low-power devices.

Encrypted handshake in the Particle TCP service

![](img/tcp-handshake.jpg)

UDP Services

> Particle’s UDP service uses **DTLS, a version of TLS designed for low-bandwidth and lossy UDP packets**. TLS is the new standard for secure browser traffic worldwide. Particle leverages the **open source mbed TLS library** supported by ARM and used by other security conscious companies such as OpenVPN, nginx, and Linksys. **256 bit ECC keys** are used for the DTLS service, roughly equivalent to a 3072-bit RSA key.

Over The Air updates

> The device is also protected against failures during the Over The Air (OTA) firmware update process. Each firmware module includes a **verifiable hash and metadata** to ensure the code is appropriate for that platform and product. If a corrupted firmware is sent to a device, or a mismatched firmware for that product, the **device will safely fall back to the last known good firmware stored locally in flash**.

Network authentication credentials

> Additionally regardless of whether the device connects via Wi-Fi, Cellular, or other radio protocols, the network authentication credentials are never transmitted to the cloud, and are only stored locally or on a SIM card.

ISO Standards

> The Particle Cloud uses best-in-class hosting with ISO 27001, 27017, and 27018 physical security and risk management, and Particle monitors and tests its infrastructure regular- ly for potential vulnerabilities.

Dealing with API based attacks

> API-based attacks are filtered out with a scalable traffic load balancer. The API utilizes a **2048-bit TLS certificate and is accessible only via HTTPS**. It also **supports the OAuth 2.0 standard** for secure login for integrations, with strongly salted and hashed passwords likely to resist brute force attacks and compromise.

Personal information

> As a matter of policy, the Particle Cloud does not store any personally identifiable information or data that could be used to compromise products or customers.

DevOps

> Particle uses a sophisticated dev-ops system of **automated deployments, containers, and service checks** to automatically ensure servers are up-to-date, and running only the expected applications. Servers are protected with a variety of **automatic intrusion detection software to discourage automated attacks**.

Engaging the experts

> Particle regularly hires professional penetration testing consultants to proactively prepare for any emerging threat models. We also engage in an open dialogue with a large, security-conscious community of developers and researchers.

New employee training

> New employees at Particle are required to use **two-factor authentication** for any service that supports it, and their workstations must use **full-disk-encryption**. New employees go through **social engineering training**, and every Particle employee must use a **password management application to generate strong, random passwords for every account they access**. When we need to share secrets internally, they are **strongly encrypted using a trusted, employee specific public RSA key**, and that message is destroyed afterwards.

Maintaining the security culture

> We celebrate our security culture by playing security games and staying current with trends and best practices. This creates a positive atmosphere and increases adoption of simple practices such as locking your workstation, or not connecting an unknown / found device to a trusted network.

Everyone can escalate

> Every Particle employee knows to escalate anything resembling a security bug or issue to the engineering team, and that team knows to evaluate and address that concern as soon as possible.

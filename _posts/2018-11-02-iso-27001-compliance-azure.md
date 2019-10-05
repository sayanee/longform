---
layout: post
title:  "13 Effective Security Controls for ISO 27001 Compliance"
source: https://www.technologyreview.com/s/611948/for-safetys-sake-we-must-slow-innovation-in-internet-connected-things/
category: docs
---

Recommendations

1. Enable identity and authentication solutions
1. Use appropriate access controls
1. Use an industry-recommended, enterprise-wide antimalware solution
1. Effective certificate acquisition and management
1. Encrypt all customer data
1. Penetration testing
1. Threat modeling services and applications
1. Log security events, implement monitoring and visualization capabilities
1. Determine the root cause of incidents
1. Train all staff in cyber security
1. Patch all systems and ensure security updates are deployed
1. Keep service and server inventory current and up-to-date
1. Maintain clear server configuration with security in mind

Resilience to attack

> These security principles are designed to make cloud-based solutions more resilient to attack **by decreasing the amount of time needed to prevent, detect, contain, and respond to real and potential Internet-based security threats**, thereby increasing the security of related services.

Identities

> Identities should be **kept up-to-date and managed for changes, additions, and removals**. Ensure that only qualified individuals are made administrators. In addition, consider creating a unique user group to manage and log identities.

2FA and passwords

> **Enable multi-factor authentication** functionality for both cloud and on-premises applications. Establish strong password policies to manage user accounts ... It is important that **passwords and secrets be securely generated and changed at regular intervals** to prevent password guessing and brute force attacks.

Role based and alert

> Role-based access control (RBAC) features can be used to **restrict access and permissions for specific cloud resources**. To help detect suspicious access, Azure Active Directory offers reports that **provide alerts about anomalous activity**, such as a user logging in from an unknown device.

Certificates

> A certificate is a form of identification for websites and web applications that is used to verify authenticity. **Websites rely on TLS and Secure Socket Layer (SSL) to encrypt data communications**. To securely configure TLS or SSL for an application requires a TLS or SSL certificate. **Self-signed certificates can be acceptable in some restricted use cases (dev and test)**. However, a signed and authorized certificate that is issued by a certification authority (CA) or a trusted third-party who issues certificates for this purpose is recommended.

Tracking for certificates

- Acquire from Certificate authorities
- Configure with traceable information
- Treat as highly valued assets
- Track expiration dates of certificates and keys
- Avoid embedding the IDs and secrets into applications
- Protect in key vault which encrypts keys and passwords in HSMs

Data protection

- At rest - maintain control of keys
- At transit - enable encryption for traffic

Staff training

- Internal security awareness
- Make security interesting
- Help users take their security training home
- Teach users to keep their home systems up-to-date and secure, which will help improve the organization’s overall security posture
- Provide brief, highly focused training sessions that are based on real events

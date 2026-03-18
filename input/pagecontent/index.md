---
title: Wof Portal
--- 

<small> Welcome to the **WOF Portal** FHIR Implementation Guide published by [Service Well AB](https://servicewell.se). </small>

Most dental care chains grow through acquisitions — but end up stuck with different patient record systems, manual reporting, and a fragmented patient journey.

Service Well is the shared foundation that turns a group of clinics into a true chain. We create a common platform for booking, follow-up, customer satisfaction, and growth — regardless of which patient record systems the clinics use.

That means shared KPIs, a consistent patient journey, and rapid integration of new clinics, without system replacements and without loss of production.

With Service Well, you can grow faster — and manage the business as one cohesive operation.

---

This guide describes the WOF Portal API — its capabilities, authentication model, data schemas, and operational considerations — so that integrators and developers can build reliable, secure integrations.

--- 

###  What is Service Well Portal?

**Service Well Portal** is a unified API designed for healthcare organizations operating with **multiple Patient Management Systems (PMS / EHRs).**

It provides a single, consistent integration point between internal clinical systems and **consumer-facing digital services,** without requiring those services to know which journal system is used behind the scenes.

👉 One API. Many systems. Many Instances. One consistent experience.

---

<span style="font-size:1.4em;font-weight;">The Problem We Solve</span>

Large healthcare groups and chains typically face the same challenges:

- Differnt PMS / EHR systems in parallel
- Multiple PMS / EHR instances systems in parallel
- Inconsistent APIs and data models
- High integration costs per system
- Long lead times for new digital services
- Fragmented patient and customer experiences
Each new web service, booking client, or partner integration often becomes a custom project per journal system.

---

<span style="font-size:1.4em;font-weight;">The Solution: A Common API Layer</span>

Service Well Portal provides a **shared API layer** that:

- Abstracts differences between journal systems
- Centralizes mapping, routing, and business rules
- Exposes a stable contract to external consumers
- Scales to new PMS systems without breaking existing integrations

External consumers integrate **once**, not once per system.

---

### Our value proposition
With Service Well Portal, organizations gain:

- 🚀 Faster time-to-market for digital services
- 🔁 Reusable integrations across the entire organization
- 🔌 Reduced vendor lock-in
- 📉 Lower integration and maintenance costs
- 🎯 A consistent patient and customer experience

---

<span style="font-size:1.3em;">[Read more](./overview.html#our-value-proposition.html)</span> or <span style="font-size:1.3em;">👉[get started right away!]()</span>

### Our products:
* **[WofPortal ITB](itb.html)** -  is the web/online booking solution ("Internet appointment booking") in the WofPortal ecosystem.
  > <small> It lets patients book (and often also reschedule or cancel) appointments via mobile or computer. The bookings are synced with the electronic health record (EHR) system so that clinicians always see the correct appointments. </small>

* **[Infowell](infowell.html)** -  short description
  > <small> long description </small>

* **[Kundnöjdhet](kundnojdhet.html)** -  short description.
  > <small> long description </small>

* **[Värva en vän](varva-en-van.html)** -  short description
  > <small> long description </small>


### Technical framework & design
Wof Portal is built on FHIR R4 (v4.0.1) and tailored to dental care needs, informed by 15+ years of dental domain experience and implemented through FHIR constraints and extensions. It uses the standard FHIR RESTful API for integration and data exchange.


# Overview

This page introduces the WOF Portal API, explains its purpose, and helps you decide whether it fits your integration needs.

### Why use this API

The WOF Portal API provides a standardised, FHIR-compliant interface for interacting with the WOF Portal platform. It enables systems to exchange data in a well-defined, interoperable way — reducing custom point-to-point integrations and lowering long-term maintenance costs.

Key reasons to adopt the API:

* **Standardisation** – Built on HL7 FHIR R4 ensuring broad ecosystem compatibility.
* **Automation** – Replace manual workflows with reliable, programmatic data exchange.
* **Future-proof** – A versioned, specification-driven contract that evolves predictably.

### Target audience

This implementation guide is intended for:

* **Integration developers** building systems that consume or produce data through the WOF Portal.
* **Solution architects** evaluating the API's fit within a larger system landscape.
* **Technical project managers** planning integration work and estimating effort.

### Key capabilities

| Capability | Description |
|---|---|
| FHIR R4 resources | Read and write FHIR resources exposed by the portal |
| Search & filtering | Query resources with standard FHIR search parameters |
| Authentication | OAuth 2.0 / OpenID Connect token-based access |
| Audit & traceability | All operations are logged and traceable |

### Value proposition

By integrating with the WOF Portal API you benefit from:

1. **Reduced development time** — well-documented contracts and standard tooling.
2. **Improved data quality** — server-side validation against published profiles.
3. **Operational transparency** — built-in monitoring, SLA targets, and incident processes.
4. **Security by design** — scoped tokens, short lifetimes, and best-practice guidance.

### Quick links

* [Getting Started](getting-started.html) — Base URL, first API call, required headers.
* [Authentication & Security](authentication-and-security.html) — Token flow and scopes.
* [API Reference](api-reference.html) — Full resource and parameter documentation.
* [Cross-cutting Concerns](cross-cutting-concerns.html) — Error handling, pagination, rate limits.
* [Operations & Trust](operations-and-trust.html) — SLA, monitoring, incident handling.
* [Use Cases](use-cases.html) — Worked end-to-end examples.

# Operations & Trust

This page describes the operational commitments, compliance posture, and incident-handling procedures for the WOF Portal API.

### Compliance considerations

The WOF Portal API is designed to handle healthcare-related data and adheres to applicable regulations:

* **GDPR** — Personal data is processed in accordance with the EU General Data Protection Regulation. Data minimisation, purpose limitation, and storage limitation principles are applied throughout the API.
* **Patientdatalagen (PDL)** — Where applicable, the API supports requirements from the Swedish Patient Data Act.
* **Information security** — The platform follows ISO 27001-aligned practices for access control, logging, and risk management.

Integrators are responsible for ensuring that their own systems also meet applicable legal and regulatory requirements when exchanging data through this API.

### SLA / SLO

The following service-level objectives (SLO) apply to the production environment:

| Metric | Target |
|---|---|
| Availability | ≥ 99.5 % (monthly) |
| Response time (p95) | < 500 ms |
| Response time (p99) | < 1 500 ms |
| Planned maintenance window | Communicated ≥ 72 h in advance |

> **Note:** Exact SLA terms are defined in individual customer agreements and may differ from the targets above.

### Monitoring

* **Health endpoint** — `GET /health` returns the current operational status of the API.
* **Uptime dashboard** — An external status page is available for real-time and historical availability data. URL is provided during onboarding.
* **Alerts** — The operations team monitors error rates, latency, and resource utilisation around the clock. Automated alerts trigger the incident process described below.

### Incident handling

Incidents are classified and handled according to the following severity levels:

| Severity | Definition | Response time | Resolution target |
|---|---|---|---|
| **Critical** | Service unavailable or data integrity at risk | 15 min | 4 h |
| **High** | Major functionality degraded | 30 min | 8 h |
| **Medium** | Minor functionality degraded | 2 h | 24 h |
| **Low** | Cosmetic or documentation issue | 1 business day | Best effort |

**Incident workflow:**

1. **Detection** — Automated monitoring or customer report.
2. **Triage** — On-call engineer classifies severity.
3. **Communication** — Affected parties are notified via status page and email.
4. **Resolution** — Root cause is identified and a fix is deployed.
5. **Post-mortem** — A written review is published for Critical and High incidents.

To report an issue, contact the Service Well support team through the channel provided during onboarding.

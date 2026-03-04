Profile: PractitionerRolePortal
Parent: PractitionerRole
Id: practitioner-role-portal
Title: "PractitionerRolePortal  "
Description: """
**PractitionerRolePortal** represents a practitioner acting in a specific operational and financial context.

It answers the question: __“In which role, at which service location, and under which financial responsibility does this practitioner perform services?”__

- Links a **PractitionerPortal** (the individual person).
- Links a **HealthcareServicePortal** (where the service is performed).
- Links a **BillingOrganizationPortal** (who is financially responsible).

A PractitionerRole defines the **context** in which work is performed, not the person itself.

- A Practitioner may have **multiple PractitionerRolePortals**.
- A Practitioner may work at **multiple HealthcareServicePortals**.
- A Practitioner may act under **different BillingOrganizationPortals** depending on context.

This makes PractitionerRole the central concept for:
- Booking and offers
- Pricing and duration rules
- Financial responsibility
- Service-specific configuration

**Important:** PractitionerRolePortal is intentionally used to separate the person from the context in which services are delivered and billed.

Current name in Backoffice: Practitioner
"""

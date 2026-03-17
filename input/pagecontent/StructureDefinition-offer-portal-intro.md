- Connects an **ActivityDefinitionPortal** (what) with a **HealthcareServicePortal** (where) and a **PractitionerRolePortal** (who).
- Represents the **context-specific** configuration for booking content.
- Is intended as a lightweight object for frontends to render booking options quickly.

An OfferPortal contains references to:

- **activityDefinition** — Reference(ActivityDefinitionPortal)
- **healthcareService** — Reference(HealthcareServicePortal)
- **practitionerRole** — Reference(PractitionerRolePortal)

OfferPortal may include booking-facing settings such as:
- **duration** — free-text (presentation value)
- **price** — free-text (presentation value)
- **bookingUrl** — deeplink for booking

**Important:** OfferPortal does **not** represent real-time availability. It does not include schedules, working hours, or bookable time slots.

OfferPortal is a context/read model intended to support fast, “chatty” consumption. It is not a replacement for scheduling or billing workflows.
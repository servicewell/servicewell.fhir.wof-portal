- Provides **time-based context** for practitioners.
- Is used to filter which offers may proceed to availability checks.
- Supports planning and staffing views.

**Relationship to Offer:**

- **Offer** defines what can be presented and selected (what/where/who).
- **SchedulePortal** indicates when a practitioner is planned to work.
- A practitioner may have an **Offer without a SchedulePortal**.

**Important:** A practitioner without SchedulePortal may still be included in offers for presentation and marketing purposes, but must be treated as **not currently bookable**.

**SchedulePortal is not availability:**
- SchedulePortal does **not** represent bookable time slots.
- SchedulePortal does **not** guarantee that a booking can be made.
- Actual bookability requires downstream **Slot/availability** checks.

**Design principle:** Offer determines eligibility. Schedule determines potential availability. Slot determines actual bookability.

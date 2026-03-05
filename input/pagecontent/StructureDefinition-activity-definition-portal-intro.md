- Defines the **type of service** (e.g., examination, consultation, treatment).
- Contains a **booking activity code** that uniquely identifies the service concept.
- Provides stable metadata such as title and description for presentation and search.

**Booking and interoperability principle:**

- Booking is performed using the **activity code**, not the resource id.
- This follows the approach used in IHE Scheduling profiles.
- The code represents a **shared service concept** that can be reused across installations and systems.

**Important:** The resource `id` is a technical identifier local to a FHIR server. It MUST NOT be used as a booking key.

ActivityDefinitionPortal describes the service concept only. It does **not** define:

- which locations offer the service
- which practitioners perform it
- context-specific price or duration
- availability, schedules, or bookable time slots

Those context-specific details are provided through **Offer** and related context resources.

**Current name in Backoffice:** Service
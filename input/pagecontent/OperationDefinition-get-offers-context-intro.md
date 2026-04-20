<blockquote style="background-color: #428bca3d; border-left: 4px solid #428bca; padding: 10px; margin: 5px; border-radius: 8px;" markdown="1">

<span style="font-size:1.0em;font-weight;">**NOTE**</span>

- **Operation name:** **`getOffersContext`**
- **Operation usage:** **`$get-offers-context`**

</blockquote>


## What this operation is NOT
`$getOffersContext` does **not** answer:
- Whether a practitioner is working right now
- Schedule availability
- Which time slots are bookable

In other words:
- **No Schedule**
- **No Slot**
- **No bookable times**

Those concerns belong to downstream availability/slot endpoints.

<span style="font-size:1.3em;font-weight;"> Non-goals / exclusions<span>
- No scheduling, working hours, or shift logic
- No real-time availability
- No Slot calculation
- No guarantee that all returned practitioners are currently working

## Endpoints
The operation can be exposed at (at least) the following levels:

- System:  
  `GET /fhir/$get-offers-context`

- ActivityDefinition scope:  
  `GET /fhir/ActivityDefinition/{id}/$get-offers-context`

- HealthcareService scope:  
  `GET /fhir/HealthcareService/{id}/$get-offers-context`

- PractitionerRole scope:  
  `GET /fhir/PractitionerRole/{id}/$get-offers-context`

> The server may return different subsets depending on the endpoint and/or query parameters, but the response is always a Bundle.


## Response
<span style="font-size:1.3em;font-weight;">Resource type</span>
- **Bundle** (profiled)

<span style="font-size:1.3em;font-weight;">resources (depending on inputs)</span>
The response Bundle MAY include any combination of:
- `ActivityDefinitionPortal`
- `HealthcareServicePortal`
- `PractitionerRolePortal`
- `OfferPortal` (custom resource/profile)



## The `OfferPortal` resource (custom, profiled)
`OfferPortal` is the compact “join object” used by clients to connect:
- *what* (`ActivityDefinitionPortal`)
- *where* (`HealthcareServicePortal`)
- *who* (`PractitionerRolePortal`)

An `Offer` contains:
- `healthcareService` — **Reference(HealthcareServicePortal)** (with `display` populated when possible)
- `practitionerRole` — **Reference(PractitionerRolePortal)** (with `display` populated when possible)
- `activityDefinition` — **Reference(ActivityDefinitionPortal)** (with `display` populated when possible)

`Offer` may also include **presentation-focused settings** needed for booking content, e.g.:
- duration (free-text)
- price (free-text)
- booking URL / deeplink

> Note: duration and price are intended for booking/marketing presentation. They are not required to be machine-parseable.


## Why Bundle (instead of Parameters)
We use a profiled Bundle so that:
- Clients can reuse standard FHIR parsing patterns
- Resources can be included once and referenced from multiple offers
- The payload remains efficient for “chatty” consumers


## Typical client usage
1. Call `$get-offers-context` for a scope (e.g. an ActivityDefinition).
2. Parse the Bundle and build in-memory maps:
   - `ActivityDefinition` by id
   - `HealthcareService` by id
   - `PractitionerRole` by id
   - `Offer` list
3. Render booking options:
   - group by clinic (HealthcareService)
   - show practitioners (PractitionerRole)
   - show the selected activity (ActivityDefinition)
   - show offer-specific settings (duration/price/deeplink)



## Glossary
- **ActivityDefinition**: what can be booked (e.g., “Examination”)
- **HealthcareService**: a clinic/service unit offering the activity
- **PractitionerRole**: a practitioner in a role relevant for booking
- **Offer**: the relationship + settings that ties the above together

---
Profile: BundleOffersContextPortal
Parent: Bundle
Id: BundleOffersContextPortal
Title: "Bundle (Offers Context) — WOF Portal"
Description: """
Response Bundle for $getOffersContext. Contains a subset of ActivityDefinitionPortal,
HealthcareServicePortal, PractitionerRolePortal and OfferPortal. Intended for fast content rendering.
Does not include scheduling or bookable time slots (no Schedule, no Slot).
"""

* type = #searchset (exactly)
* total 0..1

// We allow multiple entries
* entry 0..*

// Constrain what can appear in entry.resource
* entry.resource only
    ActivityDefinitionPortal
  or HealthcareServicePortal
  or PractitionerRolePortal
  or OfferPortal

// Optional but useful: require fullUrl so clients can map quickly
* entry.fullUrl 1..1

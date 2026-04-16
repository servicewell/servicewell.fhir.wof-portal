Profile: BundleOffersContextPortal
Parent: Bundle
Id: BundleOffersContextPortal
Title: "Bundle (Offers Context) — WOF Portal"
Description: """
Response Bundle for $getOffersContext. Contains a subset of ActivityDefinitionPortal,
HealthcareServicePortal, PractitionerRolePortal and OfferPortal. Intended for fast content rendering.
Does not include scheduling or bookable time slots (no Schedule, no Slot).
"""


* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to BundleOffersContextPortal so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific BundleOffersContextPortal instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)
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

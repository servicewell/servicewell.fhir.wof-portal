Profile: ServiceProviderPortal
Parent: Organization
Id: service-provider-portal
Title: "ServiceProviderPortal"
Description: """
**ServiceProvider** represents the top-level owning organization within the platform.

It answers the question: _“Which organization owns the configuration, endpoints, and service structure for a customer?”_

"""


* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to ServiceProviderPortal so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific ServiceProviderPortal instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)

// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* modifierExtension 0..0
* type 0..0
* alias 0..0
* address 0..0
* partOf 0..0
* contact 0..0
* endpoint 0..0

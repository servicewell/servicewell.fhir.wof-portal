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

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = ""
* identifier ^slicing.ordered = false

* identifier contains MobileFormTenant 0..1 MS and NameAsCode 0..1 MS

* identifier[MobileFormTenant].system 1..1 MS
* identifier[MobileFormTenant].system = "http://ki.purified.link/wof-mobileform/fhir/CodeSystem/MobileFormTenantsCs"
* identifier[MobileFormTenant].system insert Obligation($wof-portal-server-actor, #SHALL:populate)
* identifier[MobileFormTenant].value 1..1 MS
* identifier[NameAsCode].system 1..1 MS
* identifier[NameAsCode].system = "http://portal.wof.purified.link/fhir/CodeSystem/nameAsCode"
* identifier[NameAsCode].system insert Obligation($wof-portal-server-actor, #SHALL:populate)
* identifier[NameAsCode].value 1..1 MS

* identifier[MobileFormTenant].use 0..0
* identifier[MobileFormTenant].type 0..0
* identifier[MobileFormTenant].period 0..0
* identifier[NameAsCode].use 0..0
* identifier[NameAsCode].type 0..0
* identifier[NameAsCode].period 0..0

* contained ^short = "Used for carrying banner image"

* extension contains extBannerImage named bannerImageExtension 0..1 MS and OrganizationSettings named organizationSettings 0..1 MS


* extension contains OrganizationSettings named organizationSettings 0..1  
* extension[organizationSettings] ^short = "Organization-level settings that apply to all clinics managed by this provider"
* extension[organizationSettings] ^definition = "Settings that apply to the entire organization, affecting all clinics under its management."

// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* modifierExtension 0..0
* type 0..0
* alias 0..0
* address 0..0
* partOf 0..0
* contact 0..0
* endpoint 0..0

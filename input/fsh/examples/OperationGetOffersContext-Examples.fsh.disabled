Instance: GetOffersContextRequestExample
InstanceOf: Parameters
Usage: #example
Title: "Example request for $get-offers-context"
Description: "FHIR R4 Parameters example for invoking $get-offers-context with include flags."

* parameter[+].name = "includeActivityDefinitionPortal"
* parameter[=].valueBoolean = true

* parameter[+].name = "includeHealthcareServicePortal"
* parameter[=].valueBoolean = true

* parameter[+].name = "includePractitionerRolePortal"
* parameter[=].valueBoolean = true

Instance: GetOffersContextResponseExample
InstanceOf: BundleOffersContextPortal
Usage: #example
Title: "Example response for $get-offers-context"
Description: "FHIR R4 profiled Bundle example returned from $get-offers-context."

* type = #searchset
* total = 4

* entry[+].fullUrl = "https://api.servicewell.se/fhir/ActivityDefinition/ActivityDefinitionPortalExtraktionExample"
* entry[=].resource = ActivityDefinitionPortalExtraktionExample

* entry[+].fullUrl = "https://api.servicewell.se/fhir/HealthcareService/19392e14-dea6-48eb-a7fb-08374ea5ffae"
* entry[=].resource = 19392e14-dea6-48eb-a7fb-08374ea5ffae

* entry[+].fullUrl = "https://api.servicewell.se/fhir/PractitionerRole/practitioner-role-1"
* entry[=].resource = PractitionerRolePortalExample

* entry[+].fullUrl = "https://api.servicewell.se/fhir/Parameters/OfferPortalExample"
* entry[=].resource = OfferPortalExample

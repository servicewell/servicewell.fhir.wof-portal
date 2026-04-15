Instance: bd6df542-9169-4fd5-b2b4-72dd88a22f61
InstanceOf: Bundle
Usage: #example
* type = #searchset
* total = 1
* entry.fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Organization/773cc131-574b-4e86-9abd-552d0d25be27"
* entry.resource = 773cc131-574b-4e86-9abd-552d0d25be27
* entry.search.mode = #match

Instance: 773cc131-574b-4e86-9abd-552d0d25be27-bundle
InstanceOf: ServiceProviderPortal
Usage: #inline
* meta.extension.extension.url = "created"
* meta.extension.extension.valueDateTime = "2025-06-24T11:39:55.797+02:00"
* meta.extension.url = "http://portal.wof.purified.link/fhir/StructureDefinition/extWofMeta"
* meta.lastUpdated = "2026-04-08T14:16:52.19+02:00"
* identifier[0].system = "http://ki.purified.link/wof-mobileform/fhir/CodeSystem/MobileFormTenantsCs"
* identifier[=].value = "customer-serviceonorway-dev"
* identifier[+].system = "http://portal.wof.purified.link/fhir/CodeSystem/nameAsCode"
* identifier[=].value = "serviceonorway"
* active = true
* name = "Service-O-Norway"
* telecom.system = #url
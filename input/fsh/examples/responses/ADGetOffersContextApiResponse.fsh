Instance: ActivityDefinitionGetOffersContext
InstanceOf: BundleOffersContextPortal
Usage: #example
Title: "GetOffersContext Response"
Description: "API response for $getOffersContext on a ActivityDefinition returning offering references without included resources."
* type = #searchset
* total = 4
* entry[0].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/TannrensLarsJansen"
* entry[=].resource = TannrensLarsJansen
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/TannrensOlaNordmann"
* entry[=].resource = TannrensOlaNordmann
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/TannrensMariaOlsen"
* entry[=].resource = TannrensMariaOlsen
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/TannrensAnneJohansen"
* entry[=].resource = TannrensAnneJohansen
* entry[=].search.mode = #match

Instance: TannrensLarsJansen
InstanceOf: OfferPortal
Usage: #inline
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(HealthcareService/2a2af34c-31d2-4b15-aa4b-59f6a559bc5e) "Service-O Sandvika"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* parameter.part[+].name = "visit-type"
* parameter.part[=].valueString = "http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens"
* parameter.part[+].name = "practitioner"
* parameter.part[=].valueString = "505"
* parameter.part[+].name = "organization"
* parameter.part[=].valueString = "578"
* parameter.part[+].name = "duration"
* parameter.part[=].valueString = "30"
* parameter.part[+].name = "price"
* parameter.part[=].valueString = "fra 560,-"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: TannrensOlaNordmann
InstanceOf: OfferPortal
Usage: #inline
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(HealthcareService/2a2af34c-31d2-4b15-aa4b-59f6a559bc5e) "Service-O Sandvika"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(PractitionerRole/e0454fdc-43f0-4031-a7f8-24ab45afbbba) "Tannlege Ola Nordmann"
* parameter.part[+].name = "visit-type"
* parameter.part[=].valueString = "http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens"
* parameter.part[+].name = "practitioner"
* parameter.part[=].valueString = "472"
* parameter.part[+].name = "organization"
* parameter.part[=].valueString = "544"
* parameter.part[+].name = "duration"
* parameter.part[=].valueString = "30"
* parameter.part[+].name = "price"
* parameter.part[=].valueString = "fra 560,-"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: TannrensMariaOlsen
InstanceOf: OfferPortal
Usage: #inline
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(HealthcareService/ae8d0770-71a8-4da7-83cb-5658c369dd78) "Service-O Oslo"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(PractitionerRole/f2f123f1-3e1f-46df-be91-541745dcac06) "Tannpleier Maria Olsen"
* parameter.part[+].name = "visit-type"
* parameter.part[=].valueString = "http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens"
* parameter.part[+].name = "practitioner"
* parameter.part[=].valueString = "548"
* parameter.part[+].name = "organization"
* parameter.part[=].valueString = "558"
* parameter.part[+].name = "duration"
* parameter.part[=].valueString = "30"
* parameter.part[+].name = "price"
* parameter.part[=].valueString = "fra 500,-"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: TannrensAnneJohansen
InstanceOf: OfferPortal
Usage: #inline
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(HealthcareService/ae8d0770-71a8-4da7-83cb-5658c369dd78) "Service-O Oslo"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(PractitionerRole/b8e45897-b42f-42f5-801c-d334528e3776) "Tannpleier Anne Johansen"
* parameter.part[+].name = "visit-type"
* parameter.part[=].valueString = "http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens"
* parameter.part[+].name = "practitioner"
* parameter.part[=].valueString = "472"
* parameter.part[+].name = "organization"
* parameter.part[=].valueString = "561"
* parameter.part[+].name = "duration"
* parameter.part[=].valueString = "30"
* parameter.part[+].name = "price"
* parameter.part[=].valueString = "fra 500,-"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true
Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType
Alias: $csPractitionerRole = http://portal.wof.purified.link/fhir/CodeSystem/csPractitionerRole
Alias: $vsPractitionerRole = http://portal.wof.purified.link/fhir/ValueSet/vsPractitionerRole

Instance: ActivityDefinitionGetOffersContextWInclude
InstanceOf: BundleOffersContextPortal
Usage: #example
* type = #searchset
* total = 14
* entry[0].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/2506f2c2-c4ca-4e30-b7bf-361a91ee7e71"
* entry[=].resource = 2506f2c2-c4ca-4e30-b7bf-361a91ee7e71
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/0afcfe81-590d-421d-8d16-6bbfc9f21b57"
* entry[=].resource = 0afcfe81-590d-421d-8d16-6bbfc9f21b57
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/8e75aaa3-8c15-4263-9e1c-317128e918f5"
* entry[=].resource = 8e75aaa3-8c15-4263-9e1c-317128e918f5
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/7611df12-31e5-432e-85ff-e2723ed1139d"
* entry[=].resource = 7611df12-31e5-432e-85ff-e2723ed1139d
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Parameters/607a2db3-4c4a-4572-81b0-8f0e826fa181"
* entry[=].resource = 607a2db3-4c4a-4572-81b0-8f0e826fa181
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/HealthcareService/9663821b-d098-4aed-886a-2da00460e9e0"
* entry[=].resource = 9663821b-d098-4aed-886a-2da00460e9e0
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/HealthcareService/ae8d0770-71a8-4da7-83cb-5658c369dd78"
* entry[=].resource = ae8d0770-71a8-4da7-83cb-5658c369dd78
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/HealthcareService/2a2af34c-31d2-4b15-aa4b-59f6a559bc5e"
* entry[=].resource = 2a2af34c-31d2-4b15-aa4b-59f6a559bc5e
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9"
* entry[=].resource = 348eeb27-0e1a-4337-9f21-4e84dc5a3fd9
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a"
* entry[=].resource = 7476f314-8b67-4efe-8364-115cee61f32a
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/PractitionerRole/e0454fdc-43f0-4031-a7f8-24ab45afbbba"
* entry[=].resource = e0454fdc-43f0-4031-a7f8-24ab45afbbba
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/PractitionerRole/1e012804-4c5f-4f8a-b679-3edb34b11213"
* entry[=].resource = 1e012804-4c5f-4f8a-b679-3edb34b11213
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/PractitionerRole/f2f123f1-3e1f-46df-be91-541745dcac06"
* entry[=].resource = f2f123f1-3e1f-46df-be91-541745dcac06
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/PractitionerRole/b8e45897-b42f-42f5-801c-d334528e3776"
* entry[=].resource = b8e45897-b42f-42f5-801c-d334528e3776
* entry[=].search.mode = #match

Instance: 2506f2c2-c4ca-4e30-b7bf-361a91ee7e71
InstanceOf: OfferPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/offer-portal"
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(2a2af34c-31d2-4b15-aa4b-59f6a559bc5e) "Service-O Sandvika"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
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
* parameter.part[+].name = "bookingUrl"
* parameter.part[=].valueUrl = "/fhir/Appointment/$find?start=2026-06-08&end=2026-06-15&visit-type=http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens&healthcareService=HealthcareService/2a2af34c-31d2-4b15-aa4b-59f6a559bc5e&practitionerRole=PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: 0afcfe81-590d-421d-8d16-6bbfc9f21b57
InstanceOf: OfferPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/offer-portal"
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(2a2af34c-31d2-4b15-aa4b-59f6a559bc5e) "Service-O Sandvika"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(e0454fdc-43f0-4031-a7f8-24ab45afbbba) "Tannlege Ola Nordmann"
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
* parameter.part[+].name = "bookingUrl"
* parameter.part[=].valueUrl = "/fhir/Appointment/$find?start=2026-06-08&end=2026-06-15&visit-type=http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens&healthcareService=HealthcareService/2a2af34c-31d2-4b15-aa4b-59f6a559bc5e&practitionerRole=PractitionerRole/e0454fdc-43f0-4031-a7f8-24ab45afbbba"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: 8e75aaa3-8c15-4263-9e1c-317128e918f5
InstanceOf: OfferPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/offer-portal"
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(9663821b-d098-4aed-886a-2da00460e9e0) "Service-O Trondheim"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(1e012804-4c5f-4f8a-b679-3edb34b11213) "Tannpleier Ruth-Ellen Brubakken"
* parameter.part[+].name = "visit-type"
* parameter.part[=].valueString = "http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens"
* parameter.part[+].name = "practitioner"
* parameter.part[=].valueString = "473"
* parameter.part[+].name = "organization"
* parameter.part[=].valueString = "562"
* parameter.part[+].name = "duration"
* parameter.part[=].valueString = "30"
* parameter.part[+].name = "price"
* parameter.part[=].valueString = "800"
* parameter.part[+].name = "bookingUrl"
* parameter.part[=].valueUrl = "/fhir/Appointment/$find?start=2026-06-08&end=2026-06-15&visit-type=http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens&healthcareService=HealthcareService/9663821b-d098-4aed-886a-2da00460e9e0&practitionerRole=PractitionerRole/1e012804-4c5f-4f8a-b679-3edb34b11213"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: 7611df12-31e5-432e-85ff-e2723ed1139d
InstanceOf: OfferPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/offer-portal"
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(ae8d0770-71a8-4da7-83cb-5658c369dd78) "Service-O Oslo"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(f2f123f1-3e1f-46df-be91-541745dcac06) "Tannpleier Maria Olsen"
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
* parameter.part[+].name = "bookingUrl"
* parameter.part[=].valueUrl = "/fhir/Appointment/$find?start=2026-06-08&end=2026-06-15&visit-type=http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens&healthcareService=HealthcareService/ae8d0770-71a8-4da7-83cb-5658c369dd78&practitionerRole=PractitionerRole/f2f123f1-3e1f-46df-be91-541745dcac06"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: 607a2db3-4c4a-4572-81b0-8f0e826fa181
InstanceOf: OfferPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/offer-portal"
* parameter.name = "offering"
* parameter.part[0].name = "activityDefinition"
* parameter.part[=].valueReference = Reference(348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* parameter.part[+].name = "healthcareService"
* parameter.part[=].valueReference = Reference(ae8d0770-71a8-4da7-83cb-5658c369dd78) "Service-O Oslo"
* parameter.part[+].name = "practitionerRole"
* parameter.part[=].valueReference = Reference(b8e45897-b42f-42f5-801c-d334528e3776) "Tannpleier Anne Johansen"
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
* parameter.part[+].name = "bookingUrl"
* parameter.part[=].valueUrl = "/fhir/Appointment/$find?start=2026-06-08&end=2026-06-15&visit-type=http://portal.wof.purified.link/fhir/CodeSystem/csServiceType|tannrens&healthcareService=HealthcareService/ae8d0770-71a8-4da7-83cb-5658c369dd78&practitionerRole=PractitionerRole/b8e45897-b42f-42f5-801c-d334528e3776"
* parameter.part[+].name = "isOnline"
* parameter.part[=].valueBoolean = true

Instance: 9663821b-d098-4aed-886a-2da00460e9e0
InstanceOf: HealthcareServicePortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/healthcare-service-portal"
* contained[0].resourceType = "Location"
* contained[=].id = "adressId"
* contained[=].meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/healthcare-service-location"
* contained[=].address.use = #work
* contained[=].physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* contained[=].physicalType.text = "Site"
* contained[=].partOf.reference = "#8f2bf0c7-05b3-4e75-b3a6-6913286c4c07"
* contained[+].resourceType = "Location"
* contained[=].id = "8f2bf0c7-05b3-4e75-b3a6-6913286c4c07"
* contained[=].meta.profile = "http://portal.wof.purified.link/fhir/StructureDefinition/LocationArea"
* contained[=].status = #active
* contained[=].name = "Nordpolen"
* contained[=].physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#area
* contained[=].physicalType.text = "Area"
* contained[+].resourceType = "Organization"
* contained[=].id = "773cc131-574b-4e86-9abd-552d0d25be27"
* contained[=].meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/service-provider-portal"
* contained[=].name = "Service-O-Norway"
* extension[0].extension[0].url = "urlPlaceholder"
* extension[=].extension[=].valueString = "trondheimtest"
* extension[=].extension[+].url = "hasExternalBooking"
* extension[=].extension[=].valueBoolean = false
* extension[=].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-clinic-info"
* extension[+].extension[0].url = "allowCancellationAfterRegistrationHours"
* extension[=].extension[=].valueInteger = 1
* extension[=].extension[+].url = "allowCancellationRemainingHours"
* extension[=].extension[=].valueInteger = 48
* extension[=].extension[+].url = "allowRescheduleAfterRegistrationHours"
* extension[=].extension[=].valueInteger = 1
* extension[=].extension[+].url = "allowRescheduleRemainingHours"
* extension[=].extension[=].valueInteger = 24
* extension[=].extension[+].url = "cancellationAllowed"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "reschedulingAllowed"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "minimumPatientAgeYears"
* extension[=].extension[=].valuePositiveInt = 18
* extension[=].extension[+].url = "minimumAdvanceBookingMinutes"
* extension[=].extension[=].valueInteger = 15
* extension[=].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-booking-rules"
* active = true
* providedBy = Reference(773cc131-574b-4e86-9abd-552d0d25be27) "Service-O-Norway"
* location = Reference(adressId)
* name = "Service-O Trondheim"
* telecom[0].system = #phone
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #url
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[+].system = #email
* telecom[=].use = #work
* telecom[=].rank = 1

Instance: ae8d0770-71a8-4da7-83cb-5658c369dd78
InstanceOf: HealthcareServicePortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/healthcare-service-portal"
* contained[0].resourceType = "Location"
* contained[=].id = "adressId"
* contained[=].meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/healthcare-service-location"
* contained[=].address.use = #work
* contained[=].address.text = "Oslogata"
* contained[=].address.city = "Oslo"
* contained[=].physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* contained[=].physicalType.text = "Site"
* contained[=].position.longitude = 10.026424
* contained[=].position.latitude = 59.748758
* contained[+].resourceType = "Organization"
* contained[=].id = "773cc131-574b-4e86-9abd-552d0d25be27"
* contained[=].meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/service-provider-portal"
* contained[=].name = "Service-O-Norway"
* extension[0].extension[0].url = "urlPlaceholder"
* extension[=].extension[=].valueString = "oslo"
* extension[=].extension[+].url = "hasExternalBooking"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "parking"
* extension[=].extension[=].valueString = "Gode parkeringsmuligheter rett ved klinikken. Vi har to ladestolper og tilbyr gratis lading mens du er på besøk."
* extension[=].extension[+].url = "about"
* extension[=].extension[=].valueString = "På vår store, flotte klinikk jobber det 15 tannleger og 3 tannpleiere."
* extension[=].extension[+].url = "spokenLanguages"
* extension[=].extension[=].valueString = "Norsk, svensk og fransk"
* extension[=].extension[+].url = "bookingSummaryInformationText"
* extension[=].extension[=].valueString = "Ved uteblitt besøk eller sent avbestilt time belastes et gebyr på <b>500 kroner</b>."
* extension[=].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-clinic-info"
* extension[+].extension[0].url = "allowCancellationAfterRegistrationHours"
* extension[=].extension[=].valueInteger = 1
* extension[=].extension[+].url = "allowCancellationRemainingHours"
* extension[=].extension[=].valueInteger = 48
* extension[=].extension[+].url = "allowRescheduleAfterRegistrationHours"
* extension[=].extension[=].valueInteger = 1
* extension[=].extension[+].url = "allowRescheduleRemainingHours"
* extension[=].extension[=].valueInteger = 24
* extension[=].extension[+].url = "cancellationAllowed"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "reschedulingAllowed"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "minimumPatientAgeYears"
* extension[=].extension[=].valuePositiveInt = 18
* extension[=].extension[+].url = "minimumAdvanceBookingMinutes"
* extension[=].extension[=].valueInteger = 15
* extension[=].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-booking-rules"
* active = true
* providedBy = Reference(773cc131-574b-4e86-9abd-552d0d25be27) "Service-O-Norway"
* location = Reference(adressId)
* name = "Service-O Oslo"
* telecom[0].system = #phone
* telecom[=].value = "+4710102020"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #url
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[+].system = #email
* telecom[=].value = "oslo@serviceo.no"
* telecom[=].use = #work
* telecom[=].rank = 1
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "07:30:00"
* availableTime.availableEndTime = "18:00:00"

Instance: 348eeb27-0e1a-4337-9f21-4e84dc5a3fd9
InstanceOf: ActivityDefinitionPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-portal"
* extension.url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-sort-key"
* extension.valueInteger = 1
* name = "Tannrens"
* title = "Tannrens"
* status = #active
* date = "2025-09-29"
* description = "Tannrens hos tannpleier"
* kind = #ServiceRequest
* code = $csServiceType#tannrens
* code.text = "Tannrens hos tannpleier"

Instance: e0454fdc-43f0-4031-a7f8-24ab45afbbba
InstanceOf: PractitionerRolePortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/practitioner-role-portal"
* contained.resourceType = "Binary"
* contained.id = "4d0ac407-2af9-45b4-aaf2-91dc3d0e8562"
* contained.contentType = #image/jpeg
* contained.data = "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"
* extension[0].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-practitionerrole-description"
* extension[=].valueString = "Ola er kjent for sitt rolige vesen og sin evne til å få både barn og voksne til å føle seg trygge i tannlegestolen. Han har mange års erfaring med behandling av barn og legger stor vekt på å skape en positiv opplevelse ved hvert besøk. Med et vennlig smil og god kommunikasjon gjør Ola tannlegebesøket til noe man faktisk kan glede seg til."
* extension[+].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-binary-reference"
* extension[=].valueReference = Reference(4d0ac407-2af9-45b4-aaf2-91dc3d0e8562)
* active = true
* practitioner.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/efaad744-9faa-4075-8aa9-bb03aad9291b"
* practitioner.identifier.value = "472"
* practitioner.display = "Tannlege Ola Nordmann"
* organization.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/efaad744-9faa-4075-8aa9-bb03aad9291b"
* organization.identifier.value = "544"
* organization.display = "Tannlege Jon Olav Flakne"
* code[0] = $csPractitionerRole#orthodontist "Kjeveortoped"
* code[=].text = "Kjeveortoped"
* code[+] = $csPractitionerRole#hygienist "Tannpleier"
* code[=].text = "Tannpleier"
* code[+] = $csPractitionerRole#dentist "Tannlege"
* code[=].text = "Tannlege"
* code[+] = $csPractitionerRole#endodontist "Endodontist"
* code[=].text = "Endodontist"
* healthcareService = Reference(2a2af34c-31d2-4b15-aa4b-59f6a559bc5e) "Service-O Sandvika"

Instance: 1e012804-4c5f-4f8a-b679-3edb34b11213
InstanceOf: PractitionerRolePortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/practitioner-role-portal"
* active = true
* practitioner.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/fc580e7c-7fd8-4acd-92e9-42cb052763d4"
* practitioner.identifier.value = "473"
* practitioner.display = "Tannpleier Ruth-Ellen Brubakken"
* organization.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/fc580e7c-7fd8-4acd-92e9-42cb052763d4"
* organization.identifier.value = "562"
* organization.display = "Tannpleier Ruth-Ellen Brubakken"
* code = $vsPractitionerRole#hygienist "Tannpleier"
* code.text = "Tannpleier"
* healthcareService = Reference(9663821b-d098-4aed-886a-2da00460e9e0) "Service-O Trondheim"

Instance: f2f123f1-3e1f-46df-be91-541745dcac06
InstanceOf: PractitionerRolePortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/practitioner-role-portal"
* contained.resourceType = "Binary"
* contained.id = "aae42a82-776e-4d2e-9f01-610a15603c80"
* contained.contentType = #image/jpeg
* contained.data = "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"
* extension[0].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-practitionerrole-description"
* extension[=].valueString = "Maria er en engasjert og omsorgsfull tannpleier med fokus på forebyggende tannhelse og pasientens trivsel. Hun tar seg god tid til å forklare og veilede, og er spesielt opptatt av å skape trygghet for pasienter som føler seg urolige. Med sin faglige dyktighet og varme væremåte bidrar Maria til sunne smil og gode tannhelsevaner – for både barn og voksne."
* extension[+].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-binary-reference"
* extension[=].valueReference = Reference(aae42a82-776e-4d2e-9f01-610a15603c80)
* active = true
* practitioner.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/fc580e7c-7fd8-4acd-92e9-42cb052763d4"
* practitioner.identifier.value = "548"
* practitioner.display = "Tannpleier Maria Olsen"
* organization.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/fc580e7c-7fd8-4acd-92e9-42cb052763d4"
* organization.identifier.value = "558"
* organization.display = "Tannlege Ulf Müller-Henneberg"
* code = $csPractitionerRole#hygienist "Tannpleier"
* code.text = "Tannpleier"
* healthcareService = Reference(ae8d0770-71a8-4da7-83cb-5658c369dd78) "Service-O Oslo"

Instance: b8e45897-b42f-42f5-801c-d334528e3776
InstanceOf: PractitionerRolePortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/practitioner-role-portal"
* contained.resourceType = "Binary"
* contained.id = "1db1fbd9-8e0a-4146-a850-3c6b12be278e"
* contained.contentType = #image/jpeg
* contained.data = "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"
* extension[0].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-practitionerrole-description"
* extension[=].valueString = "Anne er en omsorgsfull og grundig tannpleier som hjelper pasientene med å opprettholde god munnhelse. Hun legger stor vekt på forebygging og veiledning, og er spesielt flink til å motivere både barn og voksne til gode tannpleierutiner. Hennes vennlige væremåte og faglige trygghet gjør besøket behagelig og lærerikt."
* extension[+].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-binary-reference"
* extension[=].valueReference = Reference(1db1fbd9-8e0a-4146-a850-3c6b12be278e)
* active = true
* practitioner.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/fc580e7c-7fd8-4acd-92e9-42cb052763d4"
* practitioner.identifier.value = "472"
* practitioner.display = "Tannpleier Anne Johansen"
* organization.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/fc580e7c-7fd8-4acd-92e9-42cb052763d4"
* organization.identifier.value = "561"
* organization.display = "Tannpleier Laila Rindal-Flatlie"
* code[0] = $csPractitionerRole#dentist "Tannlege"
* code[=].text = "Tannlege"
* code[+] = $csPractitionerRole#hygienist "Tannpleier"
* code[=].text = "Tannpleier"
* healthcareService = Reference(ae8d0770-71a8-4da7-83cb-5658c369dd78) "Service-O Oslo"
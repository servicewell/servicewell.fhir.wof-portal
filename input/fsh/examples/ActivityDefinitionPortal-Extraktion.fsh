Instance: ActivityDefinitionPortalExtraktionExample
InstanceOf: ActivityDefinitionPortal
Usage: #example
Title: "Example ActivityDefinitionPortal Dental Examination"
Description: "Example ActivityDefinitionPortal resource for the patient-facing service concept Dental Examination."
* meta.profile[+] = Canonical(ActivityDefinitionPortal)
* meta.versionId = "1"
* name = "DentalExamination"
* title = "Dental Examination"
* status = #active
* date = "2026-01-29"
* description = "Dental examination"
* kind = #ServiceRequest
* extension[sortKey].valueInteger = 10
* extension[campaigns].extension[campaign][0].valueCode = #CHRISTMAS_CHECKUP
* extension[campaigns].extension[campaign][+].valueCode = #SPRING_CHECKUP
* extension[campaigns].extension[campaign][+].valueCode = #SUMMER_CHECKUP
* code.coding.system = $service-type-id
* code.coding.code = #DENTALEX

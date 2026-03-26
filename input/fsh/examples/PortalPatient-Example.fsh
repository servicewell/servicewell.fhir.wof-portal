Instance: PortalPatientExample
InstanceOf: PortalPatient
Usage: #example
Title: "Example PortalPatient"
Description: "Example PortalPatient resource used in booking and appointment contexts."

* id = "portal-patient-1"
* meta.profile[+] = Canonical(PortalPatient)
* meta.tag.code = #ServiceO
* identifier[personalNumber].system = "urn:oid:1.2.752.129.2.1.3.1"
* identifier[personalNumber].value = "198904231234"
* identifier[sourceSystemIdentifier].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-patient/1693"
* identifier[sourceSystemIdentifier].value = "1001"
* name.text = "Erik Svensson"
* name.family = "Svensson"
* name.given[+] = "Erik"
* telecom[mobilePhone].system = #phone
* telecom[mobilePhone].value = "+46701234567"
* telecom[mobilePhone].use = #mobile
* telecom[email].system = #email
* telecom[email].value = "erik.svensson@example.com"
* birthDate = "1989-04-23"
* extension[consentToMarketing].valueBoolean = true

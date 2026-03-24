Instance: PortalPatientExample
InstanceOf: PortalPatient
Usage: #example
Title: "Example PortalPatient"
Description: "Example PortalPatient resource used in booking and appointment contexts."

* id = "portal-patient-1"
* meta.profile[+] = Canonical(PortalPatient)
* identifier[personalNumber].system = Canonical(PersonalNumberIdentifierSystemForPatient)
* identifier[personalNumber].value = "198904231234"
* identifier[endpointId].system = Canonical(EndpointIdentifierSystemForPatient)
* identifier[endpointId].value = "1001"
* name.text = "Erik Svensson"
* name.family = "Svensson"
* name.given[+] = "Erik"
* telecom[mobilePhone].value = "+46701234567"
* telecom[mobilePhone].use = #mobile
* telecom[email].value = "erik.svensson@example.com"
* birthDate = "1989-04-23"
* extension[consentToMarketing].valueBoolean = true

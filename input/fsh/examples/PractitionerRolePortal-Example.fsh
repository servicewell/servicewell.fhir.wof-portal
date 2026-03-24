Instance: PractitionerRolePortalExample
InstanceOf: PractitionerRolePortal
Usage: #example
Title: "Example PractitionerRolePortal"
Description: "Example PractitionerRolePortal representing a dentist acting under a specific billing organization and service location."

* id = "practitioner-role-1"
* meta.profile[+] = Canonical(PractitionerRolePortal)
* active = true
* code[+] = http://snomed.info/sct#106289002 "Dentist"
* specialty[+] = http://snomed.info/sct#394812008 "Dental medicine"
* practitioner.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/550e8400-e29b-41d4-a716-446655440000"
* practitioner.identifier.value = "1"
* practitioner.display = "Anna Andersson"
* healthcareService[+].reference = "HealthcareService/19392e14-dea6-48eb-a7fb-08374ea5ffae"
* healthcareService[=].display = "Tandvård City"
* organization.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/550e8400-e29b-41d4-a716-446655440000"
* organization.identifier.value = "1"
* organization.display = "Tandvård AB"
* extension[description].valueString = "Specialisttandläkare med inriktning på extraktioner och protetik."

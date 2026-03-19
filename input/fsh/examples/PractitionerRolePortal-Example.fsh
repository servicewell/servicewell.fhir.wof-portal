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
* practitioner.reference = "Practitioner/practitioner-1"
* practitioner.display = "Anna Andersson"
* healthcareService[+].reference = "HealthcareService/19392e14-dea6-48eb-a7fb-08374ea5ffae"
* healthcareService[=].display = "Tandvård City"
* organization.reference = "Organization/billing-org-1"
* organization.display = "Tandvård AB"
* extension[description].valueString = "Specialisttandläkare med inriktning på extraktioner och protetik."

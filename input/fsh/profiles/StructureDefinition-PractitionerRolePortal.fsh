Profile: PractitionerRolePortal
Parent: PractitionerRole
Id: practitioner-role-portal
Title: "PractitionerRolePortal"
Description: """
**PractitionerRolePortal** represents a practitioner acting in a specific operational and financial context.

It answers the question: _“In which role, at which service location, and under which financial responsibility does this practitioner perform services?”_

"""

* ^status = #active

* id 1..1

* meta.profile 0..*

* active 1..1

* code 1..*
* specialty 1..*

* practitioner 1..1
* practitioner.reference 0..1
* practitioner.display 1..1

* healthcareService 1..*
* healthcareService.reference 0..1
* healthcareService.display 0..1

* organization 1..1
* organization.reference 0..1
* organization.display 1..1
* organization.type 0..1

* extension contains PractitionerRoleDescription named description 0..1
* extension contains BinaryReference named binaryReference 0..1

* contained 0..*

Extension: PractitionerRoleDescription
Id: ext-practitionerrole-description
Title: "PractitionerRole Description"
Description: "Description of the practitioner role."

* ^status = #active
* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only string

Extension: BinaryReference
Id: ext-binary-reference
Title: "Binary Reference"
Description: "Reference to a contained Binary resource."

* ^status = #active
* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only Reference(Binary)
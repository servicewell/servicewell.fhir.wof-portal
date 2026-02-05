Instance: GetOffersContext
InstanceOf: OperationDefinition
Usage: #definition
* id = "get-offers-context"
* status = #active
* name = "GetOffersContext"
* title = "$getOffersContext — Booking Content Context"
* kind = #operation
* code = #getOffersContext
* system = true
* type = true
* instance = true
* description = """
Read-oriented operation returning an enriched, profiled Bundle for fast content rendering.
It may include ActivityDefinitionPortal, HealthcareServicePortal, PractitionerRolePortal and OfferPortal.
It MUST NOT include Schedule, Slot, or bookable time slots.
"""

// Support invocation on specific resource types
* resource[+] = #ActivityDefinition
* resource[+] = #HealthcareService
* resource[+] = #PractitionerRole

// -------------------- INPUT PARAMETERS --------------------
* parameter[+].name = #includeActivityDefinitionPortal
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = """
If true, the response Bundle SHALL include ActivityDefinitionPortal resources.
If omitted or false, ActivityDefinitionPortal resources are not included.
"""

* parameter[+].name = #includeHealthcareServicePortal
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = """
If true, the response Bundle SHALL include HealthcareServicePortal resources.
If omitted or false, HealthcareServicePortal resources are not included.
"""

* parameter[+].name = #includePractitionerRolePortal
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = """
If true, the response Bundle SHALL include PractitionerRolePortal resources.
If omitted or false, PractitionerRolePortal resources are not included.
"""


// -------------------- OUTPUT --------------------
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = "A profiled Bundle containing offers context resources."
* parameter[=].targetProfile[+] = Canonical(BundleOffersContextPortal)

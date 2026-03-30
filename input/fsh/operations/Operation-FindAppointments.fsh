Instance: FindAppointments
InstanceOf: OperationDefinition
Title: "Find Appointments (Available Slots)"
Description: """
Finds available appointment opportunities (slots) and returns them as proposed Appointments.

This operation corresponds to the IHE ITI Scheduling $find operation and returns
a Bundle of Appointment resources conforming to the IHE Scheduled Availability Bundle profile.
"""
Usage: #definition
* name = "FindAppointments"
* status = #active
* kind = #operation
* code = #find              // Operation $find (OperationDefinition/appointment-find) from IHE ITI Scheduling Appointment Profile
* resource = #Appointment   // Operation based on Appointment
* system = false            // Not a system-level operation
* type = true
* instance = false          // Not an instance-level operation
* affectsState = false      // Read-only
* base = Canonical(appointment-find) // from iti-findAppointment-operation

* outputProfile = Canonical(WofConnectFindAppointment) // IHE ITI Scheduling Bundle Profile

// ---- Input parameters ----

// IHE: start 1..1 dateTime
* parameter[+].name = #start
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #dateTime
* parameter[=].documentation = """
Start of the requested time window for which available appointment opportunities (slots) should be returned.
This parameter is mandatory as per IHE ITI Scheduling $find.
"""

// IHE: end 1..1 dateTime
* parameter[+].name = #end
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #dateTime
* parameter[=].documentation = """
End of the requested time window for which available appointment opportunities (slots) should be returned.
This parameter is mandatory as per IHE ITI Scheduling $find.
"""

// IHE: practitioner 0..* Reference(Practitioner)
* parameter[+].name = #practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Reference
* parameter[=].documentation = """
Restrict the search to Appointments where a specific Practitioner is the performer.

Practitioner is not exposed as a standalone API resource in WOF Portal. This parameter therefore uses a `Reference` with `identifier` populated for the logical Practitioner concept, instead of a resolvable FHIR resource reference.

This follows the IHE ITI-style parameter pattern where the parameter type remains `Reference`, but the logical target is carried using `Reference.identifier`.

**Reference.identifier.system:** `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/{endpointId}`

**Reference.identifier.value:** source-system primary key for the practitioner
"""

// IHE: location 0..* Reference(location)
* parameter[+].name = #location
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Reference
* parameter[=].targetProfile = Canonical(LocationArea)
* parameter[=].documentation = """
Restrict the search to Appointments at a specific location.

**Format:** `Location/{id}`  

**Example:** `?location=Location/1234`
"""

// Portal: organization 0..* Reference with identifier
* parameter[+].name = #organization
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Reference
* parameter[=].documentation = """
Restrict the search to Appointments associated with a specific billing organization.

BillingOrganization is not exposed as a standalone API resource in WOF Portal. This parameter therefore uses a `Reference` with `identifier` populated for the logical BillingOrganization concept, instead of a resolvable FHIR resource reference.

This follows the IHE ITI -style parameter pattern where the parameter type remains `Reference`, but the logical target is carried using `Reference.identifier`.

**Reference.identifier.system:** `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/{endpointId}`

**Reference.identifier.value:** source-system primary key for the billing organization
"""
// IHE: visit-type 0..* string (token)
* parameter[+].name = #visit-type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #string
* parameter[=].documentation = """
Restrict the search to a specific visit type (service type). In this implementation, visit-type
typically carries a WOF Connect service-type identifier (e.g., [system]|[code] where code maps to treatmentId).
"""

// Portal: healthcareService 0..* string (token)
* parameter[+].name = #healthcareService
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Reference
* parameter[=].targetProfile = Canonical(HealthcareServicePortal)
* parameter[=].documentation = """
Restrict the search to a specific HealthcareService.

**Format:** `HealthcareService/{id}`  

**Example:** `?healthcareService=HealthcareService/1234`
"""

// Portal: PractitionerRole 0..* string (token)
* parameter[+].name = #practitionerRole
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Reference
* parameter[=].targetProfile = Canonical(PractitionerRolePortal)
* parameter[=].documentation = """
Restrict the search to a specific PractitionerRole.

**Format:** `PractitionerRole/{id}`  

**Example:** `?practitionerRole=PractitionerRole/1234`
"""


// ---- Output ----

// Result Bundle with proposed Appointments
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = """
On success, returns a Bundle that SHALL conform to ihe-sched-avail-bundle, containing the resulting Appointment:
- status 'proposed' for available appointment opportunities (slots)

Bundels conforming to ihe-sched-avail-bundle:
- [wof-connect-find-appointment](http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-find-appointment)
- [ihe-sched-avail-bundle](https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-avail-bundle)
- [portal-find-appointment-bundle](./StructureDefinition-portal-find-appointment-bundle.html)  
If the operation fails, an OperationOutcome is returned instead of this parameter.
"""

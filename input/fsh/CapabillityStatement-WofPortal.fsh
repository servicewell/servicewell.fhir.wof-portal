Instance: WOFPortalCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* experimental = false
* publisher = "Service Well AB"
* name = "WOFPortalCapabilityStatement"
* title = "WOF Portal Capability Statement"
* date = "2026-02-02T12:00:00+00:00"
* description = """
<p>This CapabilityStatement defines the canonical domain model and API principles of the <b>WOF Portal</b>,
owned and operated by Service Well.</p>

<p><b>IHE Scheduling:</b> This server instantiates IHE.Scheduling.server (v1.0.0).</p>

<p><b>Layering principle:</b></p>
<ul>
  <li><b>WOF Connect</b> defines vendor-facing interoperability contracts.</li>
  <li><b>WOF Portal</b> builds on WOF Connect to provide a single, enriched, canonical API.</li>
</ul>

<p><b>Domain separation principles:</b></p>
<ul>
  <li><b>ActivityDefinition</b> represents a shared service concept and SHALL be identified by code, not by resource id.</li>
  <li><b>HealthcareService</b> represents where care is performed.</li>
  <li><b>BillingOrganization</b> represents financial responsibility and is independent of service location.</li>
  <li><b>PractitionerRole</b> represents a practitioner acting in a specific operational and financial context.</li>
</ul>

<p><b>Many-to-many relationships are intentional:</b></p>
<ul>
  <li>A HealthcareService MAY be associated with multiple BillingOrganizations.</li>
  <li>A BillingOrganization MAY provide services at multiple HealthcareServices.</li>
  <li>A Practitioner MAY have multiple PractitionerRoles across services and billing contexts.</li>
</ul>

<p><b>Offer and availability principles:</b></p>
<ul>
  <li><b>Offer</b> represents a computed, context-specific view combining ActivityDefinition,
      HealthcareService, and PractitionerRole.</li>
  <li>Offer is intended for presentation and selection, not for scheduling.</li>
  <li><b>Schedule</b> represents planned working time and SHALL NOT be treated as bookable availability.</li>
  <li>Actual bookability requires downstream slot or availability checks.</li>
</ul>

<p><b>Integration principle:</b></p>
<ul>
  <li>External systems integrate with the platform by implementing <b>WOF Connect</b>.</li>
  <li>WOF Portal APIs MAY return enriched and aggregated views not available in WOF Connect.</li>
</ul>

<p>This CapabilityStatement documents the canonical behavior of the WOF Portal API.</p>

<p><b>Client interaction overview:</b></p>

<p>The following diagram illustrates outbound API calls from a patient-facing client
to the WOF Portal Proxy. It represents actual usage patterns and supported interactions.</p>

<pre>
WOF.Portal.Patient.Client.Frenda - Outbound API calls (Razor components → services)

Client → Proxy:
- GET portal/fhir/Organization
- GET portal/fhir/Organization/{id}?_summary={true|false}
- GET portal/fhir/Organization?identifier={tenantIdentifier}&amp;_summary={true|false}

- GET {endpointId}/fhir/Patient

- GET portal/fhir/Appointment
- GET {endpointId}/fhir/Appointment/{id}
- GET {endpointId}/fhir/Appointment?actor=HealthcareService/{healthcareServiceId}

- GET {endpointId}/fhir/Appointment/$find
- POST {endpointId}/fhir/Appointment/$book

- GET portal/fhir/HealthcareService
- GET portal/fhir/HealthcareService/{id}

- GET portal/fhir/Location?physicalType={AreaLiteral}

- GET portal/fhir/PractitionerRole
- GET portal/fhir/PractitionerRole?service=HealthcareService/{healthcareServiceId}
- GET portal/fhir/PractitionerRole/{practitionerRoleId}

- GET portal/fhir/ActivityDefinition
- GET portal/fhir/ActivityDefinition/{id}
</pre>

<p>This diagram is informational and documents expected client usage.
It does not expand or modify the formal FHIR conformance rules.</p>
"""

* kind = #capability
* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml

* instantiates[+] = "https://profiles.ihe.net/ITI/Scheduling/CapabilityStatement/IHE.Scheduling.server|1.0.0"


// Declare the core resources that define the WOF Portal domain
* rest.mode = #server

* rest.resource[+].type = #ActivityDefinition
* rest.resource[=].documentation = "Represents shared service concepts identified by code."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[+].type = #HealthcareService
* rest.resource[=].documentation = "Represents where healthcare services are performed."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].documentation = "Represents practitioners acting in specific operational and financial contexts."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[+].name = "service"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter by PractitionerRole.service (Reference to HealthcareService)."


* rest.resource[+].type = #Patient
* rest.resource[=].documentation = "Represents practitioners acting in specific operational and financial contexts."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Use the identifier system defined in the applicable base profile."


* rest.resource[+].type = #Organization
* rest.resource[=].documentation = """
Organizations MAY conform to multiple profiles in WOF Portal.
BillingOrganization is represented as Organization constrained by the OrganizationBilling profile.
Clients MAY filter by profile when needed (e.g. using _profile), but searches by id and identifier are supported without profile constraints.
"""
* rest.resource[=].supportedProfile[+] = Canonical(BillingOrganizationPortal)
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search by Organization resource id."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search by organization number using system|value."

* rest.resource[+].type = #Schedule
* rest.resource[=].documentation = "Represents planned working time, not bookable availability."

* rest.resource[+].type = #Location
* rest.resource[=].documentation = "Portal-scoped locations used as areas. Supported interaction: search."
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[+].name = "physical-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Filter by Location.physicalType (e.g., Area)."

// Declare canonical operations exposed by WOF Portal
* rest.operation[+].name = "getOffersContext"
* rest.operation[=].definition = Canonical(GetOffersContext)
* rest.operation[=].documentation = "Returns enriched offer context for presentation and selection."



// // ------------------------------
// // REST #1: Portal-scoped API (portal/fhir/*)
// // ------------------------------
// * rest[+].mode = #server
// * rest[=].documentation = """
// Portal-scoped resources are resolved via portal/fhir/* and are used for
// catalog/context reads and navigation from the patient client.
// """

// // ------------------------------
// // REST #2: Endpoint-scoped API ({endpointId}/fhir/*)
// // ------------------------------
// * rest[+].mode = #server
// * rest[=].documentation = """
// Endpoint-scoped resources are resolved via {endpointId}/fhir/* and are used for
// patient context and IHE scheduling flows (find/book).
// """

// // Patient - (client calls endpoint-specific Patient; list vs read varies by implementation)
// * rest[=].resource[+].type = #Patient
// * rest[=].resource[=].documentation = "Endpoint-scoped Patient access used by the patient client. Supported interactions: read and/or search depending on endpoint."
// * rest[=].resource[=].interaction[+].code = #read
// * rest[=].resource[=].interaction[+].code = #search-type

// // Appointment - list/get + actor filter + IHE Scheduling operations ($find / $book)
// * rest[=].resource[+].type = #Appointment
// * rest[=].resource[=].documentation = """
// Endpoint-scoped Appointment access. Supported interactions: read, search.
// Supports filtering by actor (e.g., HealthcareService/{id}).
// Provides scheduling operations for search and booking.
// """
// * rest[=].resource[=].interaction[+].code = #read
// * rest[=].resource[=].interaction[+].code = #search-type
// * rest[=].resource[=].searchParam[+].name = "actor"
// * rest[=].resource[=].searchParam[=].type = #reference
// * rest[=].resource[=].searchParam[=].documentation = "Filter appointments by participant actor (e.g., HealthcareService/{id})."

// // Declare operations used by the client (resource-level ops)
// * rest[=].resource[=].operation[+].name = "find"
// * rest[=].resource[=].operation[=].definition = Canonical(OperationDefinition/Appointment-find)
// * rest[=].resource[=].operation[=].documentation = "Search for appointments/time proposals using $find (IHE Scheduling flow)."

// * rest[=].resource[=].operation[+].name = "book"
// * rest[=].resource[=].operation[=].definition = Canonical(OperationDefinition/Appointment-book)
// * rest[=].resource[=].operation[=].documentation = "Book an appointment using $book (IHE Scheduling flow)."



Instance: WOFPortalCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* experimental = false
* publisher = "Service Well AB"
* name = "WOFPortalCapabilityStatement"
* title = "WOF Portal Capability Statement"
* date = "2026-02-02T12:00:00+00:00"
* description = "This CapabilityStatement defines the canonical domain model and API principles of the **WOF Portal**"
* purpose = """
This CapabilityStatement defines the canonical domain model and API principles of the **WOF Portal**,
owned and operated by Service Well.

**IHE Scheduling:** This server instantiates *IHE.Scheduling.server* (v1.0.0).

## Layering principle
- **WOF Connect** defines vendor-facing interoperability contracts.
- **WOF Portal** builds on WOF Connect to provide a single, enriched, canonical API.

## Domain separation principles
- **ActivityDefinition** represents a shared service concept and SHALL be identified by code, not by resource id.
- **HealthcareService** represents where care is performed.
- **BillingOrganization** represents financial responsibility and is independent of service location.
- **PractitionerRole** represents a practitioner acting in a specific operational and financial context.

## Many-to-many relationships are intentional
- A HealthcareService MAY be associated with multiple BillingOrganizations.
- A BillingOrganization MAY provide services at multiple HealthcareServices.
- A Practitioner MAY have multiple PractitionerRoles across services and billing contexts.

## Offer and availability principles
- **Offer** represents a computed, context-specific view combining ActivityDefinition,
  HealthcareService, and PractitionerRole.
- Offer is intended for presentation and selection, not for scheduling.
- **Schedule** represents planned working time and SHALL NOT be treated as bookable availability.
- Actual bookability requires downstream slot or availability checks.

## Integration principle
- External systems integrate with the platform by implementing **WOF Connect**.
- WOF Portal APIs MAY return enriched and aggregated views not available in WOF Connect.

This CapabilityStatement documents the canonical behavior of the WOF Portal API.

## Client interaction overview
The following diagram illustrates outbound API calls from a patient-facing client
to the WOF Portal Proxy. It represents actual usage patterns and supported interactions.


Client → WOF-PORTAL:

<style>
  .mermaid {
    min-height: 600px;
  }
</style>

```mermaid
sequenceDiagram
    participant Client as Patient Client
    participant Portal as WOF Portal Proxy
    participant Endpoint as Tenant Endpoint

    %% Organization (ServiceProvider / Care context)
    Client ->> Portal: GET portal/fhir/Organization
    Client ->> Portal: GET portal/fhir/Organization/{id}?_summary={true|false}
    Client ->> Portal: GET portal/fhir/Organization?identifier={tenantIdentifier}&_summary={true|false}

    %% Patient (endpoint-scoped)
    Client ->> Endpoint: GET {endpointId}/fhir/Patient

    %% Appointment (portal + endpoint)
    Client ->> Portal: GET portal/fhir/Appointment
    Client ->> Endpoint: GET {endpointId}/fhir/Appointment/{id}
    Client ->> Endpoint: GET {endpointId}/fhir/Appointment?actor=HealthcareService/{healthcareServiceId}

    %% IHE Scheduling
    Client ->> Endpoint: GET {endpointId}/fhir/Appointment/$find
    Client ->> Endpoint: POST {endpointId}/fhir/Appointment/$book

    %% HealthcareService (portal-scoped)
    Client ->> Portal: GET portal/fhir/HealthcareService
    Client ->> Portal: GET portal/fhir/HealthcareService/{id}

    %% Location (Areas)
    Client ->> Portal: GET portal/fhir/Location?physicalType={AreaLiteral}

    %% PractitionerRole (portal-scoped)
    Client ->> Portal: GET portal/fhir/PractitionerRole
    Client ->> Portal: GET portal/fhir/PractitionerRole?service=HealthcareService/{healthcareServiceId}
    Client ->> Portal: GET portal/fhir/PractitionerRole/{practitionerRoleId}

    %% ActivityDefinition (portal-scoped)
    Client ->> Portal: GET portal/fhir/ActivityDefinition
    Client ->> Portal: GET portal/fhir/ActivityDefinition/{id}
```

This diagram is informational and documents expected client usage.
It does not expand or modify the formal FHIR conformance rules.
"""

* kind = #capability
* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml

* instantiates[+] = "https://profiles.ihe.net/ITI/Scheduling/CapabilityStatement/IHE.Scheduling.server|1.0.0"


// Declare the core resources that define the WOF Portal domain
* rest.mode = #server

* rest.resource[+].type = #ActivityDefinition
* rest.resource[=].profile = Canonical(ActivityDefinitionPortal)
* rest.resource[=].supportedProfile[+] = Canonical(ActivityDefinitionPortal)
* rest.resource[=].documentation = "Represents shared service concepts identified by code."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = Canonical(HealthcareServicePortal)
* rest.resource[=].documentation = "Represents where healthcare services are performed."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(PractitionerRolePortal)
* rest.resource[=].documentation = "Represents practitioners acting in specific operational and financial contexts."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[+].name = "service"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter by PractitionerRole.service (Reference to HealthcareService)."


* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePatient"
* rest.resource[=].documentation = "Represents patients within the WOF Portal, conforming to the Swedish base patient profile."
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Use system fro,m se base profile Http://"


* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[+] = Canonical(ServiceProviderPortal)
* rest.resource[=].supportedProfile[+] = Canonical(BillingOrganizationPortal)
* rest.resource[=].documentation = """
Organizations in WOF Portal MAY conform to multiple profiles, representing different organizational roles.

ServiceProvider represents the top-level owning organization (tenant) within the platform.
BillingOrganization represents financial responsibility and ownership of invoicing and reporting.

Organizations are not exposed as searchable catalogs.
They are resolved using stable identifiers only:
- resource id
- organization number (identifier)

Clients MAY filter by profile when needed (e.g. using _profile),
but profile-based filtering is not required for lookup by id or identifier.
"""

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



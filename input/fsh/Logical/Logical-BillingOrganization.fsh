Logical: BillingOrganization
Id: billing-organization
Title: "BillingOrganization"
Description: """
**BillingOrganization** represents the business entity used when creating an appointment.

Different source systems may call this concept different things, such as Business Unit, Clinic, or similar, but within WOF Portal this concept is normalized as `BillingOrganization`.

It answers the question: _"Which business entity is financially and administratively responsible when an appointment is created?"_

This is a logical model and not an API resource in WOF Portal. The portal uses identifier-based traceability to billing organizations in source systems instead of exposing BillingOrganization as a standalone FHIR resource.

This logical model is referenced from `PractitionerRolePortal` using `organization.identifier` and `organization.display`.
"""

* ^status = #active

* sourceIdentifier 1..1 Identifier "Source identifier" "Identifier-based traceability key for the billing organization in the source system. The identifier.system is expected to be rooted under the WofPortalIdentifierSystemRoot namespace and may be suffixed with a WOF Portal Endpoint id to distinguish source-system namespaces per endpoint."
* display 0..1 string "Display name" "Human-readable display text for the billing organization. Mapped from source system"
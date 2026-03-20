Logical: Practitioner
Id: practitioner
Title: "Practitioner"
Description: """
**Practitioner** represents the person who performs care within an offer or appointment context.

It answers the question: _"Which individual person performs the service?"_

This is a logical model and not an API resource in WOF Portal. The portal uses identifier-based traceability to practitioners in source systems instead of exposing Practitioner as a standalone FHIR resource.

This logical model is referenced from `PractitionerRolePortal` using `practitioner.identifier` and `practitioner.display`.
"""

* ^status = #active

* sourceIdentifier 1..1 Identifier "Source identifier" "Identifier-based traceability key for the practitioner in the source system. The identifier.system is expected to be rooted under the WofPortalIdentifierSystemRoot namespace and may be suffixed with a WOF Portal Endpoint id to distinguish source-system namespaces per endpoint."
* display 0..1 string "Display name" "Human-readable display text for the practitioner. This is the value intended to be shown in identifier-based references, for example in PractitionerRole.practitioner.display."

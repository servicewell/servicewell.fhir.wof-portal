Instance: WofPortalIdentifierSystemRoot
InstanceOf: NamingSystem
Usage: #definition
* name = "WofPortalIdentifierSystemRoot"
* status = #active
* kind = #root
* description = """
Root identifier namespace for all identifier systems defined within Service Well WOF Portal.

All identifier systems under:
`https://canonical.fhir.link/servicewell/wof-portal/identifier-system`

are governed by this root.
"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system"


Instance: EndpointForPractitionerIdentifierSystem
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointForPractitionerIdentifierSystem"
* status = #active
* kind = #root
* description = """
Root identifier namespace for Practitioner source-system primary keys per endpoint.

Pattern:
`https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-for-practitioner/{endpointId}`

The `{endpointId}` part is the WOF Portal FHIR Endpoint id. If the source system needs to be identified, resolve the endpoint using:
`fhir/Endpoint/[id]`

These identifiers are used for traceability to source records that do not exist as standalone FHIR instances in WOF Portal, and are therefore referenced using identifier-based references rather than FHIR references.
"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-for-practitioner"

Instance: EndpointForBillingOrganizationIdentifierSystem
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointForBillingOrganizationIdentifierSystem"
* status = #active
* kind = #root
* description = """
Root identifier namespace for billing-organization source-system primary keys per endpoint.

Pattern:
`https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-for-billingorganization/{endpointId}`

The `{endpointId}` part is the WOF Portal FHIR Endpoint id. If the source system needs to be identified, resolve the endpoint using:
`fhir/Endpoint/[id]`

These identifiers are used for traceability to source records that do not exist as standalone FHIR instances in WOF Portal, and are therefore referenced using identifier-based references rather than FHIR references.
"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-for-billingorganization"


Instance: EndpointForAppointmentIdentifierSystem
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointForAppointmentIdentifierSystem"
* status = #active
* kind = #root
* description = """
Root identifier namespace for Appointment source-system primary keys per endpoint.

Pattern:
`https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-for-appointment/{endpointId}`

The `{endpointId}` part is the WOF Portal FHIR Endpoint id. If the source system needs to be identified, resolve the endpoint using:
`fhir/Endpoint/[id]`

That lookup can reveal the originating source system, for example OpusDental, Frenda, Muntra, or other connected backend systems.

These identifiers are used for traceability to source records that do not exist as standalone FHIR instances in WOF Portal, and are therefore referenced using identifier-based references rather than FHIR references.
"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-for-appointment"

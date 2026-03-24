Instance: WofPortalIdentifierSystemRoot
InstanceOf: NamingSystem
Usage: #definition
* name = "WofPortalIdentifierSystemRoot"
* status = #active
* kind = #root
* date = "2026-03-19"
* description = "Root identifier namespace for all identifier systems defined within Service Well WOF Portal."
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system"


Instance: EndpointIdentifierSystemForPractitioner
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointIdentifierSystemForPractitioner"
* status = #active
* kind = #root
* date = "2026-03-19"
* description = """Root identifier namespace for Practitioner source-system primary keys per endpoint.  
Pattern: `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/{endpointId}`"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner"

Instance: EndpointIdentifierSystemForBillingOrganization
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointIdentifierSystemForBillingOrganization"
* status = #active
* kind = #root
* date = "2026-03-19"
* description = """Root identifier namespace for billing-organization source-system primary keys per endpoint.  
Pattern: `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/{endpointId}`"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization"


Instance: EndpointIdentifierSystemForAppointment
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointIdentifierSystemForAppointment"
* status = #active
* kind = #root
* date = "2026-03-19"
* description = """Root identifier namespace for Appointment source-system primary keys per endpoint.  
Pattern: `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/{endpointId}`"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment"


Instance: EndpointIdentifierSystemForPatient
InstanceOf: NamingSystem
Usage: #definition
* name = "EndpointIdentifierSystemForPatient"
* status = #active
* kind = #root
* date = "2026-03-19"
* description = """Root identifier namespace for Patient source-system primary keys per endpoint.  
Pattern: `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-patient/{endpointId}`"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-patient"



Instance: PersonalNumberIdentifierSystemForPatient
InstanceOf: NamingSystem
Usage: #definition
* name = "PersonalNumberIdentifierSystemForPatient"
* status = #active
* kind = #root
* date = "2026-03-19"
* description = """Root identifier namespace for Patient source-system primary keys per endpoint.  
Pattern: `https://canonical.fhir.link/servicewell/wof-portal/identifier-system/personal-number-identifier-system-for-patient/{pnrId}`"""
* uniqueId[0].type = #uri
* uniqueId[0].preferred = true
* uniqueId[0].value = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/personal-number-identifier-system-for-patient"

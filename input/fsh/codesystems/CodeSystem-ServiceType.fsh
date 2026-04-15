CodeSystem: CSServiceType
Id: cs-service-type
Title: "WOF Connect Service Types"
Description: "Service types used across PMS adapters."
* ^status = #active
* ^content = #fragment
* ^experimental = false
* ^valueSet = Canonical(VsServiceType)
* ^url = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/cs-service-type"

* #akut "Akut"
* #undersokning "Undersökning"
// TODO: Define which codes that should be added...

ValueSet: VsServiceType
Id: vs-service-type
Title: "WOF Connect Service Types"
Description: "Full ValueSet for WOF Connect service types used across PMS adapters."
* ^status = #active
* ^experimental = false
* ^url = "http://canonical.fhir.link/servicewell/wof-base/ValueSet/vs-service-type"

* include codes from system CSServiceType
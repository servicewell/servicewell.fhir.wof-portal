CodeSystem: WofPersonalNumberSystemCS
Id: wof-personal-number-system
Title: "WOF Personal Number Identifier Systems"
Description: "Allowed identifier.system values for national personal numbers used in WOF Connect."
* ^status = #active
* ^content = #fragment
* ^valueSet = Canonical(http://canonical.fhir.link/servicewell/wof-base/ValueSet/wof-personal-number-system-vs)
* ^url = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/wof-personal-number-system"

* #urn:oid:2.16.578.1.12.4.1.4.1 "Norwegian National Identity Number (assigned to residents registered in the National Population Register)"
* #urn:oid:2.16.578.1.12.4.1.4.2 "Norwegian Temporary Identity Number (D-number)"
* #urn:oid:2.16.578.1.12.4.1.4.3 "Norwegian Healthcare Identity Number (H-number)"
* #urn:oid:2.16.578.1.12.4.1.4.4 "Norwegian Temporary Healthcare Identifier (FH-number)"
* #urn:oid:2.16.578.1.12.4.1.4.5 "Norwegian Immigration Case Identifier (DUF-number)"
* #urn:oid:1.2.752.129.2.1.3.1 "Swedish Personal Identity Number"
* #urn:oid:1.2.752.129.2.1.3.3 "Swedish Coordination Number"
* #http://electronichealth.se/identifier/personnummer "Swedish national personal number identifier (HTTP URI)"


ValueSet: WofPersonalNumberSystemVS
Id: wof-personal-number-system-vs
Title: "Allowed Personal Number Identifier Systems"
Description: "ValueSet containing allowed identifier.system values for national personal numbers."
* ^status = #active
* ^url = "http://canonical.fhir.link/servicewell/wof-base/ValueSet/wof-personal-number-system-vs"

* include codes from system WofPersonalNumberSystemCS



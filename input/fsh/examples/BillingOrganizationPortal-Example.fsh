Instance: BillingOrganizationPortalExample
InstanceOf: BillingOrganizationPortal
Usage: #example
Title: "Example BillingOrganizationPortal"
Description: "Example BillingOrganizationPortal resource representing a financially responsible organization."

* id = "billing-org-1"
* meta.profile[+] = Canonical(BillingOrganizationPortal)
* name = "Tandvård AB"
* active = true
* identifier[+].system = "urn:oid:2.5.4.97"
* identifier[=].value = "556677-8899"
* telecom[+].system = #phone
* telecom[=].value = "+46812345678"

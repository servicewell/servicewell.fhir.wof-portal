Profile: BillingOrganizationPortal
Parent: Parameters
Id: billing-organization-portal
Title: "BillingOrganizationPortal"
Description: "BillingOrganization represents the entity that is financially responsible for healthcare services."
* ^purpose = """
**BillingOrganization** represents the entity that is financially responsible for healthcare services.

It answers the question: _“Who owns invoicing, customer accounts, and statutory reporting for a performed service?”_
"""

//* ^status = #active
//* id 0..1
//* meta 0..1
//* meta.profile 0..*
//* name 0..1
//* active 0..1
//* identifier 0..*
//* identifier.system 0..1
//* identifier.value 0..1
//* telecom 0..1
//* telecom.system 0..1
//* telecom.value 0..1
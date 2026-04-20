After sign-in you must determine *which patient* the access token applies to.

This is typically done in one of two ways (follow the WOF setup you are given):

##### Option A: Patient identifier is included in token claims

You extract the patient identifier from a token claim such as:

* `patient_id` (example), or
* `sub` (if mapped to the patient identity), or
* another agreed claim

##### Option B: Retrieve the patient identifier via a “me” endpoint

You call a dedicated endpoint using the access token to obtain the linked `Patient/{id}`.
Instance: HealthcareServiceLocationExample
InstanceOf: HealthcareServiceLocation
Usage: #example
Title: "Example HealthcareServiceLocation"
Description: "Example contained location payload for a HealthcareServicePortal resource."

* id = "healthcare-service-location-1"
* meta.profile[+] = Canonical(HealthcareServiceLocation)
* address.use = #work
* address.text = "Slottskajen 38"
* address.city = "Stockholm"
* physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* physicalType.text = "Site"
* position.longitude = 18.068457
* position.latitude = 59.327026
* partOf = Reference(Location/LocationAreaExample)

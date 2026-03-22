Profile: OfferPortal
Parent: Parameters
Id: offer-portal
Title: "OfferPortal"
Description: """
**OfferPortal** represents a bookable offering in a specific context.

It answers the question: _“Which service can be booked, by whom, and where — and what are the booking-facing settings in that context?”_

"""
* obeys offer-portal-offline-reason
// -------------------- SLICE: parameter by name --------------------
* parameter ^slicing.discriminator[0].type = #value
* parameter ^slicing.discriminator[0].path = "name"
* parameter ^slicing.rules = #open

* parameter contains offering 1..1

* parameter[offering].name = "offering" (exactly)

// -------------------- SLICE: offering.part by name --------------------
* parameter[offering].part ^slicing.discriminator[0].type = #value
* parameter[offering].part ^slicing.discriminator[0].path = "name"
* parameter[offering].part ^slicing.rules = #open

* parameter[offering].part contains
    activityDefinition 1..1 and
    healthcareService 1..1 and
    practitionerRole 1..1 and
    duration 0..1 and
    price 0..1 and
    bookingUrl 0..1 and
    isOnline 1..1 and
    offlineReason 0..1

// ---- activityDefinition ----
* parameter[offering].part[activityDefinition].name = "activityDefinition" (exactly)
* parameter[offering].part[activityDefinition].value[x] only Reference(ActivityDefinitionPortal)

// ---- healthcareService ----
* parameter[offering].part[healthcareService].name = "healthcareService" (exactly)
* parameter[offering].part[healthcareService].value[x] only Reference(HealthcareServicePortal)

// ---- practitionerRole ----
* parameter[offering].part[practitionerRole].name = "practitionerRole" (exactly)
* parameter[offering].part[practitionerRole].value[x] only Reference(PractitionerRolePortal)

// ---- duration (free-text) ----
* parameter[offering].part[duration].name = "duration" (exactly)
* parameter[offering].part[duration].value[x] only string

// ---- price (free-text) ----
* parameter[offering].part[price].name = "price" (exactly)
* parameter[offering].part[price].value[x] only string

// ---- bookingUrl ----
* parameter[offering].part[bookingUrl].name = "bookingUrl" (exactly)
* parameter[offering].part[bookingUrl].value[x] only url

//------ endpoint status -----
* parameter[offering].part[isOnline].name = "isOnline" (exactly)
* parameter[offering].part[isOnline].value[x] only boolean

//------ offline status reason -----
* parameter[offering].part[offlineReason].name = "offlineReason" (exactly)
* parameter[offering].part[offlineReason].value[x] only string

// -------------------- INVARIANTS --------------------
Invariant: offer-portal-offline-reason
Description: "If isOnline is false, offlineReason must have a value."
Severity: #error
Expression: "parameter.where(name='offering').all(part.where(name='isOnline').value.ofType(boolean) = false implies (part.where(name='offlineReason').exists() and part.where(name='offlineReason').value.exists()))"
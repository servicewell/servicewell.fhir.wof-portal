// ===== Parent container extension =====
Extension: WofBaseCharacteristic
Id: wof-base-appointment-characteristic
Title: "Service Characteristics"
Description: """Composite extension structuring key characteristics for HealthcareService and Appointment.
 Contains three main areas: 
 - 'scheduling' (booking rules and availability), 
 - 'workflow' (API and resource functionality),  
 - 'security' (security requirements, e.g., login). 
 
 Enables standardized and machine-readable communication of clinic booking policies, API capabilities, and security level."""
* ^status = #active
* ^url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"

// Var extensionen får sitta
* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"
* ^context[1].type = #element
* ^context[1].expression = "Appointment"

* value[x] 0..0
* extension 1..*

// Top-level slices (tre stycken)
* extension contains
    scheduling 0..1 and
    workflow 0..1 and
    security 0..1 

* extension[scheduling] ^short = "Scheduling capability container"
* extension[scheduling] ^definition = "Container for scheduling rules and booking availability capabilities."

* extension[scheduling].extension 0..*

* extension[scheduling].extension contains
    childPatientThreshold  0..1 and
    minChangeHours 0..1 and
    webReschedulingCountAllowed 0..1 and
    schedulingAvailability 0..1 and 
    bookingConfirmation 0..1

// childPatientThreshold
* extension[scheduling].extension[childPatientThreshold].value[x] only integer
* extension[scheduling].extension[childPatientThreshold].valueInteger 0..1
* extension[scheduling].extension[childPatientThreshold].valueInteger ^short = "Upper age limit (in years) for booking as a child patient."
* extension[scheduling].extension[childPatientThreshold].valueInteger ^minValueInteger = 0
* extension[scheduling].extension[childPatientThreshold].valueInteger ^maxValueInteger = 100

// minChangeHours
* extension[scheduling].extension[minChangeHours].value[x] only integer
* extension[scheduling].extension[minChangeHours].valueInteger 0..1
* extension[scheduling].extension[minChangeHours].valueInteger ^short = "Number of hours before appointment start after which changes are no longer allowed."

// webReschedulingCountAllowed
* extension[scheduling].extension[webReschedulingCountAllowed].value[x] only integer
* extension[scheduling].extension[webReschedulingCountAllowed].valueInteger 0..1
* extension[scheduling].extension[webReschedulingCountAllowed].valueInteger ^short = "Number of allowed reschedulings for this appointment."

// schedulingAvailability as CodeableConcept (e.g. isCancellationAvailable and isCancellationAvailable)
* extension[scheduling].extension[schedulingAvailability].value[x] only CodeableConcept
* extension[scheduling].extension[schedulingAvailability].valueCodeableConcept 1..1
* extension[scheduling].extension[schedulingAvailability].valueCodeableConcept ^short = "Clinic-level scheduling capabilities, such as cancellation and rescheduling availability."
* extension[scheduling].extension[schedulingAvailability].valueCodeableConcept.coding.system 1..1
* extension[scheduling].extension[schedulingAvailability].valueCodeableConcept.coding.system = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/wc-characteristic" (exactly)
* extension[scheduling].extension[schedulingAvailability].valueCodeableConcept.coding.code 1..1
* extension[scheduling].extension[schedulingAvailability].valueCodeableConcept.coding.code from VsWCCharacteristicSchedule (required)

* extension[scheduling].extension[bookingConfirmation].value[x] only Coding
* extension[scheduling].extension[bookingConfirmation].valueCoding ^short = "Booking confirmation method"
* extension[scheduling].extension[bookingConfirmation].valueCoding ^definition = "Specifies how booking confirmations are delivered, for example by SMS or email."
* extension[scheduling].extension[bookingConfirmation].valueCoding.system 1..1
* extension[scheduling].extension[bookingConfirmation].valueCoding.system = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/wc-characteristic" (exactly)
* extension[scheduling].extension[bookingConfirmation].valueCoding.code from VsWCCharacteristicBookingConfirmation (required)


// ----- Workflow -----
* extension[workflow] ^short = "Workflow capability container"
* extension[workflow] ^definition = "Container for capabilities related to booking workflow and source-system entity support."
* extension[workflow].extension 0..*

// Tre underslices i API
* extension[workflow].extension contains
    deviceBookingAvailable 0..1 and
    healthcareServiceAvailable 0..1 

// Exempel-typer i API
* extension[workflow].extension[deviceBookingAvailable].value[x] only boolean
* extension[workflow].extension[deviceBookingAvailable].valueBoolean 1..1
* extension[workflow].extension[deviceBookingAvailable].valueBoolean ^short = "Indicates that devices (e.g., dental chairs) are directly bookable resources."
* extension[workflow].extension[deviceBookingAvailable].valueBoolean ^definition = "When set to true, this flag indicates that individual devices — such as dental chairs — can be booked directly. The scheduling service SHALL expose available devices in `Schedule` resources and include device references in corresponding `Slot` resources. When creating an appointment, the booking system SHALL allow specifying the device as a participant in the `Appointment` resource."
* extension[workflow].extension[deviceBookingAvailable] ^comment = "This element enables device-level scheduling (e.g., dental chairs). See obligations for actor ServerWithDeviceBooking"

* extension[workflow].extension[healthcareServiceAvailable].value[x] only boolean
* extension[workflow].extension[healthcareServiceAvailable].valueBoolean 1..1
* extension[workflow].extension[healthcareServiceAvailable].valueBoolean ^short =  "Indicates whether the source PMS provides first-class HealthcareService entities with booking rules."
* extension[workflow].extension[healthcareServiceAvailable] ^comment = "Typical PMS behavior: when available, online booking policies (eligibility, time windows, service types) are configured in the PMS and should be reflected in the mapped HealthcareService. When not available, the integration owns HealthcareService creation and policy enforcement."


// ----- Security (container) -----
* extension[security] ^short = "Security capability container"
* extension[security] ^definition = "Container for security and authentication-related requirements."
* extension[security].extension 0..*

// Tre underslices i Security
* extension[security].extension contains
    requiresNativeIdPLogin  0..1 

// Exempel-typer i Security
* extension[security].extension[requiresNativeIdPLogin].value[x] only boolean
* extension[security].extension[requiresNativeIdPLogin].valueBoolean  0..1
* extension[security].extension[requiresNativeIdPLogin].valueBoolean  ^short = "Identity provider used for patient login (e.g., BankID)."
* extension[security].extension[requiresNativeIdPLogin].valueBoolean  ^definition = "Indicates whether login is expected to use a native external identity provider flow, such as BankID."

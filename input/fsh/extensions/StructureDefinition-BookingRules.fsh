Extension: BookingRules
Id: ext-booking-rules
Title: "Booking Rules"
Description: """
Container extension for booking rules that govern cancellation, rescheduling, age limits, and minimum advance booking time.

This extension is designed to be reusable across multiple WOF Portal resources, including healthcare services and organization-level configurations such as service providers.
"""

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"
* ^context[1].type = #element
* ^context[1].expression = "Organization"

* extension contains
    allowCancellationAfterRegistrationHours 0..1 and
    allowCancellationRemainingHours 0..1 and
    allowRescheduleAfterRegistrationHours 0..1 and
    allowRescheduleRemainingHours 0..1 and
    cancellationAllowed 0..1 and
    reschedulingAllowed 0..1 and
    minimumPatientAgeYears 0..1 and
    minimumAdvanceBookingMinutes 0..1

* extension[allowCancellationAfterRegistrationHours] ^short = "Hours after registration when cancellation remains allowed"
* extension[allowCancellationAfterRegistrationHours] ^definition = "Maximum number of hours after registration during which cancellation is allowed."
* extension[allowCancellationAfterRegistrationHours].value[x] only integer

* extension[allowCancellationRemainingHours] ^short = "Remaining hours before start when cancellation is allowed"
* extension[allowCancellationRemainingHours] ^definition = "Minimum remaining hours before the scheduled event when cancellation is still allowed."
* extension[allowCancellationRemainingHours].value[x] only integer

* extension[allowRescheduleAfterRegistrationHours] ^short = "Hours after registration when rescheduling remains allowed"
* extension[allowRescheduleAfterRegistrationHours] ^definition = "Maximum number of hours after registration during which rescheduling is allowed."
* extension[allowRescheduleAfterRegistrationHours].value[x] only integer

* extension[allowRescheduleRemainingHours] ^short = "Remaining hours before start when rescheduling is allowed"
* extension[allowRescheduleRemainingHours] ^definition = "Minimum remaining hours before the scheduled event when rescheduling is still allowed."
* extension[allowRescheduleRemainingHours].value[x] only integer

* extension[cancellationAllowed] ^short = "Whether cancellation is allowed"
* extension[cancellationAllowed] ^definition = "Indicates whether cancellation is allowed at all."
* extension[cancellationAllowed].value[x] only boolean

* extension[reschedulingAllowed] ^short = "Whether rescheduling is allowed"
* extension[reschedulingAllowed] ^definition = "Indicates whether rescheduling is allowed at all."
* extension[reschedulingAllowed].value[x] only boolean

* extension[minimumPatientAgeYears] ^short = "Minimum patient age in years"
* extension[minimumPatientAgeYears] ^definition = "Minimum patient age in whole years required to book the service."
* extension[minimumPatientAgeYears].value[x] only positiveInt

* extension[minimumAdvanceBookingMinutes] ^short = "Minimum advance booking time in minutes"
* extension[minimumAdvanceBookingMinutes] ^definition = "Minimum number of minutes in advance that a booking must be made."
* extension[minimumAdvanceBookingMinutes].value[x] only integer

* value[x] 0..0

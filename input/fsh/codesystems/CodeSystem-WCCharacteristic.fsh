CodeSystem: WCCharacteristic
Id: wc-characteristic
Title: "WOF-Base Characteristic"
Description: "WOF-Base CodeSystem for Characteristic for the source PMS system - used in WOF-Base HealthcareService.characteristic"
* ^url = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/wc-characteristic"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^hierarchyMeaning = #grouped-by

* #scheduling-accepts "Grouping Scheduling Accepts Codes"
  * #scheduling-accepts-cancellation "Scheduling Accepts Cancellation" "Indicates that the service accepts cancellations via booking API."
  * #scheduling-accepts-new "Scheduling Accepts New" "Indicates that the service accepts new bookings via booking API."
  * #scheduling-accepts-reschedule "Scheduling Accepts Reschedule" "Indicates that the service accepts rescheduling via booking API."

* #sms-confirmation "Grouping SMS Confirmation Codes"
  * #send-confirmation-by-sms "Send booking confirmation by SMS" "Indicates that the patient wants a booking confirmations by SMS."
  * #no-confirmation-by-sms "No SMS confirmation" "Indicates that the patient does not want a booking confirmations by SMS."


ValueSet: VsWCCharacteristicSchedule
Id:  wc-characteristic-schedule 
Title: "WOF-Base ScheduleCharacteristic"
Description: "WOF-Base ValueSet for schedule Characteristic for the source PMS system - used in WOF-Base HealthcareService.characteristic"
* ^status = #active
* ^experimental = false
* ^url  = "http://canonical.fhir.link/servicewell/wof-base/ValueSet/wc-characteristic-schedule"

* WCCharacteristic#scheduling-accepts-cancellation
* WCCharacteristic#scheduling-accepts-new
* WCCharacteristic#scheduling-accepts-reschedule

ValueSet: VsWCCharacteristicSms
Id:  wc-characteristic-sms
Title: "WOF-Base SMS Characteristic"
Description: "WOF-Base ValueSet for SMS Characteristic for the source PMS system - used in WOF-Base HealthcareService.characteristic"
* ^status = #active
* ^experimental = false
* ^url = "http://canonical.fhir.link/servicewell/wof-base/ValueSet/wc-characteristic-sms"

* WCCharacteristic#send-confirmation-by-sms
* WCCharacteristic#no-confirmation-by-sms
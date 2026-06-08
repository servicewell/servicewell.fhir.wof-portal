
**Documentation update 2026-05-27**

- Created `bannerImageExtension` and added a sliced identifier for `ServiceProvider`.
- Added `HS.meta.versionId`.
- Added `meta.versionId` to additional profiles.
- Updated the documentation for patient authentication.
- Updated `operationBook` based on the API's current response, added matching examples, and updated the documentation.
- Updated the patient profile to require name and mobile number.
- Relaxed extension requirements for `Organization` and switched to the correct profile in the example.
- Updated publication files.
- updated `ActivityDefinitionGetOffersContextWInclude` example instance
- Clarified Norwegian domain details in the documentation.
- Added a value set for the different appointment profiles that can have two statuses in the workflow.  
      - findAppointment.status has values from `AvailableAppointmentStatuses`  
      - bookedAppointment.status has values from `BookedAppointmentStatuses`
- Created extensions `[UrlPlaceholder](/StructureDefinition-urlPlaceholder.html)` and `[HasExternalBooking](/StructureDefinition-hasExternalBooking.html)` that applies on a healthcareService.extension[ClinicInfo]  
  - extension is used to determin if the healthcareService is bookable through the API or if its handled externaly.
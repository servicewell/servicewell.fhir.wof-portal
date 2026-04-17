Extension: OrganizationSettings
Id: organization-settings
Title: "Organization Settings"
Description: """
Container extension for organization-level portal settings configured in backoffice.

These settings control what portal information and UI elements should be shown for resources owned by the organization, such as healthcare services presented in the portal.
"""

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Organization"

* extension contains
    showPricesForTreatments 0..1 MS and
    showPricesAtBookingConfirmation 0..1 MS and
    showPractitionerAvatar 0..1 MS and
    showClinicImage 0..1 MS and
    showClinicSearchField 0..1 MS and
    showClinicMapInMyPage 0..1 MS and
    bannerTextPosition 0..1 MS and
    bannerText 0..1 MS and
    topBannerText 0..1 MS and
    topBannerSubText 0..1 MS and
    aboveFormReminder 0..1 MS

        

* extension[showPricesForTreatments] ^short = "Whether treatment prices are shown in the portal"
* extension[showPricesForTreatments] ^definition = "Indicates whether treatment prices should be displayed to end users in the portal."
* extension[showPricesForTreatments].value[x] only code
* extension[showPricesForTreatments].valueCode 1..1 MS
* extension[showPricesForTreatments].valueCode from VsPortalOrganizationSettingsPriceRule (required)

* extension[showPricesAtBookingConfirmation] ^short = "Whether prices are shown on booking confirmation"
* extension[showPricesAtBookingConfirmation] ^definition = "Indicates whether the booking confirmation view should display the price for the booked treatment or service."
* extension[showPricesAtBookingConfirmation].value[x] only code
* extension[showPricesAtBookingConfirmation].valueCode 1..1 MS
* extension[showPricesAtBookingConfirmation].valueCode from VsPortalOrganizationSettingsPriceRule (required)

* extension[showPractitionerAvatar] ^short = "Whether practitioner avatars are shown"
* extension[showPractitionerAvatar] ^definition = "Indicates whether practitioner profile images or avatars should be shown in portal views."
* extension[showPractitionerAvatar].value[x] only code
* extension[showPractitionerAvatar].valueCode 1..1 MS
* extension[showPractitionerAvatar].valueCode from VsPortalOrganizationSettingsPractitionerAvatarRule (required)

* extension[showClinicImage] ^short = "Whether clinic images are shown"
* extension[showClinicImage] ^definition = "Indicates whether clinic or unit images should be shown in the portal."
* extension[showClinicImage].value[x] only code
* extension[showClinicImage].valueCode 1..1 MS
* extension[showClinicImage].valueCode from VsPortalOrganizationSettingsClinicImageRule (required)

* extension[showClinicSearchField] ^short = "Whether clinic search is available"
* extension[showClinicSearchField] ^definition = "Indicates whether the portal should expose a search field for finding clinics or units."
* extension[showClinicSearchField].value[x] only boolean
* extension[showClinicSearchField].valueBoolean 1..1 MS

* extension[showClinicMapInMyPage] ^short = "Whether the clinic map is shown on My Page"
* extension[showClinicMapInMyPage] ^definition = "Indicates whether a clinic map should be displayed on the user's My Page view."
* extension[showClinicMapInMyPage].value[x] only boolean
* extension[showClinicMapInMyPage].valueBoolean 1..1 MS

* extension[bannerTextPosition] ^short = "Banner text position"
* extension[bannerTextPosition] ^definition = "Specifies the preferred position of banner text within the portal banner or hero area."
* extension[bannerTextPosition].value[x] only code
* extension[bannerTextPosition].valueCode 1..1 MS
* extension[bannerTextPosition].valueCode from VsPortalOrganizationSettingsBannerTextPosition (required)

* extension[bannerText] ^short = "Banner text"
* extension[bannerText] ^definition = "Main text displayed in the portal banner area."
* extension[bannerText].value[x] only string
* extension[bannerText].valueString 1..1 MS

* extension[topBannerText] ^short = "Top banner text"
* extension[topBannerText] ^definition = "Primary text displayed in the top banner section of the portal."
* extension[topBannerText].value[x] only string
* extension[topBannerText].valueString 1..1 MS

* extension[topBannerSubText] ^short = "Top banner sub text"
* extension[topBannerSubText] ^definition = "Secondary or supporting text displayed beneath the top banner text."
* extension[topBannerSubText].value[x] only string
* extension[topBannerSubText].valueString 1..1 MS

* extension[aboveFormReminder] ^short = "Reminder text above booking form"
* extension[aboveFormReminder] ^definition = "Text shown above the booking form to remind or inform the patient before completing their booking."
* extension[aboveFormReminder].value[x] only string
* extension[aboveFormReminder].valueString 1..1 MS


* value[x] 0..0
CodeSystem: PortalOrganizationSettings
Id: portal-organization-settings
Title: "Portal Organization Settings"
Description: "Code system for organization-level portal display settings and grouped rule options."

* ^status = #active
* ^content = #complete
* ^experimental = false
* ^hierarchyMeaning = #grouped-by

* #banner-text-position "Banner Text Position"
  * #top-left
  * #top-right
  * #bottom-left
  * #bottom-right

* #show-clinic-image-rule
  * #show-clinic-image
  * #show-clinic-map
  * #dont-show-image

* #show-practitioner-avatar-rule
  * #show-practitioner-avatar
  * #dont-show-practitioner-avatar

* #show-price-rule
  * #always-show-price
  * #never-show-price


ValueSet: VsPortalOrganizationSettingsBannerTextPosition
Id: vs-portal-organization-settings-banner-text-position
Title: "Portal Banner Text Positions"
Description: "Allowed banner text position values for organization portal settings."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept is-a #banner-text-position

ValueSet: VsPortalOrganizationSettingsClinicImageRule
Id: vs-portal-organization-settings-clinic-image-rule
Title: "Portal Clinic Image Rules"
Description: "Allowed clinic image display rules for organization portal settings."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept is-a #show-clinic-image-rule

ValueSet: VsPortalOrganizationSettingsPractitionerAvatarRule
Id: vs-portal-organization-settings-practitioner-avatar-rule
Title: "Portal Practitioner Avatar Rules"
Description: "Allowed practitioner avatar display rules for organization portal settings."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept is-a #show-practitioner-avatar-rule

ValueSet: VsPortalOrganizationSettingsPriceRule
Id: vs-portal-organization-settings-price-rule
Title: "Portal Price Display Rules"
Description: "Allowed price display rules for organization portal settings."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept is-a #show-price-rule
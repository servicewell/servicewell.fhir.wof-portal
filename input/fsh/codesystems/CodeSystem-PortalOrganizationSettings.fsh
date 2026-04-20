CodeSystem: PortalOrganizationSettings
Id: portal-organization-settings
Title: "Organizational Settings"
Description: "Code system for organization-level display settings and grouped rule options."

* ^status = #active
* ^content = #complete
* ^experimental = false
* ^hierarchyMeaning = #grouped-by

* #banner-text-position "Banner Text Position" "Only for grouping codes. Not intended to be selectable."
  * #top-left "Top Left" "Display banner text in the top-left position of the banner."
  * #top-right "Top Right" "Display banner text in the top-right position of the banner."
  * #bottom-left "Bottom Left" "Display banner text in the bottom-left position of the banner."
  * #bottom-right "Bottom Right" "Display banner text in the bottom-right position of the banner."

* #show-clinic-image-rule "Clinic Image Rule" "Only for grouping codes. Not intended to be selectable."
  * #show-clinic-image "Show Clinic Image" "Display the clinic image in the view."
  * #show-clinic-map "Show Clinic Map" "Display an interactive map of the clinic's position instead of a clinic image."
  * #dont-show-image "Do Not Show Image" "Do not display either a clinic image or a map of the clinic's position."

* #show-practitioner-avatar-rule "Practitioner Avatar Rule" "Only for grouping codes. Not intended to be selectable."
  * #show-practitioner-avatar "Show Practitioner Avatar" "Display the practitioner's avatar in the view."
  * #dont-show-practitioner-avatar "Do Not Show Practitioner Avatar" "Do not display the practitioner's avatar in the view."

* #show-price-rule "Price Display Rule" "Only for grouping codes. Not intended to be selectable."
  * #always-show-price "Always Show Price" "Always display price information in the view."
  * #never-show-price "Never Show Price" "Never display price information in the view."


ValueSet: VsPortalOrganizationSettingsBannerTextPosition
Id: vs-portal-organization-settings-banner-text-position
Title: "Organizational Banner Text Positions"
Description: "Organizational settings for banner text positions."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept descendent-of #banner-text-position

ValueSet: VsPortalOrganizationSettingsClinicImageRule
Id: vs-portal-organization-settings-clinic-image-rule
Title: "Organizational Clinic Image Rules"
Description: "Organizational settings for clinic image display rules."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept descendent-of #show-clinic-image-rule

ValueSet: VsPortalOrganizationSettingsPractitionerAvatarRule
Id: vs-portal-organization-settings-practitioner-avatar-rule
Title: "Organizational Practitioner Avatar Rules"
Description: "Organizational settings for practitioner avatar display rules."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept descendent-of #show-practitioner-avatar-rule

ValueSet: VsPortalOrganizationSettingsPriceRule
Id: vs-portal-organization-settings-price-rule
Title: "Organizational Price Display Rules"
Description: "Organizational settings for price display rules."
* ^status = #active
* ^experimental = false

* include codes from system PortalOrganizationSettings where concept descendent-of #show-price-rule
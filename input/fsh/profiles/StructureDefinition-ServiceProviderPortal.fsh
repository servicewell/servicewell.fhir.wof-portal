Profile: ServiceProviderPortal
Parent: Organization
Id: service-provider-portal
Title: "ServiceProviderPortal"
Description: """
**ServiceProvider** represents the top-level owning organization within the platform.

It answers the question: *“Which organization owns the configuration, endpoints, and service structure for a customer?”*

A ServiceProvider:
- Represents the highest-level customer context (tenant) in the platform
- Owns all **HealthcareService** resources within its scope
- Owns all technical endpoints exposed for the customer
- Owns all **PractitionerRole** resources associated with its services
- Owns top-level configuration and settings for the customer

A ServiceProvider is modeled as an **Organization** but is intentionally separated
from clinical and financial roles such as HealthcareService and BillingOrganization.
"""

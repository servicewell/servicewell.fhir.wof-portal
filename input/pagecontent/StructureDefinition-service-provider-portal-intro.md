A ServiceProvider:
- Represents the highest-level customer context (tenant) in the platform
- Owns all **HealthcareService** resources within its scope
- Owns all technical endpoints exposed for the customer
- Owns all **PractitionerRole** resources associated with its services
- Owns top-level configuration and settings for the customer

A ServiceProvider is modeled as an **Organization** but is intentionally separated
from clinical and financial roles such as HealthcareService and BillingOrganization.
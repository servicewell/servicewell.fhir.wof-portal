Invariant: xHs-tele-url
Description: "IF clinic is externally booked via another online service, and telecom.value is a URL, telecom.system must be 'url'."
Severity: #error
Expression: "(value.exists() and value.matches('^(http|https)://.*$')) implies system = 'url'"

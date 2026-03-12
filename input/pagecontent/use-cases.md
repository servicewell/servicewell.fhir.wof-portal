# Use Cases

This page presents end-to-end scenarios that illustrate how the WOF Portal API is used in practice. Each use case describes the business context, the API interactions involved, and the expected outcomes.

> Use cases will be added as integration patterns are identified and validated. The sections below serve as a template.

---

### Use Case 1 — *Title*

**Scenario:** *Describe the business scenario and the actors involved.*

**Pre-conditions:**

* The calling system has a valid access token with the required scopes.
* *Additional pre-conditions.*

**Steps:**

1. *Step 1 — e.g., search for an existing resource.*
2. *Step 2 — e.g., create or update a resource.*
3. *Step 3 — e.g., verify the result.*

**Expected outcome:** *Describe the expected result.*

**API calls:**

```http
GET /fhir/ResourceType?param=value
Authorization: Bearer <token>
```

---

### Use Case 2 — *Title*

*To be defined.*

---

### Adding new use cases

When documenting a new use case, follow the template above and include:

1. A clear **scenario** description.
2. All **pre-conditions** (authentication, data state).
3. A numbered list of **steps** with the corresponding HTTP requests.
4. The **expected outcome** including relevant status codes and response content.

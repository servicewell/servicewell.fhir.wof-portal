# API Reference

This page documents the HTTP interface exposed by the WOF Portal FHIR API — methods, parameters, request bodies, responses, and data models.

### HTTP methods

The API follows standard FHIR RESTful interactions:

| Method | FHIR Interaction | Description |
|---|---|---|
| `GET` | `read` / `search` | Retrieve one or more resources |
| `POST` | `create` / `search` (via `_search`) | Create a resource or perform a search with a request body |
| `PUT` | `update` | Replace an existing resource (full update) |
| `PATCH` | `patch` | Apply a partial update (JSON Patch) |
| `DELETE` | `delete` | Remove a resource |

### Parameters

#### Path parameters

| Parameter | Description | Example |
|---|---|---|
| `{resourceType}` | The FHIR resource type | `Patient`, `Observation` |
| `{id}` | The logical id of the resource | `abc-123` |

#### Query / search parameters

Search parameters follow the [FHIR search specification](https://www.hl7.org/fhir/search.html). Common parameters include:

| Parameter | Type | Description |
|---|---|---|
| `_id` | token | Logical id of the resource |
| `_lastUpdated` | date | Filter by last modification date |
| `_count` | number | Maximum number of results per page |
| `_include` | string | Include referenced resources in the response |
| `_sort` | string | Sort results by a given parameter |

Resource-specific search parameters are documented alongside each resource profile in the **Artifacts** section of this guide.

### Request body

For `POST` and `PUT` requests, the body **must** be a valid FHIR resource in JSON format:

```json
{
  "resourceType": "Patient",
  "identifier": [
    {
      "system": "https://servicewell.se/identifiers/patient",
      "value": "12345"
    }
  ],
  "name": [
    {
      "family": "Svensson",
      "given": ["Anna"]
    }
  ]
}
```

> **Content-Type:** Always set `Content-Type: application/fhir+json`.

### Response

Successful responses return the resource (or a `Bundle` for searches) with an appropriate HTTP status code:

| Status | Meaning |
|---|---|
| `200 OK` | Successful read / search / update |
| `201 Created` | Resource created successfully |
| `204 No Content` | Successful delete |
| `304 Not Modified` | Conditional read — resource unchanged |

Error responses return an `OperationOutcome` resource describing the issue. See [Cross-cutting Concerns — Error handling](cross-cutting-concerns.html#error-handling) for details.

### Resources

The following FHIR resource types are supported by the WOF Portal API. Detailed profiles and examples are published in the **Artifacts** section.

| Resource | Description |
|---|---|
| *To be defined* | Resource profiles will be added as the IG matures |

> As resource profiles are authored in FSH they will appear automatically on the Artifacts page and be linked here.

### Data models / schemas

All resources conform to the profiles published in this implementation guide. Each profile:

* Extends a base FHIR R4 resource type.
* Defines **required**, **must-support**, and **optional** elements.
* Specifies value set bindings where coded elements are used.
* Includes invariants (constraints) that the server validates on write.

Refer to the **Artifacts** page for the full list of `StructureDefinition` profiles, extensions, and value sets.

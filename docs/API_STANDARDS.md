# API Standards

## URL Structure

```
GET    /api/v1/{resource}
GET    /api/v1/{resource}/{id}
POST   /api/v1/{resource}
PUT    /api/v1/{resource}/{id}
PATCH  /api/v1/{resource}/{id}
DELETE /api/v1/{resource}/{id}
```

Resources are plural nouns (`/quotes`, not `/quote` or `/getQuotes`). Actions that don't map to CRUD are modeled as a sub-resource or a clearly-named verb endpoint (`POST /quotes/{id}/send`), not stuffed into query parameters.

## Response Format

```json
{
  "success": true,
  "data": {},
  "error": null
}
```

Errors use the same envelope:

```json
{
  "success": false,
  "data": null,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Human-readable message",
    "details": {}
  }
}
```

`code` is a stable, machine-checkable string (`NOT_FOUND`, `VALIDATION_ERROR`, `UNAUTHORIZED`); `message` is for humans and can change wording without breaking clients that check `code`.

## Status Codes

| Code | When |
|---|---|
| 200 | Successful GET/PUT/PATCH |
| 201 | Successful POST that created a resource |
| 204 | Successful DELETE, or any success with no body |
| 400 | Validation error |
| 401 | Missing/invalid authentication |
| 403 | Authenticated but not authorized |
| 404 | Resource doesn't exist |
| 409 | Conflict (e.g., duplicate, stale version) |
| 422 | Semantically invalid request (well-formed but violates a business rule) |
| 500 | Unhandled server error |

## Versioning

The URL path carries the major version (`/api/v1/`). A breaking change (removed field, changed type, changed status code meaning) requires a new version; additive changes (new optional field) do not.

## Authentication

Use the auth mechanism already established for the project (session, token, etc.) consistently across all endpoints — do not introduce a second auth mechanism for a new endpoint without going through [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md).

## Rate Limiting & Input Validation

- Validate all input at the API boundary before it reaches business logic; reject with `400`/`422` and a specific `error.details`, don't silently coerce.
- Rate limiting is applied per [SECURITY_STANDARDS.md](SECURITY_STANDARDS.md) for any publicly reachable endpoint.

## Documenting an Endpoint

Use [templates/API_SPECIFICATION_TEMPLATE.md](../templates/API_SPECIFICATION_TEMPLATE.md) for any new endpoint before or alongside implementation.

# Example: OSH-C Portal

A customer/member-facing portal application (authentication, dashboards, document/record access).

## Suggested Layout

```
osh-c-portal/
├── README.md                 (use templates/PROJECT_README_TEMPLATE.md)
├── docs/
│   ├── ARCHITECTURE.md       (project-specific; links back to root ARCHITECTURE_STANDARDS.md)
│   └── adr/                  (project ADRs, using templates/ADR_TEMPLATE.md)
├── src/
│   ├── api/                  (endpoints, per root API_STANDARDS.md)
│   ├── auth/                 (session/auth handling, per root SECURITY_STANDARDS.md)
│   ├── portal/                (member-facing views/components)
│   └── db/                   (schema + migrations, per root DATABASE_STANDARDS.md)
└── tests/                    (per root TESTING_STANDARDS.md)
```

## Root Standards That Apply
- [API_STANDARDS.md](../../docs/API_STANDARDS.md) — all portal API endpoints
- [SECURITY_STANDARDS.md](../../docs/SECURITY_STANDARDS.md) — member authentication and data access
- [DATABASE_STANDARDS.md](../../docs/DATABASE_STANDARDS.md) — member/record schema
- [UI_STANDARDS.md](../../docs/UI_STANDARDS.md) — portal UI consistency

## Notes
Member data is personal data — treat all portal data access as subject to the access-control and audit-logging rules in SECURITY_STANDARDS.md, not just the endpoints that look sensitive.

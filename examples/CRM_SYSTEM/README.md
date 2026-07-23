# Example: CRM System

A customer relationship management system (contacts, accounts, deals/pipeline, activity history).

## Suggested Layout

```
crm-system/
├── README.md
├── docs/
│   └── ARCHITECTURE.md
├── src/
│   ├── api/                  (contacts, accounts, deals endpoints)
│   ├── pipeline/             (deal stage/workflow logic)
│   ├── reporting/            (pipeline reports, dashboards)
│   └── db/                   (contacts, accounts, deals, activity schema)
└── tests/
```

## Root Standards That Apply
- [DATABASE_STANDARDS.md](../../docs/DATABASE_STANDARDS.md) — relationship modeling between contacts/accounts/deals
- [API_STANDARDS.md](../../docs/API_STANDARDS.md)
- [SECURITY_STANDARDS.md](../../docs/SECURITY_STANDARDS.md) — customer data access control
- [UI_STANDARDS.md](../../docs/UI_STANDARDS.md) — pipeline/dashboard views

## Notes
Pipeline/stage transitions should be modeled explicitly (state machine or status history table), not as a single mutable status field, so activity history stays auditable.

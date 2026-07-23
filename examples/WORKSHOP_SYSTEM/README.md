# Example: Workshop Management System

An event/workshop scheduling and attendance system (sessions, bookings, capacity, attendance tracking).

## Suggested Layout

```
workshop-system/
├── README.md
├── docs/
│   └── ARCHITECTURE.md
├── src/
│   ├── api/                  (booking, session, capacity endpoints)
│   ├── scheduling/           (session/slot logic, capacity rules)
│   ├── notifications/        (reminders, confirmations)
│   └── db/                   (sessions, bookings, attendees schema)
└── tests/
```

## Root Standards That Apply
- [DATABASE_STANDARDS.md](../../docs/DATABASE_STANDARDS.md) — booking/capacity integrity is a data-integrity concern (avoid double-booking via constraints, not just app logic)
- [API_STANDARDS.md](../../docs/API_STANDARDS.md)
- [TESTING_STANDARDS.md](../../docs/TESTING_STANDARDS.md) — capacity/race-condition scenarios need explicit test coverage

## Notes
Capacity and double-booking bugs are the highest-risk area; enforce them at the database constraint level per DATABASE_STANDARDS.md, not only in application code.

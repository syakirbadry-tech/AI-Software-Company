# Testing Standards

## Testing Pyramid

- **Unit tests** — the majority of tests. Cover business logic, validation rules, and pure functions in isolation.
- **Integration tests** — cover API endpoints against a real (or realistic, e.g., containerized) database, and any interaction with an external service via a controlled test double.
- **End-to-end tests** — a small number covering the critical user paths only (e.g., "a customer can request and receive a quote," "a booking can be made and shows up in the schedule").

Do not mock the database in integration tests that exist specifically to verify data/query correctness — a mock can pass while the real migration or query is broken.

## Coverage Expectations

- New business logic ships with tests for its normal case and its documented edge cases (empty input, boundary values, concurrent access where relevant — e.g., simultaneous stock deductions in the Inventory System, or simultaneous bookings in the Workshop System).
- Bug fixes include a regression test that fails without the fix and passes with it.
- Coverage percentage is not a target in itself; untested critical logic is the problem to fix, not a number to chase.

## What Not to Test

- Third-party library internals (trust their own test suite).
- Trivial getters/setters or framework-generated boilerplate with no logic of your own.

## Release Verification

Before a release, run through [templates/TESTING_CHECKLIST_TEMPLATE.md](../templates/TESTING_CHECKLIST_TEMPLATE.md) and [templates/RELEASE_CHECKLIST_TEMPLATE.md](../templates/RELEASE_CHECKLIST_TEMPLATE.md). A 🔴 Required-classified defect blocks release; anything else is a judgment call documented in the release checklist, not a silent decision.

## Ownership

Day-to-day test-writing is part of implementing a feature (see [agents/BACKEND_ENGINEER_AGENT.md](../agents/BACKEND_ENGINEER_AGENT.md)); overall test strategy and release go/no-go calls belong to [agents/QA_ENGINEER_AGENT.md](../agents/QA_ENGINEER_AGENT.md).

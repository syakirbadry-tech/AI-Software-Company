# Testing Checklist: {Feature/Change Name}

Reference: [docs/TESTING_STANDARDS.md](../docs/TESTING_STANDARDS.md)

## Unit Tests

- [ ] Normal case covered
- [ ] Documented edge cases covered (empty input, boundary values)
- [ ] Regression test added for any bug this fixes

## Integration Tests

- [ ] API endpoints tested against a real/realistic database
- [ ] External service interactions tested against a controlled double

## End-to-End (if this touches a critical path)

- [ ] Critical user path verified manually or via e2e test

## Concurrency / Data Integrity (if relevant)

- [ ] Concurrent access scenario tested (e.g., simultaneous bookings, stock deductions)

## Security

- [ ] Input validation tested (rejects invalid/malicious input)
- [ ] Authorization tested (a user without permission is correctly denied)

## Sign-off

- [ ] All checks above pass
- [ ] Any unchecked item has a documented reason and classification

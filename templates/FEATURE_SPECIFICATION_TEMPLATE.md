# Feature Specification: {Feature Name}

Use once a [Feature Proposal](FEATURE_PROPOSAL_TEMPLATE.md) is approved, to specify exactly how it will behave before implementation starts.

## Summary

Link to the originating proposal/issue.

## User-Facing Behavior

Describe every user-visible state: normal flow, empty state, error states, edge cases (see [docs/UI_STANDARDS.md](../docs/UI_STANDARDS.md) for required states).

## Business Rules

Enumerate every rule precisely enough to write a test from it:

1. {Rule}
2. {Rule}

## Data Model Changes

Reference or update [templates/DATABASE_TEMPLATE.md](DATABASE_TEMPLATE.md) for this project.

## API Changes

Reference or add entries via [templates/API_SPECIFICATION_TEMPLATE.md](API_SPECIFICATION_TEMPLATE.md).

## Edge Cases & Error Handling

| Scenario | Expected Behavior |
|---|---|

## Test Plan

What needs unit vs. integration vs. e2e coverage, per [docs/TESTING_STANDARDS.md](../docs/TESTING_STANDARDS.md).

## Non-Goals

Explicitly out of scope for this specification.

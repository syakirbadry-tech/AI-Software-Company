# Coding Standards

## Naming

- Names describe what something is or does; avoid abbreviations that aren't universally understood.
- Consistent casing per language convention (e.g., `camelCase` for JS/TS variables and functions, `PascalCase` for types/classes/components, `snake_case` for database columns/tables).
- Booleans read as a yes/no question (`isActive`, `hasPermission`), not `flag` or `status` alone.

## Structure

- One reason to change per module/function — if a function's name needs "and" to describe it, it's probably two functions.
- No dead code, commented-out blocks, or speculative abstractions left "for later." Delete it; git history keeps it if it's ever needed again.
- Configuration (URLs, timeouts, feature flags) lives in config/environment, not hardcoded inline.

## Comments

Default to no comments. Code should be readable from naming and structure alone. Write a comment only when it explains something the code can't: a non-obvious constraint, a workaround for a specific external bug, or an invariant a future editor could easily break. Don't restate what the code already says.

## Error Handling

- Validate and handle errors at system boundaries (user input, external API calls, file/network I/O). Don't add defensive checks for conditions that can't occur given the code's own guarantees.
- Fail loudly in development, fail safely (logged, not crashed) in production, per the project's own error-handling setup.

## Testing Expectations

Every new piece of business logic ships with tests covering its normal case and its documented edge cases — see [TESTING_STANDARDS.md](TESTING_STANDARDS.md) for coverage expectations by layer.

## Dependencies

Adding a new external dependency is a 🟠 Recommended-or-higher decision per [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md) — justify it (what it replaces, what it costs to maintain/update) rather than adding it silently.

## Consistency Over Preference

If the codebase already has an established way to do something (error handling shape, file organization, state management approach), follow it even if you'd have picked something else. Introduce a new pattern only through the process in [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md).

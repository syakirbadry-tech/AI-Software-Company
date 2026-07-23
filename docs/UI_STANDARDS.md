# UI Standards

## Consistency Across Projects

Every project's UI should feel like it belongs to the same organization: consistent spacing scale, consistent color use for status/severity (success, warning, error, info), and consistent interaction patterns (confirmation before destructive actions, loading and empty states present on every list/table view).

## Component Reuse

Before building a UI component from scratch, check whether an existing project already has one that solves the same problem (a data table with sort/filter, a confirmation dialog, a status badge). Once a second project needs the same component, it's a candidate to extract into a shared location — not before.

## Required States for Any Data View

Every screen that loads data must explicitly handle:
- **Loading** — a visible loading indicator, not a blank screen
- **Empty** — a specific empty state with guidance, not just an empty table
- **Error** — a specific error message, not a silently blank or broken view
- **Populated** — the normal case

## Accessibility Baseline

- All interactive elements are reachable and operable via keyboard.
- Color is never the only signal for status (pair it with text or an icon) — this also serves colorblind users.
- Form inputs have associated labels, and validation errors are announced next to the field they belong to.

## Forms

- Client-side validation mirrors server-side validation ([API_STANDARDS.md](API_STANDARDS.md)) but never replaces it.
- Destructive actions (delete, send an irreversible quote, cancel a booking) require an explicit confirmation step.

## Responsiveness

UI must be usable on both desktop and mobile viewport widths for any customer-facing surface (e.g., the OSH-C Portal); internal admin/back-office tools may be desktop-first if there's a stated reason, documented in that project's own README.

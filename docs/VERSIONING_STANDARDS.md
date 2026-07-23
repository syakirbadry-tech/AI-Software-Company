# Versioning Standards

## Semantic Versioning

Every project (and this repository itself) versions releases as `MAJOR.MINOR.PATCH`:
- **MAJOR** — breaking change (incompatible API change, removed feature, incompatible migration)
- **MINOR** — backward-compatible new functionality
- **PATCH** — backward-compatible bug fix

## This Repository's Own Versioning

Because this repository is a living handbook rather than a shipped artifact, its "version" is tracked through git history and Conventional Commits rather than a version number bumped in a file — the commit log is the changelog. Individual projects built from it version their own releases independently using semver as above.

## Changelogs

Each project maintains a `CHANGELOG.md` at its root, using [templates/CHANGELOG_TEMPLATE.md](../templates/CHANGELOG_TEMPLATE.md), following the [Keep a Changelog](https://keepachangelog.com/) convention: group entries under `Added`, `Changed`, `Fixed`, `Removed` for each version, newest first.

## Commit Messages

All commits use [Conventional Commits](https://www.conventionalcommits.org/): `type(scope): description`, where `type` is one of `feat`, `fix`, `docs`, `refactor`, `chore`, `test`, `style`, `perf`. This is what allows a changelog to be generated or cross-checked from git history rather than reconstructed from memory.

## Breaking Changes

A breaking change to a shared API, database schema, or a template/standard in this repository that other projects depend on requires a MAJOR bump (for a project) or an explicit note in the relevant standard's own change history, plus a migration note for anything already built against the old shape.

## Deprecation

When replacing an existing pattern (per [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md)), mark the old one deprecated with a stated removal target rather than deleting it immediately or leaving both indefinitely — "temporary" parallel implementations are how architecture drift happens.

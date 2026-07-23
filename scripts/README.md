# Scripts

Automation helpers for working with this repository and for scaffolding new projects from it.

| Script | Purpose |
|---|---|
| [validate_structure.sh](validate_structure.sh) | Checks the repository against the expected folder/file structure and reports missing pieces or broken relative links |
| [new_project.sh](new_project.sh) | Scaffolds a new project folder under `examples/`-style layout from a chosen template |

Scripts here are plain POSIX shell with no external dependencies, so they run the same on any contributor's machine. Add a script only when a manual, repeated process becomes error-prone — not speculatively.

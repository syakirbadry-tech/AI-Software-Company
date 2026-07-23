#!/usr/bin/env sh
# Scaffolds a new project folder using one of examples/ as its starting layout.
# Usage: scripts/new_project.sh <project-name> <example-to-copy> [destination]
#   e.g. scripts/new_project.sh my-crm CRM_SYSTEM ../my-crm

set -eu

repo_root="$(cd "$(dirname "$0")/.." && pwd)"

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <project-name> <example-to-copy> [destination]" >&2
  echo "Available examples:" >&2
  find "$repo_root/examples" -maxdepth 1 -mindepth 1 -type d -exec basename {} \; >&2
  exit 1
fi

project_name="$1"
example_name="$2"
destination="${3:-./$project_name}"
source_dir="$repo_root/examples/$example_name"

if [ ! -d "$source_dir" ]; then
  echo "ERROR: no example named '$example_name' in examples/" >&2
  exit 1
fi

if [ -e "$destination" ]; then
  echo "ERROR: destination '$destination' already exists" >&2
  exit 1
fi

cp -R "$source_dir" "$destination"
echo "Scaffolded '$project_name' at '$destination' from examples/$example_name."
echo "Next: replace placeholder names in $destination/README.md and remove references it doesn't need."

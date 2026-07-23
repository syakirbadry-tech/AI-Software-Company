#!/usr/bin/env sh
# Validates that the repository has the expected top-level structure and
# that relative Markdown links within docs/, templates/, prompts/, agents/,
# and examples/ resolve to real files. Exits non-zero if anything is missing.

set -eu

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repo_root"

problems_file=$(mktemp)
trap 'rm -f "$problems_file"' EXIT

echo "== Checking required top-level entries =="
for entry in README.md LICENSE CONTRIBUTING.md docs templates prompts agents examples scripts .github; do
  if [ ! -e "$entry" ]; then
    echo "MISSING: $entry" | tee -a "$problems_file"
  fi
done

echo "== Checking relative Markdown links =="
find docs templates prompts agents examples -type f -name '*.md' 2>/dev/null > "$problems_file.files"
while read -r file; do
  dir=$(dirname "$file")
  grep -oE '\]\(([^)#]+)(#[^)]*)?\)' "$file" 2>/dev/null | sed -E 's/^\]\(([^)#]+).*/\1/' > "$problems_file.links" || true
  while read -r link; do
    case "$link" in
      http://*|https://*|mailto:*|"") continue ;;
    esac
    target="$dir/$link"
    if [ ! -e "$target" ]; then
      echo "BROKEN LINK: $file -> $link" | tee -a "$problems_file"
    fi
  done < "$problems_file.links"
done < "$problems_file.files"
rm -f "$problems_file.files" "$problems_file.links"

if [ -s "$problems_file" ]; then
  echo "Repository structure has issues (see above)."
  exit 1
fi

echo "Repository structure OK."

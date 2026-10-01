#!/bin/bash
# Clones every repo in repos.txt that isn't on this computer yet.
# Run once after cloning myLife on a new computer. Safe to re-run: existing folders are skipped.
#   ./scripts/clone-all.sh            clone everything missing
#   ./scripts/clone-all.sh --dry-run  show what would be cloned

PROJECTS="${PROJECTS:-$HOME/projects}"
LIST="$(cd "$(dirname "$0")/.." && pwd)/repos.txt"
DRY=0
[ "$1" = "--dry-run" ] && DRY=1

grep -v '^\s*#' "$LIST" | grep -v '^\s*$' | while IFS='|' read -r dir url; do
  dir="$(echo "$dir" | xargs)"
  url="$(echo "$url" | xargs)"
  path="$PROJECTS/$dir"

  if [ -d "$path" ]; then
    echo "skip   $dir (already here)"
  elif [ $DRY -eq 1 ]; then
    echo "would  git clone $url $path"
  else
    echo "clone  $dir"
    git clone -q "$url" "$path" || echo "FAILED $dir (does the GitHub repo exist?)"
  fi
done

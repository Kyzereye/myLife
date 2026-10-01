#!/bin/bash
# Shows the sync state of every repo in repos.txt.
# Run at the start and end of a session on any computer.
#   ./scripts/sync-status.sh          check status (fetches from GitHub)
#   ./scripts/sync-status.sh --pull   also pull repos that are behind and clean

PROJECTS="$HOME/projects"
LIST="$(cd "$(dirname "$0")/.." && pwd)/repos.txt"
PULL=0
[ "$1" = "--pull" ] && PULL=1

printf "%-48s %s\n" "REPO" "STATUS"
grep -v '^\s*#' "$LIST" | grep -v '^\s*$' | while IFS='|' read -r dir url; do
  dir="$(echo "$dir" | xargs)"
  url="$(echo "$url" | xargs)"
  path="$PROJECTS/$dir"

  if [ ! -d "$path" ]; then
    printf "%-48s %s\n" "$dir" "NOT CLONED  (git clone $url \"$path\")"
    continue
  fi
  if [ ! -d "$path/.git" ]; then
    printf "%-48s %s\n" "$dir" "NOT A GIT REPO"
    continue
  fi

  notes=""
  if ! git -C "$path" remote get-url origin >/dev/null 2>&1; then
    notes="no remote"
  else
    git -C "$path" fetch -q origin 2>/dev/null || notes="fetch failed"
  fi

  dirty=$(git -C "$path" status --porcelain | wc -l | xargs)
  [ "$dirty" != "0" ] && notes="$notes ${dirty} uncommitted"

  if git -C "$path" rev-parse --abbrev-ref '@{u}' >/dev/null 2>&1; then
    ahead=$(git -C "$path" rev-list --count '@{u}..HEAD')
    behind=$(git -C "$path" rev-list --count 'HEAD..@{u}')
    [ "$ahead" != "0" ] && notes="$notes ${ahead} unpushed"
    if [ "$behind" != "0" ]; then
      if [ $PULL -eq 1 ] && [ "$dirty" = "0" ]; then
        git -C "$path" pull -q --ff-only && notes="$notes pulled ${behind}" || notes="$notes PULL FAILED"
      else
        notes="$notes ${behind} behind"
      fi
    fi
  elif [ "$notes" != "no remote" ]; then
    notes="$notes no upstream branch"
  fi

  notes="$(echo "$notes" | xargs)"
  printf "%-48s %s\n" "$dir" "${notes:-ok}"
done

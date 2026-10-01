---
description: Friday review. What got done, finish-slot progress, ideas triage, draft next week.
---

Run the weekly review for the current ISO week.

## 1. Look back

- Read `schedule/weeks/<this ISO week>.md` and count the checked and unchecked items for Code Works, each finish slot, fitness, and hobbies.
- For each repo in `repos.txt` that exists locally, list this week's commits (`git -C ~/projects/<dir> log --since=<Monday> --oneline`).
- If `sixties-strong` exists, read this week's `logs/workouts.csv` and `logs/activity.csv` rows. The fitness repo has its own weekly review, so don't repeat it. Just note how many gym sessions, the ride, and pickleball happened.

## 2. Finish slots

For each finish slot, compare its `projects/*.md` against its definition of done. Update the status and milestone checkboxes in that file, and rewrite its "Next 3 actions". If a slot's project is **done**, say so plainly, update `priorities.md` (move it to a Done section with the date, promote "Next up" into the open slot), and tell John which project now takes the slot.

## 3. Ideas

Go through `ideas.md`. For each one, suggest one of: Parking lot, a next action for an active project, or delete. Ask John before moving or deleting anything.

## 4. Draft next week

Create `schedule/weeks/<next ISO week>.md` with a title and, for each day, a single line with the day shape (gym, ride, dealing, Avs game, weekend) using the same rules as `/today`. Place the protected hobby and friend slots from `weekly-template.md` on specific days:
- Music on most evenings that aren't dealing or in-person game nights
- One poker (playing) session
- One friends / social time
- One yard / garden / photography weekend block

Leave the detailed checkboxes for `/today` to fill in each morning.

## 5. Reply

Give John a short summary: the week in 3–5 lines, the slot status, the ideas decisions you need from him, and next week's shape. Don't commit.

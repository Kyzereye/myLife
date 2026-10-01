---
description: Morning brief. Build today's plan from priorities, fitness plan, and fixed events.
argument-hint: "[optional date YYYY-MM-DD, defaults to today]"
---

Build the plan for $ARGUMENTS (if empty, use today's date). Work out the weekday and the ISO week (for example `2026-W40`).

## 1. Read

- `priorities.md` and `schedule/weekly-template.md`
- `schedule/fixed-events.md`: dealing nights, extra events, and Avs games on this date (note TV, In person, or Skip)
- `schedule/weeks/<ISO week>.md` if it exists (protected hobby slots placed by `/week-review`, unchecked items from earlier days)
- `projects/*.md` for each active project's "Next 3 actions"
- Fitness, from `../sixties-strong`:
  - `logs/workouts.csv`: the last logged gym date and session. The next gym day is 3 days later, with the other letter (A↔B). If no sessions are logged yet, use the calendar in `plan/training.md` (gym every 3 days starting Fri 2026-10-02 with A).
  - If the date isn't a gym day, check whether it's the day before a gym day and a weekday. If so, it's a candidate **mountain bike day**. Check `logs/activity.csv`, and if no mountain bike ride is logged yet this week (Mon–Sun), make it the ride day. Otherwise follow the off-day suggestions in `plan/training.md` (pickleball, road ride, walk, yoga), keeping yoga at about 2 a week.
  - If `../sixties-strong` isn't on this computer, say so and skip the fitness detail.
- The last commit date in each repo from `repos.txt` that exists locally (`git -C ~/projects/<dir> log -1 --format=%cd --date=short`). Use it only to flag a finish-slot project with no commits in 3+ days.

## 2. Build the day

Start from the base day and apply every modifier that's true (gym, ride, pickleball/other, dealing, Avs TV or in person, weekend). Follow `weekly-template.md` exactly. In particular, finish slot A stays protected on ride days, dealing beats an Avs game, and weekends are work days with no mountain bike.

## 3. Write it

Write or replace the section for this date in `schedule/weeks/<ISO week>.md`. Create the file with a `# Week <ISO week> (<Mon date> – <Sun date>)` title if it doesn't exist. Use this format and keep the whole section to one screen:

```
## <Weekday> <YYYY-MM-DD>: <day shape, e.g. "Gym B + dealing tonight">

- [ ] Statements (AM)
- [ ] **Code Works** (<time>): <one concrete goal>
- [ ] **IM-FB agent** (<time>): <one next action>
- [ ] **Moving Forward** (<time>): <one next action, or "skipped: ride day">
- [ ] **Fitness**: <session, e.g. "Gym A, see gym-card.md" or "Mountain bike, carb breakfast 1.5–2 h before">
- [ ] **Evening**: <music / dealing / Avs vs XXX 7:00 on TV: yoga flow 1 + ideas.md>
- [ ] Statements (PM)
```

Add a hobby or friend line if one is placed on this day. Carry over any unchecked finish-slot item from the day before into the matching line.

## 4. Reply

Show John the section you wrote, then add at most two short lines: a flag (a stalled finish slot, a game on a dealing night, a missing fitness repo) and nothing else. Don't commit.

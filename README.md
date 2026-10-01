# myLife

This repo is the hub for everything I'm working on. It holds the plan, not the work. Each project keeps its own repo. This repo says what to work on, when, and in what order.

## The rules

1. **Two finish slots, no more.** At most two projects are being driven to "done" at any time. A new project gets a slot only when one of them is finished or I consciously drop it. Everything else waits in **Next up** or the **Parking lot** in [priorities.md](priorities.md).
2. **Every finish project has a definition of done.** It's written in that project's file in [projects/](projects/). When the definition is met, the project is finished, even if it could be polished more.
3. **Main activities are not projects.** Kyzereye Code Works, fitness, and mental health (statements, journaling) get time every day. They don't have a finish line, so they don't take a finish slot.
4. **New ideas go in [ideas.md](ideas.md).** Write one line, then go back to the current block. Ideas are reviewed on Fridays.
5. **Hobbies and friends are scheduled.** Music, poker, friends, and yard/garden/photography get protected time each week, or they don't happen.
6. **Pull at the start, push at the end.** Every session on any computer starts with `git pull` and ends with commit + push. Run `scripts/sync-status.sh` to check every repo at once.

## Daily and weekly rhythm

- **Every morning:** open Claude in this folder and run `/today`. It reads the priorities, the fitness plan, dealing nights, and the Avs schedule, then writes today's plan into this week's file in [schedule/weeks/](schedule/weeks/).
- **Every Friday:** run `/week-review`. It looks at what got done, checks the finish slots against their definitions of done, sorts `ideas.md`, and drafts next week.
- The day is built from a base day plus modifiers (gym day, ride day, dealing night, game night, weekend). See [schedule/weekly-template.md](schedule/weekly-template.md).

## Files

| File | What it's for |
|---|---|
| [priorities.md](priorities.md) | Main activities, the two finish slots, next up, parking lot |
| [ideas.md](ideas.md) | Inbox for new ideas so they don't derail the day |
| [computers.md](computers.md) | What lives on the work, main, and backup computers |
| [repos.txt](repos.txt) | Every project repo, used by the sync script |
| [projects/](projects/) | One file per active project: status, definition of done, next actions |
| [schedule/weekly-template.md](schedule/weekly-template.md) | Base day and modifiers |
| [schedule/fixed-events.md](schedule/fixed-events.md) | Dealing nights, Avalanche schedule, one-off events |
| [schedule/weeks/](schedule/weeks/) | One file per week with each day's plan and checkboxes |
| `scripts/sync-status.sh` | Shows which repos have uncommitted, unpushed, or unpulled work |
| `scripts/clone-all.sh` | Clones any repo from `repos.txt` that's missing on this computer |

## Repos inside this folder

`journal/`, `kyzereye-books/`, and `sixties-strong/` live inside this folder, but each is **its own GitHub repo**. myLife's `.gitignore` skips them, so commit and push each one from inside its own folder. In VS Code, open `~/projects/myLife` and the Source Control panel lists each repo separately.

Business and code repos (`motivational-inspirations`, `puzzle-books`, poker apps, Code Works) live in `~/projects/`.

## Setting up on another computer

```sh
mkdir -p ~/projects && cd ~/projects
git clone git@github.com:Kyzereye/myLife.git
cd myLife
./scripts/clone-all.sh
./scripts/sync-status.sh
```

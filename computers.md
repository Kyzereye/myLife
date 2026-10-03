# Computers

Every repo is cloned into the same place on every computer, as listed in `repos.txt`. Personal-life repos (`journal`, `sixties-strong`) live **inside** `~/projects/myLife/activities/`, but each is still its own GitHub repo, and myLife's `.gitignore` skips them. Business repos live inside `~/projects/myBusiness/` (KCW and KyzereyePublishing), with the same nested-repo pattern. Other repos live in `~/projects/`. Run `scripts/clone-all.sh` on a new computer to set this up.

**Moved 2026-10-02:** `journal` and `sixties-strong` moved from `myLife/` to `myLife/activities/`. On the main and work computers, after `git pull` in myLife, run `mkdir -p ~/projects/myLife/activities && mv ~/projects/myLife/journal ~/projects/myLife/sixties-strong ~/projects/myLife/activities/`.

| Computer | Role | Status |
|---|---|---|
| **Work** | Kyzereye Code Works client projects | Not inventoried yet |
| **Main** | Primary personal computer. The inspire agent (repo `Kyzereye/motivational-inspirations`, rename to `inspire` pending) is built and run here, currently in a folder named `IM-FB-post` that needs renaming to `inspire`. | Not inventoried yet |
| **Backup** | This inventory was done here on 2026-10-01 | Inventoried, see below |

## Backup computer (inventoried 2026-10-01)

| Folder | Git | GitHub | Notes |
|---|---|---|---|
| `myLife/activities/journal` | yes | `Kyzereye/journal` | Moving Forward book moved out to kyzereye-books (2026-10-01) |
| `myLife/activities/sixties-strong` | yes (new) | `Kyzereye/sixties-strong` | |
| `myBusiness/KyzereyePublishing/books` | yes (new) | `Kyzereye/kyzereye-books` | All books, one folder each. kmf-books merged in, Moving Forward moved in from journal (2026-10-01). Moved from `myLife/kyzereye-books` to myBusiness 2026-10-01. |
| `myBusiness/KyzereyePublishing/puzzle-books` | yes (new) | `Kyzereye/puzzle-books` | Word-search puzzle book generator. Moved from `~/Documents/books` 2026-10-01. |
| `myLife` | yes (new) | `Kyzereye/myLife` | This hub |
| `myBusiness` | yes (new) | `Kyzereye/myBusiness` | KyzerEye LLC: KCW + Kyzereye Publishing. Created 2026-10-01. |
| `keep-moving-forward/books` | yes | `Kyzereye/kmf-books` | **Retired.** Merged into `books/kmf`. Delete the folder and archive the GitHub repo. |
| `motivational-inspirations` | yes | `Kyzereye/motivational-inspirations` | inspire agent (finish slot A). Repo + folder rename to `inspire` is pending. Active work is on another computer. |
| `keep-moving-forward/motivational-inspirations` | yes | same as above | **Older duplicate clone. Delete.** Checked 2026-10-01: nothing uncommitted, unpushed, or stashed. |
| `myBusiness/KCW/pokersheets` | yes | `Kyzereye/pokersheets` | |
| `myBusiness/KCW/pokerleaguesHQ` | yes | `Kyzereye/pokerleaguesHQ` | |
| `myBusiness/KCW/poker_signup` | yes | `Kyzereye/poker_signup` (branch `master`) | Fresh clone 2026-10-01. `python/` and `sql/` added to git 2026-10-01. `backend/.env` needs JWT and SMTP values. Old Jan 2025 copy in `archive/poker_signup-2025-01`. |
| `100waysmotivate` | no | — | **Retired.** Older (July 1) snapshot of kmf-books, nothing unique. Delete. |
| `digital-products` | no | — | Parked |
| `archive/KyzereyeProductions` | no | — | Archived 2026-10-01. Prototype of the inspire agent. |
| `keep-moving-forward/IM-FB-post` | no | — | **Unused 2023 stub. Delete.** (`~/projects/IM-FB-post` was the same stub and was deleted 2026-10-01.) |
| `youtubeDownload`, `stocks`, `positivityGraditude.py` | no | — | Old or small. Decide later. |

### Media (not for git)

These are large files. Move them to cloud storage or an external drive at some point.

- `Screen Recording 2025-11-11 at 10.05.34 AM.mov` (2.4 GB)
- `How your mind alters the universe.mp3`, `I am.mp3`
- `tagged/` (about 5,350 files)
- `Rusrty_Mellon_4FEB2026.pdf`

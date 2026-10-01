# inspire (meme agent)

**Type:** Finish slot A (mid-day, best hours)
**Repo:** `Kyzereye/motivational-inspirations` (`~/projects/motivational-inspirations`) until the rename below is done; then `Kyzereye/inspire` at `~/projects/inspire`. Active work is on the main computer. Pull before working on it here.
**One name everywhere:** renamed 2026-10-01 from "IM-FB agent" / `motivational-inspirations` / `IM-FB-post` to **inspire**.

## Cleanup still to do

- [ ] **Rename the repo:** `gh repo rename inspire -R Kyzereye/motivational-inspirations`, then on this computer `mv ~/projects/motivational-inspirations ~/projects/inspire`, `git remote set-url origin git@github.com:Kyzereye/inspire.git`, push the local commit (README rename + `my-affirmations.txt`), and update `repos.txt` and `computers.md`.
- [ ] **Main computer:** push any uncommitted work, then pull, then rename `~/Projects/IM-FB-post` to `inspire` (in the same folder as the other repos). Run `git remote set-url origin git@github.com:Kyzereye/inspire.git`. Update the cron job (`crontab -e`) for the script path and the `post.log` path (README already uses `~/Projects/inspire/`). Confirm the next scheduled post runs.
- [ ] **Backup computer:** delete `~/projects/keep-moving-forward/IM-FB-post` (unused 2023 stub) and `~/projects/keep-moving-forward/motivational-inspirations` (older clone, no unique work). `~/projects/IM-FB-post` was deleted 2026-10-01.
- [ ] Check Meta's app dashboard and revoke the old 2023 Facebook token from the stub's `config.js` if it's still listed.
- [ ] If `archive/KyzereyeProductions` was ever synced or copied anywhere, generate a new Pexels API key (the old one was saved in plain text there).

## What it does

An agent that posts 4 inspirational memes a day to Facebook and Instagram.

## Definition of done

The agent posts 4 memes a day to both Facebook and Instagram with **no hands-on help for 14 days in a row**. A meme backlog is ready for at least the next 30 days.

## Current status

*Fill in from the computer where it's being built: what works, what doesn't.*

## Next 3 actions

1. On the computer where it's being built: push the latest work and fill in "Current status" above.
2. Write down what's left before it can run unattended.
3. Start the 14-day clock.

## Later (after done)

- Slideshow/Reels videos: pick ~20 finished memes, join with ffmpeg (5s each) into a short video for FB/IG Reels. Prototype: `archive/KyzereyeProductions/IMVideos/makeVideo.py`.
- Use `my-affirmations.txt` (my own ~50 affirmations) as a quote source.

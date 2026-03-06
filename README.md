# B4990 - Artificial Intelligence

**Universidad Nacional de Rio Negro** | Mar--Jun 2026 | Instructor: Federico Tula Rovaletti

---

## Getting Started

Complete these steps **before Session 1** (Monday, March 2).

### Step 1 -- Environment Setup

Install Docker and clone this repo. Detailed instructions in [SETUP.md](SETUP.md).

```bash
git clone https://github.com/unrn-ai-2026/ai-2026-course.git
cd ai-2026-course
docker compose up
```

Open http://localhost:8888, then open `precourse/test_setup.ipynb` and run all cells. If everything shows "OK", your environment is ready.

### Step 2 -- Precourse Materials

Work through the [precourse notebooks](precourse/README.md) at your own pace. Hard prerequisites are **required** before Session 1; soft prerequisites are recommended but will be reinforced during the course.

### Step 3 -- Your Personal Repo

Each student has a private repo where all work is submitted. Your repo is at:

```
https://github.com/unrn-ai-2026/ai-2026-<your-name>
```

You should have received a collaborator invitation by email -- accept it to get access.

Clone your personal repo **inside a separate folder** (not inside this course repo):

```bash
git clone https://github.com/unrn-ai-2026/ai-2026-<your-name>.git
```

You now have two repos on your machine:

| Repo | Purpose | You can... |
|------|---------|------------|
| `ai-2026-course` (this repo) | Course materials, lessons, homework descriptions | Pull updates. **Do not push.** |
| `ai-2026-<your-name>` | Your work: homework, mini-project, final project | Push your submissions here |

---

## How the Course Works

### Two Repos, One Workflow

1. **Pull** the latest materials from `ai-2026-course` before each session:
   ```bash
   cd ai-2026-course
   git pull
   ```
2. **Read** the lesson notebook and homework description here.
3. **Work** on your homework in your personal repo, under the matching folder:
   ```
   ai-2026-<your-name>/
     homework/
       session-01/
         homework.ipynb    <-- your work goes here
       session-02/
         homework.ipynb
       ...
     mini-project/
     final-project/
   ```
4. **Submit** by committing and pushing to `main` in your personal repo:
   ```bash
   cd ai-2026-<your-name>
   git add homework/session-01/homework.ipynb
   git commit -m "Complete session 1 homework"
   git push origin main
   ```
5. **Track** your progress by checking off items in `PROGRESS.md` in your personal repo.

### Homework

- There are **12 required homework checkpoints** throughout the course.
- Homework is graded **complete/incomplete** (not scored).
- You have **3 wildcards** -- each extends one deadline by 1 week, no questions asked. Notify the instructor before the original deadline.

### Feedback

AI-assisted feedback will appear as **Issues** on your personal repo. You can:
- Comment on an Issue to ask questions
- Use the "Appeal AI Feedback" issue template if you disagree with a point (within 7 days)

### Mini-Project

Due at the end of Week 8. Submitted in `mini-project/` in your personal repo (commit to `main`).

### Final Project

Developed on a `final-project` branch and submitted via a Pull Request to `main`. Details will be provided later in the course.

### AI Tools

AI tools (ChatGPT, Claude, Copilot, etc.) are **allowed and encouraged** -- this is an AI course. The only requirement: document which tools you used and how (a brief note at the end of each submission).

---

## Repo Structure

```
ai-2026-course/
  precourse/           Prerequisite notebooks (do these before Session 1)
  sessions/
    session-01/        Lesson notebook + homework description
    session-02/
    ...
  Dockerfile           Course environment
  docker-compose.yml
  SETUP.md             Detailed setup and troubleshooting
```

---

## Need Help?

- **Environment issues:** Check [SETUP.md](SETUP.md) troubleshooting section
- **Git questions:** Review the [Git prerequisite notebook](precourse/soft-prerequisites/git.ipynb)
- **Anything else:** Open an Issue on your personal repo or message the instructor

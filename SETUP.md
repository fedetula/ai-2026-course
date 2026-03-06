# Environment Setup

## 1. Install Docker

**Windows / Mac:** Download and install Docker Desktop from https://www.docker.com/products/docker-desktop/

- Windows: Docker Desktop will prompt you to enable WSL2 if needed — follow the prompts.
- After installation, open Docker Desktop and make sure it's running (whale icon in the system tray).

**Linux:**

```bash
# Install Docker Engine
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
# Log out and back in, then verify:
docker run hello-world
```

## 2. Install Git / GitHub Desktop

**Windows / Mac:** Download GitHub Desktop from https://desktop.github.com/ and sign in with your GitHub account.

**Linux:** Install Git via your package manager (`sudo apt install git` or equivalent).

## 3. Clone the course repo and start

```bash
git clone https://github.com/unrn-ai-2026/ai-2026-course.git
cd ai-2026-course
docker compose up
```

Open http://localhost:8888 in your browser. You should see the course folder structure.

The Docker image already includes the course runtime: Python 3.14, Jupyter, PyTorch, scikit-learn, and the rest of the required packages.

## 4. Clone your student repo

Your personal repo is a **separate folder** (not inside the course repo):

```bash
cd ..
git clone https://github.com/unrn-ai-2026/ai-2026-<your-name>.git
```

You should now have two sibling folders:

```
some-folder/
  ai-2026-course/       <-- course materials (pull only)
  ai-2026-<your-name>/  <-- your work (push here)
```

## 5. Verify your setup

Open `precourse/test_setup.ipynb` in Jupyter and run all cells (Cell > Run All).
If you see a sine wave plot and all checks show "OK", you're ready.

Then work through the [precourse materials](precourse/README.md) before Session 1.

## Daily workflow

```bash
# Start the course environment
cd ai-2026-course
docker compose up

# Open browser at http://localhost:8888

# Stop (Ctrl+C in the terminal, or):
docker compose down
```

Do your homework and project work in your student repo folder. When you need to submit, commit and push from there:

```bash
cd ai-2026-<your-name>
git add homework/session-01/homework.ipynb
git commit -m "Complete session 1 homework"
git push origin main
```

Your work is saved on your machine — it persists even if the container is stopped.

## Troubleshooting

| Problem | Solution |
|---------|----------|
| `docker` not found (Windows) | Make sure Docker Desktop is running (whale icon in system tray) |
| Port 8888 already in use | Stop whatever is using it, or change the port in `docker-compose.yml` |
| Container build is slow | Normal on first run (~5 min). Subsequent starts are instant |
| Changes lost after restart | Make sure you're editing files inside the repo folders |

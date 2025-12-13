---
description: Spawn J Star Code Review bot into the current repository
---

# /spawn-jstar - Add J Star Review to Current Repo

This workflow adds the J Star Code Review bot to whatever repository you're currently working in.

## Prerequisites
- You must be in a Git repository
- The repo must be hosted on GitHub

## Steps

### 1. Create the Workflow Directory
// turbo
```bash
mkdir -p .github/workflows
```

### 2. Download the Spawn Template
// turbo
```bash
curl -o .github/workflows/jstar-review.yml https://raw.githubusercontent.com/JStaRFilms/jstar-code-review/main/.github/workflows/spawn-template.yml
```

### 3. (Optional) Create J Star Config Directory
If you want project-specific coding rules:
// turbo
```bash
mkdir -p .jstar
```

### 4. (Optional) Create Rules File
Create `.jstar/rules.md` with your coding guidelines. Example content:

```markdown
# Project Coding Rules

## General
- Use TypeScript strict mode
- No `any` types
- All functions must have explicit return types

## Security  
- Never log sensitive data
- Validate all inputs with Zod
```

### 5. (Optional) Create Architecture File
Create `.jstar/architecture.md` with your project structure overview.

### 6. Commit and Push
```bash
git add .github/workflows/jstar-review.yml
git commit -m "feat: add J Star Code Review bot"
git push
```

### 7. Add Secret (Manual Step)
Go to your GitHub repo → **Settings** → **Secrets and variables** → **Actions** → **New repository secret**

- **Name:** `GROQ_API_KEY`
- **Value:** Your Groq API key from [console.groq.com](https://console.groq.com)

## Done! 🎉

The bot will now automatically review every PR. You can also comment `/review` on any PR to trigger a manual review.

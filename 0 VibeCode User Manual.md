# The VibeCode Protocol Suite: A User Manual

Welcome to VibeCode. This isn't just a collection of prompts; it's a complete system for collaborating with AI to build software. Think of yourself as the Visionary or the CEO, and your AI assistants as a specialized, high-performance team. This guide explains who's on your team and which playbook (protocol) to use for any situation you'll encounter.

## Your AI Team: The Cast of Characters

You'll work with a few different types of AI agents. Knowing who does what is the first step.

*   **The AI Orchestrator (Your "Senior Architect"):** This is your main strategic partner (e.g., GPT-4, Claude 3 Opus). It doesn't write the first line of code. Its job is to think, plan, architect, and create documentation. It understands the "vibe" and the big picture.
*   **The Builder/Executor (Your "Workhorse Coder"):** This AI takes a single, massive, detailed prompt from the Orchestrator and builds the entire initial project foundation in one go. It's great at execution, not strategy.
*   **The In-IDE Assistant (Your "Pair Programmer"):** This AI lives in your code editor (e.g., GitHub Copilot, Cursor). It's a tactical expert, helping you write or fix individual functions, generate tests, and refactor small pieces of code. It works best when given very specific, in-the-moment tasks.
*   **The Design Agent (Your "UI/UX Specialist"):** A specialized AI (like Qwen for concepts or a GPT-4V model for code) that focuses purely on visual design, creating style guides and HTML/CSS mockups.

## The VibeCode Playbook: A Protocol for Every Situation

Here’s your library of protocols. Use this guide to know which one to grab and when.

---

Excellent point. This is a crucial clarification. If one prompt is the superior, default choice, the README needs to reflect that clearly to prevent confusion and guide the user to the best practice.

Here is the revised section of the README. I've restructured it to create a clear hierarchy and explain the specific, niche role of the "Ultimate Orchestration Prompt."

---

### **1. Starting a Brand New Project**

When you have a new idea, this is your starting line. We have two protocols for this, but one is the standard for any real project.

#### **Your Go-To Choice (99% of the time): `Project Genesis Protocol v2.1 The VibeCode Workflow`**

**➡️ When to use it:** Always. Use this for any new project, from a simple utility to a full-blown web application.

**➡️ What it does:** This is more than just a prompt; it's a **workflow installer**. It doesn't just ask the AI for code; it establishes the "vibe," sets up your collaborative dynamic, and defines the project's entire personality. It turns your AI from a simple code generator into a genuine project partner. It handles planning, documentation, initial code, and future roadmap, all in one go.

**➡️ How to use it:**

1.  Open `Project Genesis Protocol v2.1 The VibeCode Workflow.md`.
2.  Follow the instructions inside. It will guide you through a conversation with your **AI Orchestrator**.
3.  The process will feel like a project kickoff meeting. At the end, you'll have all the foundational documents, the first batch of code, and a clear path forward.

---

#### **The Alternative (For Quick Scripts & Boilerplate): `✨ ULTIMATE ORCHESTRATION PROMPT (HYBRID MODEL V3)✨`**

**➡️ When to use it:** On the rare occasion you are **not** starting a full project. Use this when you need a single, self-contained piece of code and don't need the surrounding project structure, documentation, or long-term "vibe" setup.

*   **Good for:** A standalone Python script for data processing, a complex SQL query, a single HTML/CSS component for a landing page.
*   **Bad for:** Anything with multiple files, a potential for future features, or that requires a consistent architectural vision.

**➡️ What it does:** This is a direct, powerful, "one-shot" prompt. You give it a detailed spec, and it gives you a block of code. It's less of a collaborator and more of a highly-skilled contractor hired for a single task.

**➡️ How to use it:**

1.  Open `✨ ULTIMATE ORCHESTRATION PROMPT (HYBRID MODEL V3)✨.md`.
2.  Fill out the sections with your technical requirements.
3.  Give the completed prompt to your **AI Orchestrator** or even a powerful **Builder Agent**.
4.  You will get code back, but not the deep project context or workflow you get from the Genesis Protocol.

| Feature         | Project Genesis Protocol v2.1                    | Ultimate Orchestration Prompt               |
| :-------------- | :----------------------------------------------- | :------------------------------------------ |
| **Best For**    | **Full Projects (Web apps, desktop apps, etc.)** | **Single Scripts, Boilerplate, Components** |
| **Output**      | Code + Docs + GitHub Issues + Project Vibe       | Just Code                                   |
| **Interaction** | Conversational, like a project kickoff           | One-shot, transactional                     |
| **When to Use** | **Your default, 99% of the time**                | The 1% where you just need a file           |

---

### 2. Creating the Visuals and Mockups
**➡️ When to use it:** Right after the Genesis Protocol, or anytime you need to define or build the visual part of your application.
**➡️ What it does:** Generates the core design system (colors, fonts, components) and then builds individual page mockups that are visually consistent.
**➡️ How to use it:**
1.  Open `Design System Genesis Protocol.md`.
2.  Follow its instructions: Give the protocol to your **AI Orchestrator**.
3.  The Orchestrator will ask you for key project details (name, vibe, etc.).
4.  It will then generate two new prompts for you: **Prompt A** (to create the design system) and **Prompt B** (to build the pages). You'll give these to a **Design Agent**.

---

### 3. Joining an Existing Project
**➡️ When to use it:** You're starting work on a codebase you didn't create. You need to get your AI Orchestrator up to speed so it can help you effectively.
**➡️ What it does:** Uses a two-phase process to "scan" an existing project and brief your Orchestrator, making it an instant expert on the codebase.
**➡️ How to use it:**
1.  **Phase 1 (Reconnaissance):** Open `The Reverse Genesis Protocol.md`. Copy the "Recon Prompt" and give it to your **In-IDE Assistant** (since it can read your local files). It will generate a detailed "Project Autopsy Report."
2.  **Phase 2 (Briefing):** Copy the "Mission Briefing" prompt from the same file. Paste the "Autopsy Report" into it, add your new goals, and give this final, combined prompt to your **AI Orchestrator**. It will now understand the project and be ready to help you plan new features.

---

### 4. When Your AI Coder Gets Stuck
**➡️ When to use it:** Your **In-IDE Assistant** is trying to implement a feature but is failing. It's stuck in a loop, giving you errors, or just not understanding the task.
**➡️ What it does:** Provides a formal "escalation" path. It forces the failing local AI to document its own failure, and then uses that report to brief the high-level **AI Orchestrator** so it can devise a better strategy.
**➡️ How to use it:**
1.  **Part 1 (Damage Report):** Open `The Escalation & Handoff Protocol.md`. Copy the "Damage Report" prompt and give it to the failing **In-IDE Assistant**. It will give you back a summary of the goal, the error, and the files it was working on.
2.  **Part 2 (SOS Call):** Copy the "SOS" prompt from the same file. Paste the "Damage Report" and the full code from the relevant files into it. Give this to your **AI Orchestrator**. It will analyze the situation and give you a new, corrected plan.

---

### 5. When Your AI Chat Is Getting Old
**➡️ When to use it:** You've been in a single chat session with your Orchestrator for a long time. It's starting to lose context, forget details, or the window is getting laggy.
**➡️ What it does:** Generates a "state snapshot" prompt that perfectly captures the entire project history, your dynamic, and the current goals. You use this to start a fresh, new chat session without losing any momentum.
**➡️ How to use it:**
1.  Open `The Seamless Migration Meta-Prompt (Your Reusable Tool).md`.
2.  Give this prompt to your current **AI Orchestrator** and fill in the details it asks for (personas, project details, key milestones, next steps).
3.  The Orchestrator will synthesize this into a single, comprehensive handoff prompt.
4.  Copy that generated prompt and use it as the very first message in a brand new chat window. Your new Orchestrator will be instantly up to speed.

---

## Example Demo: Building a "SmartNotes" App

Let's see how this works in practice.

**1. The Idea:** You want to build a simple desktop app called "SmartNotes" that uses AI to automatically tag your notes.

**2. Project Genesis:** You grab `✨ ULTIMATE ORCHESTRATION PROMPT ✨`. You tell it the project is "SmartNotes", the tech stack is Python and PyQt6, the MUS (Minimum Usable State) is just creating and saving a note, and a "Future" feature is the automatic AI tagging. You give this to your **Orchestrator**.
*   *Outcome:* The Orchestrator gives you a `Project_Requirements.md`, `Coding_Guidelines.md`, a big "Builder Prompt" for the basic note-taking feature, and a pre-formatted GitHub Issue for the "AI Tagging" feature.

**3. The First Build:** You give the "Builder Prompt" to a **Builder Agent**.
*   *Outcome:* The agent creates the entire Python project structure and writes the code for the basic window where you can type and save a note. It's basic, but it works.

**4. The Design Phase:** You decide it needs to look good. You grab the `Design System Genesis Protocol.md` and give it to your **Orchestrator**. You tell it the "vibe" is "minimalist, clean, and modern."
*   *Outcome:* The Orchestrator gives you Prompt A and Prompt B. You use them with a **Design Agent** to get a beautiful `design-system.html` and a mockup of the main app window.

**5. Hitting a Wall:** You start working on the "AI Tagging" feature with your **In-IDE Assistant**. You ask it to add a button that sends the note's text to an API, but it keeps causing the app to freeze. It's a threading issue that the local AI can't solve.
*   *Outcome:* You trigger the **Escalation & Handoff Protocol**. The local AI generates a "Damage Report" explaining it failed to handle the API call without freezing the UI. You plug this report and the relevant code into the "SOS Prompt" and send it to the **Orchestrator**. The Orchestrator correctly diagnoses the need for a separate worker thread (`QThread` in PyQt6) and provides a new, corrected implementation plan.

**6. Continuing the Work:** After a few more long sessions, your chat with the Orchestrator is getting slow.
*   *Outcome:* You use `The Seamless Migration Meta-Prompt`. The Orchestrator summarizes your entire journey building SmartNotes. You copy its output, open a new chat, and paste it in. The new AI replies, "Understood. We just solved the threading issue for AI tagging. Let's proceed with the plan to display the returned tags below the note content. Ready to begin?" You've lost zero momentum.

You've just successfully navigated the entire early lifecycle of a project using a structured, repeatable, and powerful workflow.

**Code with the flow. Code with the vibe.**
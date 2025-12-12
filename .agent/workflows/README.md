# VibeCode Workflow Guide

This document explains how all workflows in `.agent/workflows/` relate to each other, which ones are "parent" workflows, and the recommended order of operations.

---

## Workflow Hierarchy

```
┌─────────────────────────────────────────────────────────────────┐
│                     PROJECT LIFECYCLE                           │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  NEW PROJECT                    EXISTING PROJECT                │
│       │                              │                          │
│       ▼                              ▼                          │
│  /init_vibecode_genesis ────►  /reverse_genesis                 │
│       │                              │                          │
│       ▼                              │                          │
│  /init_vibecode_design               │                          │
│       │                              │                          │
│       ▼                              │                          │
│  /build_vibecode_project ◄───────────┘                          │
│       │                                                         │
│       ├───► /init_smart_ops (bootstraps smart_start/complete)   │
│       │                                                         │
│       ▼                                                         │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │              DAILY DEVELOPMENT LOOP                      │   │
│  │  ┌────────────────────────────────────────────────────┐ │   │
│  │  │ /prime_agent ──► /smart_start ──► WORK ──► /smart_complete │
│  │  └────────────────────────────────────────────────────┘ │   │
│  │                        │                                 │   │
│  │                        ▼                                 │   │
│  │              /spawn_task (for complex features)          │   │
│  │              /analyze_component (for refactoring)        │   │
│  └─────────────────────────────────────────────────────────┘   │
│                                                                 │
│  WHEN STUCK                    WHEN CHAT GETS STALE             │
│       │                              │                          │
│       ▼                              ▼                          │
│  /escalate                      /migrate                        │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Workflow Categories

### 🏗️ Project Initialization (Run Once)

| Workflow | Purpose | When to Use | Generates |
|----------|---------|-------------|-----------|
| `/init_vibecode_genesis` | The Architect — Plans a new project | Starting a brand new project | `docs/Project_Requirements.md`, `docs/Coding_Guidelines.md`, `docs/Builder_Prompt.md`, GitHub Issues |
| `/init_vibecode_design` | The Designer — Creates visual system | After Genesis, before Build | `docs/design/design-system.html`, `docs/mockups/*.html` |
| `/build_vibecode_project` | The Builder — Scaffolds and builds | After Genesis (and optionally Design) | Project structure, MUS features, `docs/Builder_Handoff_Report.md` |
| `/init_smart_ops` | Bootstraps GitHub integration | After Build, when project has `src/` | `src/scripts/smart-ops.ts`, `smart_start.md`, `smart_complete.md` |
| `/reverse_genesis` | Onboards to existing codebase | Joining an existing project | `docs/autopsy_report.md` |

### 🔄 Daily Development (Run Often)

| Workflow | Purpose | When to Use |
|----------|---------|-------------|
| `/prime_agent` | Load project context | Start of session, before complex work |
| `/smart_start` | Start work on a feature/bug | Beginning any task |
| `/smart_complete` | Mark work as done | Finishing any task |
| `/spawn_task` | Create detailed task prompt | Complex features needing breakdown |
| `/analyze_component` | Audit component quality | Refactoring, code review |

### 🆘 Recovery & Migration

| Workflow | Purpose | When to Use |
|----------|---------|-------------|
| `/escalate` | Generate handoff report | Agent is stuck, need fresh perspective |
| `/migrate` | Transfer context to new chat | Chat is stale, losing context |

---

## Recommended Flows

### Flow 1: New Project (Full VibeCode)

```
1. /init_vibecode_genesis    → Get PRD, Guidelines, Issues
2. /init_vibecode_design     → Get design system, mockups (UI projects)
3. /build_vibecode_project   → Scaffold and build MUS
4. /init_smart_ops           → Set up GitHub automation
5. /prime_agent              → Start daily work loop
```

### Flow 2: Joining Existing Project

```
1. /reverse_genesis          → Generate autopsy report
2. /prime_agent              → Load coding/styling context
3. /smart_start              → Pick up first task
```

### Flow 3: Daily Work Session

```
1. /prime_agent              → (Optional) Refresh context
2. /smart_start              → Declare what you're working on
3. ... do the work ...
4. /smart_complete           → Close out the task
```

### Flow 4: Complex Feature Implementation

```
1. /spawn_task               → Generate detailed task prompt
2. /smart_start              → Link to GitHub issue
3. ... implement phases ...
4. /analyze_component        → Audit any large components
5. /smart_complete           → Mark as done
```

### Flow 5: Agent Recovery

```
# If agent is stuck:
/escalate                    → Generate damage report for fresh agent

# If chat is stale:
/migrate                     → Generate state snapshot for new session
```

---

## Parent-Child Relationships

### `/init_vibecode_genesis` is Parent of:
- `/init_vibecode_design` (uses the PRD)
- `/build_vibecode_project` (uses PRD, Guidelines, Builder Prompt)

### `/build_vibecode_project` is Parent of:
- `/init_smart_ops` (needs `src/` to exist)

### `/init_smart_ops` Generates:
- `/smart_start` (the actual workflow used daily)
- `/smart_complete` (the actual workflow used daily)

### Standalone (No Parent):
- `/prime_agent` — Can run anytime
- `/analyze_component` — Can run anytime
- `/spawn_task` — Can run anytime
- `/escalate` — Run when stuck
- `/migrate` — Run when chat stale
- `/reverse_genesis` — Alternative to Genesis for existing projects

---

## Stack-Specific Notes

### Universal Shell Script (All Stacks)
The Smart Ops system now uses a **universal shell script** (`scripts/smart-ops.sh`) that works with ANY project stack:

| Stack | Works? | Notes |
|-------|--------|-------|
| Node.js/TypeScript | ✅ | Shell script runs in any terminal |
| Python | ✅ | Shell script works |
| Rust | ✅ | Shell script works |
| Go | ✅ | Shell script works |
| Any Unix/Linux/macOS | ✅ | Native bash |
| Windows | ✅ | Git Bash, WSL, or PowerShell with bash |

---

## Timeline Tracking (GitHub Projects)

The Smart Ops system supports **timeline tracking** for GitHub Projects:

### Features:
- **Start Date** — Automatically set when moving to "In Progress"
- **Target Date** — Set when creating issues (based on estimate)
- **Duration Tracking** — Calculate actual vs estimated time on completion
- **Timeline View** — View in GitHub Projects Roadmap/Timeline

### Setup:
1. In your GitHub Project, create these fields:
   - "Start Date" (Date type)
   - "Target Date" (Date type)
2. Run `/init_smart_ops` to detect field IDs
3. The script will auto-populate dates

### Workflow:
```
/smart_start → "How long will this take?" → Sets target date
... work ...
/smart_complete → Calculates actual duration → Reports variance
```

### Commands:
```bash
# Create issue with 7-day estimate
./scripts/smart-ops.sh create "Fix login" "Description" "bug" 7

# Set target date manually
./scripts/smart-ops.sh target <item_id> 14           # 14 days from now
./scripts/smart-ops.sh target <item_id> 2024-12-25   # Specific date

# Set start date
./scripts/smart-ops.sh started <item_id>              # Today
./scripts/smart-ops.sh started <item_id> 2024-12-10  # Specific date
```

---

## Quick Reference

| I want to... | Use this workflow |
|--------------|-------------------|
| Start a new project | `/init_vibecode_genesis` |
| Design the UI | `/init_vibecode_design` |
| Build the foundation | `/build_vibecode_project` |
| Set up GitHub automation | `/init_smart_ops` |
| Join an existing project | `/reverse_genesis` |
| Brief the agent on rules | `/prime_agent` |
| Start a work session | `/smart_start` |
| End a work session | `/smart_complete` |
| Break down a complex feature | `/spawn_task` |
| Audit a component | `/analyze_component` |
| Hand off to fresh agent | `/escalate` |
| Move to new chat | `/migrate` |
| Set issue target date | `./scripts/smart-ops.sh target` |
| Track work duration | `/smart_complete` (auto) |

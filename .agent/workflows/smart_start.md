---
description: Intelligent start-of-work workflow that auto-detects context and creates appropriate issues
---
// turbo-all

# Workflow: Smart Start (Intelligent)

This is the **automated** version of starting work. The agent does all the heavy lifting using the local ops script.

## Usage

```
User: "Use /smart_start. I want to work on [describe what you're doing]."
```

## Agent Steps

### 1. Scan Work (Scripted)

Run the local operations script to get a JSON summary of all active context.

```bash
./scripts/smart-ops.sh start
```

> [!TIP]
> If `scripts/smart-ops.sh` doesn't exist, run `/init_smart_ops` first to generate it.
> Or use the `gh` CLI directly: `gh issue list --state open --json number,title,labels`

### 2. Analyze User Intent

The script output provides:
- `active_issues`: Open issues in GitHub.
- `project_items`: Drafts and items on the project board.

**Instructions:**
1. **Read** the JSON output from the previous step.
2. **Match** the user's intent to an existing issue or draft.
3. **If matching issue found**:
   - Ask if it's a subtask or the main task.
   - If subtask, create a new issue linked to the parent.
   - If main task, move it to "In Progress" (if not already).
4. **If matching draft found**:
   - Convert it to a real issue.
   - Move to "In Progress".
5. **If NEW**: Use the **Professional Issue Template** below.

### 3. Time Estimation (For NEW Issues)

**Ask the user:**
> "How long do you estimate this will take?
> - A few hours
> - 1 day
> - 2-3 days
> - 1 week
> - 2 weeks
> - Longer (specify)"

**Convert to days:**
| Response | Days |
|----------|------|
| A few hours | 1 |
| 1 day | 1 |
| 2-3 days | 3 |
| 1 week | 7 |
| 2 weeks | 14 |

This sets the target date for the GitHub Project timeline view.

### Professional Issue Template (For NEW Issues)

When creating a new issue, use this format:

```markdown
## Title
[Feature/Bug] Clear, concise summary

## Labels
`enhancement`, `[module-name]`

## User Story
As a [user type], I want to [action], so that [benefit].

## Root Cause / Proposed Solution
*(This is the "Plan-and-Solve" part — critical for actionable issues)*

**For Features:** Describe the implementation approach:
- Key components/files to create or modify
- Data flow and architecture decisions
- Dependencies or prerequisites

**For Bugs:** Describe the technical root cause and fix:
- What is causing the issue (not just symptoms)
- The specific code path or logic flaw
- The proposed fix with file paths

## Estimated Duration
[X] days (Target: YYYY-MM-DD)

## Acceptance Criteria
- [ ] Testable outcome 1
- [ ] Testable outcome 2
- [ ] Testable outcome 3
```

### 4. Execution Commands (Reference)

**Create Issue with Timeline:**
```bash
# Create with estimated duration (in days)
./scripts/smart-ops.sh create "[Feature] Title" "Body here..." "enhancement" 7
```

**Or use gh directly:**
```bash
gh issue create --title "[Feature] ..." --body "## User Story\nAs a..." --label "enhancement" --repo {{OWNER}}/{{REPO}}
```

**Move to In Progress (also sets Start Date):**
```bash
./scripts/smart-ops.sh progress <ITEM_ID>
```

**Set/Adjust Target Date:**
```bash
./scripts/smart-ops.sh target <ITEM_ID> 7          # 7 days from now
./scripts/smart-ops.sh target <ITEM_ID> 2024-12-20 # Specific date
```

### 5. Confirmation

Tell the user what was started, including:
- Issue number and link
- Start date (today)
- Target date (based on estimate)
- How to view in GitHub Projects timeline


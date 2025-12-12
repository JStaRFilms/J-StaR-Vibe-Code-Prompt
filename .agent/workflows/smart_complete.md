---
description: Intelligent end-of-work workflow that auto-detects what you completed
---
// turbo-all
# Workflow: Smart Complete (Intelligent)

This is the **automated** version of completing work. The agent figures out what you finished using the local ops script — and tracks how long it actually took.

## Usage

```
User: "Use /smart_complete. I finished [describe what you did]."
```

## Agent Steps

### 1. Scan Work (Scripted)

Run the local operations script to get a JSON summary of all active context.

```bash
./scripts/smart-ops.sh complete
```

> [!TIP]
> If `scripts/smart-ops.sh` doesn't exist, use the `gh` CLI directly:
> `gh issue list --state open --json number,title,labels,createdAt`

### 2. Match Work to Issues

The script output provides:
- `active_issues`: Issues with "In Progress" or Open status.
- `project_items`: The state of the board.
- Today's date for duration calculation.

**Instructions:**
1. **Read** the JSON output.
2. **Match** the user's completed work description to one of the active issues.
3. **If match found**:
   - Close the issue (`./scripts/smart-ops.sh close ...`).
   - Move to "Done" on the project board.
   - Calculate actual duration (createdAt → today).
   - Check if parent issue is now fully complete.
4. **If matching draft found**:
   - Convert to issue first (for record keeping), then close it immediately.
5. **If partial work**:
   - Don't close.
   - Add a comment (`gh issue comment ...`).
   - Ask user if they want to update the status.

### 3. Duration Tracking

**Calculate and report:**
```
Start Date: [Issue creation date or Start Date field]
Completion Date: [Today]
Actual Duration: [X] days
Estimated Duration: [Y] days (from Target Date)
Variance: [+/- Z] days
```

**If completed early:**
> "🎉 Completed [X] days ahead of schedule!"

**If completed late:**
> "⚠️ Took [X] days longer than estimated. Consider updating future estimates."

### 4. Execution Commands (Reference)

**Close Issue (with completion comment):**
```bash
./scripts/smart-ops.sh close <NUMBER> "Completed in X days"
```

**Move to Done:**
```bash
./scripts/smart-ops.sh done <ITEM_ID>
```

**Or use gh directly:**
```bash
gh issue close [NUMBER] --comment "Completed via Smart Complete on YYYY-MM-DD"
```

### 5. Confirmation

Tell the user what was closed/updated, including:
- Issue number and title
- Actual duration (in days)
- Whether it was early, on-time, or late vs estimate
- Link to view in GitHub Projects timeline

**Example confirmation:**
```
✅ Closed Issue #42: "Add user authentication"

📊 Duration Report:
- Started: 2024-12-10
- Completed: 2024-12-12
- Actual: 2 days
- Estimated: 3 days
- Status: ✅ Completed 1 day early!

View timeline: https://github.com/owner/repo/projects/1
```


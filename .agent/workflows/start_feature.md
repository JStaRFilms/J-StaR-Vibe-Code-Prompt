---
description: Start working on a feature. Creates a GitHub Issue and moves it to "In Progress".
---

# Workflow: Start Feature

Follow these steps when the user wants to begin working on a task.

## 1. Identify or Create the Issue
Check if a GitHub Issue already exists for this task.

```bash
# Search for existing issues
gh issue list --search "Feature Name" --state all
```

If it doesn't exist, create a **Real GitHub Issue** (not just a draft item).

```bash
# Create the issue and capture the URL
gh issue create --title "Feature Name" --body "Description of the feature." --assignee "@me"
```

## 2. Add to Project Board
Add the Issue to the "J StaR Personal Platform Roadmap" project.

**Variables:**
-   `$projectNumber`: 3
-   `$owner`: "JStaRFilms"

```bash
# Add the issue URL from the previous step to the project
gh project item-add <ISSUE_URL> --owner JStaRFilms --project-id "PVT_kwHOBryib84BJnlJ"
```

## 3. Move to "In Progress"
Update the item's status on the board.

**Variables:**
-   `$projectId`: "PVT_kwHOBryib84BJnlJ"
-   `$statusFieldId`: "PVTSSF_lAHOBryib84BJnlJzg5unMg"
-   `$inProgressOptionId`: "47fc9ee4"

```powershell
# You need the Project Item ID (not the Issue ID) for this.
# Get the Item ID from the output of 'gh project item-add' or list items.
& "C:\Program Files\GitHub CLI\gh.exe" project item-edit --id <PROJECT_ITEM_ID> --project-id "PVT_kwHOBryib84BJnlJ" --field-id "PVTSSF_lAHOBryib84BJnlJzg5unMg" --single-select-option-id "47fc9ee4"
```

## 4. Confirm
Tell the user: "I've created **Issue #<NUMBER>** and moved it to **In Progress**."

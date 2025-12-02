---
description: Complete a feature. Closes the GitHub Issue and moves it to "Done".
---

# Workflow: Complete Feature

Follow these steps when the user finishes a task.

## 1. Close the Issue
If the task is linked to a GitHub Issue, close it.

```bash
# Close the issue by number or URL
gh issue close <ISSUE_NUMBER_OR_URL> --comment "Completed by Agent."
```

## 2. Move to "Done" (Project Board)
Ensure the item is moved to the "Done" column on the project board.
*Note: Closing the issue might auto-move it if workflows are configured, but it's safer to force it.*

**Variables:**
-   `$projectId`: "PVT_kwHOBryib84BJnlJ"
-   `$statusFieldId`: "PVTSSF_lAHOBryib84BJnlJzg5unMg"
-   `$doneOptionId`: "98236657"

```powershell
# Get the Project Item ID first
gh project item-list 3 --owner JStaRFilms --format json --limit 50

# Update status
& "C:\Program Files\GitHub CLI\gh.exe" project item-edit --id <PROJECT_ITEM_ID> --project-id "PVT_kwHOBryib84BJnlJ" --field-id "PVTSSF_lAHOBryib84BJnlJzg5unMg" --single-select-option-id "98236657"
```

## 3. Confirm
Tell the user: "I've closed **Issue #<NUMBER>** and moved it to **Done**."

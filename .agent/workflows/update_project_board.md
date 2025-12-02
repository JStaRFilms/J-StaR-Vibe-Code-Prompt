---
description: How to update the J StaR Personal Platform GitHub Project Board
---

This workflow guides you through updating the project board to reflect the latest progress.

## 1. Check Current Status
First, review the `docs/project_status.md` file and the recent git history to understand what has been completed.

```bash
git log -n 5 --oneline
cat docs/project_status.md
```

## 2. List Project Items
View the current items on the board to find the IDs of tasks you want to update.

```bash
gh project item-list 1 --owner JStaRFilms --limit 30
```

## 3. Update Item Status
To move an item (e.g., to "In Progress" or "Done"), you typically edit its status field.
*Note: The CLI support for editing custom fields like "Status" can be complex. The easiest way is often to use the browser, but you can also use `gh project item-edit` if you know the field ID.*

**Recommended:** Open the board in the browser for visual updates.
```bash
# Open the project board
start https://github.com/users/JStaRFilms/projects/1
```

## 4. Add New Items
If you identify new requirements or bugs, add them immediately.

```bash
gh project item-create 1 --owner JStaRFilms --title "New Feature Title" --body "Feature description"
```

## 5. Sync Documentation
After updating the board, ensure `docs/project_status.md` reflects the major changes.

1.  Open `docs/project_status.md`.
2.  Update the Kanban tables (Backlog, Ready, In Progress, Done).
3.  Update the "Overall Progress" percentage.

## 6. Commit Changes
If you modified the documentation, commit it.

```bash
git add docs/project_status.md
git commit -m "docs: update project status"
```

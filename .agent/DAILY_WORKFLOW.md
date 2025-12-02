# Daily Development Workflow

This document defines the standard process for working on the J StaR Personal Platform. It ensures that our GitHub Project Board remains a "living" reflection of reality without adding overhead to your creative flow.

## The "Just Tell Me" Protocol

You don't need to manage the board manually. You just talk to the Agent, and the Agent handles the admin work.

### Phase 1: Start a Task 🚀

**You say:** *"Agent, let's work on the [Feature Name]."*

**The Agent will:**
1.  **Create Issue:** Create a **Real GitHub Issue** in the repository (e.g., `Issue #42`).
2.  **Add to Board:** Add this issue to the Roadmap project.
3.  **Move to In Progress:** Move the card to the **In Progress** column.

### Phase 2: The Build (Iterative) 🔨

**You say:** *"I've finished the basic UI, now let's hook up the API."*

**The Agent will:**
1.  **Update:** Add comments to the Issue or update the PR.
2.  **Commit:** Use commit messages like `feat: add UI logic (ref #42)` to link code to the task.

### Phase 3: Finish & Verify ✅

**You say:** *"Okay, that works perfectly. Let's wrap this up."*

**The Agent will:**
1.  **Close Issue:** Run `gh issue close #42`.
2.  **Move to Done:** Ensure the card moves to **Done** on the roadmap.
3.  **Celebrate:** Confirm completion.

---

## Agent Instructions (System Prompt)

*For the Agent reading this:*

When the user initiates work, ALWAYS run the `start_feature` workflow.
When the user completes work, ALWAYS run the `complete_feature` workflow.

**Commands:**
-   Start: `gh project item-edit --id <ID> --field-id <StatusFieldID> --single-select-option-id <InProgressID>`
-   Finish: `gh project item-edit --id <ID> --field-id <StatusFieldID> --single-select-option-id <DoneID>`

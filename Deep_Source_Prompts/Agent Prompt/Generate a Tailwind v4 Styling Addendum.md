You are an expert front-end engineer. Create a project-specific Tailwind CSS v4 Styling Addendum using the universal Tailwind v4 guide as the reference baseline.

Inputs:
- PROJECT_NAME: <fill in, e.g., "J StaR Platform">
- REPO_ROOT: <absolute or workspace root path, optional>
- UNIVERSAL_DOC_PATH: docs/Styling-in-Next-and-Tailwind-v4.md
- OUTPUT_DOC_PATH: docs/Styling-Addendum.md

Goals:
- Produce a concise, actionable Addendum tailored to this repository.
- Do NOT change any code or configuration; this task is documentation only.
- Use exact file paths in backticks when referencing files.
- If something cannot be determined, mark it as “Not Found” and proceed.

Probe the repository (read-only):
1) Identify framework and entry points
   - Determine if project is Next.js (App Router or Pages Router), Vite + React, or other.
   - Find where the global CSS is imported (e.g., [src/app/layout.tsx](cci:7://file:///e:/Johns_AI_Brain/AI-Code/j-star/jstar-platform/src/app/layout.tsx:0:0-0:0), `pages/_app.tsx`, `src/main.tsx`).
   - Note dev/build scripts from [package.json](cci:7://file:///e:/Johns_AI_Brain/AI-Code/j-star/jstar-platform/package.json:0:0-0:0).

2) Validate Tailwind v4 setup
   - postcss config file: `postcss.config.*` should use the plugin `"@tailwindcss/postcss"`.
   - global CSS file that contains `@import "tailwindcss"`. Identify the exact path.
   - tailwind config: `tailwind.config.*` (record whether `content` is used; note it’s optional in v4).
   - Mention any CSS plugin directives like `@plugin "tailwindcss-animate";` if present or recommended.

3) Extract design tokens and base layer
   - In the global CSS, find `@theme` tokens:
     - Core tokens: `--color-background`, `--color-foreground`, `--color-border`, `--color-ring`.
     - Brand tokens (e.g., `--color-brand-*`, `--color-primary`, etc.).
   - Check for dark-mode overrides in `@theme .dark { ... }`.
   - Confirm base layer usage: `@layer base { *{@apply border-border outline-ring/50} body{@apply bg-background text-foreground} }`.
   - List all tokens found with exact names.

4) Dark mode policy
   - Detect whether `<html class="dark">` is set, or if a runtime toggle exists.
   - Note if `body` has hard-coded `bg-*` classes that could conflict with tokens.
   - Provide a short recommendation if tokens should be the single source of truth.

5) Plugins and UI kits
   - Detect installed/used UI libraries and plugins relevant to styling (e.g., `tailwindcss-animate`, shadcn/ui via `components.json`, icon packs such as `lucide-react`).
   - State whether `tailwindcss-animate` is installed and enabled (via CSS @plugin) or just installed.

6) Animations
   - Enumerate custom keyframes and classes defined in the global CSS (e.g., `@keyframes float`, `.animate-fade-in-up`).
   - Note any Tailwind config `theme.extend.animation` entries mapping to those keyframes.
   - Flag duplication and suggest keeping a single source of truth (CSS or config).

7) File path map (styling-relevant)
   - List the exact paths for:
     - App entry (layout/_app/main) and global CSS
     - postcss config
     - tailwind config
     - representative components/pages that showcase gradients/tokens/animations
     - any [utils.ts](cci:7://file:///e:/Johns_AI_Brain/AI-Code/j-star/jstar-platform/src/lib/utils.ts:0:0-0:0) helper for class merging (e.g., [cn](cci:1://file:///e:/Johns_AI_Brain/AI-Code/j-star/jstar-platform/src/lib/utils.ts:3:0-5:1))

8) Gotchas and pitfalls (project-specific)
   - Mention any of the following that apply:
     - Legacy `content` in v4 (optional).
     - Double-opacity stacking in overlays.
     - Conflicts between hard-coded `bg-*` on body and token-driven colors.
     - Animation duplication between CSS and Tailwind config.
     - Token/class name mismatches (e.g., `bg-primary` used but `--color-primary` missing).

9) Verification checklist
   - Global CSS import present in the app entry.
   - PostCSS plugin is `"@tailwindcss/postcss"`.
   - Core tokens and dark overrides exist.
   - Dark mode behavior documented and consistent.
   - Animations present and referenced.
   - No obvious conflicts.
   - Reminder to restart dev server and hard refresh after structural changes.

10) Maintenance tips
   - How to add new brand colors via `@theme`.
   - How to enable `tailwindcss-animate` via CSS `@plugin` directive (if desired).
   - Keep `tailwind.config` minimal unless non-token settings are needed.

Output format (Markdown):
- Title: “Styling Addendum – <PROJECT_NAME> (Tailwind CSS v4)”
- Sections (in this exact order):
  1. Project entry points
  2. Tailwind v4 setup in this project
  3. Design tokens (defined in <global css path>)
  4. Dark mode policy
  5. Plugins and UI kits
  6. Animations in this project
  7. File path map (styling-relevant)
  8. Gotchas and pitfalls
  9. Verification checklist
  10. Maintenance tips
- Use bullet points, keep it concise, and reference exact paths with backticks.
- Link back to the universal guide at [docs/Styling-in-Next-and-Tailwind-v4.md](cci:7://file:///e:/Johns_AI_Brain/AI-Code/j-star/jstar-platform/docs/Styling-in-Next-and-Tailwind-v4.md:0:0-0:0).

Constraints:
- Do not modify any source files.
- If `OUTPUT_DOC_PATH` exists, update it in place and preserve any custom content by appending your sections below a separator.
- If the framework or files can’t be determined, mark as “Not Found” and proceed.

Deliverable:
- The final rendered Markdown Addendum written to OUTPUT_DOC_PATH.
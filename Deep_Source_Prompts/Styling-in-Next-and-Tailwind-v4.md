---
tags: []
ai_processed: true
---

# Universal Styling Guide for Tailwind CSS v4 (with AI Agent Prompt)

  

This is a universal, framework-agnostic guide for using Tailwind CSS v4 in modern JavaScript/TypeScript apps (Next.js, Vite/React, Remix, etc.). It explains the v4 “CSS-first” model, how to define tokens with `@theme`, how to wire global styles, dark mode, animations, and a battle-tested troubleshooting checklist. A copy-pasteable AI agent prompt is included at the end to automate fixes in any repo.

  

---

  

## What changed in Tailwind v4

  

- Tailwind v4 is driven from your CSS entry using `@import "tailwindcss"`.

- PostCSS loads Tailwind via the `"@tailwindcss/postcss"` plugin.

- Design tokens (colors, etc.) are defined in CSS using `@theme`, not extended in `tailwind.config`.

- Dark-mode and variants work the same, but you typically do not need custom variant hacks.

- `tailwind.config` is minimal. In v4, the legacy `content` option is not needed for utility generation.

  

---

  

## Minimal setup

  

- Install packages (versions can vary, examples shown):

  

```bash

npm i -D tailwindcss @tailwindcss/postcss postcss autoprefixer

```

  

- PostCSS config (postcss.config.[js|cjs|mjs]):

  

```js

// postcss.config.mjs

const config = {

  plugins: ["@tailwindcss/postcss"],

};

export default config;

```

  

- Global stylesheet (e.g., `src/app/globals.css` or `src/styles/tailwind.css`):

  

```css

@import "tailwindcss";

  

/* Core design tokens used by Tailwind v4 utilities */

@theme {

  /* Required core color tokens used by utilities like bg-background, text-foreground, border-border, ring */

  --color-background: #ffffff;

  --color-foreground: #0b1221;

  --color-border: #e5e7eb;

  --color-ring: #3b82f6;

  

  /* Example brand tokens (add your own) */

  --color-brand-primary: #1e40af;

  --color-brand-secondary: #4f46e5;

  --color-brand-accent: #8b5cf6;

}

  

/* Dark-mode overrides (activated by adding class="dark" on <html>) */

@theme .dark {

  --color-background: #0b1221;

  --color-foreground: #e5e7eb;

  --color-border: #374151;

  --color-ring: #8b5cf6;

}

  

/* Optional: Your custom keyframes and component classes */

@keyframes fade-in-up {

  from { opacity: 0; transform: translateY(16px); }

  to { opacity: 1; transform: translateY(0); }

}

  

.animate-fade-in-up { animation: fade-in-up 0.6s ease-out both; }

  

/* Base layer examples that leverage the tokens */

@layer base {

  * { @apply border-border outline-ring/50; }

  body { @apply bg-background text-foreground; }

}

```

  

- Import the stylesheet in your app’s entry:

  - Next.js App Router: `src/app/layout.tsx`

  

    ```tsx

    import "./globals.css";

    export default function RootLayout({ children }) {

      return (

        <html lang="en">

          <body>{children}</body>

        </html>

      );

    }

    ```

  

  - Vite + React: `src/main.tsx`

  

    ```tsx

    import React from "react";

    import ReactDOM from "react-dom/client";

    import "./styles.css"; // contains @import "tailwindcss";

    import App from "./App";

  

    ReactDOM.createRoot(document.getElementById("root")!).render(<App />);

    ```

  

  - Next.js Pages Router: `pages/_app.tsx`

  

    ```tsx

    import type { AppProps } from "next/app";

    import "../styles/globals.css";

  

    export default function MyApp({ Component, pageProps }: AppProps) {

      return <Component {...pageProps} />;

    }

    ```

  

---

  

## About `tailwind.config` in v4

  

- You generally do not need `content` for utility generation in v4.

- Keep `tailwind.config` minimal. Example:

  

```ts

// tailwind.config.ts

import type { Config } from "tailwindcss";

  

const config: Config = {

  // Optional: v4 still accepts extend/theme here, but prefer @theme tokens in CSS

  theme: {

    extend: {},

  },

  plugins: [],

};

  

export default config;

```

  

- Prefer defining colors, spacing scale, etc. with `@theme` in CSS. Use config only when you truly need it (e.g., custom screens, container settings not expressible in CSS tokens).

  

---

  

## Tokens and usage

  

- Define tokens with `@theme` in your CSS file.

- Tailwind v4 maps tokens to utilities automatically. Examples:

  - `bg-background`, `text-foreground`, `border-border`, `ring` use the core tokens.

  - Custom tokens: `--color-brand-primary` → `bg-brand-primary`, `text-brand-primary`, `from-brand-primary`.

  

```css

@theme {

  --color-brand-primary: #1e40af;

  --color-brand-accent: #8b5cf6;

}

```

  

```tsx

<button className="bg-brand-primary text-white hover:bg-brand-primary/90 px-4 py-2 rounded-md">

  Get Started

</button>

```

  

---

  

## Dark mode

  

- Two common patterns:

  1) Add `class="dark"` to `<html>` to force dark.

  2) Toggle `dark` class at runtime (user preference, system preference, etc.).

  

- Define dark tokens in `@theme .dark { ... }` so your utilities adapt automatically.

  

```tsx

// Example toggle (React)

function ThemeToggle() {

  const toggle = () => {

    document.documentElement.classList.toggle("dark");

  };

  return <button onClick={toggle}>Toggle theme</button>;

}

```

  

- Avoid custom `@custom-variant dark` hacks; Tailwind’s built-in `dark:` works with the `dark` class.

  

---

  

## Animations

  

- Define keyframes in CSS and reference them via utility-like classes:

  

```css

@keyframes float {

  0%,100% { transform: translateY(0); }

  50% { transform: translateY(-8px); }

}

  

.animate-float { animation: float 3s ease-in-out infinite; }

```

  

- Optional plugin: `tailwindcss-animate`. In v4, load via CSS plugin directive:

  

```css

@import "tailwindcss";

@plugin "tailwindcss-animate";

```

  

- JavaScript animation libraries (e.g., `motion`) can coexist; they don’t alter Tailwind’s pipeline.

  

---

  

## Troubleshooting checklist (v4)

  

- **Global import present**: Your app’s entry imports the CSS that contains `@import "tailwindcss"`.

- **PostCSS plugin**: `"@tailwindcss/postcss"` is in `postcss.config`.

- **Core tokens defined**: `--color-background`, `--color-foreground`, `--color-border`, `--color-ring` exist in `@theme`.

- **Dark mode**: Using the `dark` class on `<html>` and `@theme .dark { ... }` overrides; no custom variant conflicts.

- **Minimal config**: Don’t rely on `content` or v3 config-based color extension for utilities.

- **Restart and hard-refresh**: After structural changes, restart dev server and do a hard refresh (Ctrl/Cmd+Shift+R).

- **Inspect the element**: Verify final class list and computed styles in DevTools.

  

---

  

## Common symptoms and fixes

  

- **“All styling disappeared”**

  - Missing global CSS import at the app entry.

  - PostCSS plugin not configured.

  - Core tokens not defined, so utilities like `bg-background` do nothing.

  

- **Custom color classes don’t exist**

  - Tokens were not defined in `@theme`.

  - You tried to extend colors in `tailwind.config` (v3-style). Move them to CSS tokens.

  

- **Dark mode doesn’t apply**

  - No `dark` class on `<html>` or conflicting custom variant.

  - Tokens not overridden in `@theme .dark { ... }`.

  

- **Animations not running**

  - Keyframes/classes not defined in CSS.

  - Conflicting transitions or zero opacity/translate from other utilities.

  

---

  

## Reference snippets

  

- PostCSS:

  

```js

// postcss.config.mjs

const config = { plugins: ["@tailwindcss/postcss"] };

export default config;

```

  

- Minimal `tailwind.config`:

  

```ts

// tailwind.config.ts

import type { Config } from "tailwindcss";

const config: Config = { theme: { extend: {} }, plugins: [] };

export default config;

```

  

- Core tokens and dark overrides:

  

```css

@theme {

  --color-background: #ffffff;

  --color-foreground: #0b1221;

  --color-border: #e5e7eb;

  --color-ring: #3b82f6;

}

@theme .dark {

  --color-background: #0b1221;

  --color-foreground: #e5e7eb;

  --color-border: #374151;

  --color-ring: #8b5cf6;

}

```

  

---

  

## Copy-paste AI Agent Prompt (Tailwind v4 Styling)

  

Use this prompt to guide any AI agent to diagnose and fix Tailwind v4 styling issues in an unfamiliar repo.

  

```text

You are an expert front-end engineer. Audit and fix Tailwind CSS v4 styling in this repository. Follow these steps strictly and show diffs for any file edits:

  

1) Probe the project

- Open postcss config: postcss.config.*

- Open Tailwind config: tailwind.config.*

- Find the global CSS that imports Tailwind (search for '@import "tailwindcss"').

- Find the top-level layout/app entry that imports the global CSS (Next.js App Router: src/app/layout.*; Vite/React: main.*).

  

2) Validate Tailwind v4 setup

- postcss.config uses plugin "@tailwindcss/postcss".

- Global CSS contains '@import "tailwindcss";'. If not present, add it once.

- tailwind.config is minimal; do NOT rely on v3-style 'content' or color extension for utilities.

  

3) Define core tokens and dark overrides

- In the global CSS, add:

  @theme { --color-background; --color-foreground; --color-border; --color-ring; }

  @theme .dark { dark equivalents }

- Ensure base layer applies them:

  @layer base { *{@apply border-border outline-ring/50} body{@apply bg-background text-foreground} }

  

4) Dark mode

- Ensure dark mode is controlled via 'dark' class on <html>.

- Remove any custom '@custom-variant dark' variants that could conflict.

  

5) Animations

- If custom animations are used, ensure keyframes/classes exist in CSS.

- If tailwindcss-animate is desired, add '@plugin "tailwindcss-animate";' in CSS (v4 style).

  

6) Verify and test

- Restart dev server and hard refresh.

- Inspect a page to confirm utilities (bg-background, text-foreground, etc.) render.

  

Deliverables:

- Summarize findings and root cause.

- Provide minimal diffs to fix the setup.

- List follow-up best practices and verification steps.

```

  

---

  

## TL;DR

  

- Import Tailwind via CSS: `@import "tailwindcss"`.

- Configure PostCSS to load the Tailwind plugin.

- Define tokens with `@theme` (core: background, foreground, border, ring) and override them in `@theme .dark`.

- Keep `tailwind.config` minimal; avoid v3-style color extension and `content` reliance.

- Add animations via CSS keyframes (and optional `@plugin "tailwindcss-animate"`).

- Restart after structural changes; hard refresh.
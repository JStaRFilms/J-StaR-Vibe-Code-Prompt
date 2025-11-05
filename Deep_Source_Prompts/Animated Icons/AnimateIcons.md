---
tags: []
ai_processed: true
---

# AnimateIcons

![Animate Icons Preview](https://animateicons.vercel.app/_next/static/media/og.8b896778.png)

A sleek React library for animated SVG icons that move with purpose. Transform static designs into engaging user experiences with smooth, performant animations.

---

## 📦 Installation

You can install any icon directly into your project using the **shadcn** CLI:

### npm example

```
npx shadcn@latest add "https://animateicons.vercel.app/icons/bell.json"
```

### bun example

```
bunx shadcn@latest add "https://animateicons.vercel.app/icons/bell.json"
```

Replace `bell.json` with any icon name from our gallery.
View all icons → **[animateicons.vercel.app](https://animateicons.vercel.app)**

---

## 🚀 Usage

After installing an icon, import it into your component:

```tsx
"use client";
import { AtomIcon } from "./components/ui/AtomIcon";

export default function Page() {
	return <AtomIcon />;
}
```

### Bell Icon Example

```tsx
"use client";
import { useRef } from "react";
import { BellRingIcon, BellRingIconHandle } from "./components/ui/BellRingIcon";

export default function Page() {
    
	const bellRef = useRef<BellRingIconHandle>(null);

	return (
		<>
			{/* Default hover animation */}
			<BellRingIcon size={32} />

			{/* Programmatic control */}
			<button onClick={() => bellRef.current?.startAnimation()}>Start</button>
			<button onClick={() => bellRef.current?.stopAnimation()}>Stop</button>
			<BellRingIcon ref={bellRef} size={32} />
		</>
	);
}
```

---

## ✨ Features

- 🎯 Smooth, purposeful animations out-of-the-box
- ⚡ Lightweight & built with `motion/react`
- 🎨 100+ customizable SVG icons
- 📱 Works with React & Next.js
- 🔧 Optimized for performance

---

## Notes

> **Note:** This project is a work in progress — new animated icons are added regularly.
> We’d love your feedback and contributions as the project evolves!
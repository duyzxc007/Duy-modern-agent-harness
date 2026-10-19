---
name: fullstack-web
description: Master web application engineering and UI design hub. Enforces modern web standards, Chrome DevTools debugging, Chrome extensions (Manifest V3), and the signature Dark Obsidian (#0B0B0E) & Neon Yellow (#FACC15) Glassmorphism design system.
license: MIT
---

# Master Fullstack Web & UI Hub

End-to-end frontend and fullstack web engineering with state-of-the-art modern aesthetics and interactive debugging.

## 1. Signature UI Design System (Modern SaaS Standard)
- **Background**: Deep Obsidian (`#0B0B0E`), Cards Dark Slate (`#14141B`), Borders subtle 1px (`rgba(255,255,255,0.08)`).
- **Typography**: Headings Pure White (`#F8F9FA`, font-weight 700-800), Body Cool Gray (`#94A3B8`, font-weight 400).
- **Accent**: Neon Yellow / Radiant Amber (`#FACC15`, `#EAB308`).
- **Glassmorphism**: `backdrop-filter: blur(16px); background: rgba(20,20,27,0.7); border: 1px solid rgba(250,204,21,0.15);`.
- **Lighting**: Soft radial glow blur blobs in background layer.
- **Hero & Bento**: Headline 2 lines, Dual CTA buttons (Primary Yellow + Secondary Translucent), Bento Grid cards, Infinite CSS Marquee testimonials.

## 2. Workflows & Runbooks
Progressively disclosed in `workflows/`:
- `workflows/design_system.md` — CSS tokens, color variables, micro-animations, glass cards, bento grids.
- `workflows/modern_web_guidance.md` — HTML5 semantic elements, container queries, `:has()`, View Transitions, CWV (LCP/INP).
- `workflows/devtools_debugging.md` — Chrome DevTools MCP workflows (DOM inspection, network requests, console errors, Lighthouse).
- `workflows/chrome_extensions.md` — Manifest V3, background service workers, content scripts, declarativeNetRequest.

## 3. Fast Triggers
- **Building Web UI**: Apply signature dark/yellow theme. Avoid plain bootstrap/flat black. Use CSS-only animations.
- **Debugging Web Issues**: Use Chrome DevTools MCP (`list_console_messages`, `get_network_request`, `evaluate_script`).
- **Chrome Extensions**: Strict Manifest V3 rules. No eval/inline scripts. Minimal permissions.

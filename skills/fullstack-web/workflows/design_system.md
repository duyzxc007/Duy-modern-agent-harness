# Modern SaaS Design System Tokens
```css
:root {
  --bg-deep: #0B0B0E;
  --bg-card: #14141B;
  --bg-card-glass: rgba(20, 20, 27, 0.75);
  --text-main: #F8F9FA;
  --text-muted: #94A3B8;
  --accent-yellow: #FACC15;
  --accent-amber: #EAB308;
  --border-glass: rgba(255, 255, 255, 0.08);
  --border-accent: rgba(250, 204, 21, 0.25);
  --glow-yellow: 0 0 24px rgba(250, 204, 21, 0.2);
}

.glass-card {
  background: var(--bg-card-glass);
  backdrop-filter: blur(16px);
  -webkit-backdrop-filter: blur(16px);
  border: 1px solid var(--border-glass);
  border-radius: 12px;
  transition: transform 0.2s ease, border-color 0.2s ease, box-shadow 0.2s ease;
}

.glass-card:hover {
  border-color: var(--border-accent);
  box-shadow: var(--glow-yellow);
  transform: translateY(-2px);
}
```

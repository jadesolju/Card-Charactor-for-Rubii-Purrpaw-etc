# 🌸🎞️ Template: Sakura Noir (T01)
**Cross-Over:** Japanese Spring Bloom × French Film Noir  
**Slug:** `sakura-noir` | **Ref ID:** T01

---

## 🎨 Mood & Vision

> Melancholic beauty — the bittersweet ache of cherry blossoms that fall too quickly, filtered through the smoke-hazed lens of a Parisian noir detective story.

A character born in springtime but destined for shadows. Every petal that falls is a memory dissolving.

---

## 🖌️ Palette

| Role | Hex | Description |
|------|-----|-------------|
| Background | `#1A0A0F` | Deep crimson-noir midnight |
| Surface | `#4A3545` | Smoky mauve dusk |
| Mid | `#C2A0A8` | Dusty rose grey |
| Highlight | `#F9D0C9` | Soft petal blush |

**Gradient suggestion:** `linear-gradient(160deg, #1A0A0F 0%, #4A3545 50%, #2A1520 100%)`

---

## 🔤 Typography

- **Header:** `Cormorant Garamond` — elegant, thin-weighted, literary
- **Body:** `Noto Serif JP` — respects Japanese character weight
- **Accent:** `Philosopher` — for quotes and poetic fragments

```css
@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300;400;600&family=Noto+Serif+JP:wght@300;400&family=Philosopher&display=swap');
```

---

## 🏗️ Recommended Layout

**L01 — Classic Character Profile** or **L03 — Tarot Card**

```
┌────────────────────────────┐
│  [Falling petals overlay]  │
│  ┌──────────────────────┐  │
│  │   CHARACTER PORTRAIT  │  │
│  │   [ink-wash effect]  │  │
│  └──────────────────────┘  │
│  ──── 名前 / NOM ────────  │
│  [ Alias in italic serif ] │
│  ┄┄┄┄ TIMELINE ┄┄┄┄┄┄┄┄┄  │
│  [affection / trust meter] │
│  ╌╌ haiku fragment ╌╌╌╌╌╌  │
└────────────────────────────┘
```

---

## ✨ Key CSS Effects

```css
/* Vignette Shadow Border */
.card {
  box-shadow: inset 0 0 80px rgba(26, 10, 15, 0.85);
}

/* Petal Drift Keyframe */
@keyframes petalFall {
  0%   { transform: translateY(-10%) rotate(0deg); opacity: 0.8; }
  100% { transform: translateY(110%) rotate(45deg); opacity: 0; }
}

/* Film Grain Overlay */
.card::after {
  content: '';
  position: absolute; inset: 0;
  background-image: url("data:image/svg+xml,..."); /* noise SVG */
  opacity: 0.06;
  pointer-events: none;
}
```

---

## 🎴 Signature Elements

- **Falling cherry petal silhouettes** as decorative dividers
- **Ink-wash wash effect** behind the portrait (`mix-blend-mode: multiply`)
- **Noir vignette** — heavy dark shadow inset on all edges
- **Film grain texture** — subtle noise overlay at 6% opacity
- **Haiku or poem fragment** in italic serif as flavor text

---

## 🔗 Cross-Over Pairings

| Pair With | Result |
|-----------|--------|
| **T05 Retro Wave Dream** | Lo-fi synthwave sakura aesthetic |
| **T12 Imperial Phoenix** | Imperial spring bloodline |
| **T18 Baroque Decay** | Fallen aristocrat in cherry blossom season |

---

## 💬 Prompt Example

```
/turbo
Theme: Sakura Noir (T01)
Layout: L01 Classic Profile
Character: Sable Hanako — a retired assassin living in Paris, Japanese origin
Mood: melancholic, beautiful, dangerous
Palette: #1A0A0F base, petal blush highlights
Effects: petalFall animation, film grain, vignette border
Meters: Trust 40%, Danger 85%
```

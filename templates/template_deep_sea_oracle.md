# 🌊🔮 Template: Deep Sea Oracle (T09)
**Cross-Over:** Abyssal Ocean Depth × Ancient Oracle Mythology  
**Slug:** `deep-sea-oracle` | **Ref ID:** T09

---

## 🎨 Mood & Vision

> From the crushing dark of the deepest trench, a voice speaks — not in words, but in pressure changes and bioluminescent flickers. The oracle has always lived where light cannot follow.

A character of ancient, patient wisdom. They know the answer before you ask. They waited here before the question existed.

---

## 🖌️ Palette

| Role | Hex | Description |
|------|-----|-------------|
| Background | `#020B18` | Abyssal midnight blue-black |
| Surface | `#0A3D62` | Deep ocean pressure zone |
| Mid | `#0097A7` | Bioluminescent cyan teal |
| Highlight | `#E0F7FA` | Surface light shimmer |

**Gradient suggestion:** `radial-gradient(ellipse at 50% 80%, #0097A7 0%, #0A3D62 35%, #020B18 100%)`

---

## 🔤 Typography

- **Header:** `Sorts Mill Goudy` — ancient, classical weight
- **Body:** `Exo 2` — clean but slightly sci-fi for the depth-tech hybrid
- **Accent:** `Philosopher` — for prophetic utterances

```css
@import url('https://fonts.googleapis.com/css2?family=Sorts+Mill+Goudy:ital@0;1&family=Exo+2:wght@300;400;600&family=Philosopher&display=swap');
```

---

## 🏗️ Recommended Layout

**L10 — Altar / Shrine Card** or **L04 — HUD / Interface Panel**

```
┌────[Sonar Wave Border]──────┐
│   · ° · ∿ · ° · bubble ·  │
│  ┌───────────────────────┐  │
│  │  PORTRAIT ZONE        │  │
│  │  [bioluminescent glow]│  │
│  └───────────────────────┘  │
│  ≈≈≈ THE ORACLE ≈≈≈≈≈≈≈≈≈  │
│  [depth pressure gauge]     │
│  [sonar ping rings]         │
│  ···· PROPHECY TEXT ·····   │
│  [kelp silhouette border]   │
└─────────────────────────────┘
```

---

## ✨ Key CSS Effects

```css
/* Bioluminescent Glow */
.character-portrait {
  filter: drop-shadow(0 0 12px #00E5FF) drop-shadow(0 0 30px rgba(0,151,167,0.4));
}

/* Sonar Wave Border */
@keyframes sonarPing {
  0%   { box-shadow: 0 0 0 0 rgba(0,151,167,0.6); }
  70%  { box-shadow: 0 0 0 20px rgba(0,151,167,0); }
  100% { box-shadow: 0 0 0 0 rgba(0,151,167,0); }
}
.card {
  animation: sonarPing 3s ease-out infinite;
}

/* Bubble Particle Float */
@keyframes bubbleRise {
  0%   { transform: translateY(0) scale(1); opacity: 0.7; }
  100% { transform: translateY(-120%) scale(1.2); opacity: 0; }
}
```

---

## 🎴 Signature Elements

- **Bioluminescent glow** — teal drop-shadow on portrait
- **Sonar wave border** — pulsing ring animation outward from card
- **Depth gauge** — vertical pressure meter on the side
- **Bubble particles** — floating upward CSS animation
- **Kelp silhouette** — SVG fringe border on card bottom

---

## 🔗 Cross-Over Pairings

| Pair With | Result |
|-----------|--------|
| **T07 Aurora Borealis** | Cosmic ocean prophet — sky and sea as one |
| **T20 Eternal Frost** | The oracle frozen beneath an arctic sea |
| **T14 Void Walker** | An entity that transcended the ocean for the void |

---

## 💬 Prompt Example

```
/turbo
Theme: Deep Sea Oracle (T09)
Layout: L10 Altar / Shrine Card
Character: Thyren Abyssal — an ancient seer who lives 7km below the ocean surface
Mood: crushing, prophetic, ancient, bioluminescent
Palette: #020B18 base, #0097A7 glow accent, #E0F7FA shimmer
Effects: sonarPing border, bubbleRise particles, bioluminescent portrait glow
Meters: Sanity 20%, Corruption 65%
Special: Include a "Depth: 7,342m" gauge and a prophetic quote in italic
```

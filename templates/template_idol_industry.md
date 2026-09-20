# 🌿⚡ Template: Idol Industry (T16)
**Cross-Over:** K-Pop / J-Pop Idol Production × Stadium Pop Art  
**Slug:** `idol-industry` | **Ref ID:** T16

---

## 🎨 Mood & Vision

> Manufactured perfection — a carefully constructed dream. Behind the glitter and the perfectly timed wink, something real might be hiding. Or nothing. You're not sure which is scarier.

The parasocial machine, rendered beautiful. A character who is simultaneously a person and a product.

---

## 🖌️ Palette

| Role | Hex | Description |
|------|-----|-------------|
| Background | `#1A0033` | Deep concert hall dark purple |
| Surface | `#BF5FFF` | Stage light purple haze |
| Mid | `#FF85B3` | Signature idol pink |
| Highlight | `#FFE6F0` | Spotlight blush white |

**Gradient suggestion:** `linear-gradient(135deg, #1A0033 0%, #4B0082 40%, #FF85B3 100%)`

---

## 🔤 Typography

- **Header:** `Outfit` — modern, clean, youth-brand feel
- **Body:** `Noto Sans KR` — multilingual support for Korean/Japanese text
- **Accent:** `Bebas Neue` — bold slab for concert poster elements

```css
@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;700&family=Noto+Sans+KR:wght@300;400;700&family=Bebas+Neue&display=swap');
```

---

## 🏗️ Recommended Layout

**L01 — Classic Character Profile** or **L07 — Magazine Cover / Editorial**

```
┌──[Concert Ticket Border]───┐
│  ⊹ CONCERT WORLD TOUR ⊹   │
│  ┌──────────────────────┐  │
│  │   IDOL PORTRAIT      │  │
│  │  [holographic foil]  │  │
│  └──────────────────────┘  │
│  ─────────────────────────  │
│   ✦ STAGE NAME ✦           │
│   Group · Debut Year        │
│  ─────────────────────────  │
│  [sparkle particles]        │
│  Affection ████████░░ 80%  │
│  [fan chant typography]     │
└────────────────────────────┘
```

---

## ✨ Key CSS Effects

```css
/* Holographic Foil Background */
.card-bg {
  background: linear-gradient(
    135deg,
    #FFE6F0 0%, #BF5FFF 25%, #00BFFF 50%, #FF85B3 75%, #FFE6F0 100%
  );
  background-size: 400% 400%;
  animation: holographicShift 4s ease infinite;
}
@keyframes holographicShift {
  0%   { background-position: 0% 50%; }
  50%  { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* Sparkle Particle */
@keyframes sparkle {
  0%, 100% { opacity: 0; transform: scale(0.5); }
  50%       { opacity: 1; transform: scale(1.2); }
}
.sparkle { animation: sparkle 1.5s ease-in-out infinite; }

/* Light Stick Shine Sweep */
@keyframes shineSweep {
  0%   { background-position: -200% center; }
  100% { background-position: 200% center; }
}
```

---

## 🎴 Signature Elements

- **Concert ticket border** — perforated dashed edge with "ADMIT ONE" text
- **Holographic foil texture** — animated gradient shift on card surface
- **Sparkle particles** — small star burst elements scattered across card
- **Light stick silhouette** — decorative element in brand color
- **Fan chant typography** — alternating bold/light weight for call-and-response effect

---

## 🔗 Cross-Over Pairings

| Pair With | Result |
|-----------|--------|
| **T05 Retro Wave Dream** | Idol from a neon-drenched retro future |
| **T03 Neon Tarot** | The fate card of a pop star's destiny |
| **T11 Hauntology** | An idol from a group that disbanded — VHS era nostalgia |

---

## 💬 Prompt Example

```
/turbo
Theme: Idol Industry (T16)
Layout: L07 Magazine Cover
Character: NOVA — center of a 5-member girl group, 3rd year debut
Mood: bright, manufactured, slightly sad underneath
Palette: #1A0033 base, #FF85B3 highlight, holographic foil texture
Effects: holographicShift background, sparkle particles, shine sweep
Special: Concert ticket border, Affection meter 80%, "WORLD TOUR 2026" banner
Fan chant: "NO-VA! NO-VA! ♡" in bold/light alternating weight
```

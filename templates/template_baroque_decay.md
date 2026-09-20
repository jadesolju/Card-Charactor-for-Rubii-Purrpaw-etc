# 💀✨ Template: Baroque Decay (T18)
**Cross-Over:** European Baroque Opulence × Memento Mori Gothic  
**Slug:** `baroque-decay` | **Ref ID:** T18

---

## 🎨 Mood & Vision

> Gilded mortality — a ballroom where the plaster is cracking, the chandeliers are half-dark, and the beauty is more stunning *because* it is falling apart.

A character who was once everything. Who may still be. Or who never was.

---

## 🖌️ Palette

| Role | Hex | Description |
|------|-----|-------------|
| Background | `#1A0A00` | Deep mahogany black |
| Surface | `#8B6914` | Tarnished bronze gold |
| Mid | `#D4AF37` | Burnished old gold |
| Highlight | `#F5E6C8` | Aged ivory cream |

**Gradient suggestion:** `linear-gradient(135deg, #1A0A00 0%, #2C1500 40%, #8B6914 100%)`

---

## 🔤 Typography

- **Header:** `Cormorant Garamond` — aristocratic, dramatic weight contrast
- **Body:** `EB Garamond` — classical book typography with oldstyle numerals
- **Accent:** `Cinzel Decorative` — for titles, epitaphs, and headings

```css
@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300;500;700&family=EB+Garamond:ital,wght@0,400;1,400&family=Cinzel+Decorative&display=swap');
```

---

## 🏗️ Recommended Layout

**L03 — Tarot Card** or **L10 — Altar / Shrine Card**

```
┌──────[Filigree Arch]───────┐
│  ✦ · · · · · · · · · ✦   │
│   ┌──────────────────┐    │
│   │  PORTRAIT ZONE   │    │
│   │ [cracked fresco] │    │
│   └──────────────────┘    │
│   ❧ NOMEN MORTIS ❧        │
│   ~ memento mori quote ~   │
│  ────────────────────────  │
│   [skull & rose motif]     │
│   [wax seal at bottom]     │
│  ✦ · · · · · · · · · ✦   │
└────────────────────────────┘
```

---

## ✨ Key CSS Effects

```css
/* Cracked fresco texture */
.card-bg {
  background-image: 
    url('cracked-plaster.svg'),
    linear-gradient(135deg, #1A0A00, #8B6914);
  background-blend-mode: overlay;
}

/* Tarnished gold filigree border */
.card-border {
  border: 3px solid;
  border-image: linear-gradient(180deg, #D4AF37, #8B6914, #D4AF37) 1;
  box-shadow: 
    0 0 20px rgba(212, 175, 55, 0.3),
    inset 0 0 40px rgba(26, 10, 0, 0.6);
}

/* Old Paper grain */
@keyframes grainShift {
  0%, 100% { transform: translate(0,0); }
  50%       { transform: translate(-1px, 1px); }
}
.grain-overlay {
  animation: grainShift 0.15s steps(1) infinite;
  opacity: 0.04;
}
```

---

## 🎴 Signature Elements

- **Ornate gold filigree frame** — SVG or CSS border-image with baroque scrollwork
- **Cracked fresco texture** — layered SVG crack pattern at low opacity
- **Skull and rose motif** — decorative divider between sections
- **Wax seal emblem** — circle with initial or sigil at card bottom
- **Memento mori Latin quote** — `"Et in Arcadia ego"` or similar in italic

---

## 🔗 Cross-Over Pairings

| Pair With | Result |
|-----------|--------|
| **T01 Sakura Noir** | Fallen noble in a foreign autumn |
| **T08 Forest Witch** | Decaying manor at the forest's edge |
| **T02 Crystal Cathedral** | Cathedral in magnificent ruin |

---

## 💬 Prompt Example

```
/turbo
Theme: Baroque Decay (T18)
Layout: L03 Tarot Card
Character: Dorian Vestine — immortal portrait painter, cursed nobleman
Mood: gilded, decadent, decaying, tragic beauty
Palette: #1A0A00 base, tarnished gold accents, ivory highlight
Effects: cracked fresco texture, filigree border, grain overlay
Labels: "The Gilded Ruin" — tarot card XVI
```

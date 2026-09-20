# 🎨 PASTEL RAINBOW TAP GRID — THEME TEMPLATE

```
# 🎨 THEME TEMPLATE: PASTEL RAINBOW TAP GRID

> **Version:** 2.0  
> **Design Language:** Pastel Rainbow × Playful Editorial × Tap-to-Discover

---

## 🎨 1. COLOR SYSTEM

| Role | Color Name | HEX | Usage |
|------|------------|-----|-------|
| **Primary** | Pastel Pink | `#FFB3BA` | Border, Active states, Hearts |
| **Secondary** | Pastel Peach | `#FFDFBA` | Warm accents, Tags |
| **Tertiary** | Pastel Yellow | `#FFFFBA` | Highlight, Glow |
| **Quaternary** | Pastel Green | `#BAFFC9` | Like items, Nature vibes |
| **Quinary** | Pastel Blue | `#BAE1FF` | Tags, Secondary buttons |
| **Senary** | Pastel Purple | `#E8BAFF` | Special accents, Magic |
| **Background** | Soft White | `#FFFFFF` | Card base |
| **Surface** | Lavender Tint | `#F8F5FF` | Page background |
| **Text Dark** | Soft Charcoal | `#4A3A4A` | Body text |
| **Text Light** | Muted Mauve | `#B8A8B8` | Secondary text |
| **Border** | Dashed Pastel | Animated gradient | Card border |

---

## ✍️ 2. TYPOGRAPHY SYSTEM

| Role | Font | CSS |
|------|------|-----|
| **Display/Name** | Itim | `'Itim', cursive` |
| **Quote/Caption** | Caveat | `'Caveat', cursive` |
| **Body** | Anuphan | `'Anuphan', sans-serif` |
| **Accent** | Assistant | `'Assistant', sans-serif` |

### Font Scale
| Element | Size |
|---------|------|
| Character Name | `clamp(22px, 5.5vw, 30px)` |
| Quote | `clamp(18px, 4.2vw, 24px)` |
| Section Title | `clamp(15px, 3.4vw, 19px)` |
| Body Text | `clamp(12px, 2.6vw, 14px)` |
| Tag/Label | `clamp(10px, 2.2vw, 12px)` |

### Text Effects
- **Rainbow Gradient Text:** ใช้กับชื่อและคำคม (เคลื่อนไหว 6-8 วินาที)
- **Gradient Underline:** ใช้กับหัวข้อ (dashed pastel)

---

## 🏛️ 3. DESIGN LANGUAGE

| Element | Specification |
|---------|---------------|
| **Card Border** | 3px dashed, animated rainbow (pink→peach→yellow→green→blue→purple→loop) |
| **Card Radius** | `40px` |
| **Card Shadow** | Soft layered shadow (`0 20px 60px rgba(200,180,220,0.12)`) |
| **Inner Elements** | 2px dashed pastel borders |
| **Surface** | Gradient white-to-lavender |
| **Icon Style** | Emoji-first, 22-30px |

### Visual Motifs
- 🌸 Cherry blossom
- 💎 Crystal/Sparkle
- 🍀 Clover/Luck
- 🦋 Butterfly
- 🍊 Citrus/Warmth
- 🎀 Ribbon (sticker)
- 🌈 Rainbow (sticker)
- ✨ Sparkle (sticker)

---

## 🧩 4. LAYOUT ARCHITECTURE

```
┌─────────────────────────────────────┐
│  🌸 Floating Emojis (5 pcs)         │
│  🎀🌈✨ Stickers (3 pcs)             │
│                                      │
│  ┌─────────────────────────────────┐ │
│  │     GALLERY SLIDER (3:4)        │ │
│  │  [◉◌◌] 3-dot navigation        │ │
│  └─────────────────────────────────┘ │
│                                      │
│  [AVATAR] CHARACTER NAME             │
│       🏷️ Title · Tag                 │
│  ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ │
│                                      │
│  ┌─────────────────────────────────┐ │
│  │  INFO GRID (2-col)              │ │
│  │  Label 1  │  Value 1            │ │
│  │  Label 2  │  Value 2            │ │
│  │  Label 3  │  Value 3            │ │
│  │  Label 4  │  Value 4            │ │
│  └─────────────────────────────────┘ │
│                                      │
│  #tag1 #tag2 #tag3 #tag4 #tag5       │
│                                      │
│  👆 จิ้มอ่านข้อมูลเพิ่มเติม           │
│  ┌─────┬─────┬─────┐                │
│  │🌟   │👗   │🏊   │                │
│  │หัวข้อ1│หัวข้อ2│หัวข้อ3│           │
│  ├─────┼─────┼─────┤                │
│  │💞   │👀   │🌅   │                │
│  │หัวข้อ4│หัวข้อ5│หัวข้อ6│           │
│  └─────┴─────┴─────┘                │
│  [expanded content appears here]     │
│                                      │
│  ❤️ ชอบ & ไม่ชอบ                     │
│  ┌─────────────────────────────────┐ │
│  │ ❤️ [tags]                       │ │
│  │ 💔 [tags]                       │ │
│  └─────────────────────────────────┘ │
│                                      │
│  📸 แกลเลอรี                          │
│  ┌──────────┬──────────┐            │
│  │ [photo]  │ [photo]  │            │
│  │ caption  │ caption  │            │
│  └──────────┴──────────┘            │
│                                      │
│  ┌─────────────────────────────────┐ │
│  │  “คำคม...”                      │ │
│  │  — ชื่อตัวละคร                   │ │
│  └─────────────────────────────────┘ │
│                                      │
│  ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ │
│  ❤️ 00  📸 00  💕 00    [📖 อ่านเพิ่ม]│
└─────────────────────────────────────┘
```

---

## 🎬 5. ANIMATION SYSTEM

| Animation | Duration | Trigger | Element |
|-----------|----------|---------|---------|
| **Rainbow Border** | 3s | Auto (loop) | Card border |
| **Rainbow Text** | 6-8s | Auto (loop) | Name, Quote |
| **Floating Emoji** | 4.5-7s | Auto (loop) | Floating decorations |
| **Pulse** | 1.4s | Auto (loop) | Icon |
| **Scale Reveal** | 0.3s | On tap | Tap content |
| **Hover Lift** | 0.2s | On hover | Tags, Buttons |
| **Checked Scale** | 0.4s | On tap | Tap grid items |

### Keyframes
```css
@keyframes dash-border { ... }      /* ขอบเส้นประเปลี่ยนสี */
@keyframes rainbow-text { ... }     /* ข้อความสีรุ้งเคลื่อนไหว */
@keyframes rainbow-float { ... }    /* อิโมจิลอย */
@keyframes rainbow-pulse { ... }    /* การเต้น */
@keyframes fade-slide { ... }       /* เนื้อหาเด้งขึ้น */
```

---

## 🧩 6. TAP GRID SPECIFICATION

### Grid Structure
- **Layout:** 3 columns × 2 rows
- **Gap:** 10px
- **Interaction:** `input[type="radio"]` + `label`
- **Behavior:** Only one open at a time

### Button States

| State | Visual |
|-------|--------|
| **Default** | White background, dashed border, muted text |
| **Hover** | Slight lift, border becomes visible |
| **Active (tap)** | Scale down 0.95 |
| **Checked** | Pink gradient background, pink border, emoji scales up 1.2x, text becomes pink |

### Content Items (Placeholder)

| # | Emoji | Label | Content Summary |
|---|-------|-------|-----------------|
| 1 | 🌟 | หัวข้อที่ 1 | เนื้อหาแบบสั้น 1-2 บรรทัด |
| 2 | 👗 | หัวข้อที่ 2 | เนื้อหาแบบสั้น 1-2 บรรทัด |
| 3 | 🏊 | หัวข้อที่ 3 | เนื้อหาแบบสั้น 1-2 บรรทัด |
| 4 | 💞 | หัวข้อที่ 4 | เนื้อหาแบบสั้น 1-2 บรรทัด |
| 5 | 👀 | หัวข้อที่ 5 | เนื้อหาแบบสั้น 1-2 บรรทัด |
| 6 | 🌅 | หัวข้อที่ 6 | เนื้อหาแบบสั้น 1-2 บรรทัด |

---

## 🎯 7. UI COMPONENTS

| Component | Pattern | Notes |
|-----------|---------|-------|
| **Gallery Slider** | Radio + label | 3 images, dot navigation |
| **Profile Header** | Flexbox | Avatar + Name + Title |
| **Info Grid** | CSS Grid | 2-column DL |
| **Tags** | Inline flex | Capsule badges, 5 colors |
| **Tap Grid** | Radio grid | 3×2 interactive cards |
| **Tap Content** | Show/hide | Expands below tapped item |
| **Polaroid** | Card + image | 2-column grid |
| **Quote** | Centered card | Rainbow text + attribution |
| **Details** | Native `<details>` | Biography, Relationships |
| **Bottom Bar** | Flexbox | Stats + Call-to-action |

---

## 🛠️ 8. INTERACTION PATTERNS

| Pattern | Implementation | Notes |
|---------|----------------|-------|
| **Tab Switching** | Radio buttons | Gallery slider |
| **Content Toggle** | Radio buttons | Tap grid |
| **Accordion** | `<details>` | Biography sections |
| **Hover** | `:hover` | Desktop enhancement |
| **Active** | `:active` | Mobile tap feedback |
| **Checked** | `:checked` | Selected state for radio |

---

## 🎨 9. VISUAL STICKERS & DECORATIONS

| Sticker | Position | Animation |
|---------|----------|-----------|
| 🎀 | Top-right (10%, 10%) | Float 3.8s |
| 🌈 | Bottom-right (16%, 6%) | Float 4.2s |
| ✨ | Mid-right (45%, 3%) | Float 5s |
| 🌸 | Top-right (4%, 3%) | Float 5s |
| 💎 | Bottom-left (8%, 2%) | Float 6s |
| 🍀 | Mid-left (35%, 1%) | Float 4.5s |
| 🦋 | Top-mid (18%, 18%) | Float 7s |
| 🍊 | Bottom-mid (30%, 5%) | Float 5.5s |

---

## 🚀 10. RESPONSIVE BEHAVIOR

| Breakpoint | Adjustments |
|------------|-------------|
| **520px+** | Card max-width: 520px |
| **320-520px** | Fluid scaling via clamp() |
| **< 320px** | Tags wrap, grid maintains |

### Fluid Values Used
- Font sizes: `clamp(min, preferred, max)`
- Card width: `100%`, `max-width: 520px`
- All measurements in relative units

---

## 📦 11. CODE ANATOMY

```
<style>
  /*! Theme: Pastel Rainbow Tap Grid */
  /* 1. Reset + Base */
  /* 2. Card Container */
  /* 3. Gallery Slider */
  /* 4. Profile Header */
  /* 5. Info Grid */
  /* 6. Tags */
  /* 7. Tap Grid + Content */
  /* 8. Likes/Dislikes */
  /* 9. Gallery Section */
  /* 10. Quote */
  /* 11. Details */
  /* 12. Bottom Bar */
  /* 13. Animations */
  /* 14. Decorations */
</style>
<div class="card">
  <!-- Decorations -->
  <!-- Gallery -->
  <!-- Header -->
  <!-- Info -->
  <!-- Tags -->
  <!-- Tap Grid -->
  <!-- Likes/Dislikes -->
  <!-- Gallery Section -->
  <!-- Quote -->
  <!-- Details -->
  <!-- Bottom Bar -->
</div>
```

---

## ✅ 12. VALIDATION CHECKLIST

| Check | Status |
|-------|--------|
| Mobile First (max-width: 520px) | ✅ |
| Zero JavaScript | ✅ |
| No Hover Dependency | ✅ |
| Fluid Typography (clamp) | ✅ |
| Copyable Text (user-select: text) | ✅ |
| Minified Code Ready | ✅ |
| Performance Safe (5 layers max) | ✅ |
| Fallback Ready (gradient cover) | ✅ |
| Pastel Rainbow Border | ✅ |
| Tap Grid Interactive | ✅ |

---

## 🎯 13. HOW TO USE THIS TEMPLATE

| Step | Action |
|------|--------|
| 1 | เปิดไฟล์ .MD นี้ในโปรแกรมแก้ไขข้อความ |
| 2 | เปลี่ยนชื่อ Theme, Version, Date ตามต้องการ |
| 3 | ปรับสีใน COLOR SYSTEM ถ้าต้องการ |
| 4 | เปลี่ยนฟอนต์ใน TYPOGRAPHY SYSTEM |
| 5 | แก้ไขเนื้อหาใน TAP GRID (6 หัวข้อ) |
| 6 | เปลี่ยน Emoji และ Caption ใน VISUAL STICKERS |
| 7 | ใช้เป็นเอกสารอ้างอิงสำหรับสร้าง HTML/CSS |

---

**End of Template** ✨🌈
```

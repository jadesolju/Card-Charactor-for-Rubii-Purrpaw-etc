# 📝 Changelog: Rubii Card Architect

All notable changes, architectural pivots, and technical directives for this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Added
* **Visual Library Foundation:** Added a 50-entry Compound catalog, a strict JSON schema, a local SVG preview sprite, and a placeholder-only Themeplate skeleton. The catalog references the existing Palette, Typography, and Themeplate datasets and avoids external image URLs.

## [2.2.7] - 2026-09-20 (Current Release)

### 🚀 Highlights: GitHub Public Open-Source Release & Multilingual Support
* **Multi-Platform Single-File Drop-in:** Created `standalone/rubii_architect_v2.2.7_standalone.md` allowing ChatGPT, Claude, and Gemini users to drag & drop a single file to activate the entire system instantly.
* **Multi-Format Master Data (`.JSON` / `.YAML` / `.MD`):** Exported all 50 Color Palettes, 50 Typography Archetypes, and Theme Component manifests into structured JSON and YAML files for API integrations and custom agent plugins.
* **Cross-Over Templates Suite:** Added pre-engineered hybrid templates (`Cyber-Gothic`, `Arcane-Academia`, `Pastel-Glitch`, `Solar-Steampunk`, `Divine-Occult`, `Quiet Luxury Noir`) utilizing the Dynamic Matrix procedural principle.
* **Refined Fluid Typography:** Tuned body font clamping from `clamp(8px, 3.0vw, 14px)` to `clamp(8px, 3.5vw, 14px)` for improved readability on modern high-DPI compact mobile viewports (320px–390px).
* **International Documentation:** Full multilingual README support in **English (`README.md`)**, **Thai (`README_TH.md`)**, **Chinese (`README_ZH.md`)**, and **Vietnamese (`README_VI.md`)**.
* **Live Mobile Previewer:** Added `tools/card_previewer.html` for instant live testing with viewport width simulation (320px, 375px, 390px, 440px).

---

## [2.2.6] - 2026-07-02

### ⚡ Added & Optimized
* **Hybrid-Flex Canvas Directive:** Relaxed rigid dark container background mandates into a flexible `--custom-bg` token system allowing translucent gradients and custom textures without breaking neon border contrast.
* **Minified Directive Architecture:** Compressed directive token count across master prompts to minimize AI token latency and eliminate hallucinations.
* **Keywords Pack Restoration:** Restored pure CSS Animation (1.6) and Component (1.7) databases into standardized keyword arrays.
* **Scoped Wireframe Enforcer:** Strictly enforced omission of `<html>`, `<head>`, `<body>` boilerplate in favor of pure `<style>` + `<div>` component roots.

---

## [2.2.5] & [2.2.5B] - 2026-06-15

### 📐 Added
* **Card Framings & Dimensions Matrix:** Standardized aspect ratio definitions:
  - Square Aspect Ratio (`1:1`)
  - Vertical Aspect Ratio (`3:4` / `2:3` / `9:16`)
  - Horizontal Aspect Ratio (`16:9` / `21:9`)
* **Overlay Component Specs:** Standardized ribbons, status dots, price badges, and wax seals with absolute overlay coordinate rules.

---

## [2.2.4] & [2.2.4B] - 2026-05-20 (Express & Flash Editions)

### 🏎️ Added
* **Express Workflow (`/express`):** Introduced 1-turn response generation combining analysis and blueprint without requiring sequential multi-turn Q&A.
* **Turbo Mode (`/turbo`):** Ultra-fast pipeline that analyzes, matches themes, generates blueprint, and outputs minified HTML/CSS in a single turn.
* **Content Condensation Policy:** Enforced strict brevity guidelines (General info, Relationships, and Story Lore restricted to $<3$ lines per section).

---

## [2.2.0] – [2.2.3] - 2026-04-10

### 🎨 Added
* **50 Trending CSS Color Palettes Collection:** Curated 50 color spectrums spanning Minimal, Tech SaaS, Dark Cyber, Pastel, and Retro Earthy.
* **50 Typography Pairing Archetypes:** Comprehensive font pairing matrix linking Thai (Google Fonts) and English fonts with mood keywords.
* **Dynamic Matrix Procedural Logic:** Replaced static templates with turn-by-turn randomized generation logic to eliminate repetitive profile card designs.
* **Emotional State Engine Variables:** Added visual UI modes (Awakened, Corrupted, Berserk, Divine, Glitch, Obsession Heartbeat).

---

## [2.0.0] – [2.1.0] - 2026-02-18

### 🔒 Architectural Shift: Zero-JS Mobile Framework
* **Strict Zero-JS Directive:** Removed all JavaScript dependencies; transitioned tab switching and expansion to pure CSS `:checked` and `<details>/<summary>`.
* **Inline Style Priority:** Enforced `!important` and single-quote string encapsulation to ensure styles cleanly override host application CSS.
* **Copyable Text Node Enforcement:** Mandated that character names and lore must be selectable in native HTML text nodes (`user-select: text !important`).

---

## [1.0.0] - 2026-01-05

### 🚀 Initial Release
* First release of Rubii Card Designer Prompt.

# ⚡ Rubii Express Theme Architect V2.2.7

<div align="center">

[![Language: English](https://img.shields.io/badge/Language-English-blue.svg)](#)
[![Language: Thai](https://img.shields.io/badge/Language-ภาษาไทย-red.svg)](README_TH.md)
[![Language: Chinese](https://img.shields.io/badge/Language-简体中文-yellow.svg)](README_ZH.md)
[![Language: Vietnamese](https://img.shields.io/badge/Language-Tiếng_Việt-green.svg)](README_VI.md)

[![Version](https://img.shields.io/badge/Version-v2.2.7_Express-ff007f.svg)](CHANGELOG.md)
[![Zero-JS](https://img.shields.io/badge/Architecture-100%25_Zero--JS-00ffff.svg)](DESIGN.md)
[![Mobile-First](https://img.shields.io/badge/Mobile-320px--440px_Fluid-39ff14.svg)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**An AI-Powered UI/UX Prompt Framework for Generating Lightweight, Zero-JS, Responsive Glowing Neon Character Profile Cards for Mobile Web & Rubii.**

[ 🇬🇧 English | [🇹🇭 ภาษาไทย](README_TH.md) | [🇨🇳 简体中文](README_ZH.md) | [🇻🇳 Tiếng Việt](README_VI.md) ]

</div>

---

## 🌟 Highlights & What is Rubii Card Architect?

**Rubii Card Architect v2.2.7** is an advanced system prompt & prompt engineering engine that transforms conversational AI models (**Google Gemini, OpenAI ChatGPT / Custom GPTs, Anthropic Claude, DeepSeek**) into expert mobile UI/UX designers.

By simply inputting a character's story, personality, and vibe, the AI instantly compiles a complete **Character Dossier, Design Blueprint**, and **100% Minified, Copyable, Zero-JS HTML/CSS Production Code**.

```
  Input Story Synopsis ➡️ AI Theme Architect v2.2.7 ➡️ 100% Minified Zero-JS Neon Card
```

---

## 🚀 Instant Drop-in Quickstart (1-File Solution)

### For Standard Users (ChatGPT / Claude / Gemini)
No coding or repository setup required! Just grab the standalone file:

1. Download [`standalone/rubii_architect_v2.2.7_standalone.md`](standalone/rubii_architect_v2.2.7_standalone.md).
2. Attach or copy-paste its entire contents into your chat window (or Custom GPT / Gemini Gem / Claude Project system instructions).
3. Type:
   ```text
   /turbo
   Character: Valentina Cross
   Genre: Cyber-Gothic Vampire in futuristic Neo-Verona
   Personality: Calculating, quiet, controls the Sector 09 black market
   Colors: Neon Crimson (#ff0055) & Cyber Cyan (#00ffff)
   ```
4. **Boom!** The AI returns the character dossier, design blueprint, and production-ready minified HTML/CSS code in a single response.

---

## 💻 PowerShell CLI & Agent Shortcuts Guide

Rubii Card Architect includes a native PowerShell CLI tool (`tools/rubii.ps1`) to copy prompts, launch previews, and connect to AI Coding Agents directly from your terminal.

### 1. Install Global `rubii` CLI Shortcut
```powershell
# Run the 1-step installer to enable 'rubii' command in your terminal
.\tools\install_cli.ps1

# Reload your PowerShell profile
. $PROFILE
```

### 2. Direct CLI & Agent Commands
```powershell
# Copy v2.2.7 Master Prompt to clipboard for any AI Chat
rubii --copy

# Prepare prompt with pre-filled /turbo parameters
rubii /turbo Valentina Cross, Cyber-Gothic Vampire, Neon Crimson

# Launch Live Mobile Card Previewer
rubii --preview

# Launch Full SVG Web Studio
rubii --studio

# Run diagnostics check across all databases and prompts
rubii --check
```

📖 **Detailed Agent Integration Guide:** See [docs/CLI_AGENT_GUIDE.md](docs/CLI_AGENT_GUIDE.md) for **Antigravity CLI (`agy`)**, **Claude Code CLI**, and **Gemini/Custom GPT** workflows.

---

## 🕹️ Slash Commands Gateways

Control the AI's behavior dynamically with slash commands:

| Command | Action / Behavior |
| :--- | :--- |
| **`/turbo`** | **Supreme Shortcut:** Performs Story Analysis ➡️ Matches Theme ➡️ Produces Blueprint ➡️ Outputs Minified HTML/CSS Code in **1 single turn**. |
| **`/express`** | **Fast Mode:** Delivers character overview and visual design blueprint instantly. |
| **`/recommend_theme`** | Proactively matches and suggests the most fitting theme based on story synopsis. |
| **`/force_color`** | Switches the neon color spectrum while **100% locking** the existing card layout. |
| **`/adjust_layout`** | Reorganizes card blocks and tabs while **locking** current fonts and colors. |
| **`/show_score`** | Displays a mobile UX and performance quality audit score table. |
| **`/start_inquiry`** | Initiates step-by-step turn-by-turn interactive inquiry. |
| **`/generate_theme`** | Compiles final minified HTML/CSS source code (STATE 11). |

---

## 🎨 Core Architectural Features

```
┌────────────────────────────────────────────────────────┐
│ [ STATUS: CLASSIFIED ]                              🟢 │
│                                                        │
│ VALENTINA CROSS                                        │
│ // CYBERNETIC NOCTURNE ARCHON                          │
│ ────────────────────────────────────────────────────── │
│ AFFILIATION: Sector 09        ORIGIN: Neo-Verona       │
│                                                        │
│ ▶ ⚔️ PROFILE DOSSIER & LORE                           │
│   • Ancient vampire integrated with cybernetic core   │
│   • Controls black market neural networks             │
└────────────────────────────────────────────────────────┘
```

1. **Zero-JS 100% Native Architecture:**
   - Tabs, drawers, and accordions are powered exclusively by semantic `<details>` / `<summary>` and CSS pseudo-classes (`:checked`, `:focus`).
2. **Fluid Scaled Mobile UX:**
   - Strict `320px – 440px` bounds with `font-size: clamp(8px, 3.5vw, 14px)` typography scaling.
3. **Transparent Canvas & Glowing Neon Frames:**
   - Translucent backgrounds (`rgba(...)`) layered with vibrant neon borders (`--neon-p`, `--neon-s`, `--neon-accent`) to blend effortlessly with any device wallpaper.
4. **100% Copyable Text Node Integrity:**
   - All text content lives in accessible HTML text nodes (`user-select: text !important;`).
5. **50-Palette Matrix & 50-Typography Archetypes:**
   - Built-in curated databases available in **JSON, YAML, and Markdown**.

---

## 📦 Multi-Format Data & Cross-Over Templates

This repository provides structured master data across 3 standard formats:

* **JSON Data (`data/json/`):**
  - [`color_palettes_50.json`](data/json/color_palettes_50.json) — 50 Trending palettes with hex codes and usage roles.
  - [`typography_50.json`](data/json/typography_50.json) — 50 Google Fonts / Western pairings.
  - [`theme_components.json`](data/json/theme_components.json) — Frameworks, surfaces, keyframes & components.
* **YAML Data (`data/yaml/`):**
  - [`color_palettes_50.yaml`](data/yaml/color_palettes_50.yaml)
  - [`typography_50.yaml`](data/yaml/typography_50.yaml)
  - [`gem_plugin_config.yaml`](data/yaml/gem_plugin_config.yaml) — Gem, Custom GPT & Agent Plugin configuration.
* **Cross-Over Templates (`templates/`):**
  - [`template_cyber_gothic.md`](templates/template_cyber_gothic.md) *(Cyberpunk × Gothic Victorian)*
  - [`template_arcane_academia.md`](templates/template_arcane_academia.md) *(Dark Academia × Arcane Mage)*
  - [`template_pastel_glitch.md`](templates/template_pastel_glitch.md) *(Pastel Kawaii × Vaporwave Glitch)*
  - [`template_solar_steampunk.md`](templates/template_solar_steampunk.md) *(Solarpunk × Victorian Steampunk)*
  - [`template_divine_occult.md`](templates/template_divine_occult.md) *(Celestial Light × Occult Manuscript)*
  - [`template_quiet_luxury_noir.md`](templates/template_quiet_luxury_noir.md) *(Quiet Wealth × Film Noir)*

---

## 🛠️ Live Mobile Tester Tool

Open [`tools/card_previewer.html`](tools/card_previewer.html) in your browser to test and preview generated cards in real-time with responsive viewport width presets (320px, 375px, 390px, 440px).

---

## 🔌 Integration Guides
* [Google Gemini Gem Guide](integrations/gemini_gem_instructions.md)
* [OpenAI Custom GPT Setup](integrations/chatgpt_custom_gpt.md)
* [Anthropic Claude Project Setup](integrations/claude_project_setup.md)

---

## 📂 Repository Structure

```
.
├── standalone/                  # 🚀 1-File drop-in for ChatGPT / Claude / Gemini
├── core/                        # Core system prompt v2.2.7 & technical specs
├── data/
│   ├── json/                   # JSON databases (Palettes, Typography, Components)
│   ├── yaml/                   # YAML schemas & plugin configs
│   └── markdown/               # Markdown databases for GitHub browsing
├── templates/                   # Cross-Over pre-built theme templates
├── integrations/                # Guides for Gemini Gem, Custom GPT & Claude
├── tools/                       # Live HTML mobile tester & cleanup scripts
├── docs/                        # User manual & references
├── DESIGN.md                    # System architecture specification
├── CHANGELOG.md                 # Complete version history (v1.0 -> v2.2.7)
└── LICENSE                      # MIT Open Source License
```

---

## 📄 License
Released under the [MIT License](LICENSE). Created with ❤️ by Ninninmera & Contributors.

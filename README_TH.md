# ⚡ Rubii Express Theme Architect V2.2.7 (ภาษาไทย)

<div align="center">

[![Language: English](https://img.shields.io/badge/Language-English-blue.svg)](README.md)
[![Language: Thai](https://img.shields.io/badge/Language-ภาษาไทย-red.svg)](#)
[![Language: Chinese](https://img.shields.io/badge/Language-简体中文-yellow.svg)](README_ZH.md)
[![Language: Vietnamese](https://img.shields.io/badge/Language-Tiếng_Việt-green.svg)](README_VI.md)

[![Version](https://img.shields.io/badge/Version-v2.2.7_Express-ff007f.svg)](CHANGELOG.md)
[![Zero-JS](https://img.shields.io/badge/Architecture-100%25_Zero--JS-00ffff.svg)](DESIGN.md)
[![Mobile-First](https://img.shields.io/badge/Mobile-320px--440px_Fluid-39ff14.svg)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**ระบบ Prompt สถาปนิก AI ออกแบบหน้าเว็บการ์ดตัวละครเรืองแสง สไตล์ Zero-JS ขนาดเบาพิเศษ สำหรับมือถือและแอป Rubii**

[ [🇬🇧 English](README.md) | 🇹🇭 ภาษาไทย | [🇨🇳 简体中文](README_ZH.md) | [🇻🇳 Tiếng Việt](README_VI.md) ]

</div>

---

## 🌟 Rubii Card Architect คืออะไร?

**Rubii Card Architect v2.2.7** คือระบบ System Prompt และเอนจิน Prompt Engineering ขั้นสูง ที่เปลี่ยนโมเดล AI ชั้นนำ (**Google Gemini, OpenAI ChatGPT / Custom GPTs, Anthropic Claude, DeepSeek**) ให้กลายเป็นนักออกแบบ UI/UX ระดับมือโปรสำหรับหน้าจอมือถือ

เพียงแค่คุณป้อนพล็อตเรื่อง ข้อมูลตัวละคร หรืออารมณ์ของเรื่อง AI จะทำการวิเคราะห์และส่งมอบ:
1. **Character Dossier:** สรุปย่อข้อมูลตัวละครแบบกระชับ (คุมสัดส่วนไม่เกิน 3 บรรทัดต่อส่วน)
2. **Design Blueprint:** พิมพ์เขียวชุดสีนีออน ฟอนต์ และเอฟเฟกต์
3. **Production Code:** ซอร์สโค้ด HTML/CSS แบบ Zero-JS ฉบับบีบอัด (Minified) พร้อมคัดลอกไปแปะในแอป Rubii ทันที

```
  ป้อนพล็อตเรื่องสั้นๆ ➡️ AI Theme Architect v2.2.7 ➡️ โค้ดการ์ดเรืองแสง Minified Zero-JS
```

---

## 🚀 วิธีใช้งานด่วนแบบไฟล์เดียวจบ (Single-File Drop-in)

### สำหรับผู้ใช้งานทั่วไป (ChatGPT / Claude / Gemini)
ไม่ต้องเขียนโค้ด ไม่ต้องติดตั้งโปรแกรม เพียงดาวน์โหลดไฟล์สำเร็จรูป:

1. ดาวน์โหลดไฟล์ [`standalone/rubii_architect_v2.2.7_standalone.md`](standalone/rubii_architect_v2.2.7_standalone.md)
2. ลากไฟล์ไปวางในหน้าต่างแชต หรือคัดลอกเนื้อหาทั้งหมดไปวางในช่อง System Instructions (หรือ Custom GPT / Gemini Gem / Claude Project)
3. พิมพ์สั่งงานได้ทันที เช่น:
   ```text
   /turbo
   ชื่อตัวละคร: Valentina Cross
   แนวเรื่อง: Cyber-Gothic แวมไพร์สาวในเมืองอนาคต Neo-Verona
   นิสัย: สุขุม เยือกเย็น ควบคุมตลาดมืด Sector 09
   สีที่ชอบ: ดำ นีออนชมพู (#ff0055) และนีออนไซแอน (#00ffff)
   ```
4. AI จะคายโค้ด HTML/CSS พร้อมพิมพ์เขียวออกมาให้คุณทันทีใน 1 ข้อความ!

---

## 🕹️ ตารางคำสั่งลัดควบคุม AI (Slash Commands)

| คำสั่ง | ผลลัพธ์และการทำงาน |
| :--- | :--- |
| **`/turbo`** | **ทางลัดสูงสุด:** วิเคราะห์ข้อมูล ➡️ แมตช์ธีมสี ➡️ กางพิมพ์เขียว ➡️ คายโค้ด Minified HTML/CSS จบใน **1 Turn ทันที** |
| **`/express`** | **โหมดด่วน:** สรุปภาพรวมแนวคิดตัวละครและพิมพ์เขียวดีไซน์ทันที |
| **`/recommend_theme`** | ให้ AI ช่วยคิดและสุ่มแมตช์ธีมที่ดีที่สุดให้ตามเนื้อเรื่อง |
| **`/force_color`** | สั่งเปลี่ยนคู่สีนีออนใหม่ โดย**ล็อกโครงสร้างการ์ดเดิม 100%** |
| **`/adjust_layout`** | สั่งปรับการจัดวางตำแหน่งกล่องข้อความ โดย**ล็อกสีและฟอนต์เดิม** |
| **`/show_score`** | แสดงตารางตรวจสอบคุณภาพ ความสวยงาม และคะแนน UX บนมือถือ |
| **`/start_inquiry`** | รีเซ็ตระบบเพื่อเริ่มการเลือก Moodboard แบบทีละสเต็ป |
| **`/generate_theme`** | คำสั่งสุดท้ายเพื่อคอมไพล์โค้ด Minified HTML/CSS (STATE 11) |

---

## 🎨 จุดเด่นทางสถาปัตยกรรม (Core Features)

1. **Zero-JS 100%:** ระบบเปิด-ปิดแท็บและ Accordion ขับเคลื่อนด้วย Semantic Tag `<details>` / `<summary>` และ CSS Pseudo-classes เท่านั้น ปลอดภัย ไม่โดนแอปบล็อก
2. **Fluid Scaled Mobile UX:** รองรับจอมือถือ `320px – 440px` ตัวอักษรปรับขนาดอัตโนมัติตามหน้าจอด้วย `clamp(8px, 3.5vw, 14px)`
3. **Transparent Canvas & Neon Glow:** พื้นหลังการ์ดโปร่งแสงเน้นเส้นขอบเรืองแสง เข้าได้กับทุกวอลเปเปอร์
4. **Copyable Text Node:** ข้อความทั้งหมดอยู่ใน HTML Text Node (`user-select: text !important;`) สามารถลากคลุมคัดลอกบนมือถือได้จริง
5. **คลังข้อมูล Master Data 50 Palettes & 50 Typography:** รวบรวมชุดสีและคู่ฟอนต์ไทย-อังกฤษยอดนิยมไว้ครบครันในรูปแบบ **JSON, YAML และ Markdown**

---

## 📦 คลังข้อมูล Master Data และพรีเซ็ต Cross-Over

* **JSON Data (`data/json/`):**
  - [`color_palettes_50.json`](data/json/color_palettes_50.json) — คลัง 50 ชุดสี Hex Codes
  - [`typography_50.json`](data/json/typography_50.json) — คลัง 50 คู่ฟอนต์ไทย/อังกฤษ
  - [`theme_components.json`](data/json/theme_components.json) — คลังเอฟเฟกต์และคอมโพเนนต์
* **YAML Data (`data/yaml/`):**
  - [`color_palettes_50.yaml`](data/yaml/color_palettes_50.yaml)
  - [`typography_50.yaml`](data/yaml/typography_50.yaml)
  - [`gem_plugin_config.yaml`](data/yaml/gem_plugin_config.yaml) — คอนฟิกสำหรับ Gem / Custom Agent
* **Cross-Over Templates (`templates/`):**
  - [`template_cyber_gothic.md`](templates/template_cyber_gothic.md) *(Cyberpunk × Gothic Victorian)*
  - [`template_arcane_academia.md`](templates/template_arcane_academia.md) *(Dark Academia × Arcane Mage)*
  - [`template_pastel_glitch.md`](templates/template_pastel_glitch.md) *(Pastel Kawaii × Vaporwave Glitch)*
  - [`template_solar_steampunk.md`](templates/template_solar_steampunk.md) *(Solarpunk × Victorian Steampunk)*
  - [`template_divine_occult.md`](templates/template_divine_occult.md) *(Celestial Light × Occult Manuscript)*
  - [`template_quiet_luxury_noir.md`](templates/template_quiet_luxury_noir.md) *(Quiet Wealth × Film Noir)*

---

## 🛠️ เครื่องมือพรีวิวการ์ดมือถือ (Live Tester)

เปิดไฟล์ [`tools/card_previewer.html`](tools/card_previewer.html) บนเว็บเบราว์เซอร์ เพื่อนำโค้ดที่ AI สร้างมาวางทดสอบพรีวิวบนขนาดหน้าจอมือถือจริง (320px, 375px, 390px, 440px) ได้ทันที

---

## 🔌 คู่มือการติดตั้งบนแพลตฟอร์ม AI
* [คู่มือสร้าง Google Gemini Gem](integrations/gemini_gem_instructions.md)
* [คู่มือสร้าง OpenAI Custom GPT](integrations/chatgpt_custom_gpt.md)
* [คู่มือสร้าง Anthropic Claude Project](integrations/claude_project_setup.md)

---

## 📄 ใบอนุญาต (License)
เผยแพร่ภายใต้ใบอนุญาต [MIT License](LICENSE) พัฒนาด้วย ❤️ โดย Mojor & Contributors

# 🤖 OpenAI Custom GPT Integration Guide: Rubii Card Architect v2.2.7

คู่มือการตั้งค่า **Custom GPT** ใน ChatGPT Plus / Team / Enterprise

---

## ⚙️ GPT Configuration Details

* **Name:** `Rubii Character Card Architect`
* **Description:** `AI UI/UX Theme Architect generating Zero-JS, responsive, neon-framed character profile cards for mobile and Rubii.`
* **Instructions:**
  - นำเนื้อหาจาก [`standalone/rubii_architect_v2.2.7_standalone.md`](../standalone/rubii_architect_v2.2.7_standalone.md) ไปวางในช่อง **Instructions**
* **Conversation Starters:**
  - `⚡ ออกแบบการ์ดตัวละครแบบด่วน (/turbo)`
  - `🎨 สุ่มแมตช์ธีมตัวละครให้หน่อย (/recommend_theme)`
  - `📜 เริ่มต้นออกแบบการ์ดแบบละเอียดทีละสเต็ป (/start_inquiry)`
  - `📱 ตรวจสอบและให้คะแนนการ์ดตัวละคร (/show_score)`
* **Knowledge Files:**
  - อัปโหลด `data/json/color_palettes_50.json`
  - อัปโหลด `data/json/typography_50.json`
  - อัปโหลด `data/json/theme_components.json`

---

## 🔒 Code Security & Output Compliance
Custom GPT จะปฏิบัติตามกฎเหล็ก:
1. **Zero-JS:** ไม่ปล่อยโค้ดที่มี JavaScript หรือ `<script>` เด็ดขาด
2. **Minified Output (STATE 11):** บีบอัดโค้ด HTML/CSS ตัด Whitespace และ Comment ออก 100%
3. **Mobile First:** คุมขนาดความกว้างไม่เกิน `440px` ด้วย Fluid `clamp()`

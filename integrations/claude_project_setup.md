# 🎭 Anthropic Claude Project Setup: Rubii Card Architect v2.2.7

คู่มือการนำระบบ **Rubii Card Architect v2.2.7** ไปติดตั้งใน **Claude Projects**

---

## 🚀 Claude Project Instructions Setup

1. สร้าง **New Project** ใน Claude -> ตั้งชื่อว่า `⚡ Rubii Card Architect`
2. ในส่วน **Set Project Instructions**:
   - คัดลอกเนื้อหาทั้งหมดจาก [`standalone/rubii_architect_v2.2.7_standalone.md`](../standalone/rubii_architect_v2.2.7_standalone.md) แล้ววางลงในช่อง System Instructions
3. ในส่วน **Project Knowledge**:
   - เพิ่มไฟล์ `core/skill_spec.md`
   - เพิ่มไฟล์ `data/markdown/css_master_database.md`
   - เพิ่มไฟล์ `data/markdown/typography_database.md`
   - เพิ่มไฟล์ `data/markdown/palette_color_database.md`

---

## ⚡ วิธีใช้งานใน Claude Chat
* พิมพ์ `/turbo` พร้อมข้อมูลตัวละครสั้นๆ Claude จะประมวลผล Dossier + Blueprint + Minified Code ทันทีในคำตอบเดียว
* หรือสั่งแบบทีละขั้นตอนด้วย `/start_inquiry` เพื่อเลือก Moodboard และปรับแต่งทีละ State

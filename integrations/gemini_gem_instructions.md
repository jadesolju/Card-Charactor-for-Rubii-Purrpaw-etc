# 💎 Gemini Gem Integration Guide: Rubii Card Architect v2.2.7

คู่มือการนำระบบ **Rubii Card Architect v2.2.7** ไปสร้างเป็น **Gemini Gem** บน Google Gemini Advanced

---

## 🚀 ขั้นตอนการสร้าง Gem (Step-by-Step)

1. เปิด **Google Gemini** (gemini.google.com) แล้วไปที่เมนู **Gem Manager** (ตัวจัดการ Gem) -> คลิก **New Gem** (สร้าง Gem ใหม่)
2. ตั้งชื่อ Gem: `⚡ Rubii Character Card Architect`
3. ในช่อง **Instructions (คำสั่ง)**:
   - เปิดไฟล์ [`standalone/rubii_architect_v2.2.7_standalone.md`](../standalone/rubii_architect_v2.2.7_standalone.md)
   - คัดลอก (Copy) เนื้อหาทั้งหมด แล้วนำไปวางในช่อง **Instructions**
4. ในช่อง **Knowledge (คลังความรู้ / ไฟล์แนบ)** (ถ้าต้องการ):
   - แนบไฟล์ [`data/json/color_palettes_50.json`](../data/json/color_palettes_50.json)
   - แนบไฟล์ [`data/json/typography_50.json`](../data/json/typography_50.json)
5. คลิก **Save (บันทึก)**

---

## 💬 ตัวอย่างข้อความเริ่มต้นสั่งงาน (Prompt Example)

```
/turbo
ชื่อตัวละคร: Valentina Cross
แนวเรื่อง: Cyber-Gothic แวมไพร์สาวในเมืองอนาคต
นิสัย: สุขุม เยือกเย็น ควบคุมตลาดมืด Sector 09
สีที่ชอบ: ดำ นีออนชมพู และนีออนไซแอน
```

---

## 🛠️ Slash Commands ที่ Gem รองรับ
* `/express` : โหมดด่วน วิเคราะห์และสร้าง Blueprint ทันทีใน 1 Turn
* `/turbo` : ทางลัดขั้นสูงสุด รวบยอดตั้งแต่สรุปเนื้อเรื่องจนถึงคายโค้ด Minified HTML/CSS จบในคำตอบเดียว
* `/recommend_theme` : ให้ AI ช่วยคิดและสุ่มธีมที่เข้ากับตัวละครที่สุด
* `/force_color` : ขอเปลี่ยนคู่สีนีออนใหม่โดยล็อกโครงสร้างการ์ดเดิม
* `/adjust_layout` : ขอเปลี่ยนการจัดวางตำแหน่งโดยล็อกฟอนต์และสีเดิม

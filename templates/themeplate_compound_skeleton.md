# Themeplate Skeleton — Compound Library

> ใช้ไฟล์นี้เป็นโครงเปล่าสำหรับสร้าง Themeplate ใหม่ ใส่เฉพาะค่า placeholder และรหัสอ้างอิงจากคลัง ห้ามใส่ข้อมูลตัวละครจริงหรือลิงก์รูปภายนอก

## 1. Themeplate Identity

- **ID:** `{{themeplate_id}}`
- **ชื่อ Themeplate:** `{{themeplate_name}}`
- **หมวด/อารมณ์:** `{{themeplate_mood_tags}}`
- **คำอธิบายการใช้:** `{{themeplate_use_case}}`
- **ช่วงหน้าจอ:** `320–440px`
- **ผลลัพธ์การ์ด:** `HTML + CSS / Zero-JS`

## 2. Library References

- **Palette ID:** `{{palette_id}}`
- **บทบาทสี:** `{{surface_token}}`, `{{text_token}}`, `{{primary_token}}`, `{{secondary_token}}`, `{{accent_token}}`
- **Typography ID:** `{{typography_id}}`
- **Compound หลัก:** `{{compound_call_1}}`, `{{compound_call_2}}`
- **Compound เสริม:** `{{compound_call_optional}}`
- **ข้อจำกัดการผสม:** `{{compatibility_notes}}`

แหล่งข้อมูล Compound คือ `data/json/compound_catalog_v1.json` และภาพประกอบ SVG คือ symbol ที่ระบุด้วย `svgSymbol` ใน record เดียวกัน

## 3. Card Anatomy

1. **กรอบการ์ด:** `{{card_frame_compound}}`
2. **ส่วนหัว:** `{{header_compound}}`
3. **ช่องภาพ:** `{{portrait_slot}}` — เว้นเป็นพื้นที่เปล่า ไม่ใส่ URL รูป
4. **ข้อมูลย่อ:** `{{metadata_compound}}`
5. **ส่วนเนื้อหา:** `{{content_compound}}`
6. **ส่วนเสริม/ปฏิสัมพันธ์:** `{{interaction_compound_or_none}}`

## 4. Placeholder Content Contract

ใช้ placeholder สำหรับข้อมูลที่เปลี่ยนตามตัวละครเท่านั้น:

```text
{{character_name}}
{{short_title}}
{{short_bio}}
{{profile_field_label}}
{{profile_field_value}}
{{section_heading}}
{{section_body}}
{{status_label}}
{{metric_label}}
{{metric_value}}
```

## 5. Preview Notes

- **Preview SVG symbols:** `{{svg_symbol_ids}}`
- **Viewport checks:** `320px`, `375px`, `390px`, `440px`
- **Motion:** `{{static_or_motion_compounds}}`
- **Reduced-motion behavior:** `{{reduced_motion_behavior}}`
- **ข้อความที่ยาวที่สุด:** `{{long_thai_placeholder_case}}`
- **สิ่งที่ต้องหลีกเลี่ยง:** `{{known_conflicts_or_none}}`

## 6. Export Requirements

- ใช้ HTML text node สำหรับข้อความที่อ่านหรือคัดลอกได้
- ไม่ใช้ JavaScript, event handler, external image URL หรือข้อมูลเฉพาะบุคคล
- ใช้ CSS token จาก Palette และ fallback สำหรับฟอนต์/พื้นผิวที่ไม่รองรับ
- ระบุคลาสที่ scope อยู่ใต้ root ของ Themeplate
- ส่งออกโค้ดที่อ่านง่ายก่อน แล้วค่อยมีขั้น minify แยกต่างหากเมื่อจำเป็น

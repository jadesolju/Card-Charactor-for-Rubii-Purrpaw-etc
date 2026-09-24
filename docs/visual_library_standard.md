# มาตรฐานคลัง Visual Library

เอกสารนี้กำหนดความสัมพันธ์ของคลัง Palette, Typography, Themeplate และ Compound ก่อนเริ่มทำเว็บ เป้าหมายคือให้ข้อมูลอ่านและตรวจแก้ได้จากไฟล์ในโปรเจกต์ และต่อยอดเป็นเครื่องมือค้นหา/Preview ได้ภายหลัง

## ขอบเขตข้อมูล

- **Palette** กำหนดชุดสีและบทบาทของแต่ละสี อยู่ใน `data/json/color_palettes_50.json`
- **Typography** กำหนดคู่ฟอนต์และอารมณ์การใช้งาน อยู่ใน `data/json/typography_50.json`
- **Themeplate** กำหนดทิศทางภาพรวมและตัวอย่างโครงหน้า อยู่ใน `data/json/theme_extended.json` และ `templates/`
- **Compound** กำหนดหน่วยตกแต่งหรือปฏิสัมพันธ์ที่นำไปประกอบ Themeplate ได้ อยู่ใน `data/json/compound_catalog_v1.json`
- **Themeplate Skeleton** สำหรับเริ่มชุดใหม่โดยใช้ placeholder อยู่ใน `templates/themeplate_compound_skeleton.md`

Themeplate อ้างอิงรายการด้วย ID ไม่คัดลอกข้อมูลส่วนตัวหรือข้อมูลตัวละครลงในคลังกลาง ตัวอย่างเนื้อหาทุกชิ้นใช้ช่องแทน เช่น `{{character_name}}`, `{{short_bio}}` และ `{{profile_slot}}`

## รูปแบบ Compound

แต่ละ Compound ต้องมี ID ที่ไม่เปลี่ยนตามชื่อแสดงผล เช่น `frame.neon-corner-brackets` และชื่อเรียกใช้ที่คัดลอกได้ เช่น `@compound/frame/neon-corner-brackets` ทุก record ต้องระบุหมวด, สรุปการใช้งาน, slot เป้าหมาย, recipe, token สีที่ต้องใช้, ระดับ motion/performance และ SVG preview ภายในโปรเจกต์

SVG preview ใช้ symbol จาก `data/svg/compound_preview_sprite.svg` โดย `svgSymbol` ต้องตรงกับ ID ในไฟล์นั้น ห้ามอ้างรูปจาก URL ภายนอก และห้ามใส่รูปหรือข้อมูลจากการ์ดตัวอย่างส่วนตัวใน Themeplate หรือ fixture

## ข้อตกลงด้านการ์ด

- ผลลัพธ์สำหรับการ์ดยังคงเป็น HTML/CSS แบบ Zero-JS ตามข้อกำหนดของโปรเจกต์
- รองรับช่วงความกว้าง 320–440px และข้อความไทยที่ยาวกว่าป้ายภาษาอังกฤษ
- token กลางที่ทุก Compound ใช้ได้: `--theme-primary`, `--theme-secondary`, `--theme-accent`, `--theme-surface`, `--theme-surface-raised`, `--theme-text`, `--theme-muted`, `--theme-border`
- motion ใช้ `transform` และ `opacity` เป็นหลัก ตั้ง fallback ให้ `prefers-reduced-motion` เสมอ และจำกัดการเคลื่อนไหว/ชั้นตกแต่งที่ทำงานพร้อมกัน
- เนื้อหาที่ผู้ใช้ต้องอ่านหรือคัดลอกต้องเป็น HTML text node ไม่ฝังใน SVG หรือ pseudo-element
- ปฏิสัมพันธ์เลือก native `details/summary`, radio/label หรือ native scrolling เท่านั้น

## รอบเพิ่มข้อมูล

1. รุ่นตั้งต้น: 50 Compound ใน 6 หมวด เพื่อให้มีชิ้นส่วนพื้นฐานสำหรับ Themeplate หลากหลายแนว
2. รอบถัดไป: 100 Compound หลังตรวจซ้ำเรื่องชื่อ, ความหมาย, token และการซ้อนเอฟเฟกต์
3. รอบขยาย: 250 Compound เพิ่มตระกูลย่อยและ variant ที่มีความแตกต่างในการใช้งานจริง
4. ระยะยาว: 500+ Compound พร้อมตัวกรอง, ข้อมูล compatibility และการระบุระดับประสิทธิภาพ

ไม่นับ variant ที่เปลี่ยนเพียงสีหรือชื่อเป็น Compound ใหม่ และยังไม่ทำหน้าผสม Compound จนกว่าความสัมพันธ์ `requires`/`avoidWith` จะถูกเพิ่มในชุดข้อมูลและผ่านการตรวจ

## เช็กลิสต์ก่อนเพิ่มรายการ

1. ID และชื่อเรียกใช้ไม่ซ้ำ และสื่อหน้าที่ของชิ้นงาน
2. Recipe ระบุวิธีประกอบที่ชัดเจนและอ้าง token กลางแทนการล็อกสีเฉพาะธีม
3. มี slot เป้าหมายและข้อจำกัดด้านขนาด/ข้อความที่เข้าใจได้
4. SVG เป็น vector ที่สร้างในโปรเจกต์ ใช้ `currentColor` และไม่บรรจุเนื้อหาส่วนตัว
5. ระบุ motion, performance และพฤติกรรมเมื่อผู้ใช้ลดการเคลื่อนไหว
6. ทำตัวอย่าง Themeplate ด้วย placeholder และอ่านได้ในช่วง 320–440px
7. เมื่อข้อมูลครบชุด ให้ตรวจด้วย `data/json/compound_catalog.schema.json` และเทียบจำนวน category กับจำนวน record

## เมื่อทำเว็บในภายหลัง

เว็บ Next.js + Node.js จะอ่าน catalog และ schema ชุดนี้ โดย TypeScript ใช้ strict mode และไม่อนุญาต `any` หน้าที่หลักคือค้นหา/อ่านข้อมูล, แสดง SVG, ทดลองค่าของ Themeplate และคัดลอกชื่อเรียกใช้ Compound ไม่ใช่เป็นแหล่งข้อมูลแยกจากไฟล์คลัง

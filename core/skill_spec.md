# SKILL.MD - ข้อมูลทางเทคนิค โครงสร้าง และแอนิเมชันการ์ดตัวละคร (Rubii Card Specification)

## [1. การรองรับหน้าจอ (UI/UX Compatibility)]
* **Mobile UI First:** โครงสร้างแสดงผลสมบูรณ์แบบบนหน้าจอโทรศัพท์มือถือทุกขนาด (Responsive Fluid Grid)
* **Micro-Layout Architecture:** โค้ดมีขนาดเบาพิเศษ (Lightweight) สำหรับใส่ในช่อง Custom Code ของแอป Rubii ได้ทันทีโดยไม่หน่วงระบบหลังบ้าน

## [2. ฟังก์ชันและเทคนิค HTML/CSS (Core Skills)]
* **Zero-JS Accordion:** ใช้ระบบกลไกธรรมชาติของ Semantic Tag `<details>` และ `<summary>` ในการทำระบบเปิด-ปิดเนื้อหาการ์ดโดยไม่ต้องพึ่งพา JavaScript
* **Fluid Typography:** ใช้เทคนิค `clamp(12px, 3.0vw, 15px)` คำนวณขนาดฟอนต์ให้ยืดหยุ่นตามความกว้างของหน้าจอมือถืออัตโนมัติ อ่านง่าย ไม่ล้นขอบจอ
* **Strict Style Enforcement:** บังคับใช้ `!important` ฝังระดับ Inline CSS เพื่อ Override ทับสไตล์หลักของแอป Rubii ป้องกันสไตล์เพี้ยน

## [3. ระบบเลื่อนหน้าจอและเลย์เอาต์ (Layout & Scrolling Engine)]
* **Horizontal Scrolling Webkit:** เทคนิค `overflow-x: auto` ร่วมกับ `white-space: nowrap` ทำให้แถบแฮชแท็กใช้นิ้วปัดเลื่อนซ้าย-ขวาได้ลื่นไหลตามสัดส่วนจอพอดี
* **Bounded Vertical Scroll Area:** บังคับพื้นที่เลื่อนแนวตั้งในส่วนนิสัยตัวละครด้วย `min-height: 70px` และจำกัดความสูง `max-height` ควบคู่กับ `overflow-y: auto` เพื่อล็อกพื้นที่ไม่ให้การ์ดยาวทะลุจอ

## [4. ลูกเล่นแอนิเมชัน (CSS Animation Specs)]
*ตัวโครงสร้างรองรับการใส่แอนิเมชันแบบ Pure CSS เพื่อให้ Accordion ขยับเขยื้อนอย่างนุ่มนวลเมื่อมีการกดใช้งาน:*
* **Smooth Fade-In & Slide-Down:** ใช้ `@keyframes` ควบคุมโปรพอร์ตี้ `opacity` และ `transform: translateY()` บนเนื้อหาภายในแท็ก `<details>` เพื่อให้ข้อความค่อยๆ ปรากฏและเลื่อนลงมาอย่างนุ่มนวล (Smooth Transition) เมื่อถูกเปิดออก แทนการเด้งวับแบบแข็งกระด้าง
* **Summary Indicator Rotation:** รองรับการใส่แอนิเมชันหมุนลูกศรหรือสัญลักษณ์หน้า `<summary>` (เช่น หมุน 90 หรือ 180 องศา) โดยใช้ซีเลกเตอร์ `details[open] summary::marker` หรือ `details[open] summary::after` เพื่อเป็น Visual Feedback บอกผู้ใช้ว่าเมนูกำลังเปิดอยู่

## [5. โครงสร้างระบบสีสากล (Flexible Color Palette Specification)]
*ตัวโค้ดเปิดช่องให้เปลี่ยนรหัสสี (Hex Code) ได้ตามธีมตัวละครที่คุณต้องการ โดยแบ่งระดับชั้น (Layer) ไว้ดังนี้:*
* **Base Text Color (`!important`):** สีสำหรับข้อความและเนื้อหาทั่วไป
* **Primary Accent Color (`!important`):** สีหลักสำหรับเน้นหัวข้อ และจุดเด่นหลักของการ์ด
* **Secondary Accent Color (`!important`):** สีรองสำหรับใช้ตัดเส้นขอบนอก หรือเส้นคั่นเลย์เอาต์
* **Highlight Color (`!important`):** สีสว่าง/สีสะท้อนแสง สำหรับใช้กับไอดีตัวละคร และไฮไลต์แฮชแท็ก

## [6. ประสิทธิภาพการโหลด (Performance Profile)]
* **Minified Optimization:** ตัวโค้ด HTML/CSS รวมถึง CSS Keyframes ทั้งหมดถูกบีบอัด ตัดช่องว่าง (Space) และการเว้นบรรทัด (Line-break) ออกจนชิดกันทั้งหมด เพื่อให้ระบบหลังบ้านของแอป Rubii ประมวลผลและโหลดการ์ดขึ้นมาแสดงผลได้เร็วที่สุด
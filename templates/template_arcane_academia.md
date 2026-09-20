# 📜 CROSS-OVER TEMPLATE: ARCANE ACADEMIA (Dark Academia × Arcane Mage)

> **Design Concept:** ห้องสมุดโบราณต้องห้าม สมาคมเวทมนตร์ลับ คัมภีร์หนังเก่า และวงแหวนรูนเรืองแสงสีม่วงทอง.  
> **Core Directives:** Zero-JS | Transparent Canvas | Glowing Runic Border | Mobile Fluids (<440px)

---

## 🎨 1. Theme Configuration

| Attribute | Specification |
| :--- | :--- |
| **Theme Name** | Arcane Forbidden Archivist |
| **Color Archetype** | Arcane Violet (#7C3AED / #A78BFA) × Royal Gold (#D4AF37 / #FFD700) |
| **Primary Glow (`--neon-p`)** | `#C084FC` (Arcane Violet Glow) |
| **Secondary Accent (`--neon-s`)** | `#D4AF37` (Antique Gold) |
| **Canvas Background** | `rgba(18, 12, 28, 0.8)` with vintage leather grain mask |
| **Typography Pairing** | **Heading:** Chonburi / EB Garamond \| **Body:** Anuphan / Cardo |
| **Signature Suite** | `Arcane Order` + `Forbidden Archivist` (Book + Rune + Arcane Circle + Key) |
| **Border Style** | `2px solid #D4AF37` + `box-shadow: 0 0 16px rgba(124,58,237,0.45)` |

---

## 📐 2. Ready-to-Use HTML/CSS Wireframe (Pure No-JS)

```html
<style>
@keyframes runeFloat{0%,100%{transform:translateY(0);}50%{transform:translateY(-3px);}}
.aa-card{width:100vw;max-width:440px;margin:0 auto;box-sizing:border-box;font-family:'Chonburi','EB Garamond',serif;background:rgba(18,12,28,0.85)!important;border:2px solid #d4af37!important;border-radius:8px;padding:16px;color:#f3e8ff!important;box-shadow:0 0 16px rgba(124,58,237,0.45);user-select:text!important;}
.aa-header{display:flex;align-items:center;justify-content:space-between;border-bottom:1px solid rgba(212,175,55,0.4);padding-bottom:6px;}
.aa-seal{font-size:18px;animation:runeFloat 3s infinite ease-in-out;}
.aa-title{font-size:clamp(18px,4.8vw,24px);color:#ffd700!important;text-shadow:0 0 6px #c084fc;margin:8px 0 2px 0;}
.aa-sub{font-size:clamp(9px,2.8vw,11px);color:#a78bfa!important;letter-spacing:1.5px;font-style:italic;}
.aa-quote{padding:8px;margin:10px 0;border-left:3px solid #c084fc;background:rgba(124,58,237,0.12);font-size:clamp(8px,3vw,12px);font-family:'Anuphan',serif;color:#e9d5ff!important;}
.aa-details{margin-top:8px;border:1px solid rgba(212,175,55,0.3);border-radius:4px;}
.aa-summary{padding:8px 10px;cursor:pointer;background:rgba(212,175,55,0.15);color:#ffd700!important;font-size:clamp(10px,3.2vw,12px);font-weight:bold;}
.aa-content{padding:8px 10px;font-size:clamp(8px,3vw,11px);line-height:1.6;color:#ddd6fe!important;font-family:'Anuphan',serif;max-height:140px;overflow-y:auto;}
</style>
<div class="aa-card">
  <div class="aa-header">
    <span style="font-size:10px;color:#d4af37;letter-spacing:1px;">📜 THE ARCHIVE OF SOLOMON</span>
    <span class="aa-seal">🔮</span>
  </div>
  <h1 class="aa-title">AURELIUS VANE</h1>
  <div class="aa-sub">// GRAND SCHOLAR OF THE FORBIDDEN CIRCLE</div>
  <div class="aa-quote">"ความรู้ที่ถูกกักขัง ย่อมทรงพลังยิ่งกว่ามนตร์ทำลายล้างใดๆ ในปฐพี"</div>
  <details class="aa-details" open>
    <summary class="aa-summary">⚡ RUNIC STATUS & AFFILIATION</summary>
    <div class="aa-content">
      • สังกัด: หอสมุดมนตร์ดำหลวงแห่งอาคาเดเมีย<br>
      • พลังพิเศษ: ถอดรหัสอักษรโบราณ และเชื่อมโยงวงแหวนมิติ<br>
      • วัตถุประจำกาย: คัมภีร์หนังมังกร และกุญแจทองเหลืองรูน
    </div>
  </details>
</div>
```

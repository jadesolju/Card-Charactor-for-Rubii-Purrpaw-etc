# ⚙️ CROSS-OVER TEMPLATE: SOLAR STEAMPUNK (Solarpunk × Victorian Steampunk)

> **Design Concept:** ฟันเฟืองทองเหลืองและท่อไอน้ำ ผสมผสานพลังงานแสงอาทิตย์สีเขียวมรกตและพืชพรรณธรรมชาติ.  
> **Core Directives:** Zero-JS | Transparent & Brass Canvas | Energy Glow | Mobile-First (<440px)

---

## 🎨 1. Theme Configuration

| Attribute | Specification |
| :--- | :--- |
| **Theme Name** | Brass Botanical Core |
| **Color Archetype** | Solarpunk (#219EBC / #8ECAE6) × Steampunk (#FFB703 / #B7B7A4 / #344E41) |
| **Primary Glow (`--neon-p`)** | `#39FF14` (Solar Emerald Glow) |
| **Secondary Accent (`--neon-s`)** | `#E1B382` (Polished Brass Gold) |
| **Canvas Background** | `rgba(15, 25, 20, 0.85)` with fine gear wireframe mask |
| **Typography Pairing** | **Heading:** Taviraj (Bold) / Rye \| **Body:** Anuphan / Quattrocento |
| **Signature Suite** | `Iron Wasteland` + `Botanical Archivist` (Gear + Vine + Leaf + Clock) |
| **Border Style** | `2px solid #E1B382` + `box-shadow: 0 0 14px rgba(57,255,20,0.35)` |

---

## 📐 2. Ready-to-Use HTML/CSS Wireframe (Pure No-JS)

```html
<style>
.ss-card{width:100vw;max-width:440px;margin:0 auto;box-sizing:border-box;font-family:'Taviraj','Rye',serif;background:rgba(15,25,20,0.88)!important;border:2px solid #e1b382!important;border-radius:10px;padding:16px;color:#f0fdf4!important;box-shadow:0 0 14px rgba(57,255,20,0.35);user-select:text!important;}
.ss-title{font-size:clamp(18px,4.8vw,24px);color:#e1b382!important;text-shadow:0 0 8px #39ff14;margin:8px 0 2px 0;}
.ss-tag{font-size:10px;color:#39ff14;background:rgba(57,255,20,0.1);padding:2px 8px;border:1px solid #39ff14;border-radius:4px;}
.ss-details{margin-top:10px;border:1px solid rgba(225,179,130,0.4);border-radius:6px;background:rgba(0,0,0,0.3);}
.ss-summary{padding:8px 12px;cursor:pointer;color:#e1b382!important;font-size:clamp(11px,3.2vw,13px);font-weight:bold;}
.ss-content{padding:8px 12px;font-size:clamp(9px,3vw,12px);line-height:1.5;color:#bbf7d0!important;font-family:'Anuphan',sans-serif;max-height:140px;overflow-y:auto;}
</style>
<div class="ss-card">
  <div style="display:flex;justify-content:space-between;align-items:center;">
    <span class="ss-tag">🌿 ECO-KINETIC ENGINEER</span>
    <span style="font-size:14px;color:#e1b382;">⚙️☀️</span>
  </div>
  <h1 class="ss-title">INGENIEUR STERLING</h1>
  <div style="font-size:10px;color:#39ff14;letter-spacing:1.5px;">// SOLAR CLOCKWORK INVENTOR</div>
  <details class="ss-details" open>
    <summary class="ss-summary">🔍 BLUEPRINT & INVENTIONS</summary>
    <div class="ss-content">
      • ผู้บุกเบิกเครื่องยนต์พลังงานแสงอาทิตย์ขับเคลื่อนเมืองลอยฟ้า<br>
      • พกปืนคาบศิลาแรงดันไอน้ำฟันเฟืองทองเหลืองสลักลายเถาวัลย์<br>
      • อุดมการณ์: หลอมรวมอุตสาหกรรมจักรกลให้เติบโตคู่ธรรมชาติ
    </div>
  </details>
</div>
```

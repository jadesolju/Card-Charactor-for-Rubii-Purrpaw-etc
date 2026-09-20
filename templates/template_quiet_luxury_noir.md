# 🍸 CROSS-OVER TEMPLATE: QUIET LUXURY NOIR (Quiet Wealth × Modern Noir)

> **Design Concept:** ความเรียบหรูสไตล์ Old Money ชนชั้นสูง ไร้โลโก้ ตัดกับบรรยากาศฟิล์มนัวร์ มาเฟีย และเงามืดคมกริบ.  
> **Core Directives:** Zero-JS | Transparent Glass Canvas | Ultra-Thin Gold Frame | Mobile-First (<440px)

---

## 🎨 1. Theme Configuration

| Attribute | Specification |
| :--- | :--- |
| **Theme Name** | Obsidian & Cashmere Noir |
| **Color Archetype** | Quiet Luxury (#F7F1E3 / #DCC7AA / #111827) × Modern Noir (#1A1A1A / #DFD8C8) |
| **Primary Glow (`--neon-p`)** | `#DFD8C8` (Muted Warm Silk) |
| **Secondary Accent (`--neon-s`)** | `#A39274` (Old Gold Minimal) |
| **Canvas Background** | `rgba(18, 18, 20, 0.9)` with frosted glassmorphism |
| **Typography Pairing** | **Heading:** Prompt (Light) / Tenor Sans \| **Body:** Inter / Montserrat (Light) |
| **Signature Suite** | `Minimal Luxury` (Monochrome Velvet + Thin Gold Border + Staggered Spacing) |
| **Border Style** | `1px solid rgba(223, 216, 200, 0.35)` + `box-shadow: 0 10px 30px rgba(0,0,0,0.6)` |

---

## 📐 2. Ready-to-Use HTML/CSS Wireframe (Pure No-JS)

```html
<style>
.ql-card{width:100vw;max-width:440px;margin:0 auto;box-sizing:border-box;font-family:'Tenor Sans','Prompt',sans-serif;background:rgba(18,18,20,0.92)!important;border:1px solid rgba(223,216,200,0.4)!important;border-radius:4px;padding:20px 16px;color:#dfd8c8!important;box-shadow:0 12px 36px rgba(0,0,0,0.7);user-select:text!important;}
.ql-header{letter-spacing:3px;font-size:9px;color:#a39274;text-transform:uppercase;margin-bottom:6px;}
.ql-title{font-size:clamp(19px,4.5vw,25px);font-weight:300;color:#fff!important;letter-spacing:2px;margin:0 0 4px 0;}
.ql-sub{font-size:clamp(9px,2.5vw,11px);color:#a39274!important;letter-spacing:2px;font-style:italic;}
.ql-line{height:1px;background:rgba(223,216,200,0.2);margin:14px 0;}
.ql-details{border:none;margin-top:10px;}
.ql-summary{padding:6px 0;cursor:pointer;color:#fff!important;font-size:11px;letter-spacing:2px;text-transform:uppercase;border-bottom:1px solid rgba(223,216,200,0.2);}
.ql-content{padding:10px 0;font-size:clamp(9px,2.8vw,11.5px);line-height:1.7;color:#c7c2b6!important;font-weight:300;}
</style>
<div class="ql-card">
  <div class="ql-header">THE SYNDICATE DIRECTORY</div>
  <h1 class="ql-title">JULIAN VANDERBILT</h1>
  <div class="ql-sub">// CHAIRMAN & SHADOW BENEFACTOR</div>
  <div class="ql-line"></div>
  <div style="font-size:11px;letter-spacing:1px;color:#a39274;">PORTFOLIO & ASSETS: PRIVATE HOLDINGS</div>
  <details class="ql-details" open>
    <summary class="ql-summary">EXECUTIVE SUMMARY</summary>
    <div class="ql-content">
      • ผู้นำตระกูลวานเดอร์บิลต์รุ่นที่ 4 ผู้ถือครองสัมปทานท่าเรือและอสังหาริมทรัพย์มืด<br>
      • บุคลิกสุขุม นิ่ง เงียบ แต่มีอิทธิพลชี้เป็นชี้ตายในวงการธุรกิจข้ามชาติ<br>
      • รสนิยม: วิสกี้บ่ม 50 ปี และสูทสั่งตัดพิเศษจากมิลาน
    </div>
  </details>
</div>
```

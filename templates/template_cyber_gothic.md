# ⚡ CROSS-OVER TEMPLATE: CYBER-GOTHIC (Cyberpunk × Gothic Victorian)

> **Design Concept:** การผสมผสานระหว่างโลกอนาคตดิสโทเปียและมนตร์ขลังกอธิคโบราณ (High-Tech Vampire / Neon Cathedral).  
> **Core Directives:** Zero-JS | Transparent Canvas | Neon Frame | Mobile-First (<440px)

---

## 🎨 1. Theme Configuration

| Attribute | Specification |
| :--- | :--- |
| **Theme Name** | Cyber-Gothic Nocturne |
| **Color Archetype** | Blood Oath (#8B0000 / #C1121F) × Cyber Neon (#00FFFF / #FF00FF) |
| **Primary Glow (`--neon-p`)** | `#FF0055` (Neon Crimson) |
| **Secondary Accent (`--neon-s`)** | `#00FFFF` (Cyber Cyan) |
| **Canvas Background** | `rgba(10, 5, 12, 0.75)` with `backdrop-filter: blur(6px)` |
| **Typography Pairing** | **Heading:** Chonburi / Almendra Display \| **Body:** Kanit / JetBrains Mono |
| **Signature Suite** | `Blood Dynasty` + `Cyber Nexus` (Rose + Thorn + Hexagon HUD Grid) |
| **Border Style** | `2px solid #FF0055` + `box-shadow: 0 0 14px rgba(255,0,85,0.4), inset 0 0 10px rgba(0,255,255,0.2)` |

---

## 📐 2. Ready-to-Use HTML/CSS Wireframe (Pure No-JS)

```html
<style>
@keyframes cyberGlow{0%,100%{box-shadow:0 0 12px #ff0055,inset 0 0 8px #00ffff;}50%{box-shadow:0 0 20px #00ffff,inset 0 0 12px #ff0055;}}
@keyframes pulseDot{0%,100%{opacity:1;transform:scale(1);}50%{opacity:0.3;transform:scale(0.8);}}
.cg-card{width:100vw;max-width:440px;margin:0 auto;box-sizing:border-box;font-family:'Chonburi','Almendra Display',serif;background:rgba(10,5,12,0.85)!important;border:2px solid #ff0055!important;border-radius:12px;padding:16px;color:#f3e8ee!important;animation:cyberGlow 4s infinite ease-in-out;user-select:text!important;}
.cg-tag{display:inline-block;padding:2px 8px;font-size:clamp(8px,2.5vw,11px);border:1px solid #00ffff;color:#00ffff!important;border-radius:4px;text-transform:uppercase;letter-spacing:1px;}
.cg-title{font-size:clamp(18px,5vw,26px);color:#fff!important;text-shadow:0 0 8px #ff0055;margin:8px 0 4px 0;}
.cg-sub{font-size:clamp(9px,3vw,12px);color:#00ffff!important;letter-spacing:2px;font-family:'Kanit',sans-serif;}
.cg-divider{height:1px;background:linear-gradient(90deg,transparent,#ff0055,#00ffff,transparent);margin:12px 0;}
.cg-grid{display:grid;grid-template-columns:1fr 1fr;gap:8px;font-size:clamp(8px,3vw,12px);font-family:'Kanit',sans-serif;}
.cg-key{color:#a78bfa!important;font-weight:bold;}
.cg-val{color:#fff!important;}
.cg-details{margin-top:10px;border:1px solid rgba(255,0,85,0.4);border-radius:6px;background:rgba(0,0,0,0.4);overflow:hidden;}
.cg-summary{padding:8px 12px;font-size:clamp(10px,3.2vw,13px);cursor:pointer;background:rgba(255,0,85,0.15);color:#00ffff!important;font-family:'Kanit',sans-serif;list-style:none;}
.cg-content{padding:10px 12px;font-size:clamp(8px,3.2vw,12px);line-height:1.5;color:#e2e8f0!important;font-family:'Kanit',sans-serif;max-height:150px;overflow-y:auto;}
</style>
<div class="cg-card">
  <div style="display:flex;justify-content:space-between;align-items:center;">
    <span class="cg-tag">[ STATUS: CLASSIFIED ]</span>
    <span style="display:inline-block;width:8px;height:8px;background:#ff0055;border-radius:50%;box-shadow:0 0 6px #ff0055;animation:pulseDot 1.5s infinite;"></span>
  </div>
  <h1 class="cg-title">VALENTINA CROSS</h1>
  <div class="cg-sub">// CYBERNETIC NOCTURNE ARCHON</div>
  <div class="cg-divider"></div>
  <div class="cg-grid">
    <div><span class="cg-key">AFFILIATION:</span> <span class="cg-val">Sector 09 Blood Syndicate</span></div>
    <div><span class="cg-key">ORIGIN:</span> <span class="cg-val">Neo-Verona Core</span></div>
  </div>
  <details class="cg-details" open>
    <summary class="cg-summary">⚔️ PROFILE DOSSIER & LORE</summary>
    <div class="cg-content">
      • แวมไพร์สายเลือดโบราณผู้ผสานระบบอวัยวะกลจักรกลสังเคราะห์<br>
      • ควบคุมเครือข่ายตลาดมืดและข้อมูลลับแห่ง Sector 09<br>
      • เป้าหมาย: ปลดแอกชนชั้นใต้ดินด้วยพลังเวทไซเบอร์เนติกส์
    </div>
  </details>
</div>
```

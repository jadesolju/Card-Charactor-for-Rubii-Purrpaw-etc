# 🎀 CROSS-OVER TEMPLATE: PASTEL GLITCH (Pastel Kawaii × Vaporwave Glitch)

> **Design Concept:** ความน่ารักสดใสโทนขนมหวาน ตัดกับลายเส้น CRT Scanline, กะพริบแสงนีออนดิจิทัล และเกจวัดพลังน่ารัก.  
> **Core Directives:** Zero-JS | Transparent & Frosted Canvas | Animated Glow | Mobile-First (<440px)

---

## 🎨 1. Theme Configuration

| Attribute | Specification |
| :--- | :--- |
| **Theme Name** | Cyber-Mimi Pastel Wave |
| **Color Archetype** | Pastel Kawaii (#FFC6FF / #BDB2FF) × Synthwave (#FF2079 / #00FFCC) |
| **Primary Glow (`--neon-p`)** | `#FF66C4` (Candy Pink Glow) |
| **Secondary Accent (`--neon-s`)** | `#66E6FF` (Pastel Cyan) |
| **Canvas Background** | `rgba(255, 240, 248, 0.85)` or Dark Cyber variant `rgba(20, 15, 30, 0.85)` |
| **Typography Pairing** | **Heading:** Pattaya / Monoton \| **Body:** Kanit / Orbitron |
| **Signature Suite** | `Kaomoji Framing` + `Kaomoji Status Dot` (🌸 + ✨ + 👾) |
| **Border Style** | `2px dashed #FF66C4` + `box-shadow: 0 0 12px rgba(255,102,196,0.5)` |

---

## 📐 2. Ready-to-Use HTML/CSS Wireframe (Pure No-JS)

```html
<style>
@keyframes pastelPulse{0%,100%{border-color:#ff66c4;box-shadow:0 0 10px #ff66c4;}50%{border-color:#66e6ff;box-shadow:0 0 15px #66e6ff;}}
.pg-card{width:100vw;max-width:440px;margin:0 auto;box-sizing:border-box;font-family:'Kanit',sans-serif;background:rgba(20,15,30,0.88)!important;border:2px dashed #ff66c4!important;border-radius:18px;padding:16px;color:#fff!important;animation:pastelPulse 3s infinite ease-in-out;user-select:text!important;}
.pg-badge{background:linear-gradient(45deg,#ff66c4,#66e6ff);color:#140f1e!important;font-size:10px;font-weight:bold;padding:3px 10px;border-radius:20px;display:inline-block;}
.pg-title{font-size:clamp(18px,5vw,26px);color:#ffc6ff!important;text-shadow:0 0 8px #ff66c4;margin:10px 0 2px 0;}
.pg-meter{width:100%;height:8px;background:rgba(255,255,255,0.1);border-radius:10px;overflow:hidden;margin:8px 0;}
.pg-meter-fill{width:85%;height:100%;background:linear-gradient(90deg,#ff66c4,#66e6ff);border-radius:10px;}
.pg-details{margin-top:10px;border:1px solid #ff66c4;border-radius:10px;background:rgba(255,102,196,0.08);}
.pg-summary{padding:8px 12px;cursor:pointer;color:#ffc6ff!important;font-size:clamp(11px,3.2vw,13px);font-weight:bold;}
.pg-content{padding:8px 12px;font-size:clamp(9px,3vw,12px);line-height:1.5;color:#e2e8f0!important;max-height:130px;overflow-y:auto;}
</style>
<div class="pg-card">
  <div style="display:flex;justify-content:space-between;align-items:center;">
    <span class="pg-badge">👾 LEVEL 99 IDOL</span>
    <span style="font-size:12px;color:#66e6ff;">(づ｡◕‿‿◕｡)づ</span>
  </div>
  <h1 class="pg-title">NANO CHIBI 01</h1>
  <div style="font-size:10px;color:#66e6ff;letter-spacing:1px;">// VIRTUAL POP GLITCH STREAMER</div>
  <div style="margin-top:8px;font-size:10px;color:#ffc6ff;">CUTE ENERGY GAUGE (85%)</div>
  <div class="pg-meter"><div class="pg-meter-fill"></div></div>
  <details class="pg-details" open>
    <summary class="pg-summary">🎀 STREAM INFO & QUIRKS</summary>
    <div class="pg-content">
      • นิสัย: ร่าเริง ซน ป่วนระบบเซิร์ฟเวอร์ด้วยไวรัสสีชมพู<br>
      • อาหารโปรด: ชานมไข่มุกโฮโลแกรม & มาการองนีออน<br>
      • สกิลเด่น: ยิงคลื่นเสียง Synthwave ทำให้ศัตรูเต้นตาม 10 วินาที
    </div>
  </details>
</div>
```

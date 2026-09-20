# ⚡ Rubii Express Theme Architect V2.2.7 (Tiếng Việt)

<div align="center">

[![Language: English](https://img.shields.io/badge/Language-English-blue.svg)](README.md)
[![Language: Thai](https://img.shields.io/badge/Language-ภาษาไทย-red.svg)](README_TH.md)
[![Language: Chinese](https://img.shields.io/badge/Language-简体中文-yellow.svg)](README_ZH.md)
[![Language: Vietnamese](https://img.shields.io/badge/Language-Tiếng_Việt-green.svg)](#)

[![Version](https://img.shields.io/badge/Version-v2.2.7_Express-ff007f.svg)](CHANGELOG.md)
[![Zero-JS](https://img.shields.io/badge/Architecture-100%25_Zero--JS-00ffff.svg)](DESIGN.md)
[![Mobile-First](https://img.shields.io/badge/Mobile-320px--440px_Fluid-39ff14.svg)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Khung Prompt AI Kiến Trúc Sư UI/UX tạo thẻ hồ sơ nhân vật phát sáng Neon, kiến trúc Zero-JS siêu nhẹ, tương thích hoàn hảo với thiết bị di động & ứng dụng Rubii.**

[ [🇬🇧 English](README.md) | [🇹🇭 ภาษาไทย](README_TH.md) | [🇨🇳 简体中文](README_ZH.md) | 🇻🇳 Tiếng Việt ]

</div>

---

## 🌟 Giới thiệu Rubii Card Architect là gì?

**Rubii Card Architect v2.2.7** là một hệ thống System Prompt và công cụ Prompt Engineering nâng cao, giúp biến các mô hình AI hàng đầu (**Google Gemini, OpenAI ChatGPT / Custom GPTs, Anthropic Claude, DeepSeek**) thành những nhà thiết kế UI/UX di động chuyên nghiệp.

Chỉ cần nhập cốt truyện, tính cách và bối cảnh của nhân vật, AI sẽ phân tích và tạo ngay trong một câu trả lời duy nhất:
1. **Character Dossier (Hồ sơ nhân vật rút gọn):** Tóm tắt súc tích (mỗi phần không quá 3 dòng).
2. **Design Blueprint (Bản thiết kế giao diện):** Phối hợp bảng màu Neon, phông chữ và hiệu ứng tương thích.
3. **Production Code (Mã nguồn thực tế):** Mã HTML/CSS nén (Minified), 100% Zero-JS, sẵn sàng sao chép và dán vào ứng dụng Rubii.

```
  Nhập cốt truyện ➡️ AI Theme Architect v2.2.7 ➡️ Thẻ Neon Minified Zero-JS hoàn chỉnh
```

---

## 🚀 Hướng dẫn nhanh: Sử dụng 1 tệp duy nhất (Single-File Drop-in)

### Dành cho người dùng phổ thông (ChatGPT / Claude / Gemini)
Không cần cài đặt môi trường hay viết mã, chỉ cần tải tệp độc lập:

1. Tải tệp [`standalone/rubii_architect_v2.2.7_standalone.md`](standalone/rubii_architect_v2.2.7_standalone.md).
2. Kéo thả tệp vào khung chat AI hoặc sao chép toàn bộ nội dung vào mục System Instructions (hoặc Custom GPT / Gemini Gem / Claude Project).
3. Gõ lệnh:
   ```text
   /turbo
   Tên nhân vật: Valentina Cross
   Thể loại: Cyber-Gothic Vampire trong thành phố tương lai Neo-Verona
   Tính cách: Điềm tĩnh, sắc sảo, kiểm soát mạng lưới chợ đen Sector 09
   Màu sắc yêu thích: Đen, Neon Hồng (#ff0055) và Cyber Cyan (#00ffff)
   ```
4. **Xong ngay!** AI sẽ trả về hồ sơ, bản thiết kế giao diện và mã nguồn nén sẵn sàng sử dụng chỉ trong 1 lượt phản hồi.

---

## 🕹️ Bảng lệnh điều khiển AI (Slash Commands)

| Lệnh | Chức năng và cách thức hoạt động |
| :--- | :--- |
| **`/turbo`** | **Phím tắt tối thượng:** Phân tích cốt truyện ➡️ Ghép chủ đề ➡️ Tạo bản vẽ ➡️ **Xuất mã HTML/CSS nén chỉ trong 1 lượt (1 Turn)**. |
| **`/express`** | **Chế độ nhanh:** Tóm tắt ý tưởng nhân vật và bản thiết kế giao diện ngay lập tức. |
| **`/recommend_theme`** | Để AI đóng vai trò Giám đốc thiết kế, tự động gợi ý chủ đề phù hợp nhất với cốt truyện. |
| **`/force_color`** | Đổi dải màu Neon mới nhưng **khóa 100% bố cục thẻ hiện tại**. |
| **`/adjust_layout`** | Điều chỉnh lại vị trí các khối nội dung nhưng **giữ nguyên phông chữ và màu sắc**. |
| **`/show_score`** | Hiển thị bảng đánh giá chất lượng trải nghiệm người dùng (UX) và hiệu năng trên di động. |
| **`/start_inquiry`** | Thiết lập lại hệ thống để bắt đầu quy trình chọn Moodboard từng bước. |
| **`/generate_theme`** | Lệnh cuối cùng để AI xuất mã nguồn HTML/CSS nén hoàn chỉnh (STATE 11). |

---

## 🎨 Điểm nổi bật về kiến trúc (Core Features)

1. **100% Zero-JS Native Architecture:**
   - Các tab nội dung và menu mở rộng được điều khiển hoàn toàn bằng thẻ ngữ nghĩa HTML `<details>` / `<summary>` và CSS Pseudo-classes (`:checked`, `:focus`), đảm bảo an toàn tuyệt đối và không bị ứng dụng chặn.
2. **Thiết kế co giãn linh hoạt cho di động (Fluid Mobile UX):**
   - Giới hạn chiều rộng từ `320px – 440px`, cỡ chữ tự động co giãn theo màn hình với `clamp(8px, 3.5vw, 14px)`.
3. **Nền trong suốt & Khung viền Neon phát sáng:**
   - Nền bán trong suốt (`rgba(...)`) kết hợp với các biến phát sáng (`--neon-p`, `--neon-s`, `--neon-accent`), tương thích với mọi hình nền thiết bị.
4. **Khả năng sao chép văn bản 100% (Copyable Text):**
   - Mọi thông tin nhân vật đều nằm trong các thẻ văn bản HTML thực tế (`user-select: text !important;`).
5. **Bộ dữ liệu 50 Bảng màu & 50 Cặp phông chữ:**
   - Được biên soạn sẵn ở định dạng **JSON, YAML và Markdown**.

---

## 📦 Bộ dữ liệu đa định dạng & Mẫu chủ đề kết hợp (Cross-Over Templates)

* **Dữ liệu JSON (`data/json/`):**
  - [`color_palettes_50.json`](data/json/color_palettes_50.json) — 50 Bảng màu CSS thịnh hành và mã Hex.
  - [`typography_50.json`](data/json/typography_50.json) — 50 Cặp phông chữ đa ngôn ngữ.
  - [`theme_components.json`](data/json/theme_components.json) — Thư viện vật liệu, mặt nạ bóng và hiệu ứng.
* **Dữ liệu YAML (`data/yaml/`):**
  - [`color_palettes_50.yaml`](data/yaml/color_palettes_50.yaml)
  - [`typography_50.yaml`](data/yaml/typography_50.yaml)
  - [`gem_plugin_config.yaml`](data/yaml/gem_plugin_config.yaml) — Cấu hình Plugin và Gemini Gem.
* **Mẫu chủ đề kết hợp (`templates/`):**
  - [`template_cyber_gothic.md`](templates/template_cyber_gothic.md) *(Cyberpunk × Gothic Victorian)*
  - [`template_arcane_academia.md`](templates/template_arcane_academia.md) *(Dark Academia × Arcane Mage)*
  - [`template_pastel_glitch.md`](templates/template_pastel_glitch.md) *(Pastel Kawaii × Vaporwave Glitch)*
  - [`template_solar_steampunk.md`](templates/template_solar_steampunk.md) *(Solarpunk × Victorian Steampunk)*
  - [`template_divine_occult.md`](templates/template_divine_occult.md) *(Thần thánh Ánh sáng × Bản thảo Huyền bí)*
  - [`template_quiet_luxury_noir.md`](templates/template_quiet_luxury_noir.md) *(Sang trọng Tinh tế × Phim Noir)*

---

## 🛠️ Công cụ xem trước thẻ di động (Live Tester)

Mở tệp [`tools/card_previewer.html`](tools/card_previewer.html) trên trình duyệt để kiểm tra và xem trước thẻ trực quan với các kích thước màn hình thực tế (320px, 375px, 390px, 440px).

---

## 🔌 Hướng dẫn tích hợp nền tảng AI
* [Hướng dẫn tạo Google Gemini Gem](integrations/gemini_gem_instructions.md)
* [Hướng dẫn cấu hình OpenAI Custom GPT](integrations/chatgpt_custom_gpt.md)
* [Hướng dẫn thiết lập Anthropic Claude Project](integrations/claude_project_setup.md)

---

## 📄 Giấy phép (License)
Dự án được phát hành theo giấy phép mã nguồn mở [MIT License](LICENSE). Phát triển với ❤️ bởi Ninninmera & Cộng đồng đóng góp.

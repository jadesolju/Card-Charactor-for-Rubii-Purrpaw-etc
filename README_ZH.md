# ⚡ Rubii Express 主题架构师 V2.2.7 (简体中文)

<div align="center">

[![Language: English](https://img.shields.io/badge/Language-English-blue.svg)](README.md)
[![Language: Thai](https://img.shields.io/badge/Language-ภาษาไทย-red.svg)](README_TH.md)
[![Language: Chinese](https://img.shields.io/badge/Language-简体中文-yellow.svg)](#)
[![Language: Vietnamese](https://img.shields.io/badge/Language-Tiếng_Việt-green.svg)](README_VI.md)

[![Version](https://img.shields.io/badge/Version-v2.2.7_Express-ff007f.svg)](CHANGELOG.md)
[![Zero-JS](https://img.shields.io/badge/Architecture-100%25_Zero--JS-00ffff.svg)](DESIGN.md)
[![Mobile-First](https://img.shields.io/badge/Mobile-320px--440px_Fluid-39ff14.svg)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**专为移动端与 Rubii 打造的 AI 驱动 UI/UX 提示词架构框架，用于生成超轻量级、Zero-JS、自适应霓虹发光角色卡片。**

[ [🇬🇧 English](README.md) | [🇹🇭 ภาษาไทย](README_TH.md) | 🇨🇳 简体中文 | [🇻🇳 Tiếng Việt](README_VI.md) ]

</div>

---

## 🌟 项目简介 (What is Rubii Card Architect?)

**Rubii Card Architect v2.2.7** 是一个先进的 System Prompt（系统提示词）和提示词工程引擎。它能够将主流大语言模型（**Google Gemini、OpenAI ChatGPT / Custom GPTs、Anthropic Claude、DeepSeek**）转化为专业的移动端 UI/UX 设计师。

只需输入角色的背景故事、设定与性格，AI 将在单次回复中自动分析并生成：
1. **Character Dossier（角色精简档案）：** 结构化提炼（每个模块控制在 3 行以内）。
2. **Design Blueprint（设计蓝图）：** 自动匹配霓虹配色方案、排版与视觉特效。
3. **Production Code（生产代码）：** 100% 压缩（Minified）、可复制、纯 HTML/CSS（Zero-JS）的高性能卡片代码。

```
  输入故事设定 ➡️ AI Theme Architect v2.2.7 ➡️ 100% 压缩版 Zero-JS 霓虹发光卡片
```

---

## 🚀 快速上手：单文件直接拖入 (Single-File Drop-in)

### 普通用户（ChatGPT / Claude / Gemini）
无需任何编程基础与环境配置，只需下载单文件：

1. 下载 [`standalone/rubii_architect_v2.2.7_standalone.md`](standalone/rubii_architect_v2.2.7_standalone.md)。
2. 将文件直接拖入 AI 对话框，或将全部内容复制到 Custom GPT / Gemini Gem / Claude Project 的系统提示词中。
3. 发送指令：
   ```text
   /turbo
   角色名称: Valentina Cross
   故事背景: 赛博朋克 × 哥特吸血鬼，位于未来都市 Neo-Verona
   性格特征: 冷静、深沉、掌控 Sector 09 的黑市网络
   喜欢色彩: 黑色、霓虹粉 (#ff0055) 与 赛博青 (#00ffff)
   ```
4. **即刻生成！** AI 将在一条回复中直接输出角色精简档案、设计蓝图与最终压缩代码。

---

## 💻 PowerShell CLI 与 Agent 快捷接入指南

Rubii Card Architect 内置了原生 PowerShell CLI 工具（`tools/rubii.ps1`），支持直接从终端一键复制 Prompt、调起实时预览并与 AI Agent 协同工作：

### 1. 安装全局 `rubii` CLI 快捷命令
```powershell
# 运行一键安装脚本，在全局终端注册 'rubii' 命令
.\tools\install_cli.ps1

# 重载 PowerShell 配置文件
. $PROFILE
```

### 2. CLI 常用指令与 Agent 命令
```powershell
# 一键复制 V2.2.7 主系统提示词到剪贴板
rubii --copy

# 自动拼接 /turbo 指令与角色背景
rubii /turbo Valentina Cross, Cyber-Gothic Vampire, Neon Crimson

# 调起移动端实时卡片预览器
rubii --preview

# 调起完整 SVG Web Studio
rubii --studio

# 运行数据库与提示词完整性体检
rubii --check
```

📖 **详细 Agent 接入文档：** 请参阅 [docs/CLI_AGENT_GUIDE.md](docs/CLI_AGENT_GUIDE.md) 查看 **Antigravity CLI (`agy`)**、**Claude Code CLI** 与 **Google Gemini** 的集成配置。

---

## 🕹️ 斜杠控制指令 (Slash Commands)

| 指令 | 功能与运行机制 |
| :--- | :--- |
| **`/turbo`** | **终极捷径：** 故事分析 ➡️ 匹配主题 ➡️ 生成蓝图 ➡️ **单轮（1 Turn）直接输出压缩 HTML/CSS 代码**。 |
| **`/express`** | **极速模式：** 立即总结角色概念与视觉设计蓝图。 |
| **`/recommend_theme`** | 让 AI 扮演设计总监，根据剧情主动推荐并随机匹配最佳主题风格。 |
| **`/force_color`** | 切换霓虹色谱，同时 **100% 锁定** 原有卡片排版结构。 |
| **`/adjust_layout`** | 调整卡片布局与折叠面板，同时 **锁定** 当前字体与配色。 |
| **`/show_score`** | 输出移动端 UX 与性能质量审计评分表。 |
| **`/start_inquiry`** | 重置系统，开启分步式情绪板（Moodboard）引导流程。 |
| **`/generate_theme`** | 最终指令，编译生成 Minified HTML/CSS 源码（STATE 11）。 |

---

## 🎨 核心架构特性 (Core Features)

1. **100% Zero-JS 原生架构：**
   - 选项卡与折叠面板全部由 HTML 语义标签 `<details>` / `<summary>` 及 CSS 伪类（`:checked`, `:focus`）驱动，杜绝脚本注入与应用拦截。
2. **移动端自适应流体排版（Fluid Mobile UX）：**
   - 严格限制在 `320px – 440px` 视口，文字使用 `font-size: clamp(8px, 3.5vw, 14px)` 实现动态缩放。
3. **半透明画布与霓虹发光边框（Transparent & Frame）：**
   - 半透明背景（`rgba(...)`）搭配发光边框变量（`--neon-p`, `--neon-s`, `--neon-accent`），完美融入各种设备壁纸。
4. **100% 可复制文本节点（Copyable Text Nodes）：**
   - 所有文本均存放在原生 HTML 节点中（`user-select: text !important;`），杜绝用伪元素隐藏文本。
5. **50 套大师级配色与排版矩阵：**
   - 提供 **JSON、YAML 和 Markdown** 格式的完整设计资产库。

---

## 📦 多格式数据库与跨界主题模板 (Cross-Over Templates)

* **JSON 数据库 (`data/json/`):**
  - [`color_palettes_50.json`](data/json/color_palettes_50.json) — 50 套流行 CSS 配色与 Hex 代码。
  - [`typography_50.json`](data/json/typography_50.json) — 50 套中英文字体搭配。
  - [`theme_components.json`](data/json/theme_components.json) — 材质、遮罩与动效组件。
* **YAML 格式 (`data/yaml/`):**
  - [`color_palettes_50.yaml`](data/yaml/color_palettes_50.yaml)
  - [`typography_50.yaml`](data/yaml/typography_50.yaml)
  - [`gem_plugin_config.yaml`](data/yaml/gem_plugin_config.yaml) — Agent 插件与 Gem 配置文件。
* **跨界模板 (`templates/`):**
  - [`template_cyber_gothic.md`](templates/template_cyber_gothic.md) *(赛博朋克 × 哥特维多利亚)*
  - [`template_arcane_academia.md`](templates/template_arcane_academia.md) *(暗黑学院 × 奥术法师)*
  - [`template_pastel_glitch.md`](templates/template_pastel_glitch.md) *(甜美粉彩 × 故障艺术)*
  - [`template_solar_steampunk.md`](templates/template_solar_steampunk.md) *(日光朋克 × 蒸汽朋克)*
  - [`template_divine_occult.md`](templates/template_divine_occult.md) *(神圣光明 × 秘教古卷)*
  - [`template_quiet_luxury_noir.md`](templates/template_quiet_luxury_noir.md) *(静奢老钱 × 电影黑色)*

---

## 🛠️ 移动端实时预览工具

在浏览器中打开 [`tools/card_previewer.html`](tools/card_previewer.html)，可将 AI 生成的代码直接粘贴进去，实时模拟 320px、375px、390px、440px 手机视口下的渲染效果。

---

## 🔌 平台集成指南
* [Google Gemini Gem 配置指南](integrations/gemini_gem_instructions.md)
* [OpenAI Custom GPT 配置指南](integrations/chatgpt_custom_gpt.md)
* [Anthropic Claude Project 配置指南](integrations/claude_project_setup.md)

---

## 📄 开源许可证
本项目采用 [MIT 许可证](LICENSE) 开源。由 Ninninmera 及贡献者用 ❤️ 打造。

---
title: DESIGN.md
slug: google-labs-code-design.md
created: 2026-06-25
updated: 2026-06-25
stars: 17.3k
language: TypeScript
topics:
  - design-system
  - coding-agent
  - design-tokens
  - visual-identity
  - frontmatter
  - wcag
  - cli
  - spec
---

# DESIGN.md

> ⭐17300 · Google Labs 出品的設計系統規範，讓 AI coding agent 擁有持久的、結構化的視覺身份理解

## 快速導航


- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]
- 🎨 **前端設計** → [[frontend-design|前端設計]]
- 🛠 **AI Skills** → [[AI-Skills|AI Skills]]
- 📝 **CLAUDE.md** → [[AI-Skills|CLAUDE.md]]

## 是什麼

DESIGN.md 是 Google Labs 提出的一種格式規範，用於向 AI coding agent 描述視覺身份（visual identity）。核心想法很簡單但很強大：把設計系統的精確數值（色彩、字體、圓角、間距）寫成機器可讀的 YAML front matter，再用 Markdown 文字段落解釋這些數值「為什麼存在」以及「如何應用」。agent 讀完這份檔案後，就能產出符合品牌規範的 UI——深色標題、暖石灰背景、精確的 CTA 按鈕色彩，全都來自檔案裡的 token 值。

這個格式有兩層結構。第一層是 YAML front matter 裡的 design tokens，它們是規範值（normative values）——agent 應該直接使用這些值。第二層是 Markdown body 裡的設計理念（design rationale），按 `##` 區段組織，提供「為什麼」的上下文。token 給 agent 精確的值，prose 告訴 agent 如何使用這些值。兩者結合讓 agent 不只是複製貼上數值，而是理解設計意圖。

DESIGN.md 也附帶一套 CLI 工具（`@google/design.md`），可以驗證檔案是否符合規範、檢查 WCAG 對比度、比較兩個版本的設計系統差異，全部以結構化 JSON 輸出，方便 agent 直接行動。這讓設計系統的演進可以被追蹤、回歸可以被偵測，而不只是靠人眼判斷。

## 核心特色


1. **雙層格式** — YAML front matter 放機器可讀的 design tokens（colors、typography、rounded、spacing、components），Markdown body 放人類可讀的設計理念。token 是規範值，prose 提供上下文
2. **完整的 Token Schema** — 支援 Color（任何 CSS 色彩格式含 oklch）、Dimension（px/em/rem）、Typography（fontFamily、fontSize、fontWeight、lineHeight 等完整物件）、Token Reference（`{colors.primary}` 跨參照），以及 Components 對映
3. **結構化 Section 順序** — Overview → Colors → Typography → Layout → Elevation & Depth → Shapes → Components → Do's and Don'ts，出現的區段必須按此順序排列
4. **CLI 驗證工具** — `npx @google/design.md lint` 驗證檔案、檢查 WCAG 對比度、捕捉斷裂的 token 參照；`npx @google/design.md diff` 比較兩版設計系統的 token 層級和 prose 回歸
5. **寬容的消費者行為** — 未知的 section heading 保留不報錯、未知的 color token 接受有效值、重複 section heading 才拒絕，讓格式可演化而不破壞相容性
6. **Component Tokens** — 元件映射到一組子屬性（backgroundColor、textColor、typography、rounded、padding、size），變體（hover、active、pressed）以獨立 component 條目表達
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

## 怎麼用

```bash
# 安裝 CLI 工具
npm install @google/design.md

# 或直接用 npx 執行（不需安裝）
npx @google/design.md lint DESIGN.md

# 比較兩個版本的設計系統
npx @google/design.md diff DESIGN.md DESIGN-v2.md
```

建立一個 DESIGN.md 檔案：

```md
---
name: Heritage
colors:
  primary: "#1A1C1E"
  secondary: "#6C7278"
  tertiary: "#B8422E"
  neutral: "#F7F5F2"
typography:
  h1:
    fontFamily: Public Sans
    fontSize: 3rem
  body-md:
    fontFamily: Public Sans
    fontSize: 1rem
  label-caps:
    fontFamily: Space Grotesk
    fontSize: 0.75rem
rounded:
  sm: 4px
  md: 8px
spacing:
  sm: 8px
  md: 16px
---

## Overview

Architectural Minimalism meets Journalistic Gravitas. The UI evokes a
premium matte finish — a high-end broadsheet or contemporary gallery.

## Colors

The palette is rooted in high-contrast neutrals and a single accent color.

- **Primary (#1A1C1E):** Deep ink for headlines and core text.
- **Secondary (#6C7278):** Sophisticated slate for borders, captions, metadata.
- **Tertiary (#B8422E):** "Boston Clay" — the sole driver for interaction.
- **Neutral (#F7F5F2):** Warm limestone foundation, softer than pure white.
```

**前置需求：** Node.js、npm

## 跟其他方案的關係

| 方案 | 定位 | 方式 | 輸出 |
|------|------|------|------|
| **DESIGN.md** | 設計系統規範 | YAML tokens + Markdown prose | 機器可讀的設計身份 |
| [[AI-Skills\|CLAUDE.md]] | Agent 行為規範 | 自然語言行為指令 | Agent 行為指引 |
| [[nexu-io-open-design\|Open Design]] | AI 設計 Skill | MCP Server + Design System | 前端設計 Skill |
| [[anthropics-skills\|Anthropic Skills]] | AI Skill 庫 | Frontend Design Skill | 設計產出 |
| Design Tokens W3C | 標準格式 | JSON 設計 token | 跨平台設計值 |

DESIGN.md 跟 CLAUDE.md 最大的差異在於：CLAUDE.md 定義 agent 的「行為」（做什麼、怎麼做），DESIGN.md 定義 agent 的「視覺身份」（長什麼樣、用什麼顏色）。兩者可以互補使用——CLAUDE.md 裡引用 DESIGN.md，讓 agent 知道該如何行為也知道該長什麼樣。跟 Open Design / Anthropic Skills 的差異在於：那些是封裝好的 Skill，DESIGN.md 是一個格式規範，任何工具都能消費。

## 相關概念


← [[frontend-design]] · [[AI-Skills]] · [[AI-Skills]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: https://github.com/google-labs-code/design.md
- raw/2026-06-25-design.md.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/google-labs-code/design.md |
| Stars | ⭐17300|
| License | Apache-2.0 |
| 收錄日期 | 2026-06-25 |

---
title: Diagram Design
slug: cathrynlavery-diagram-design
created: 2026-08-13
updated: 2026-08-13
stars: 10429
language: HTML
topics: [AI Skills, Claude Code, Codex, Pi, editorial diagrams, SVG, HTML, design, draw.io, Mermaid]
---

# Diagram Design

> ⭐10.4k · 29 種編輯級圖表類型，為 Claude Code、Codex、Pi 打造的 Agent Skill——自包含 HTML + SVG，不需要 Figma，不需要 Mermaid

## 快速導航

- 🎨 **AI Skills** → [[AI-Skills]]
- 📐 **設計系統** → [[google-labs-code-design.md]]
- 🖥️ **Claude Code** → [[anthropics-claude-code]]
- 🎬 **前端設計** → [[Frontend-Design-Agent-Skills]]

## 是什麼

Diagram Design 是一個 Agent Skill，讓你在 Claude Code、Codex 或 Pi 裡直接產出編輯級品質的圖表。不需要打開 Figma，不需要跟 Mermaid 的自動排版搏鬥，也不需要花 30 分鐘調色。只要用自然語言描述你要什麼圖，Agent 就會挑選對應的視覺類型，生成自包含的 HTML + SVG 檔案，直接在瀏覽器裡打開就能看。

核心設計理念是「每個節點都要 earn its place」。accent 色保留給 1-2 個讀者應該最先看到的東西，目標密度是 4/10——不是塞滿，而是留白。27 種視覺類型涵蓋架構圖、流程圖、時序圖、狀態機、ER 圖、時間軸、泳道圖、象限圖、樹狀圖、組織圖、Venn 圖、金字塔、雷達圖、Loop 飛輪、甘特圖、散點圖等等，每種都有 minimal light、minimal dark、full-editorial 三個變體。

除此之外，它還能從 draw.io 和 Mermaid 來源重新繪製圖表——相同內容，但套用這套設計系統，而且可以根據目標場景調整格式（HTML/SVG/PNG）、尺寸（投影片/文件/社群）、細節程度（完整/平衡/簡化）和受眾（工程師/混合/主管）。

## 核心特色

- **27 種視覺類型**：架構圖、流程圖、時序圖、狀態機、ER 圖、時間軸、泳道圖、象限圖、巢狀圖、樹狀圖、組織圖、Venn 圖、層疊圖、金字塔、顧問 2×2、雷達圖、Loop 飛輪、IT 現狀圖、高層架構、長條圖、折線圖、甘特圖、散點圖、流程圖、Medallion、資料流、DP 整合、DP 安全矩陣
- **品牌自動適配**：輸入你的網站 URL，Skill 會抓取首頁、提取主色和字體、映射到語意角色（paper/ink/muted/accent/link），並自動做 WCAG AA 對比檢查
- **無障礙預設**：每個 SVG 都有 `role="img"`、`aria-labelledby`、`<title>` / `<desc>` 槽位，ID 每圖每變體前綴化，多個 SVG 安全內嵌在同一頁
- **draw.io / Mermaid 匯入**：讀取 `.drawio`、`.drawio.xml`、`.drawio.png`、`.drawio.svg` 和 `.mmd`、`.mermaid`、Markdown fenced blocks，重新繪製成編輯級圖表
- **四個調節旋鈕**：Format（HTML/SVG/PNG/HTML+PNG）、Size（doc-inline/slide-16x9/social-og 等 9 種）、Detail（faithful ≤24 nodes / balanced ≤12 / simplified ≤7）、Audience（engineer/mixed/executive 自動調整用語）
- **語意模式系統**：7 種路由模式覆蓋 fan-in 佇列、重複階段槽、非結構輸入轉換、配對政策追蹤、安全鋪裝路、治理目錄、補償安全層——先選模式再選視覺類型
- **可選無障礙動畫**：none/reveal/step/loop 四種模式，完整靜態首幀，確定性時序，reduced-motion 支援，預設為 none（純靜態無腳本）
- **匯出 PNG/SVG**：PNG 透過 Playwright 2× 光柵化，SVG 注入 Google Fonts 獨立渲染，適用於 Figma、投影片、社群卡片

## 怎麼用

```bash
# Pi 安裝
pi install https://github.com/cathrynlavery/diagram-design

# Claude Code 安裝
/plugin marketplace add cathrynlavery/diagram-design
/plugin install diagram-design@diagram-design

# Codex 安裝
npx skills add https://github.com/cathrynlavery/diagram-design --skill diagram-design
```

```bash
# 打開圖庫預覽所有 27 種圖表
open skills/diagram-design/assets/index.html

# 在 Agent 裡直接問：
# "Make me an architecture diagram of my app: frontend, backend, database, Redis cache."
# "I need a quadrant showing Q2 projects by impact vs effort."
# "Give me a sequence of a bearer call with token refresh on 401."

# 從 draw.io 匯入
/diagram-design:import platform.drawio --size=slide-16x9 --detail=simplified --audience=executive

# 從 Mermaid 匯入
/diagram-design:import-mermaid architecture.mmd --size=slide-16x9

# 匯出
/diagram-design:export path/to/diagram.html --png-only --scale=3
```

## 跟其他方案的關係

- **Mermaid**：文字驅動自動排版，版面不可控，風格統一但偏「工程師審美」，無法品牌適配
- **draw.io / diagrams.net**：拖拽式編輯器，自由度高但手動操作多，座標和配色需要逐個調整
- **Figma**：專業設計工具，品質最高但學習曲線陡，30 分鐘起跳
- **Diagram Design**：自然語言驅動，Agent 自動選類型+生成 HTML+SVG，品牌自動適配，60 秒完成，品質接近 Figma 手做

Diagram Design 不取代 Figma 的全部能力，而是填補「需要一張好圖但不想開 Figma」的缺口。它也能把 draw.io 和 Mermaid 的既有圖表「升級」成編輯級品質，保留內容但丟棄來源的座標、配色和字體。

## 相關概念

← [[AI-Skills]] · [[anthropics-claude-code]] · [[google-labs-code-design.md]] · [[Frontend-Design-Agent-Skills]] · [[Nutlope-hallmark]]

## 來源

- GitHub: <https://github.com/cathrynlavery/diagram-design>
- Live Gallery: <https://cathrynlavery.github.io/diagram-design/>
- 原始 README: `raw/2026-08-13-cathrynlavery-diagram-design.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | cathrynlavery/diagram-design |
| Stars | ⭐10.4k |
| License | MIT |
| Language | HTML |
| 收錄日期 | 2026-08-13 |
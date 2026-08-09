---
title: Awesome DESIGN.md
slug: VoltAgent-awesome-design-md
created: 2026-07-10
updated: 2026-08-09
stars: 107397
language: Markdown
topics: awesome-list, design-md, design-system, design-tokens, figma, google-stitch, vibe-coding, vibe-design, retro-web
---

# Awesome DESIGN.md

> ⭐107.4k · 73 個知名網站的 DESIGN.md 設計系統文件，讓 AI coding agent 生成視覺一致的 UI

## 快速導航

- 🎨 **前端設計** → [[frontend-design]]
- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]
- 🧠 **AI Skills** → [[AI-Skills]]

## 是什麼

Awesome DESIGN.md 是 VoltAgent 維護的策展集合，收錄了 73 個知名網站的 DESIGN.md 設計系統文件。DESIGN.md 是 Google Stitch 提出的新概念——一個純文字的 Markdown 檔案，AI agent 讀取後就能生成符合特定品牌視覺語言的 UI。

與 AGENTS.md 定義「怎麼建構專案」不同，DESIGN.md 定義「專案應該看起來如何」。你只需要把一個 DESIGN.md 放到專案根目錄，然後告訴 AI agent「按照這個設計來建構頁面」，就能產出視覺一致的結果。因為 Markdown 是 LLM 最擅長讀取的格式，所以不需要任何解析器或特殊工具。

每個 DESIGN.md 包含 9 個區塊：視覺主題與氛圍、色彩調色盤與角色、排版規則、元件樣式、佈局原則、深度與層次、Do's and Don'ts、響應式行為，以及 Agent Prompt 指南。這不只是表面的色碼清單，而是深入分析了設計模式、設計 Token 和規則。

## 核心特色

- **73 個真實網站設計系統**：涵蓋 AI 平台（Claude、Mistral、Ollama）、開發工具（Cursor、Vercel、Warp）、Fintech（Stripe、Coinbase）、消費科技（Apple、NVIDIA、Spotify）、汽車（Tesla、Ferrari、BMW）等，每個都從真實網站的公開 CSS 提取
- **Google Stitch DESIGN.md 規範**：遵循 Google Stitch 提出的 DESIGN.md 規範，與 AGENTS.md 形成「建構指南 + 設計指南」的雙檔案體系，讓 coding agent 同時理解結構和外觀
- **9 區塊深度分析**：不只是色碼列表，每個檔案包含完整的排版層級表、元件狀態（hover/active/disabled）、間距 Scale、陰影系統、Do's and Don'ts 設計護欄，以及可直接複製的 Agent Prompt
- **隨插即用**：複製 DESIGN.md 到專案根目錄即可，無需 Figma 匯出、JSON Schema 或特殊工具链。支援亮色和暗色模式（每個網站附帶 `preview.html` 和 `preview-dark.html`）
- **Retro Web 系列**：額外收錄 1990 年代風格的 DESIGN.md（如 Dell 1996、Nintendo 2001），讓 AI agent 也能生成復古風格 UI
- **社群驅動**：支援透過 getdesign.md 提交新網站的 DESIGN.md 請求，持續擴充收錄範圍

## 怎麼用

1. 前往 [getdesign.md](https://getdesign.md/) 或 GitHub repo，瀏覽收錄的網站清單
2. 找到目標設計風格，複製對應的 DESIGN.md 內容
3. 放到你的專案根目錄

```bash
# 直接從 repo 取得 Claude 的 DESIGN.md
curl -o DESIGN.md https://getdesign.md/claude/design-md

# 或手動複製內容到專案根目錄
# 然後告訴 AI agent：
# "Read DESIGN.md and build me a landing page following this design system"
```

4. AI coding agent（Claude Code、Cursor、Vercel v0 等）讀取 DESIGN.md 後，自動套用色彩、排版、元件樣式
5. 可搭配 AGENTS.md 一起使用：AGENTS.md 管結構，DESIGN.md 管外觀

## 跟其他方案的關係

| 方案 | 類型 | 格式 | 適用場景 |
|------|------|------|----------|
| **DESIGN.md** | 設計系統文件 | Markdown | AI agent 讀取後生成一致 UI |
| AGENTS.md | 專案建構文件 | Markdown | AI agent 理解專案結構和工作流 |
| Figma Tokens | 設計 Token 匯出 | JSON | 傳統設計→開發工作流 |
| Tailwind Config | 樣式配置 | JavaScript | 程式碼層級的主題定義 |

DESIGN.md 與 [[frontend-design|前端設計]] 概念高度相關——它是將前端設計知識結構化為 AI 可讀格式的實踐。與 [[AI-Skills|AI Skills]] 生態系互補：AI Skills 定義「怎麼做」，DESIGN.md 定義「做成什麼樣子」。

← [[frontend-design]] · [[Coding-Agent-CLI]] · [[AI-Skills]]

## 相關概念

← [[frontend-design] · [[Coding-Agent-CLI] · [[AI-Skills]

## 來源

- GitHub: https://github.com/VoltAgent/awesome-design-md
- Homepage: https://getdesign.md/
- raw/2026-07-10-VoltAgent-awesome-design-md.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/VoltAgent/awesome-design-md |
| **Stars** | ⭐99,684 |
| **License** | MIT |
| **Language** | Markdown |
| **收錄日期** | 2026-07-10 |
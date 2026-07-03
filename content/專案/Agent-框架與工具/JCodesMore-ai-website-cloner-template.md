---
title: AI Website Cloner Template
slug: JCodesMore-ai-website-cloner-template
created: 2026-06-23
updated: 2026-06-23
stars: 17.7k
language: TypeScript
topics:
  - ai-agents
  - claude-code
  - website-clone
  - nextjs
  - reverse-engineering
  - web-scraping
  - shadcn-ui
  - tailwindcss
---

# AI Website Cloner Template

> ⭐17.7k · 用 AI coding agent 一鍵克隆任何網站，自動逆向工程成乾淨的 Next.js 程式碼庫

## 快速導航

- 🤖 **AI Agent 技能生態** → [[AI-Skills|Agent Skills 生態系]]
- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]
- 🕷 **網頁爬蟲** → [[網頁爬蟲|網頁爬取]]
- 🎨 **前端設計** → [[frontend-design|前端設計]]

## 是什麼

AI Website Cloner Template 是一個可重複使用的 GitHub 模板專案，讓你把任何網站的 URL 丟給 AI coding agent（推薦 Claude Code + Opus 4.7），agent 就會自動偵察網站結構、提取設計 token 和素材、撰寫元件規格書，然後派發多個平行 builder agent 在 git worktree 中同時重建每個區塊，最後組裝成一個完整的 Next.js 16 程式碼庫。

它不是單純的下載 HTML——而是一個多階段管線：先做偵察（截圖、computed CSS、互動行為掃描），再打地基（字體、色彩、全域樣式、資源下載），然後寫出每個元件的精確規格（含 getComputedStyle 值、多狀態內容、響應式斷點），最後平行建造、組裝、跑 visual diff 驗證。整個過程在 `/clone-website` 一個 slash command 裡完成。

支援 12+ 種 AI coding agent（Claude Code、Codex CLI、OpenCode、GitHub Copilot、Cursor、Windsurf、Gemini CLI、Cline、Roo Code、Continue、Amazon Q、Augment Code、Aider），透過 `AGENTS.md` 作為單一事實來源，各平台的設定檔（CLAUDE.md、GEMINI.md 等）都自動從中生成。

## 核心特色

1. **多階段偵察管線** — 截圖、設計 token 提取、互動行為掃描（scroll、click、hover、responsive），精確捕捉目標網站的每一個視覺和互動細節
2. **平行 builder agent** — 每個元件/區塊派發獨立的 builder agent 到 git worktree 中同時工作，大幅加速重建過程
3. **精確元件規格** — 每個 builder 收到完整的 inline 規格：getComputedStyle 值、互動模型、多狀態內容、響應式斷點、素材路徑，不靠猜測
4. **12+ Agent 平台支援** — 透過 AGENTS.md 單一事實來源 + sync 腳本自動生成各平台設定檔，一套模板適用所有主流 coding agent
5. **Visual Diff QA** — 組裝完成後自動跑 visual diff 對比原始網站，確保重建品質
6. **現代技術棧** — Next.js 16 App Router、React 19、TypeScript strict、shadcn/ui、Tailwind CSS v4 oklch tokens

## 怎麼用

```bash
# 1. 從 GitHub template 建立你自己的 repo
# 點 "Use this template" → "Create a new repository"

# 2. Clone 你的新 repo
git clone https://github.com/YOUR-USERNAME/YOUR-NEW-REPOSITORY.git
cd YOUR-NEW-REPOSITORY

# 3. 安裝依賴
npm install

# 4. 啟動 AI agent（推薦 Claude Code）
claude --chrome

# 5. 執行克隆技能
/clone-website https://example.com

# 6. 開發伺服器
npm run dev
```

**前置需求：** Node.js 24+、一個 AI coding agent

## 跟其他方案的關係

| 方案 | 定位 | 方式 | 輸出 |
|------|------|------|------|
| **AI Website Cloner** | 網站逆向模板 | AI agent 多階段偵察 + 平行重建 | Next.js 16 完整程式碼庫 |
| [[firecrawl-firecrawl\|Firecrawl]] | 網頁爬蟲 API | 爬取 + LLM-ready Markdown | 結構化資料 |
| [[D4Vinci-Scrapling\|Scrapling]] | 自適應爬蟲 | 反偵測 + 智慧解析 | HTML/資料 |
| [[browser-use-browser-use\|Browser Use]] | 瀏覽器 Agent | LLM 直接操作網頁 | 任務完成 |
| 手動重建 | 傳統方式 | 人工截圖 + 手寫 code | 耗時數天 |

AI Website Cloner 跟 Firecrawl/Scrapling 的差異在於：爬蟲工具是提取資料，而 Cloner 是重建程式碼。跟 Browser Use 的差異在於：Browser Use 是讓 LLM 操作網頁完成任務，Cloner 是讓 agent 分析網站然後產出可維護的程式碼庫。

## 相關概念

← [[AI-Skills|Agent Skills 生態系]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[網頁爬蟲|網頁爬取]] · [[frontend-design|前端設計]] · [[AI-Skills|AI Skills]]

## 來源

- GitHub: https://github.com/JCodesMore/ai-website-cloner-template
- raw/2026-06-23-ai-website-cloner-template.md

---

| 項目 | 值 |
|------|-----|
| **GitHub** | https://github.com/JCodesMore/ai-website-cloner-template |
| **Stars** | ⭐17.7k |
| **License** | MIT |
| **Language** | TypeScript |
| **收錄日期** | 2026-06-23 |
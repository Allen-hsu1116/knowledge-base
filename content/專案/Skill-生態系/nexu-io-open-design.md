---
title: Open Design
slug: nexu-io-open-design
created: 2026-06-08
updated: 2026-06-08
stars: 61555
language: TypeScript
topics: [AI Skills, 前端設計, Design System, MCP]
license: Apache-2.0
source: https://github.com/nexu-io/open-design
---

# Open Design

> ⭐61.6k · 開源的 Claude Design 替代方案 — 本地優先的桌面應用，259+ Skills · 142+ Design Systems · 261 Plugins · HTML/PDF/PPTX/MP4 匯出 · 支援 Claude Code / Codex / Cursor / OpenCode 等 17+ CLI。

## 快速導航

- 🎨 **設計系統** → [[Frontend-Design-Agent-Skills|Frontend Design Agent Skills]] · [[frontend-design|前端設計]]
- 🛠️ **Agent Skill** → [[AI-Skills]] · [[AI-Skills|Agent Skills 生態系]]
- 📐 **Figma 整合** → [[Figma-Skills]] · [[softaworks-agent-toolkit|Design System Starter]]
- 🔌 **MCP 協議** → [[MCP]] · [[Coding-Agent-CLI|Coding Agent CLI]]

## 是什麼

Open Design 是一個**本地優先、開源的 Claude Design 替代方案**，提供原生桌面應用（macOS / Windows），讓 AI Agent 能直接產生高品質的設計產物 — 原型、Slides、圖片、影片、HyperFrames。

核心定位：不只是「AI 畫面生成器」，而是一個完整的**設計作業系統** — Skills 定義行為、Design Systems 定義風格、Plugins 擴充能力、MCP Server 讓任何 Agent 都能操作。

### 為什麼要開源 Claude Design 的替代？

2026 年 4 月 Anthropic 推出 Claude Design，第一次讓 LLM 不再只寫文字，而是直接交付設計產物。但 Claude Design 停留在閉源、鎖平台、需要 Anthropic 帳號。Open Design 的目標是把同樣的能力帶到開源生態系。

## 核心特色

- **100+ 內建 Skills** — 每個 Skill 遵循 Claude Code Skill 格式（`od:` frontmatter 擴充），涵蓋 Web/Desktop/Mobile 原型設計、簡報 Slides、圖片生成與編輯、影片製作、HyperFrames、匯出 HTML/PDF/PPTX/MP4
- **142+ Design Systems** — 每個 Design System 遵循 9 段式 schema（Color · Typography · Spacing · Layout · Components · Motion · Voice · Brand · Anti-patterns），涵蓋 50+ 知名品牌風格（Stripe、Linear、Vercel、Apple、Google 等）
- **261 官方 Plugins** — 可攜的 Agent Skill 資料夾（`SKILL.md` + `od/` 目錄），包含設計工具整合、匯出格式轉換、資料視覺化、動畫與互動、AI 模型路由等類別
- **MCP Server 整合** — 同時出貨為 Skills、CLI 和 MCP Server，支援 21+ coding agent CLI adapter（Claude Code、Codex、Cursor、OpenCode、Copilot、Hermes 等），一行指令安裝
- **本地優先架構** — 原生桌面應用（macOS Apple Silicon/Intel · Windows），零設定開箱即用，資料留在本地，沙盒預覽安全渲染 Agent 產出的 HTML/JS

## 怎麼用

### 桌面應用（推薦）

下載即用，零配置：
- **macOS** (Apple Silicon · Intel x64) → [open-design.ai](https://open-design.ai)
- **Windows** → [open-design.ai](https://open-design.ai)

### 從 Coding Agent 使用

```bash
# 安裝 MCP server 到指定 agent
od mcp install claude-code

# 或使用官方 Model Router（免 API key）
# 已內建於桌面應用
```

### 從原始碼建置

```bash
git clone https://github.com/nexu-io/open-design.git
cd open-design
pnpm install
pnpm dev
```

## 跟其他方案的關係

| 方案 | Stars | 定位 | 與 Open Design 的關係 |
|------|-------|------|----------------------|
| [[anthropics-skills|Anthropic Skills]] | 147.9k | Claude 官方 Skill 庫 | 原始啟發，OD 的 Skill 格式相容 Claude Code SKILL.md |
| [[nextlevelbuilder-ui-ux-pro-max-skill|UI UX Pro Max]] | 88.8k | UI/UX 設計 Skill | 互補 — 161 條設計規則 vs OD 的 142 Design Systems |
| [[vercel-labs-agent-skills|Vercel Agent Skills]] | 27.7k | Web 前端品質審查 | 互補 — Vercel 偏審查，OD 偏生成 |
| [[openai-skills|OpenAI Skills]] | 21.7k | Codex Skill 庫（含 Figma 系列） | 競爭生態系 — OD 支援 Codex 作為 consumer |
| [[softaworks-agent-toolkit|SoftaWorks Toolkit]] | 2k | Design System Starter | 互補 — 起步設計系統 vs OD 的 142 個品牌系統 |
| Claude Design | 閉源 | Anthropic 官方產品 | 閉源原版，OD 是開源替代 |

## 相關概念

← [[AI-Skills]] · [[AI-Skills|Agent Skills 生態系]] · [[frontend-design|前端設計]] · [[Frontend-Design-Agent-Skills|Frontend Design Agent Skills]] · [[Figma-Skills]] · [[MCP]] · [[Coding-Agent-CLI|Coding Agent CLI]]

## 來源

- 原始素材: `raw/2026-06-08-nexu-io-open-design.md`

- https://github.com/nexu-io/open-design
- https://github.com/nexu-io/open-design/blob/main/docs/i18n/README.zh-TW.md（中文說明）
- raw/2026-06-08-nexu-io-open-design-zh-TW.md（中文翻譯版）
---

| 項目 | 資訊 |
|------|------|
| GitHub | [nexu-io/open-design](https://github.com/nexu-io/open-design) |
| Stars | ⭐ 61,555 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-06-08 |
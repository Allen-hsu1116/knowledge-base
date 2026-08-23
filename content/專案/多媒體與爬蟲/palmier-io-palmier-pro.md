---
title: Palmier Pro
slug: palmier-io-palmier-pro
created: 2026-06-23
updated: 2026-06-23
stars: 7.4k
language: Swift
topics:
  - ai-video
  - claude
  - macos
  - mcp
  - seedance2
  - swift
  - video-editor
---

# Palmier Pro

> ⭐7400 · macOS 原生 AI 影片編輯器，Swift 打造，透過 MCP 讓你的 AI agent 在時間軸上跟你一起生成和剪輯影片

## 快速導航


- 🎬 **AI 影片生成** → [[AI-video-generation|AI 影片生成]]
- 🔌 **MCP** → [[MCP]]
- 🤖 **AI Agent** → [[AI-Agent|AI Agent]]
- 🎨 **生成式 AI** → [[generative-AI|生成式 AI]]
- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]

## 是什麼

Palmier Pro 是一個開源的 macOS 影片編輯器，從底層用 Swift 原生打造。它的定位是「為 AI 而生的影片編輯器」——以 Premiere Pro 為北極星，但在工作流程中深度整合 AI 能力。你可以在時間軸編輯器裡直接用 SOTA 生成式 AI 模型（Seedance、Kling、Nano Banana Pro 等）生成影片和圖片，不需要在多個工具之間切換。

真正讓 Palmier Pro 獨特的是它的 agent 整合方式。當 app 開啟時，它會在本地啟動一個 MCP server（`http://127.0.0.1:19789/mcp`），讓你的 AI coding agent（Claude Code、Codex、Cursor、Claude Desktop）可以直接操作時間軸。你和 agent 可以在同一個專案上協作——你在 GUI 裡調整，agent 透過 MCP 指令操作，兩邊同步。app 內也內建了一個 agent chat，不需要外部工具也能直接跟 AI 對話完成剪輯任務。

編輯器本身完全免費開源（GPL-3.0），不需要登入就能下載使用，可以當作 CapCut 或 Premiere 的替代品。生成式 AI 功能需要登入和訂閱，但 MCP server 和 agent chat 都是免費的。

## 核心特色


1. **Swift 原生打造** — 從零開始用 Swift 建構，macOS 26 (Tahoe) Apple Silicon 原生，效能和體驗都是 Mac 原生水準
2. **時間軸內生成式 AI** — 直接在編輯器內用 Seedance、Kling、Nano Banana Pro 等 SOTA 模型生成影片和圖片，無需切換工具
3. **MCP Server 整合** — app 開啟時自動啟動 HTTP MCP server，支援 Claude Code、Codex、Cursor、Claude Desktop 一鍵連接
4. **Agent 協作編輯** — 你和 AI agent 在同一個時間軸專案上協作，GUI 操作和 MCP 指令同步
5. **免費編輯器 + 開源核心** — 編輯器、MCP server、agent chat 完全開源免費，只有生成式 AI 處理是閉源訂閱
6. **Y Combinator S24** — 獲選 YC 2024 Summer 批次，有商業支持的可持續開源專案
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

## 怎麼用

```bash
# 1. 下載 Palmier Pro
# 從 GitHub Releases 下載 PalmierPro.dmg
# 需求：macOS 26 (Tahoe) + Apple Silicon

# 2. 連接你的 AI agent（MCP）

# Claude Code
claude mcp add --transport http palmier-pro http://127.0.0.1:19789/mcp

# Codex
codex mcp add palmier-pro --url http://127.0.0.1:19789/mcp

# Cursor — 在 app 內 Help → MCP Instructions → Install in Cursor
# 或手動加入 ~/.cursor/mcp.json:
# {
#   "mcpServers": {
#     "palmier-pro": {
#       "type": "http",
#       "url": "http://127.0.0.1:19789/mcp"
#     }
#   }
# }

# Claude Desktop — Help → MCP Instructions → Install in Claude Desktop
```

開啟 app 後，你可以：
- 直接在時間軸上剪輯（像 CapCut/Premiere 一樣）
- 用內建生成式 AI 在時間軸內生成影片/圖片（需訂閱）
- 透過 MCP 讓你的 coding agent 操作時間軸
- 用內建 agent chat 跟 AI 對話完成剪輯任務

## 跟其他方案的關係

| 方案 | 平台 | Agent 整合 | 生成式 AI | 開源程度 |
|------|------|-----------|----------|---------|
| **Palmier Pro** | macOS 原生 | MCP（Claude/Codex/Cursor/Desktop） | 內建（Seedance/Kling/Nano Banana Pro） | 編輯器開源，AI 處理閉源 |
| [[calesthio-OpenMontage\|OpenMontage]] | 跨平台 | Claude Code/Cursor/Copilot/Windsurf/Codex | 12+ 供應商 + 本地 GPU | 完全開源 AGPL-3.0 |
| [[harry0703-MoneyPrinterTurbo\|MoneyPrinterTurbo]] | 跨平台 | 無 | API 驅動 | 開源 |
| Adobe Premiere | macOS/Windows | 無 MCP | 有限 AI 功能 | 閉源商業 |
| CapCut | 跨平台 | 無 | 內建 AI | 閉源免費 |

Palmier Pro 跟 OpenMontage 的關鍵差異：Palmier Pro 是一個 GUI 編輯器 + MCP server，讓 agent 操作時間軸；OpenMontage 是一個管線驅動的純 agent 系統，沒有 GUI。兩者可以互補——用 OpenMontage 自動產出影片，用 Palmier Pro 精細調整。

## 相關概念


← [[AI-video-generation]] · [[MCP]] · [[AI-Agent]] · [[generative-AI]] · [[Coding-Agent-CLI]] · [[calesthio-OpenMontage]]

## 來源

- GitHub: https://github.com/palmier-io/palmier-pro
- Homepage: https://palmier.io
- raw/2026-06-23-palmier-pro.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/palmier-io/palmier-pro |
| Stars | ⭐7400|
| License | GPL-3.0 |
| 收錄日期 | 2026-06-23 |

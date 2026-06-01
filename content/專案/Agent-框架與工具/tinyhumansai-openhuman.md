---
title: OpenHuman
date: 2026-05-16
---

# OpenHuman

> 開源個人 AI 助手桌面應用——強調隱私、簡單、強大。內建 118+ 第三方整合、Memory Tree 知識庫、TokenJuice 壓縮、桌面吉祥物，以及本地優先架構。

## 快速導航

- [[AI-Agent]] — AI Agent 生態系
- [[MCP]] — Model Context Protocol
- [[Token-Optimization]] — Token 優化策略
- [[Coding-Agent-CLI]] — AI 程式開發工具

## 是什麼

OpenHuman 是一個開源的 agentic assistant，設計目標是成為個人的 AI 超級智慧。與大多數 AI 工具不同，它強調「UI-first」——不需要先搞設定，幾次點擊就能從安裝走到一個可用的 agent。核心是「Memory Tree + Obsidian Wiki」本地優先知識庫，所有連接的資料都被正規化為 ≤3k token 的 Markdown 片段，存入本機 SQLite，同時產出 Obsidian 相容的 vault。隱私是核心設計原則：所有工作流資料都留在裝置上，本地加密。

## 核心特色

### 桌面吉祥物（Mascot）

不只是聊天介面，而是一個有「臉」的桌面 agent。吉祥物能語音互動、反應環境事件、加入 Google Meet 作為會議參與者、跨週記住使用者、甚至在使用者停止輸入後繼續在背景思考。

### 118+ 第三方整合 + Auto-Fetch

支援 Gmail、Notion、GitHub、Slack、Stripe、Calendar、Drive、Linear、Jira 等 118+ 服務，全部透過 one-click OAuth 連接。每 20 分鐘自動從所有活躍連接拉取最新資料到 Memory Tree，不需要手動設定任何 polling。

### Memory Tree + Obsidian Wiki

本地優先的知識庫架構。所有資料被正規化為 ≤3k token 的 Markdown 片段，評分後折疊成階層式摘要樹存入本機 SQLite。同時產出 Obsidian 相容的 `.md` vault，讓使用者可以手動瀏覽和編輯。靈感來自 Karpathy 的 obsidian-wiki 工作流。

### TokenJuice 智慧壓縮

每次 tool call、網頁抓取結果、郵件內容、搜尋結果在送入 LLM 前，都經過 token 壓縮層處理：HTML 轉 Markdown、長 URL 縮短、非 ASCII 字元移除等。號稱降低成本和延遲高達 80%。

### 內建工具集 + 語音

預設就包含網頁搜尋、網頁抓取、完整程式開發工具集（filesystem、git、lint、test、grep）、原生語音（STT 輸入、ElevenLabs TTS 輸出、吉祥物嘴型同步）、模型路由（自動分派 reasoning/fast/vision 任務）。也支援透過 Ollama 執行本地模型。

## 怎麼用

**macOS / Linux x64：**
```bash
curl -fsSL https://raw.githubusercontent.com/tinyhumansai/openhuman/main/scripts/install.sh | bash
```

**Windows：**
```powershell
irm https://raw.githubusercontent.com/tinyhumansai/openhuman/main/scripts/install.ps1 | iex
```

也可從 [tinyhumans.ai/openhuman](https://tinyhumans.ai/openhuman) 下載 DMG / EXE 安裝檔。

**從原始碼建構：**
```bash
git clone https://github.com/tinyhumansai/openhuman.git
cd openhuman
git submodule update --init --recursive
pnpm install
pnpm dev                    # Web UI only
pnpm --filter openhuman-app dev:app  # Desktop shell
```

需要 Node.js 24+、pnpm 10.10.0、Rust 1.93.0、CMake。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[project-golem]] | 自主 AI Agent | 類似定位：都是個人 AI 作業系統，Golem 用 Node.js，OpenHuman 用 Rust/Tauri |
| [[thedotmack-claude-mem]] | 記憶壓縮 | 互補：claude-mem 做 session 記憶，OpenHuman 的 Memory Tree 做長期知識 |
| [[karpathy-gist-llm-wiki]] | LLM Wiki | 靈感來源：OpenHuman 的 Memory Tree 概念源自 Karpathy 的 wiki 方法論 |
| [[litellm]] | LLM Gateway | 互補：OpenHuman 的模型路由可搭配 LiteLLM 統一 API |
| Claude Desktop | 商業助手 | 對比：Claude Desktop 是閉源雲端，OpenHuman 是開源本地優先 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[Token-Optimization]] · [[Coding-Agent-CLI]]

## 來源

- raw/2026-05-16-openhuman.md

## 技術棧

- **Desktop Shell**: Tauri (Rust + CEF)
- **Frontend**: TypeScript
- **Knowledge Base**: SQLite (local-first)
- **Note Integration**: Obsidian-compatible vault
- **Voice**: STT + ElevenLabs TTS
- **Local AI**: Ollama

## 來源

- [原始資料](../raw/2026-05-16-tinyhumansai-openhuman.md)

---

GitHub: [tinyhumansai/openhuman](https://github.com/tinyhumansai/openhuman) · Stars: ⭐9.1k · License: 自訂開源 · 收錄日期: 2026-05-16
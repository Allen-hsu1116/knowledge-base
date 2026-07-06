---
title: CodexBar
slug: steipete-CodexBar
created: 2026-07-06
updated: 2026-07-06
stars: 16.2k
language: Swift
topics: ai, claude-code, codex, usage-monitoring, menu-bar, macos
---

# CodexBar

> ⭐16.2k · macOS 選單列應用——57+ AI coding provider 使用量即時顯示，重置倒數，信用餘額追蹤

## 快速導航

- 🤖 **Claude Code** → [[anthropics-claude-code|Claude Code]]
- 🔧 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]
- 📊 **可觀測性** → [[observability|可觀測性]]
- ⚡ **Token Optimization** → [[Token-Optimization|Token Optimization]]

## 是什麼

CodexBar 是一個 macOS 14+ 選單列應用，即時顯示各 AI coding provider 的使用量限制和重置倒數。支援 57+ provider，包括 OpenAI Codex、Claude、Cursor、Gemini、Copilot、Grok、GroqCloud、ElevenLabs、Deepgram、z.ai、MiniMax、Kiro、Zed、Vertex AI、Augment、OpenRouter、LiteLLM 等，幾乎涵蓋市面上所有 AI coding 服務。

設計理念是隱私優先：重用現有 provider session（OAuth、device flow、API keys、browser cookies、local files），不存密碼，預設裝置端解析。瀏覽器 cookies 為可選功能，需要 Full Disk Access 權限但可以不開。

除了基本的使用量顯示，CodexBar 還提供信用餘額查詢、Admin API 支出儀表板、provider 帳單摘要、provider 狀態輪詢（事件徽章）、Merge Icons 模式（多 provider 合一圖示）、WidgetKit widgets、21 語言本地化等進階功能。附帶 CLI 工具可用於腳本和 CI。

## 核心特色

- **57+ AI coding provider** — 幾乎涵蓋所有主流 AI coding 服務
- **選單列即時顯示** — 使用量、重置倒數、信用餘額一目了然
- **支出儀表板** — OpenAI Admin API、OpenRouter、LiteLLM、AWS Bedrock 等支出圖表
- **Provider 狀態輪詢** — 事件徽章 + 圖示疊加
- **Merge Icons 模式** — 多 provider 合一選單列圖示 + 切換器
- **隱私優先** — 不存密碼，裝置端解析，瀏覽器 cookies 可選
- **Bundled CLI** — `codexbar` 可用於腳本和 CI
- **21 語言本地化** + WidgetKit widgets

## 怎麼用

### 安裝

```bash
# Homebrew Cask（推薦）
brew install --cask codexbar

# 或 CLI 版本
brew install steipete/tap/codexbar

# 或從 GitHub Releases 下載
# https://github.com/steipete/CodexBar/releases
```

### 使用

1. 安裝後打開 Settings → Providers
2. 啟用你使用的 provider
3. 登入對應 provider（CLI、OAuth、API key、瀏覽器 cookies 等）
4. 選單列即可看到即時使用量

### CLI 設定 API key

```bash
# 設定 API key（不開 Settings）
printf '%s' "$ELEVENLABS_API_KEY" | codexbar config set-api-key --provider elevenlabs --stdin

# 啟用/停用 provider
codexbar config enable --provider grok
codexbar config disable --provider cursor

# 查看本地成本
codexbar cost --provider codex
codexbar cost --provider claude
codexbar cost --provider both
```

### 需求

- macOS 14+ (Sonoma)

## 跟其他方案的關係

| 方案 | 平台 | Provider 數 | 功能 | Stars |
|------|------|-------------|------|-------|
| **CodexBar** | macOS | 57+ | 使用量 + 重置 + 支出 | ⭐16.2k |
| [[kenn-io-agentsview\|agentsview]] | 跨平台 | Coding Agent | Session 分析 + 成本追蹤 | ⭐2.4k |
| [[langfuse-langfuse\|Langfuse]] | Web | LLM | 觀測 + 評測 + Prompt 管理 | ⭐29.2k |
| [[promptfoo-promptfoo\|Promptfoo]] | CLI | LLM | 評測 + 紅隊 | ⭐22.2k |

CodexBar 與 [[kenn-io-agentsview|agentsview]] 都追蹤 AI coding 成本，但 CodexBar 是選單列即時監控工具（57+ provider），agentsview 偏重 session 分析。與 [[langfuse-langfuse|Langfuse]] 相比，CodexBar 更輕量——只看使用量和額度，不做完整觀測。定位在 [[observability|可觀測性]] 和 [[Token-Optimization|Token Optimization]] 的交集。

← [[anthropics-claude-code|Claude Code]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[Token-Optimization|Token Optimization]]

## 來源

- GitHub: https://github.com/steipete/CodexBar
- 官網: https://codexbar.app
- raw/2026-07-06-steipete-CodexBar.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/steipete/CodexBar |
| **Stars** | ⭐ 16,219 |
| **License** | MIT |
| **Language** | Swift |
| **收錄日期** | 2026-07-06 |
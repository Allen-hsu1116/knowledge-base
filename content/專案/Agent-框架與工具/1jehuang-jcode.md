---
title: jcode
slug: 1jehuang-jcode
created: 2026-07-30
updated: 2026-07-30
stars: 13456
language: Rust
topics:
  - ai
  - ai-agent
  - ai-coding-agent
  - claude
  - cli
  - coding-agent
  - llm
  - mcp
  - openai
  - rust
  - terminal
  - tui
---

# jcode

> ⭐13.5k · 最省 RAM 的 Coding Agent Harness，Rust 打造，14ms 首帧延遲、27.8MB 記憶體、內建 Agent 記憶系統與 Swarm 多 Agent 協作

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI]]
- 🧠 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]
- ⚡ **Token Optimization** → [[Token-Optimization]]

## 是什麼

jcode 是一個用 Rust 打造的 Coding Agent Harness（TUI/CLI），由 1jehuang 獨立開發。它的核心賣點是極致的資源效率——14ms 首帧延遲、27.8MB RAM（關閉本地 embedding 時），比 Claude Code 省 13.9 倍記憶體、快 245.5 倍首帧速度。這讓它在多 Session 工作流中可以輕鬆擴展，10 個 Session 只需 117MB（Claude Code 需 2300MB）。

除了性能，jcode 內建一套精密的 Agent 記憶系統：每個對話 turn 都被嵌入為語意向量，透過餘弦相似度查詢記憶圖譜，相關記憶自動注入對話，不需要主動呼叫記憶工具。它還支援 Swarm 模式——多個 Agent 在同一個 repo 中自動協作，檔案變更自動通知、訊息傳遞、協調者/工作者模式全部自動管理。

jcode 還有一個獨特的自開發模式（Self-Dev Mode），Agent 可以修改自己的原始碼、編譯、測試、重新載入二進位檔，在 Session 中繼續工作。這是 Harness 自演化的實踐。

## 核心特色

- **極致資源效率** — 27.8MB RAM（embedding off）、14ms 首帧、48.7ms 首輸入、1000+ fps 渲染，10 Session 僅 117MB vs Claude Code 2300MB（19.7x 差距）
- **Agent 記憶系統** — 每個 turn 嵌入為語意向量，餘弦相似度查詢記憶圖譜，自動注入相關記憶，Memory Sideagent 驗證相關性並做檢索，自動提取/合併/過時檢查，也有顯式記憶工具和 Session RAG
- **Swarm 多 Agent 協作** — 同 repo 多 Agent 自動管理，檔案變更通知、DM/廣播/repo 範圍訊息，Agent 可自主 spawn 隊友，協調者/工作者模式，headless 或 headed
- **自開發模式（Self-Dev）** — Agent 修改自己原始碼，編譯測試重新載入二進位檔，Session 中繼續工作，Harness 自演化實踐
- **廣泛 Provider 支援** — 原生 Claude/OpenAI/Copilot/Gemini/Azure/Alibaba，聚合器 OpenRouter/OpenAI-compatible，加上 DeepSeek/Fireworks/MiniMax/LM Studio/Ollama 等 25+ 提供者，多帳號切換
- **跨 Harness Session 恢復** — 可恢復 Codex、Claude Code、OpenCode、Pi 的 Session，斷了就接續
- **內建瀏覽器自動化** — Firefox Agent Bridge，open/snapshot/click/type/fill_form/screenshot/eval 等 15 個動作

## 怎麼用

### 安裝

```bash
# macOS & Linux
curl -fsSL https://jcode.sh/install | bash

# macOS Homebrew
brew tap 1jehuang/jcode
brew install jcode

# Windows
irm https://jcode.sh/install.ps1 | iex

# 從原始碼
git clone https://github.com/1jehuang/jcode.git
cd jcode
cargo build --release
```

### 快速開始

```bash
# 啟動 TUI
jcode

# 非互動模式執行單一指令
jcode run "say hello"

# 恢復之前的 Session
jcode --resume fox

# 持久化伺服器模式
jcode serve
jcode connect

# 語音輸入
jcode dictate
```

### 登入 Provider

```bash
jcode login --provider claude
jcode login --provider openai
jcode login --provider copilot
jcode login --provider gemini
```

## 跟其他方案的關係

| 方案 | Stars | 語言 | RAM (1 Session) | 首帧延遲 | Agent 記憶 | Swarm |
|------|-------|------|-----------------|----------|-----------|--------|
| **jcode** | ⭐13.5k | Rust | 27.8MB | 14ms | ✅ 語意向量 | ✅ 原生 |
| [[anthropics-claude-code\|Claude Code]] | ⭐127.9k | TypeScript | 386.6MB | 3436.9ms | ❌ | ❌ |
| [[anomalyco-opencode\|OpenCode]] | ⭐174k | Go | 371.5MB | 1035.9ms | ❌ | ❌ |
| [[earendil-works-pi\|Pi]] | ⭐53.9k | Rust | 144.4MB | 590.7ms | ❌ | ❌ |
| [[openinterpreter-openinterpreter\|Open Interpreter]] | ⭐65.5k | Python | — | — | ❌ | ❌ |

jcode 的核心差異化在於：Rust 帶來的極致資源效率（省 6-14 倍 RAM），內建語意向量記憶系統（而非需要外部工具），原生 Swarm 多 Agent 協作，以及獨特的自開發模式。

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[MCP]] · [[Token-Optimization]] · [[harness-engineering]]

## 來源

- GitHub: https://github.com/1jehuang/jcode
- 官網: https://jcode.sh
- 文件: https://jcode.sh/docs
- Benchmark: https://jcode.sh/bench
- 原始 README: `raw/2026-07-30-jcode.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [1jehuang/jcode](https://github.com/1jehuang/jcode) |
| Stars | ⭐13,456 |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-07-30 |
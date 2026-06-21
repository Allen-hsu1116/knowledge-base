---
title: Basic Memory
slug: basicmachines-co-basic-memory
created: 2026-06-13
updated: 2026-06-13
stars: 3215
language: Python
---

# Basic Memory

> ⭐3.2k · AI 永遠不忘，Markdown 即記憶，MCP 原生，你和 AI 讀寫同一份檔案

## 快速導航
[[mem0ai-mem0|Mem0]] · [[MCP]] · [[Knowledge-Graph|知識圖譜]] · [[rag]]

## 是什麼

Basic Memory 是一個 MCP 原生的 AI 記憶系統。它讓 AI 助手（Claude、Codex、Cursor、ChatGPT 等）擁有持久、可搜尋的記憶——而且這些記憶就存在你磁碟上的 Markdown 檔案裡。你和 AI 讀寫同一份檔案，雙向同步保持一致。

核心理念是本地優先（local-first）：你的知識永遠是純文字，在你的硬碟上，永遠屬於你。Basic Memory 不是把記憶藏進某個資料庫，而是把記憶變成你和 AI 都能理解的 Markdown 文件。觀察（observations）和維基連結（wikilinks）組成真正的知識圖譜，語意搜尋讓你用意義找筆記，不只是關鍵詞。

雲端是選項，不是前提。Basic Memory 提供託管版本（$15/月，終身鎖價），但本地安裝永遠免費（AGPL-3.0）。兩者跑同一個引擎、用同一種 Markdown 檔案，隨時可以切換。

## 核心特色

- **本地優先**：純文字 Markdown 存在你的磁碟上，永遠屬於你
- **雙向同步**：AI 和人寫同一份檔案，sync 保持一致
- **真正知識圖譜**：observations + wikilinks 組成交互關聯的知識網絡
- **語意搜尋**：用意義找筆記，不只靠關鍵詞匹配
- **MCP 原生**：支援 Claude Desktop、Claude Code、Codex、Cursor、VS Code、ChatGPT 等
- **漸進式工具發現**：每個工具標記行為提示（read-only/destructive/idempotent），Agent 自動選對工具
- **Obsidian 相容**：直接讀寫 Obsidian 的 Markdown 格式
- **跨平台 Agent 套件**：同一 repo 包含 Claude Code plugin、Hermes plugin、OpenClaw plugin

## 怎麼用

**本地安裝（免費）：**

```bash
uv tool install basic-memory
```

**連接 AI 客戶端：**

```bash
# Claude Code
claude mcp add basic-memory

# Cursor — 加入 .cursor/mcp.json
# VS Code — 原生 MCP 支援
# Codex — stdio/https 傳輸
```

**雲端版本（30 秒設定）：**

直接在 [basicmemory.com](https://basicmemory.com) 註冊，30 秒連接 AI 客戶端。支援網頁、行動裝置、桌面，跨裝置同步內建。

**Obsidian 整合：**

Basic Memory 的 Markdown 檔案與 Obsidian 直接相容。在 Obsidian 中開啟同一個資料夾，即可雙向讀寫。

**支援的 AI 客戶端：**

| 客戶端 | 傳輸 | 備註 |
|--------|------|------|
| Claude Desktop | stdio/https | macOS/Windows/Linux |
| Claude Code | stdio/https | `claude mcp add` |
| Codex CLI | stdio/https | OpenAI coding agent |
| Cursor | stdio/https | `.cursor/mcp.json` |
| VS Code | stdio/https | 原生 MCP 支援 |
| ChatGPT | https | Custom GPT actions |
| Obsidian | — | 直接讀寫 Markdown |

## 跟其他方案的關係

| 方案 | Stars | 類型 | 儲存格式 | MCP | 雙向同步 | 雲端 |
|------|-------|------|---------|-----|---------|------|
| **Basic Memory** | ⭐3.2k | AI 記憶 | Markdown | ✅ 原生 | ✅ | ✅ 選項 $15/mo |
| [[mem0ai-mem0|Mem0]] | ⭐58k | AI 記憶層 | 向量 + DB | ✅ | ❌ | ✅ |
| [[supermemoryai-supermemory|Supermemory]] | ⭐23k | AI 記憶引擎 | DB | MCP | ❌ | ✅ |
| [[rohitg00-agentmemory|agentmemory]] | ⭐15k | Agent 記憶 | 向量 | MCP | ❌ | ❌ |
| [[refactoringhq-tolaria|Tolaria]] | ⭐14k | 知識庫管理 | Markdown | ❌ | 部分 | ❌ |

## 相關概念
← [[mem0ai-mem0|Mem0]] · [[MCP]] · [[Knowledge-Graph|知識圖譜]] · [[rag]]

## 來源

- GitHub: <https://github.com/basicmachines-co/basic-memory>
- 原始 README: `raw/2026-06-13-basicmachines-co-basic-memory.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [basicmachines-co/basic-memory](https://github.com/basicmachines-co/basic-memory) |
| Stars | ⭐3,215 |
| License | AGPL-3.0 |
| Language | Python |
| 收錄日期 | 2026-06-13 |
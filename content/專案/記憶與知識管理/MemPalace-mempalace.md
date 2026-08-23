---
title: MemPalace
slug: MemPalace-mempalace
created: 2026-05-03
aliases:
  - MemPalace-mempalace
  - MemPalace
stars: '⭐50787'
updated: 2026-06-14
language: zh-TW
topics: [memory, mcp, rag, knowledge-graph, ai-agent]
---

# MemPalace

> ⭐50787 · 本地優先 AI 記憶系統，逐字儲存對話歷史，結構化宮殿索引 + 語意搜尋，LongMemEval 96.6% R@5 零 API 呼叫。50.8K ⭐。

## 快速導航


- 🧠 **記憶方法對比** → [[llm-knowledge-base]]（知識庫 vs 記憶系統的架構差異）
- 🛠 **MCP 整合** → [[project-golem]]（另一種記憶架構實作）
- 🔄 **跨 session 記憶** → [[hermes-agent]]（功能互補的記憶方案）
- 🕷️ **Agent 工作流** → [[AI-Agent]]（Agent 需要記憶系統才能跨 session 運作）

## 是什麼


MemPalace 是一個 local-first 的 AI 記憶系統。

跟 Mem0、Zep 等競品不同，它**不摘要、不提取、不改寫** — 原文逐字儲存，用結構化索引 + 語意搜尋做檢索。宮殿結構（Wings → Rooms → Drawers）讓搜尋可以限定範圍，比單純的向量搜尋更精準。所有資料留在本機，除非你選擇送出。

## 核心特色

- **宮殿隱喻索引** — Wings（人和專案）→ Rooms（主題）→ Drawers（原始內容），scoped search 取代 flat search
- **LongMemEval 96.6% R@5** — 零 API 呼叫、零雲端、零 LLM，開源 AI 記憶系統最高基準之一
- **知識圖譜** — 時序性實體關係圖，帶有效期間（validity windows），支援 add、query、invalidate、timeline 操作
- **MCP Server** — 29 個 MCP 工具涵蓋 palace 讀寫、知識圖譜操作、跨 wing 導航、drawer 管理、agent 日記
- **可插拔後端** — 預設 ChromaDB，介面定義在 `mempalace/backends/base.py`，可替換後端而不動其他系統
- **Auto-save Hooks** — Claude Code hooks 定期存檔 + context 壓縮前存檔

## 怎麼用

```bash
pip install mempalace
mempalace init ~/projects/myapp

# 採礦內容到宮殿
mempalace mine ~/projects/myapp                    # 專案檔案
mempalace mine ~/.claude/projects/ --mode convos   # Claude Code sessions

# 搜尋
mempalace search "why did we switch to GraphQL"

# 載入 context 給新 session
mempalace wake-up

# 啟動 MCP server（Claude Code / Gemini CLI）
mempalace serve

# 手動存檔
mempalace sweep
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[mempalace]] | MemPalace 完整介紹 | MemPalace-mempalace 是別名頁 |
| [[Chroma]] | 向量資料庫 | MemPalace 預設使用 ChromaDB 作為後端 |
| [[rag|RAG]] | 檢索增強生成 | MemPalace 的宮殿索引 + 語意搜尋可改善 RAG |
| [[project-golem]] | 專案記憶 | Golem 用 lancedb-pro，架構不同但功能互補 |
| [[supermemoryai-supermemory|Supermemory]] | AI 記憶引擎 | Supermemory 提供記憶+使用者畫像+RAG 三合一，MemPalace 走知識圖譜路線 |

MemPalace 的宮殿結構跟 [[llm-knowledge-base|LLM 知識庫方法]]概念相似但方向不同：
- 我們的知識庫：用 LLM 當編譯器，把原始素材「提煉」成概念筆記
- MemPalace：不改寫原文，用結構化索引 + 語意搜尋做精準檢索

兩者可以互補：MemPalace 負責儲存和檢索，知識庫負責概念整理和交叉連結。

## 相關概念

← [[llm-knowledge-base]] · [[rag]] · [[Chroma]] · [[project-golem]] · [[hermes-agent]] · [[supermemoryai-supermemory]]

## 來源

- [GitHub：專案原始碼](https://github.com/MemPalace/mempalace)
- raw/2026-05-02-mempalace.md
- raw/2026-05-07-mempalace-usage-discussion.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/MemPalace/mempalace |
| Stars | ⭐50787|
| License | 未標示 |
| 收錄日期 | 2026-05-03 |

---
source: https://github.com/MemPalace/mempalace
date: 2026-05-09
---

# MemPalace — 本地優先 AI 記憶系統

> Local-first AI memory。逐字儲存、可插拔後端、LongMemEval 96.6% R@5——零 API 呼叫。

**GitHub**: https://github.com/MemPalace/mempalace
**Stars**: 50,787 | **License**: MIT

## 什麼是 MemPalace

MemPalace 將對話歷史逐字儲存為文字，用語意搜尋檢索。不摘要、不提取、不改寫。索引是結構化的——人和專案成為 wings、主題成為 rooms、原文內容在 drawers——搜尋可以限縮範圍而非 flat corpus 搜尋。

## 核心特色

| 特色 | 說明 |
|------|------|
| 逐字記憶儲存 | 不摘要、不損失 |
| 結構化索引 | wings（人/專案）→ rooms（主題）→ drawers（原文） |
| 可插拔後端 | 預設 ChromaDB，可隨時替換 |
| 本地優先 | 核心功能零 API 呼叫 |
| 知識圖譜 | 時序性實體關係 + 有效期間，SQLite 支撐 |
| Agent 支援 | 每個專業 Agent 有自己的 wing 和 diary |
| MCP Server | 29 個 MCP 工具 |

## 基準測試

| 模式 | R@5 | 需要 LLM |
|------|-----|----------|
| Raw（純語意搜尋） | **96.6%** | 否 |
| Hybrid v4（450 題） | **98.4%** | 否 |
| Hybrid v4 + LLM rerank（500 題） | ≥99% | 任何能力模型 |

## 安裝

```bash
pip install mempalace
mempalace init ~/projects/myapp
```

## 快速開始

```bash
mempalace mine ~/projects/myapp                    # 專案檔案
mempalace mine ~/.claude/projects/ --mode convos   # Claude Code sessions
mempalace search "why did we switch to GraphQL"
mempalace wake-up
```

## 設計哲學

MemPalace 為「對話記憶」設計，不是「文件檢索」。適合「誰在什麼時候說了什麼」，不適合「找出所有退貨政策文件」。更詳細的討論見 [[mempalace-usage-discussion|MemPalace 使用情境討論]]。

## 相關主題

- [[mempalace-usage-discussion|MemPalace 使用情境討論]]
- [[thedotmack-claude-mem|claude-mem]]
- [[rag|RAG 概念]]
- [[Knowledge-Graph|知識圖譜]]

## 參考資料

- [GitHub - MemPalace/mempalace](https://github.com/MemPalace/mempalace)
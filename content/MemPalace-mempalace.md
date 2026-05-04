# MemPalace

> Local-first AI memory — verbatim storage, 96.6% R@5 on LongMemEval, zero API calls

MemPalace 是一個本地優先的 AI 記憶系統，將對話歷史以逐字方式儲存並透過語義搜尋檢索。不摘要、不萃取、不改寫——原始內容完整保留。

## 核心特色

- **逐字記憶儲存** — 不摘要、不失真
- **結構化索引** — wings（人/專案）、rooms（主題）、drawers（原始內容），可範圍搜尋
- **可插拔後端** — 預設 ChromaDB，可自由替換
- **本地優先** — 核心功能零 API 呼叫
- **96.6% R@5**（LongMemEval，純語義搜尋，無 LLM）
- **MCP server** — 29 個 MCP 工具，涵蓋記憶讀寫、知識圖譜、agent 日記
- **知識圖譜** — 帶時間效期的實體關係圖，SQLite 支撐
- **Agent 支援** — 每個 agent 有自己的 wing 和 diary

## 基準測試

| 模式 | R@5 | 需要LLM |
|---|---|---|
| Raw（語義搜尋，無啟發式，無LLM） | **96.6%** | 否 |
| Hybrid v4（450題 held-out） | **98.4%** | 否 |
| Hybrid v4 + LLM rerank | ≥99% | 任何可用模型 |

## 快速開始

```bash
pip install mempalace
mempalace init ~/projects/myapp
mempalace mine ~/projects/myapp
mempalace search "why did we switch to GraphQL"
```

## 所屬概念

- [[AI Agent]] — agent 記憶系統
- [[MCP]] — 提供 MCP server 整合

---

- **GitHub**: https://github.com/MemPalace/mempalace
- **Stars**: ⭐50,787
- **License**: MIT
- **收錄日期**: 2026-05-03

_此頁由 daily-llm-trending 自動維護_
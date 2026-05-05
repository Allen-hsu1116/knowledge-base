# MemPalace

> 本地優先 AI 記憶系統，逐字儲存對話歷史，結構化宮殿索引 + 語意搜尋，LongMemEval 96.6% R@5 零 API 呼叫。

## 快速導航

- 📚 **記憶方法對比** → [[llm-knowledge-base]]
- 🛠 **MCP 整合** → [[project-golem]]
- 🧠 **跨 session 記憶** → [[hermes-agent]]
- 🔄 **Agent 工作流** → [[AI-Agent]]

## 是什麼

MemPalace 是一個 local-first 的 AI 記憶系統。跟 Mem0、Zep 等競品不同，它**不摘要、不提取、不改寫** — 原文逐字儲存，用結構化索引 + 語意搜尋做檢索。宮殿結構（Wings → Rooms → Drawers）讓搜尋可以限定範圍，比單純的向量搜尋更精準。

## 核心特色

- **宮殿隱喻索引** — Wings（人和專案）→ Rooms（主題）→ Drawers（原始內容），scoped search 取代 flat search
- **LongMemEval 96.6% R@5** — 零 API 呼叫、零雲端、零 LLM，開源 AI 記憶系統最高基準之一
- **知識圖譜** — 時序性實體關係圖，帶有效期間（validity windows），支援 add、query、invalidate、timeline 操作，底層 SQLite
- **MCP Server** — 29 個 MCP 工具涵蓋 palace 讀寫、知識圖譜操作、跨 wing 導航、drawer 管理、agent 日記，原生支援 Claude Code、Gemini CLI，有 OpenClaw 整合
- **可插拔後端** — 預設 ChromaDB，介面定義在 `mempalace/backends/base.py`，可替換後端而不動其他系統
- **Auto-save Hooks** — Claude Code hooks 定期存檔 + context 壓縮前存檔，`mempalace sweep` 存逐字 drawer

### 效能基準

| 模式 | R@5 | 需要 LLM |
|------|-----|----------|
| Raw（純語意搜尋） | 96.6% | 否 |
| Hybrid v4（held-out） | 98.4% | 否 |
| Hybrid v4 + LLM rerank | ≥99% | 是 |

## 怎麼用

```bash
pip install mempalace

# 啟動 MCP server（Claude Code / Gemini CLI）
mempalace serve

# 手動存檔
mempalace sweep
```

## 跟其他方案的關係

MemPalace 的宮殿結構（Wings → Rooms → Drawers）跟 [[llm-knowledge-base]] 三層架構（raw → wiki → schema）概念相似但方向不同：
- 我們：用 LLM 當編譯器，把原始素材「提煉」成概念筆記
- MemPalace：不改寫原文，用結構化索引 + 語意搜尋做精準檢索

兩者可以互補：MemPalace 負責儲存和檢索，我們的知識庫負責概念整理和交叉連結。

[[project-golem]] 的記憶系統（lancedb-pro）是另一種記憶架構實作，[[hermes-agent]] 的跨 session 記憶跟 MemPalace 的功能互補，[[agent-persona]] 的人格設計需要記憶系統支撐。

## 相關概念

← [[llm-knowledge-base]] · [[project-golem]] · [[hermes-agent]] · [[agent-persona]]

## 來源

- raw/2026-05-02-mempalace.md

---

- **GitHub**: https://github.com/your-repo/mempalace
- **Stars**: ⭐50,800
- **License**: —
- **收錄日期**: 2026-05-02
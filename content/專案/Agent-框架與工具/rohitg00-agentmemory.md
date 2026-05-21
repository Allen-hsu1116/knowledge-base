---
title: agentmemory
created: 2026-05-22
updated: 2026-05-22
stars: 15140
language: TypeScript
topics:
  - MCP
  - AI-Agent
  - LLM
  - rag
---

# agentmemory — Persistent Memory for AI Coding Agents

> ⭐15.1k · AI coding agent 的持久化記憶系統，讓 agent 跨 session 記住所有決策與上下文

## 快速導航

- 🧠 **記憶系統** → [[MCP]]（透過 MCP 協議與各種 agent 通訊）
- 🤖 **AI Agent** → [[AI-Agent]]（為 AI coding agent 打造的記憶引擎）
- 💡 **LLM** → [[LLM]]（減少 LLM token 消耗的核心價值主張）
- 📚 **RAG** → [[rag]]（混合搜尋架構本質上是 RAG 的進化形）

## 是什麼

agentmemory 是一個專為 AI coding agent 設計的持久化記憶系統，讓 agent 能跨 session 記住所有決策與上下文。透過 auto hooks 靜默捕捉 agent 行為，壓縮成可搜尋的記憶，下次 session 啟動時自動注入正確上下文。支援 Claude Code、Cursor、Gemini CLI、Codex CLI、Hermes、OpenClaw、pi、OpenCode、Cline、Goose、Aider 等任何支援 MCP 或 HTTP 的 agent。

## 核心特色

- **95.2% retrieval R@5** — LongMemEval-S, ICLR 2025 基準測試
- **92% token 節省** — 比起貼完整上下文
- **53 MCP tools + 12 auto hooks** — 零外部資料庫，零手動操作
- **950+ tests passing** — 高品質保證
- **BM25 + Vector + Graph 混合搜尋** — 搭配 RRF fusion，比 grep baseline 精確度高 2.2 倍，100% top-5 hit rate
- **自動捕捉** — 12 個 auto hooks 靜默紀錄 agent 行為，無需手動 add()

## 怎麼用

```bash
# 安裝
npm install agentmemory

# 或透過 MCP 設定（推薦）
# 在 agent 的 MCP 設定中加入 agentmemory server
# 詳見 GitHub README 的 MCP 設定指引

# 啟動 MCP server
npx agentmemory
```

## 跟其他方案的關係

| 方案 | 定位 | R@5 | 自動捕捉 | 搜尋方式 | 外部 DB |
|------|------|-----|---------|---------|--------|
| **agentmemory** | Coding Agent 記憶 | 95.2% | 12 hooks（零手動） | BM25+Vector+Graph | ❌ |
| **[[mem0]]** | 通用 LLM 記憶 | 68.5% | 手動 add() | Vector+Graph | ✅ |
| **[[Letta/MemGPT]]** | Agent 記憶管理 | 83.2% | Agent 自編輯 | Vector | ✅ |
| **[[CLAUDE.md]]** | 手動上下文 | N/A | 手動編輯 | 載入全部 | ❌ |

- agentmemory 是 [[AI-Agent]] 在記憶管理領域的實作，使用 [[MCP]] 協議與各種 agent 通訊
- 混合搜尋架構是 [[rag]] 的進化形 — BM25+Vector+Graph 三路混合搜尋
- **vs mem0**：agentmemory 專注 coding agent 記憶、零手動操作、精確度更高
- **vs Letta/MemGPT**：agentmemory 不需要 agent 自己管理記憶，完全自動化

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[LLM]] · [[rag]]

## 來源

- raw/2026-05-22-rohitg00-agentmemory.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [rohitg00/agentmemory](https://github.com/rohitg00/agentmemory) | ⭐15,140 | 待確認 | 2026-05-22 |
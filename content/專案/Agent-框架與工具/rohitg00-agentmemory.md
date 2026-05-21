---
title: agentmemory
slug: rohitg00-agentmemory
date: 2026-05-22
stars: 15140
language: TypeScript
repo: https://github.com/rohitg00/agentmemory
topics:
  - MCP
  - AI-Agent
  - LLM
  - rag
---

# agentmemory — Persistent Memory for AI Coding Agents

**⭐ 15,140** | TypeScript | [GitHub](https://github.com/rohitg00/agentmemory)

AI coding agent 的持久化記憶系統，讓 agent 跨 session 記住所有決策與上下文。

## 核心數據

- **95.2%** retrieval R@5（LongMemEval-S, ICLR 2025）
- **92%** token 節省（比起貼完整上下文）
- 53 MCP tools、12 auto hooks、0 外部資料庫
- 950+ tests passing

## 運作方式

1. 透過 12 個 auto hooks 靜默捕捉 agent 做了什麼
2. 壓縮成可搜尋的記憶
3. 下次 session 啟動時自動注入正確上下文

## 搜尋架構

BM25 + Vector + Graph 混合搜尋，搭配 RRF fusion。
比 grep baseline 精確度高 2.2 倍，100% top-5 hit rate。

## 支援的 Agent

Claude Code、Cursor、Gemini CLI、Codex CLI、Hermes、OpenClaw、pi、OpenCode、Cline、Goose、Aider 等——任何支援 MCP 或 HTTP 的 agent。

## 競品比較

| 系統 | R@5 | 自動捕捉 | 搜尋方式 |
|------|-----|---------|---------|
| agentmemory | 95.2% | 12 hooks（零手動） | BM25+Vector+Graph |
| mem0 | 68.5% | 手動 add() | Vector+Graph |
| Letta/MemGPT | 83.2% | Agent 自編輯 | Vector |
| CLAUDE.md | N/A | 手動編輯 | 載入全部 |

## 相關概念

- [[MCP]] — agentmemory 透過 MCP 協議與各種 agent 通訊
- [[AI-Agent]] — 為 AI coding agent 打造的記憶引擎
- [[LLM]] — 減少 LLM token 消耗的核心價值主張
- [[rag]] — 混合搜尋架構本質上是 RAG 的進化形
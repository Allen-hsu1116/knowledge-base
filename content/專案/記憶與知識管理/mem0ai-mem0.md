---
title: Mem0
slug: mem0ai-mem0
created: 2026-06-12
updated: 2026-06-12
stars: 58363
language: Python
topics: [AI Agent 記憶層, RAG, SOTA, 向量資料庫]
---

# Mem0

> ⭐58k · AI Agent 記憶層，讓 AI 記住使用者偏好、持續學習，LoCoMo 91.6 分 SOTA

## 快速導航
[[AI-Agent]] · [[rag]] · [[向量資料庫]] · [[MCP]]

## 是什麼

Mem0（發音 "mem-zero"）是 AI Agent 的智慧記憶層。它讓 AI 助手和 Agent 能記住使用者的偏好、適應個別需求、持續學習。不管是客服聊天機器人、個人 AI 助手還是自主系統，Mem0 都能提供跨對話、跨 session 的持久記憶。

2026 年 4 月的新版演算法是重大突破：在 LoCoMo 基準上從 71.4 躍升到 91.6，LongMemEval 從 67.8 躍升到 94.8，而且只需要 7K tokens 和不到 1 秒的延遲。關鍵改變包括：單次 ADD-only 提取（不再 UPDATE/DELETE，記憶只增不減）、Agent 生成的 facts 獲得同等權重、實體連結跨記憶串聯、多信號檢索（語義 + BM25 關鍵詞 + 實體匹配）以及時間感知推理。

Mem0 支援三層記憶架構：User 層（個人偏好）、Session 層（對話上下文）、Agent 層（系統狀態），同時提供 Python/Node SDK、CLI、自架服務器和雲端平台。

## 核心特色

- **三層記憶架構**：User / Session / Agent 三級記憶，分別管理個人偏好、對話上下文和系統狀態
- **SOTA 記憶演算法**：LoCoMo 91.6、LongMemEval 94.8，單次檢索 7K tokens、<1s 延遲
- **Agent 自助註冊**：AI Agent 五秒內自助取得 API key，不需人工介入
- **多信號檢索**：語義相似度 + BM25 關鍵詞 + 實體匹配三路並行融合
- **時間感知推理**：自動區分當前狀態、過去事件和未來計劃的記憶
- **Agent Skills 整合**：提供 Claude Code / Codex / Cursor / OpenClaw 等 skill，一行安裝

## 怎麼用

**安裝：**

```bash
pip install mem0ai

# 增強版（含 BM25 + 實體提取）
pip install mem0ai[nlp]
python -m spacy download en_core_web_sm

# Node.js
npm install mem0ai
```

**基本使用：**

```python
from mem0 import Memory

m = Memory()

# 新增記憶
m.add("I prefer dark mode and vim keybindings", user_id="alice")

# 搜尋記憶
results = m.search("What does Alice prefer?", user_id="alice")
```

**CLI 操作：**

```bash
npm install -g @mem0/cli

mem0 init --agent --agent-caller claude-code
mem0 add "I am using mem0"
mem0 search "am I using mem0"
```

**自架服務器：**

```bash
cd server && make bootstrap
# 或手動：cd server && docker compose up -d
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 記憶層級 | Token 效率 | SOTA 分數 |
|------|-------|------|---------|-----------|----------|
| **Mem0** | ⭐58k | 記憶層 | User/Session/Agent | 7K tokens | LoCoMo 91.6 |
| [[TencentCloud-TencentDB-Agent-Memory\|TencentDB Agent Memory]] | ⭐7.6k | Agent 記憶 | 4 層金字塔 | 61% 節省 | PersonaMem 76% |
| [[supermemoryai-supermemory|Supermemory]] | ⭐23k | 記憶引擎 | User | 較高 | — |
| [[rohitg00-agentmemory|agentmemory]] | ⭐15k | Agent 記憶 | Agent | — | — |
| [[thedotmack-claude-mem|claude-mem]] | ⭐73k | Claude 記憶 | Agent | — | — |
| [[upstash-context7|Context7]] | ⭐54k | 文件查詢 | — | — | — |

## 相關概念
← [[AI-Agent]] · [[rag]] · [[向量資料庫]] · [[MCP]] · [[TencentCloud-TencentDB-Agent-Memory|TencentDB Agent Memory]]

## 來源

- GitHub: <https://github.com/mem0ai/mem0>
- 原始 README: `raw/2026-06-12-mem0ai-mem0.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [mem0ai/mem0](https://github.com/mem0ai/mem0) |
| Stars | ⭐58,363 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-12 |
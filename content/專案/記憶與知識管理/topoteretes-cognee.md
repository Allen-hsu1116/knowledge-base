---
title: Cognee
slug: topoteretes-cognee
created: 2026-06-22
updated: 2026-06-22
stars: 18638
language: Python
topics: ["ai-memory", "knowledge-graph", "ai-agents", "vector-database", "graph-rag", "agent-memory", "context-engineering", "cognitive-architecture"]
---

# Cognee

> ⭐18.6k · 開源 AI 記憶平台，知識圖譜 + 向量搜尋，讓 Agent 跨 session 持久記住一切

## 快速導航

[[mem0ai-mem0|Mem0]] · [[rag]] · [[Knowledge-Graph]] · [[AI-Agent]] · [[MCP]]

## 是什麼

Cognee 是一個開源的 AI 記憶平台，專門為 AI Agent 設計。它的核心理念是：讓 Agent 能夠跨 session 持久記憶，不再每次對話都從零開始。你可以把任何格式的資料餵進去，Cognee 會自動建構一個自架的知識圖譜，結合向量嵌入和圖推理，讓文件既能按語意搜尋，又能按關係串聯。

Cognee 的技術特色在於它結合了認知科學基礎的本體生成（ontology generation）。這不是單純的向量資料庫或 RAG 系統——它在攝入資料時會自動提取實體、關係和概念，建構出結構化的知識圖譜。隨著你的知識增長，圖譜也會持續演化。這讓 Agent 不只是「搜尋到類似的內容」，而是能真正「理解」資料之間的關聯，做出更連貫的推理。

平台提供四個核心 API 操作：`remember`（記住）、`recall`（回想）、`forget`（忘記）和 `improve`（改進）。支援 Python SDK、CLI、Docker 部署、MCP Server，以及 Claude Code 外掛。你可以選擇自架或使用 Cognee Cloud。2025 年的研究論文《Optimizing the Interface Between Knowledge Graphs and LLMs for Complex Reasoning》進一步驗證了其技術路線。

## 核心特色

- **知識圖譜 + 向量雙引擎**：同時支援圖推理和向量語意搜尋，資料既能按關係串聯也能按意義檢索
- **認知科學本體生成**：攝入資料時自動提取實體和關係，建構結構化知識圖譜，隨知識持續演化
- **四操作 API**：remember / recall / forget / improve，簡潔直觀的記憶管理介面
- **多格式資料攝入**：支援任意格式的資料來源，統一攝入後自動建構知識圖譜
- **多部署方式**：pip 安裝、Docker Compose、1-click 部署（Modal/Railway/Fly.io/Render/Daytona）、Cognee Cloud
- **Agent 生态整合**：提供 Claude Code 外掛（透過 hooks 自動捕獲工具呼叫）、OpenClaw 外掛、MCP Server
- **企業級特性**：使用者/租戶隔離、可追溯性、OpenTelemetry 收集器、審計軌跡

## 怎麼用

**安裝：**

```bash
# Python 3.10~3.14
pip install cognee
# 或用 uv
uv pip install cognee
```

**基本使用（Python SDK）：**

```python
import cognee
import asyncio

async def main():
    # 永久記憶（寫入知識圖譜）
    await cognee.remember("Cognee turns documents into AI memory.")

    # Session 記憶（快速快取，背景同步到圖譜）
    await cognee.remember("User prefers detailed explanations.", session_id="chat_1")

    # 查詢（自動路由到最佳搜尋策略）
    results = await cognee.recall("What does Cognee do?")
    for result in results:
        print(result)

    # 刪除
    await cognee.forget(dataset="main_dataset")

asyncio.run(main())
```

**CLI 操作：**

```bash
cognee-cli remember "Cognee turns documents into AI memory."
cognee-cli recall "What does Cognee do?"
cognee-cli forget --all
cognee-cli -ui  # 開啟本地 UI
```

**Docker 部署：**

```bash
cp .env.template .env  # 設定 LLM_API_KEY
docker compose up
# 加 UI: docker compose --profile ui up
# 加 MCP: docker compose --profile mcp up
# 加 Postgres: docker compose --profile postgres up
# 加 Neo4j: docker compose --profile neo4j up
```

**Claude Code 外掛：**

```bash
pip install cognee
export LLM_API_KEY="your-openai-key"
git clone https://github.com/topoteretes/cognee-integrations.git
claude --plugin-dir ./cognee-integrations/integrations/claude-code
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 知識圖譜 | 向量搜尋 | Agent 整合 | 自架 |
|------|-------|------|---------|---------|-----------|------|
| **Cognee** | ⭐18.6k | AI 記憶平台 | ✅（自動建構） | ✅ | Claude Code/OpenClaw/MCP | ✅ |
| [[mem0ai-mem0|Mem0]] | ⭐58k | 記憶層 | ❌ | ✅ | SDK/CLI/Skills | ✅ |
| [[supermemoryai-supermemory|Supermemory]] | ⭐23k | 記憶引擎 | ❌ | ✅ | MCP | ✅ |
| [[basicmachines-co-basic-memory|Basic Memory]] | ⭐3.2k | 記憶+知識圖譜 | ✅ | ✅ | MCP | ✅ |
| [[rohitg00-agentmemory|agentmemory]] | ⭐15k | Agent 記憶 | ❌ | ✅ | MCP | ✅ |

## 相關概念

← [[mem0ai-mem0|Mem0]] · [[rag]] · [[Knowledge-Graph]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/topoteretes/cognee>
- 原始 README: `raw/2026-06-22-topoteretes-cognee.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [topoteretes/cognee](https://github.com/topoteretes/cognee) |
| Stars | ⭐18,638 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-22 |
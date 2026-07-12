---
title: RAGFlow
slug: ragflow
created: 2026-05-10
updated: 2026-05-10
stars: 84833
language: zh-TW
topics: [RAG, AI Agent]
---

# RAGFlow

> ⭐79,665 · 領先的開源 RAG+Agent 引擎，深度文件理解 + 模板化分塊 + 接地引用，有 OpenClaw Skill 可直接操作。（詳細參考頁）

## 專案資訊

- **GitHub**: [infiniflow/ragflow](https://github.com/infiniflow/ragflow)

## 快速導航
- 📚 **知識方法論** → [[llm-knowledge-base]]（RAG 是知識庫的工業級實作）
- 📄 **文件解析** → [[docling]]（RAGFlow 支援 Docling 作為解析器）
- 🔄 **增量索引** → [[cocoindex]]（同為 RAG 管線生態）
- 🦞 **OpenClaw Skill** → [[openclaw]]（RAGFlow 有官方 OpenClaw Skill）
- 🛡️ **Prompt 安全** → [[prompt-security]]（接地引用減少幻覺）

## 是什麼

RAGFlow 是一個開源 RAG + Agent 引擎，融合收斂式上下文引擎和預建 Agent 模板，把非結構化資料轉成高保真、生產就緒的 AI 系統。它解決的核心問題是：如何讓 LLM 可靠地使用外部文件知識，而不產生幻覺。

## 核心特色

- **深度文件理解（DeepDoc）**：從複雜格式（表格、圖表、掃描件）提取知識
- **模板化分塊**：智慧且可解釋的分塊策略，可視化分塊讓人類可介入修正
- **接地引用**：減少幻覺，每個回答可追溯回原始文件
- **Agent 工作流 + MCP**：內建 Agent 模板和 MCP 工具整合
- **多資料來源**：支援 Word、PPT、Excel、圖片、掃描件、Confluence、S3、Notion 等

## 怎麼用

```bash
# Docker 部署（需要 Docker 24.0.0+, Docker Compose v2.26.1+）
git clone https://github.com/infiniflow/ragflow.git
cd ragflow
docker compose -f docker/docker-compose.yml up -d
# 存取 http://localhost:9380
```

系統需求：CPU ≥ 4 cores, RAM ≥ 16GB, Disk ≥ 50GB

## 跟其他方案的關係

**品質保證**
- 深度文件理解（DeepDoc）：從複雜格式提取知識
- 模板化分塊：智慧且可解釋的分塊策略
- 接地引用：減少幻覺，可追溯引用來源
- 可視化分塊：人類可介入修正

**資料來源**
- Word、PPT、Excel、TXT、圖片、掃描件、結構化資料、網頁
- 支援 Confluence、S3、Notion、Discord、Google Drive 同步
- **支援 Docling 和 MinerU 作為文件解析方法**

**Agent 能力**
- Agent 工作流 + MCP 支援
- Python/JavaScript 程式碼執行器
- AI Agent 記憶功能（2025-12 加入）

### 最新動態
- 2026-04：支援 DeepSeek v4
- 2026-03：**RAGFlow Skill on OpenClaw** — 官方 Skill！
- 2025-10：支援 Docling 和 MinerU 解析
- 2025-08：支援 GPT-5、Agent 工作流、MCP

### 系統需求
- CPU ≥ 4 cores, RAM ≥ 16GB, Disk ≥ 50GB
- Docker ≥ 24.0.0 & Docker Compose ≥ v2.26.1

### 與其他專案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[docling]] | 文件解析 | RAGFlow 支援 Docling 作為解析器 |
| [[cocoindex]] | 增量索引 | 互補：CocoIndex 做增量，RAGFlow 做 RAG |
| [[openclaw]] | 個人助手 | RAGFlow 有 OpenClaw Skill |
| [[litellm]] | LLM Gateway | RAGFlow 支援多模型，可搭配 LiteLLM |
| [[openviking]] | Context DB | 互補：OpenViking 管記憶，RAGFlow 管檢索 |

### 技術
- Go + Python
- Apache-2.0 授權
- 40k+ stars

## 相關概念
← [[llm-knowledge-base]] · [[docling]] · [[openclaw]] · [[cocoindex]]

## 來源
- raw/2026-05-03-ragflow.md

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/infiniflow/ragflow |
| **收錄日期** | 2026-05-10 |

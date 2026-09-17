---
title: "WeKnora"
slug: "Tencent-WeKnora"
created: "2026-09-17"
updated: "2026-09-17"
stars: 25298
language: "Go"
topics: ["agent", "agentic", "ai", "chatbot", "dsh-plugin", "embeddings", "evaluation", "generative-ai", "golang", "knowledge-base", "llm", "multi-tenant", "ollama", "openai", "question-answering", "rag", "reranking", "semantic-search", "vector-search", "wiki"]
---

# WeKnora

> ⭐25.3k · Go · 整合 RAG、ReAct Agent 與自動 Wiki 的可自架文件知識平台。

## 快速導航

- [[rag]]
- [[llm-knowledge-base]]

## 是什麼

WeKnora 是 Tencent 的 LLM 文件知識平台，從文件解析、切塊與向量化一路接到檢索與回答。它把分散文件轉成可問答的知識資產，並允許替換模型、向量資料庫與儲存後端。

README 將功能分成快速 RAG 問答、能編排檢索與工具的 ReAct Agent，以及把原始文件整理成交叉連結 Markdown 的 Wiki Mode。Wiki 不只是一次性生成：支援人工修改、版本差異與回滾，檢索切塊也能編輯和重新索引。

它更接近有權限治理與運維介面的知識平台，而不是單一向量搜尋函式庫。對既有 raw→wiki 工作流，值得比較的是自動生成後如何保留來源、編輯紀錄與可控的資料存取。

## 核心特色

- **三種知識使用入口**：快速問答、ReAct 推理與自動 Wiki 對應不同複雜度的需求。

- **多來源與多格式**：串接多種企業資料源，解析 PDF、Word、圖片與表格等文件。

- **可編輯知識層**：Wiki 與 retrieval chunk 具版本紀錄、差異檢視與回滾能力。

- **企業工作區治理**：提供工作區角色、資源擁有權、稽核日誌及有 scope 的 API key。

- **Agent 沙箱與觀測**：README 描述 Docker/E2B/Cube 執行環境、Langfuse trace 及工作佇列管理。

## 怎麼用

需安裝 Git、Docker 與 Docker Compose。先檢視 .env.example，填入選用模型、儲存與安全設定，再啟動；正式使用前固定映像版本並規劃持久化備份。

```bash
git clone https://github.com/Tencent/WeKnora.git
cd WeKnora
cp .env.example .env
# 先編輯 .env，確認模型與存取設定
docker compose pull
docker compose up -d
```

### 建議操作流程

1. 啟動後依 README 開啟 http://localhost，建立工作區與知識庫。
2. 先上傳非敏感測試文件，檢查切塊、檢索來源與回答引文。
3. 再依需要啟用 Wiki、MCP 或額外 Compose profile，不要把所有外部整合一次打開。

### 使用限制與驗證邊界

自架不代表資料不會離開主機：雲端模型、web search、MCP 與資料源仍有外部傳輸。README 的資料主權定位必須搭配實際網路政策、供應商設定和權限驗證。

本次僅完成來源擷取與文件整理，未安裝、啟動或評測此專案。

## 跟其他方案的關係

| 方案 | 主要定位 | 適用與限制 |
|---|---|---|
| WeKnora | 文件問答、Agent、Wiki 與治理整合 | 適合需要 UI 和多人工作區的知識服務 |
| 單純 RAG 管線 | 解析、檢索、生成的組合 | 易聚焦單一任務，但治理介面需另建 |
| 平面 Markdown Wiki | 可讀文件與交叉連結 | 易版本管理；不直接提供向量檢索與 Agent runtime |

功能多也代表運維面較大；是否值得導入應以文件品質、權限隔離和回答可溯源性驗收，而非只看星數。

## 相關概念

← [[rag]] · [[llm-knowledge-base]]

## 來源

- GitHub：https://github.com/Tencent/WeKnora
- README 快照：`raw/2026-09-17-Tencent-WeKnora.md`
- Metadata 快照：`raw/2026-09-17-Tencent-WeKnora-metadata.json`
- https://github.com/Tencent/WeKnora/blob/main/LICENSE
- https://github.com/Tencent/WeKnora/blob/main/docs/RBAC说明.md

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Tencent/WeKnora |
| Stars | ⭐25,298（2026-09-17 擷取） |
| License | MIT（第三方元件另依各自授權） |
| Language | Go |
| 收錄日期 | 2026-09-17 |

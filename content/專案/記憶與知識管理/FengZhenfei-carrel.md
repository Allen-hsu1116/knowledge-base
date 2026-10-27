---
title: "Carrel"
slug: "FengZhenfei-carrel"
created: "2026-10-27"
updated: "2026-10-27"
stars: 643
language: "zh-TW"
topics: ["rag", "Knowledge-Graph"]
---

# Carrel

> ⭐0.64k · 為 Agent 提供文件解析、混合檢索與選配知識圖譜的自架證據服務。

## 快速導航

- [[rag]] — 相關方法與實作背景。
- [[Knowledge-Graph]] — 相關方法與實作背景。

## 是什麼

Carrel 是面向 AI Agent 的自架知識庫，把持續變更的產品文件、研究資料、合約及會議紀錄轉成可檢索來源。它負責解析、索引與證據介面，Agent 取得段落、圖片和關係後再自行生成答案。

專案以 Ontology-Augmented Generation 描述定位，混合向量、關鍵字、圖與視覺搜尋。現有圖譜保留來源、時間及衝突資訊，但用來持續學習企業本體的 Agent Loop plugin 尚未實作，不能把規劃中能力當成已交付功能。

## 核心特色

- 多格式文件：支援 PDF、Office、圖片、HTML、Markdown、notebook 與程式碼等。

- 混合檢索：結合多種索引、知識庫選擇及選配文字／圖片 reranking。

- 可追溯圖譜：抽取實體與關係並保留來源、時間、衝突指標。

- 增量維護：掃描變更、排程更新索引，圖譜增量合併與條件式重建分離。

- Web 管理：以中英介面管理模型、知識庫、chunks、圖譜及處理工作。

## 怎麼用

官方需求為 Python 3.12+、Docker 25+ 與 Compose v2；需 embedding、視覺模型 endpoint，啟用圖譜另需 chat model。

```bash
git clone https://github.com/FengZhenfei/carrel.git
cd carrel
./deploy.sh
```

1. 檢查 deploy.sh 後再部署；它會啟動基礎設施、安裝應用並建立設定。

2. 設定 config/knowledge-base.env 的模型端點，再於 127.0.0.1:9800 開啟控制台。

3. 把文件放到 runtime/mirror/<folder>/ 並啟用知識庫；確認處理完成再用 search API 或 bundled skill 查詢。

### 使用邊界

- Qdrant、OpenSearch、Neo4j 與 SQLite 各司其職；macOS 使用 CPU 容器，排程須另行安排。

- 遠端開放須設定 token；文件與圖片會送到指定模型端點。README 評測只代表其測試集，本次未重跑。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不是實測效能排名。

| 方案 | 定位 | 選擇重點 |
|---|---|---|
| Carrel | 自動解析、混合檢索與來源證據 API | Agent 自行產生最終答案 |
| 純向量 RAG | 以 embedding 找相似片段 | 元件較少，但不直接涵蓋圖關係證據 |
| 一般知識圖譜 | 組織實體、關係與事實 | 可與向量及全文搜尋互補，不能保證回答正確 |

## 相關概念

← [[rag]] · [[Knowledge-Graph]]

## 來源

- GitHub：https://github.com/FengZhenfei/carrel
- README 原始快照：`raw/2026-10-27-FengZhenfei-carrel.md`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/FengZhenfei/carrel |
| Stars | 643（2026-10-27 擷取） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-10-27 |

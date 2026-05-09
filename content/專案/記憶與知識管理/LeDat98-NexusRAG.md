---
title: NexusRAG
created: 2026-05-09
tags: [rag, knowledge-graph, document-parsing, vector-search, ai-agent]
---

# NexusRAG — 混合式 RAG 系統（向量搜尋 + 知識圖譜 + 交叉編碼器重排）

> 結合向量搜尋、知識圖譜（LightRAG）與交叉編碼器重排序的混合 RAG 管線，支援 Docling/Marker 文件解析、圖表視覺理解、Agent 串流聊天與行內引用。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [LeDat98/NexusRAG](https://github.com/LeDat98/NexusRAG) |
| Stars | ⭐297 |
| Language | Python |
| 建立日期 | 2026-03-15 |
| 收錄日期 | 2026-05-09 |
| 授權 | MIT |

## 快速導航

- [[rag]] — 檢索增強生成
- [[document-parsing]] — 文件解析
- [[Knowledge-Graph]] — 知識圖譜
- [[AI-Agent]] — AI Agent

## 簡介

NexusRAG 是一套端到端的混合式 RAG（Retrieval-Augmented Generation）系統，將向量搜尋、知識圖譜與交叉編碼器重排序整合在同一條管線中。它不只是「切文字 → 嵌入 → 檢索 → 生成」，而是在每個環節都做了強化：深度文件解析保留結構、圖表自動標題化並嵌入向量、知識圖譜做實體關聯、交叉編碼器精確重排。

系統支援雲端（Gemini）與本地（Ollama）兩種 LLM 提供者，可透過環境變數一鍵切換，甚至能完全離線運行（sentence-transformers 嵌入 + Ollama 推理）。

## 核心特色

### 三路並行檢索管線

NexusRAG 的檢索不是只用向量相似度，而是三路並行：

1. **向量過取（Vector Over-fetch）**：用 BAAI/bge-m3（1024 維，支援 100+ 語言）從 ChromaDB 取 top-20 候選
2. **知識圖譜實體查找（KG Entity Lookup）**：透過 LightRAG 進行實體/關係提取與多跳遍歷
3. **交叉編碼器重排（Cross-encoder Rerank）**：用 BAAI/bge-reranker-v2-m3 對候選做聯合評分，比餘弦相似度精確得多

最終保留相關性分數 ≥ 0.15 的 top-8 結果，若全數低於門檻則退回 top-3。

### 深度文件解析（Docling / Marker 雙解析器）

支援兩種解析器，透過 `NEXUSRAG_DOCUMENT_PARSER` 環境變數切換：

- **Docling**（預設）：保留標題層級、頁碼邊界、公式，支援 HybridChunker 語義+結構分塊
- **Marker**：LaTeX 公式支援更佳（透過 Surya），GPU 佔用更低（~2-4GB vs ~18-20GB）

兩者共享同一個輸出合約（ParsedDocument），下游管線無需修改。

### 視覺文件智慧

圖片和表格不是被忽略，而是：
- 解析器提取圖片 → 視覺 LLM 生成描述 → 描述附加到同頁文字區塊 → 一起嵌入向量
- 表格匯出為 Markdown → 文字 LLM 生成摘要 → 摘要附加到區塊
- 搜尋時，圖表透過描述被向量搜尋找到，並以 `[IMG-p4f2]` 格式引用

### 知識圖譜視覺化

基於 LightRAG 建構互動式力導向圖：
- 9 種實體類型（人物、組織、產品、地點、事件、技術、財務指標、日期、法規）
- 查詢模式：Naive、Local（多跳）、Global（摘要）、Hybrid（預設）
- 純檔案儲存（NetworkX + NanoVectorDB），零 Docker 額外開銷

### 引用系統

每個回答都以 4 字元 ID（如 `[a3z1]）`錨定到來源文件，顯示檔名、頁碼、標題路徑與相關性分數，並可點擊跳轉到文件檢視器中的精確位置。

### 多提供者 LLM 支援

- **雲端**：Gemini 2.5 Flash / Gemini 3.1 Flash Lite（支援 extended thinking）
- **本地**：Ollama（Gemma 4、Qwen 3.5 等，自動偵測原生 tool calling）
- **完全離線**：sentence-transformers + Ollama，零 API 費用

## 安裝方式

```bash
# 複製專案
git clone https://github.com/LeDat98/NexusRAG.git
cd NexusRAG

# 設定環境變數
cp .env.example .env
# 編輯 .env 填入 API key 或選擇 Ollama

# Docker 啟動
docker compose up --build

# 或本機啟動
pip install -r requirements.txt
python main.py
```

## 技術棧

- **後端**：Python、FastAPI、ChromaDB、LightRAG
- **前端**：React、Framer Motion
- **嵌入模型**：BAAI/bge-m3（向量搜尋）、Gemini/Ollama/sentence-transformers（知識圖譜）
- **重排序**：BAAI/bge-reranker-v2-m3
- **文件解析**：Docling / Marker（可切換）
- **LLM**：Gemini / Ollama
- **知識圖譜儲存**：NetworkX + NanoVectorDB（檔案式，零額外服務）

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/LeDat98/NexusRAG)
- [技術展示影片](https://github.com/LeDat98/NexusRAG#showcase)
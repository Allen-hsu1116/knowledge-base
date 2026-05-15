---
title: NexusRAG
created: 2026-05-09
---

# NexusRAG

> 混合式 RAG 系統（向量搜尋 + 知識圖譜 + 交叉編碼器重排），支援 Docling/Marker 雙解析器、圖表視覺理解、Agent 串流聊天與行內引用。⭐297

## 快速導航
- 📚 **RAG** → [[rag]]（NexusRAG 是混合式 RAG 系統）
- 🔍 **文件解析** → [[document-parsing]]（支援 Docling/Marker 雙解析器）
- 🧠 **知識圖譜** → [[Knowledge-Graph]]（基於 LightRAG 建構互動式力導向圖）
- 🤖 **AI Agent** → [[AI-Agent]]（支援 Agent 串流聊天）

## 是什麼

NexusRAG 是一套端到端的混合式 RAG（Retrieval-Augmented Generation）系統，將向量搜尋、知識圖譜與交叉編碼器重排序整合在同一條管線中。它不只是「切文字 → 嵌入 → 檢索 → 生成」，而是在每個環節都做了強化：深度文件解析保留結構、圖表自動標題化並嵌入向量、知識圖譜做實體關聯、交叉編碼器精確重排。

系統支援雲端（Gemini）與本地（Ollama）兩種 LLM 提供者，可透過環境變數一鍵切換，甚至能完全離線運行。

## 核心特色

- **三路並行檢索管線**：向量過取（BAAI/bge-m3 top-20 候選）+ 知識圖譜實體查找（LightRAG 多跳遍歷）+ 交叉編碼器重排（BAAI/bge-reranker-v2-m3），保留相關性 ≥ 0.15 的 top-8 結果
- **深度文件解析**：Docling（預設）保留標題層級、頁碼邊界、公式；Marker 的 LaTeX 公式支援更佳且 GPU 佔用更低
- **視覺文件智慧**：圖片透過視覺 LLM 生成描述並嵌入向量，表格匯出 Markdown 並生成摘要
- **知識圖譜視覺化**：基於 LightRAG 建構互動式力導向圖，9 種實體類型、4 種查詢模式
- **引用系統**：每個回答以 4 字元 ID 錨定來源文件，顯示檔名、頁碼、標題路徑與相關性分數
- **多提供者 LLM 支援**：雲端 Gemini、本地 Ollama、完全離線 sentence-transformers + Ollama

## 怎麼用

```bash
# 複製專案
git clone https://github.com/LeDat98/NexusRAG.git
cd NexusRAG

# Docker 啟動
docker compose up --build

# 或本機啟動
pip install -r requirements.txt
python main.py
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[ragflow]] | RAG 引擎 | ragflow 是端到端 RAG 平台，NexusRAG 是混合式 RAG 管線 |
| [[docling]] | 文件解析 | NexusRAG 內建 Docling 作為預設解析器 |
| [[Chroma]] | 向量資料庫 | NexusRAG 使用 ChromaDB 做向量儲存 |
| [[LlamaIndex]] | RAG 框架 | LlamaIndex 偏框架，NexusRAG 偏完整系統 |

## 相關概念

← [[rag]] · [[document-parsing]] · [[Knowledge-Graph]] · [[AI-Agent]]

## 來源

- raw/2026-05-09-LeDat98-NexusRAG.md

---

- **GitHub**: https://github.com/LeDat98/NexusRAG
- **Stars**: ⭐297
- **License**: MIT
- **收錄日期**: 2026-05-09
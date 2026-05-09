---
title: Flamehaven-Filesearch
created: 2026-05-09
tags: [rag, search, self-hosted, document-parsing, bm25]
---

# Flamehaven-Filesearch — 自架式 RAG 搜尋引擎（34 格式，BM25+混合搜尋，多 LLM）

> 自架式生產級 RAG 搜尋引擎，支援 34 種檔案格式、BM25+RRF 混合搜尋、多 LLM 提供者，Docker 3 分鐘部署，資料不離開你的基礎設施。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [flamehaven01/Flamehaven-Filesearch](https://github.com/flamehaven01/Flamehaven-Filesearch) |
| Stars | ⭐100 |
| Language | Python |
| 建立日期 | 2025-11-11 |
| 收錄日期 | 2026-05-09 |
| 授權 | MIT |

## 快速導航

- [[rag]] — 檢索增強生成
- [[document-parsing]] — 文件解析
- [[AI-Agent]] — AI Agent

## 簡介

Flamehaven-Filesearch 是一套自架式的 RAG 搜尋引擎，主打「3 分鐘部署、資料不出基礎設施」。它把文件解析、分塊、向量生成、混合搜尋、LLM 生成整合在一個 FastAPI 服務裡，不需要額外的 ML 框架依賴——DSP v2.0 可以在 <1ms 內生成嵌入，記憶體佔用比 float32 減少 75%（Int8 量化）。

系統支援 34 種檔案格式，從 PDF、DOCX 到 XLSX、PPTX、LaTeX、WebVTT 都能解析；搜尋引擎同時提供 BM25 關鍵字搜尋和語義混合搜尋（RRF 融合），並有自動拼字修正。獨特的 Quality Gate 機制會對搜尋結果做信心評分（PASS/FORGE/INHIBIT），低信心時自動擴充關鍵字池。

## 核心特色

### BM25 + RRF 混合搜尋引擎

不是單純的向量搜尋，而是 BM25 關鍵字搜尋 + 語義向量搜尋透過 RRF（Reciprocal Rank Fusion）融合。Quality Gate 機制會評估結果信心度：
- **PASS**：混合結果品質夠好，直接回傳
- **FORGE**：信心不足，自動用 BM25 關鍵字回退擴充
- **INHIBIT**：低信心結果，標記 `low_confidence` 旗標

BM25 池大小透過 EMA meta-learner 自適應調整——當查詢偏關鍵字導向時，自動擴大 BM25 池。

### DSP v2.0 極速向量生成

零 ML 依賴的嵌入生成器，向量生成 <1ms，比傳統 float32 節省 75% 記憶體（Int8 量化），Gravitas-Pack 壓縮讓元資料大小減少 90%。

### 34 種檔案格式支援

PDF、DOCX/DOC、XLSX、PPTX、RTF、HTML、CSV、LaTeX、WebVTT、圖片（OCR）+ 純文字等 34 種格式。解析透過 BackendRegistry 插件架構管理，每種格式有獨立 backend，可擴展。

### 多 LLM 提供者

一個環境變數切換：
- **Gemini**（預設）：Google Gemini API
- **Ollama**：完全本地，零 API 費用（Gemma 4/3、Llama、Qwen、Mistral、Phi…）
- **OpenAI**：GPT-4o-mini 等
- **Anthropic**：Claude
- **OpenAI-compatible**：vLLM、LM Studio 等自架端點

### 框架整合

開箱即用的 LangChain、LlamaIndex、Haystack、CrewAI adapter，懶載入設計——只安裝你需要的。

### 企業級安全

- API Key 雜湊（SHA256+salt）
- 速率限制（每 key 100 req/min）
- 細粒度權限控制
- 完整審計日誌
- OWASP 安全標頭預設啟用
- 輸入驗證（檔案類型與大小檢查）

## 安裝方式

```bash
# Docker 部署（Gemini）
docker run -d -p 8000:8000 \
  -e GEMINI_API_KEY="your_key" \
  -e FLAMEHAVEN_ADMIN_KEY="secure_admin_password" \
  -v $(pwd)/data:/app/data \
  flamehaven-filesearch:1.6.1

# Docker 部署（Ollama，完全本地）
docker run -d -p 8000:8000 \
  -e LLM_PROVIDER=ollama \
  -e LOCAL_MODEL=gemma4:27b \
  -e OLLAMA_BASE_URL=http://host.docker.internal:11434 \
  flamehaven-filesearch:1.6.1

# pip 安裝
pip install flamehaven-filesearch[all]
```

## 技術棧

- **後端**：Python、FastAPI、uvicorn
- **搜尋**：BM25 + RRF 混合搜尋
- **嵌入**：DSP v2.0（零 ML 依賴）
- **儲存**：SQLite（預設）/ PostgreSQL + pgvector / Redis（可選）
- **LLM**：Gemini / OpenAI / Anthropic / Ollama / OpenAI-compatible
- **框架整合**：LangChain、LlamaIndex、Haystack、CrewAI
- **容器化**：Docker

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/flamehaven01/Flamehaven-Filesearch)
- [架構文件](https://github.com/flamehaven01/Flamehaven-Filesearch/blob/main/docs/wiki/Architecture.md)
- [文件解析詳情](https://github.com/flamehaven01/Flamehaven-Filesearch/blob/main/docs/wiki/Document_Parsing.md)
---
title: Flamehaven-Filesearch
created: 2026-05-09
---

# Flamehaven-Filesearch

> 自架式生產級 RAG 搜尋引擎，支援 34 種檔案格式、BM25+RRF 混合搜尋、多 LLM 提供者，Docker 3 分鐘部署，資料不離開你的基礎設施。⭐100

## 快速導航
- 📚 **RAG** → [[rag]]（Flamehaven-Filesearch 是 RAG 搜尋引擎）
- 🔍 **文件解析** → [[document-parsing]]（支援 34 種檔案格式）
- 🤖 **AI Agent** → [[AI-Agent]]（可整合至 Agent 工作流）

## 是什麼

Flamehaven-Filesearch 是一套自架式的 RAG 搜尋引擎，主打「3 分鐘部署、資料不出基礎設施」。它把文件解析、分塊、向量生成、混合搜尋、LLM 生成整合在一個 FastAPI 服務裡，不需要額外的 ML 框架依賴——DSP v2.0 可以在 <1ms 內生成嵌入，記憶體佔用比 float32 減少 75%。

## 核心特色

- **BM25 + RRF 混合搜尋引擎**：BM25 關鍵字搜尋 + 語義向量搜尋透過 RRF 融合，Quality Gate 機制評估結果信心度（PASS/FORGE/INHIBIT）
- **DSP v2.0 極速向量生成**：零 ML 依賴，向量生成 <1ms，比傳統 float32 節省 75% 記憶體（Int8 量化）
- **34 種檔案格式支援**：PDF、DOCX、XLSX、PPTX、LaTeX、WebVTT 等全格式
- **多 LLM 提供者**：Gemini、Ollama、OpenAI、Anthropic、OpenAI-compatible，一個環境變數切換
- **框架整合**：開箱即用的 LangChain、LlamaIndex、Haystack、CrewAI adapter
- **企業級安全**：API Key 雜湊、速率限制、細粒度權限控制、審計日誌、OWASP 安全標頭

## 怎麼用

```bash
# Docker 部署（Gemini）
docker run -d -p 8000:8000 \
  -e GEMINI_API_KEY="your_key" \
  -e FLAMEHAVEN_ADMIN_KEY="secure_admin_password" \
  flamehaven-filesearch:1.6.1

# Docker 部署（Ollama，完全本地）
docker run -d -p 8000:8000 \
  -e LLM_PROVIDER=ollama \
  -e LOCAL_MODEL=gemma4:27b \
  flamehaven-filesearch:1.6.1
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[ragflow]] | RAG 引擎 | ragflow 是端到端 RAG 平台，Flamehaven 偏自架搜尋引擎 |
| [[LlamaIndex]] | RAG 框架 | Flamehaven 提供開箱即用的 LlamaIndex adapter |
| [[document-parsing]] | 文件解析 | Flamehaven 內建 34 種格式解析 |

## 相關概念

← [[rag]] · [[document-parsing]] · [[AI-Agent]]

## 來源

- raw/2026-05-09-flamehaven01-Flamehaven-Filesearch.md

---

- **GitHub**: https://github.com/flamehaven01/Flamehaven-Filesearch
- **Stars**: ⭐100
- **License**: MIT
- **收錄日期**: 2026-05-09
---
title: QMD
slug: qmd
created: 2026-05-15
stars: 24863
updated: 2026-05-15
language: zh-TW
topics: [RAG, 本地搜尋引擎, MCP]
---

# QMD

> ⭐24863 · 本地優先的混合搜尋引擎，BM25 + 向量 + LLM 重排序全部跑在裝置上，為你的筆記、文件、會議紀錄而生。

## 快速導航


- [[rag|RAG（檢索增強生成）]] — QMD 是 RAG 流程中的檢索層
- [[向量資料庫]] — 向量搜尋的基礎設施
- [[MCP]] — QMD 提供 MCP Server 介面

## 是什麼


QMD 是 Shopify 創辦人 Tobi Lütke 開發的本地搜尋引擎 CLI 工具。

它把你的 Markdown 筆記、會議紀錄、文件建立索引，支援關鍵字搜尋（BM25）、語意搜尋（向量嵌入）、和 LLM 重排序三種模式，全部在本地執行，不需要呼叫雲端 API。

## 核心特色

- **三層混合搜尋**：BM25 全文 → 向量語意 → LLM 重排序，用 RRF（Reciprocal Rank Fusion）融合
- **查詢擴展**：用 fine-tuned 小模型自動擴展查詢，原查詢 ×2 權重保留精確匹配
- **位置感知混合**：Top 1-3 結果 75% 檢索 / 25% 重排序，Top 4-10 是 60/40，Top 11+ 是 40/60
- **Context 系統**：為 collection 和路徑加上描述性 metadata，改善搜尋品質
- **MCP Server**：暴露 query、get、multi_get、status 四個工具，Agent 直接呼叫
- **SDK**：可作為 Node.js/Bun 模組使用
- **多語言支援**：可切換 Qwen3-Embedding 支援 CJK（中日韓）
- **AST 分塊**：程式碼檔案可用 tree-sitter 在 function/class 邊界分塊

## 怎麼用

```bash
# 安裝
npm install -g @tobilu/qmd

# 建立 collection
qmd collection add ~/notes --name notes
qmd context add qmd://notes "Personal notes and ideas"

# 產生嵌入
qmd embed

# 搜尋
qmd search "keyword"       # BM25 關鍵字
qmd vsearch "semantic"     # 向量語意
qmd query "hybrid best"    # 混合 + 重排序（推薦）

# MCP Server
qmd mcp                    # stdio 模式
qmd mcp --http --daemon    # HTTP 模式（共用常駐）
```

## 跟其他方案的關係

| 專案 | 類型 | 搜尋方式 | 本地/雲端 | 重排序 | Stars |
|------|------|----------|----------|--------|-------|
| **QMD** | CLI 搜尋引擎 | BM25 + 向量 + LLM | 本地 | ✅ LLM reranker | ⭐24.9k |
| [[ragflow|RAGFlow]] | RAG 引擎 | 混合 | 自架 | ✅ | ⭐79.7k |
| [[cocoindex|CocoIndex]] | 增量索引 | 向量 | 自架 | ❌ | ⭐8.1k |
| [[flamehaven01-Flamehaven-Filesearch|Flamehaven]] | 自架搜尋引擎 | 向量 | 自架 | ❌ | ⭐100 |
| [[upstash-context7|Context7]] | LLM 文件查詢 | 向量 | 雲端 | ❌ | ⭐54.8k |

QMD 的定位是**個人/小型團隊的本地搜尋引擎**，跟 RAGFlow（大型 RAG 平台）、CocoIndex（增量索引管線）互補。QMD 強調的是「開箱即用」——一條指令就能建立索引和搜尋，不需要架設服務。

## 相關概念


- [[rag]] — 檢索增強生成
- [[向量資料庫]] — 向量儲存與檢索
- [[MCP]] — Model Context Protocol，QMD 的 Agent 整合介面
- [[cocoindex]] — 增量索引管線
- [[ragflow]] — 開源 RAG 引擎

← [[rag]] · [[向量資料庫]] · [[MCP]] · [[cocoindex]] · [[ragflow]]

## 來源

- [GitHub：專案原始碼](https://github.com/tobi/qmd)
- raw/2026-05-15-qmd.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/tobi/qmd |
| Stars | ⭐24863|
| License | MIT |
| 收錄日期 | 2026-05-15 |

---
title: RAG（檢索增強生成）
created: 2026-05-09
tags: [rag, vector-search, knowledge-graph, hybrid-search]
---

# RAG（檢索增強生成）

> Retrieval-Augmented Generation — 結合外部知識檢索與 LLM 生成，讓模型回答有根據、可追溯。

## 概述

RAG（Retrieval-Augmented Generation）是一種讓 LLM 在生成回答前先檢索外部知識的技術架構。核心流程：使用者提問 → 系統從知識庫檢索相關內容 → 將檢索結果作為上下文餵給 LLM → LLM 基於檢索內容生成回答。

## 關鍵技術

- **向量搜尋**：用嵌入模型（如 BAAI/bge-m3）將文字轉為向量，透過餘弦相似度檢索
- **混合搜尋**：BM25 關鍵字搜尋 + 向量語義搜尋 + RRF 融合排序
- **知識圖譜**：提取實體與關係，支援多跳推理
- **重排序**：交叉編碼器（Cross-encoder）對候選做精確評分
- **文件解析**：將 PDF、DOCX 等轉為結構化文字，保留語義格式
- **分塊策略**：語義分塊、結構分塊、滑動窗口上下文豐富化

## 相關專案

### RAG 引擎

| 專案 | 說明 | Stars |
|------|------|-------|
| [[ragflow]] | 開源 RAG 引擎 | ⭐79k |
| [[LeDat98-NexusRAG]] | 混合式 RAG 系統，向量+知識圖譜+重排序 | ⭐297 |
| [[flamehaven01-Flamehaven-Filesearch]] | 自架式 RAG 搜尋引擎，BM25+混合搜尋 | ⭐100 |

### 文件解析

| 專案 | 說明 | Stars |
|------|------|-------|
| [[docling]] | IBM 開源文件解析庫 | ⭐59k |
| [[microsoft-markitdown]] | Microsoft 文件轉 Markdown | ⭐120k |
| [[run-llama-ParseBench]] | 文件解析基準測試 | ⭐468 |

### 向量資料庫

| 專案 | 說明 | Stars |
|------|------|-------|
| [[Milvus]] | 高效能雲原生向量資料庫，十億級搜尋 | ⭐44.2k |
| [[Qdrant]] | Rust 高效能向量搜尋引擎 | ⭐31.2k |
| [[Chroma]] | 極簡 AI 向量資料庫，4 個核心 API | ⭐27.9k |

### 網頁資料採集

| 專案 | 說明 | Stars |
|------|------|-------|
| [[Crawl4AI]] | LLM 友善網頁爬蟲，網頁→Markdown | ⭐65.3k |

## 相關概念

- [[document-parsing]] — 文件解析
- [[Knowledge-Graph]] — 知識圖譜
- [[AI-Agent]] — AI Agent
---
title: Flamehaven Filesearch
created: 2026-05-09
---

# Flamehaven Filesearch

> 自架式 RAG 搜尋引擎，支援 34 種文件格式解析，BM25 + 混合搜尋架構。

## 快速導航

- 🔍 **RAG** → [[rag]]（Filesearch 是自架式 RAG 搜尋引擎）
- 📄 **文件解析** → [[document-parsing]]（支援 34 種文件格式解析）
- 🏠 **自架式** → 完全在本機運行，無需雲端服務

## 是什麼

Flamehaven Filesearch 是由 flamehaven01 開發的開源自架式 RAG 搜尋引擎。它支援 34 種文件格式的解析和索引，結合 BM25 關鍵字搜尋與語意搜尋的混合架構，讓使用者可以在自己的環境中部署完整的文件搜尋與問答系統。

核心理念：企業和個人都需要對自己的文件進行智慧搜尋，但不想把資料送到雲端。Filesearch 讓你在本機就能跑起一個完整的 RAG 搜尋引擎。

## 核心特色

- **34 種文件格式**：支援 PDF、DOCX、PPTX、XLSX、圖片等 34 種常見文件格式
- **BM25 + 混合搜尋**：關鍵字搜尋與語意搜尋融合，兼顧精確度和語意理解
- **自架式部署**：Docker 一鍵部署，資料不離開本機
- **文件解析管線**：內建完整的文件解析、分塊、索引流程
- **REST API**：標準 HTTP 介面，方便整合到現有系統

## 怎麼用

```bash
# Docker 部署
docker run -p 8080:8080 flamehaven/filesearch

# 索引文件
curl -X POST http://localhost:8080/index \
  -F "path=./documents"

# 搜尋
curl http://localhost:8080/search?q=Flash+Attention

# 問答
curl http://localhost:8080/query?q=什麼是RAG
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[qmd\|QMD]] | 本地混合搜尋引擎 | QMD 側重 CLI 個人知識庫，Filesearch 側重企業文件搜尋 |
| [[ragflow]] | 開源 RAG 引擎 | 同為 RAG 引擎，ragflow 功能更完整 |
| [[LeDat98-NexusRAG]] | 混合式 RAG | NexusRAG 側重知識圖譜，Filesearch 側重文件格式支援 |
| [[microsoft-markitdown]] | 文件轉 Markdown | MarkItDown 只做轉換，Filesearch 做完整搜尋管線 |

## 相關概念

← [[rag]] · [[document-parsing]] · [[qmd]]

## 來源

- GitHub: https://github.com/flamehaven01/Flamehaven-Filesearch
- Stars: ⭐100
- 收錄日期: 2026-05-09
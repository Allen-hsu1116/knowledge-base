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

- **34 種文件格式**：支援 PDF、DOCX、PPTX、XLSX、圖片等 34 種常見文件格式，涵蓋辦公文件和多媒體
- **BM25 + 混合搜尋**：關鍵字搜尋與語意搜尋融合，兼顧精確度和語意理解，避免純向量搜尋的遺漏問題
- **自架式部署**：Docker 一鍵部署，資料不離開本機，適合隱私敏感場景
- **文件解析管線**：內建完整的文件解析、分塊、索引流程，從上傳到搜尋一條龍
- **REST API**：標準 HTTP 介面，方便整合到現有系統
- **問答模式**：除了搜尋，還支援 RAG 問答模式，直接從文件中生成答案
- **即時索引**：文件上傳後自動解析和索引，支援增量更新

## 怎麼用

```bash
# Docker 部署（最簡單）
docker run -p 8080:8080 flamehaven/filesearch

# 索引文件目錄
curl -X POST http://localhost:8080/index \
  -F "path=./documents"

# 關鍵字搜尋
curl http://localhost:8080/search?q=Flash+Attention

# RAG 問答
curl http://localhost:8080/query?q=什麼是RAG

# 查看索引狀態
curl http://localhost:8080/status
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[qmd|QMD]] | 本地混合搜尋引擎 | QMD 側重 CLI 個人知識庫，Filesearch 側重企業文件搜尋 |
| [[ragflow]] | 開源 RAG 引擎 | 同為 RAG 引擎，ragflow 功能更完整、社群更大 |
| [[LeDat98-NexusRAG]] | 混合式 RAG | NexusRAG 側重知識圖譜，Filesearch 側重文件格式支援 |
| [[microsoft-markitdown]] | 文件轉 Markdown | MarkItDown 只做轉換，Filesearch 做完整搜尋管線 |
| [[cocoindex]] | 資料索引管線 | cocoindex 側重索引管線框架，Filesearch 是完整搜尋引擎 |

## 適用場景

- 企業內部知識庫搜尋（合約、規範、報告）
- 法律文件檢索（判決書、法規、訴訟文件）
- 學術論文搜尋與問答
- 個人知識管理（Markdown、PDF 筆記）

## 相關概念

← [[rag]] · [[document-parsing]] · [[qmd]]

## 來源

- GitHub: https://github.com/flamehaven01/Flamehaven-Filesearch
- Stars: ⭐100
- 收錄日期: 2026-05-09
---
title: Knowledge Graph（知識圖譜）
slug: Knowledge-Graph
language: zh-TW
---

# Knowledge Graph（知識圖譜）

> 知識圖譜以圖結構組織資訊，將實體（節點）與關係（邊）連結，讓機器能以結構化方式理解與檢索知識。比 flat RAG 更有結構性，比純文件搜尋更精準。

## 核心內容

知識圖譜是一種以圖結構組織資訊的方式。每個概念是節點（Node），概念之間的關係是邊（Edge）。比 flat 文件或向量搜尋更能保留結構和語意，讓機器能沿邊推理，而非僅靠語意相似度匹配。

知識圖譜比 flat RAG 更好的原因在於結構性優勢：flat RAG 只有局部片段的語意相似度匹配，而知識圖譜能看見整體結構、能沿邊推理、Token 效率更高（建好圖後可重複使用，不需每次重新讀取原始文件）。節點類型分為 EXTRACTED（從文件直接提取）、INFERRED（由 LLM 推斷）、AMBIGUOUS（不確定的關係）。

關鍵概念包括社群偵測（用 Leiden 演算法自動將相關節點分群）、God Nodes（連接度最高的概念節點，通常是理解知識體系的關鍵入口）、持久化查詢（建好圖後可反覆使用）。知識圖譜與 RAG 結合形成 GraphRAG，沿語義關聯路徑檢索，是 RAG 的進化形態。

## 關鍵要素

- **節點與邊**：實體是節點，關係是邊，保留知識的結構和語意
- **社群偵測**：Leiden 演算法自動將相關節點分群，發現知識群組
- **God Nodes**：連接度最高的概念節點，是理解整個知識體系的關鍵入口
- **持久化查詢**：建好圖後可反覆使用，不需重新讀取原始文件
- **GraphRAG**：知識圖譜 + RAG 結合，沿語義關聯路徑檢索，比 flat RAG 更精準

## 各框架的做法

- **graphify** → 一行指令把任意資料夾轉成知識圖譜，輸出互動式 HTML / Obsidian / Neo4j
  👉 詳見 [[safishamsi-graphify]]
- **Cognee** → AI 記憶平台，知識圖譜 + 向量搜尋 + 認知科學本體
  👉 詳見 [[topoteretes-cognee|Cognee]]
- **Codebase Memory MCP** → 程式碼知識圖譜，tree-sitter 解析 158 語言
  👉 詳見 [[DeusData-codebase-memory-mcp|Codebase Memory MCP]]
- **Understand Anything** → 程式碼知識圖譜，Tree-sitter + LLM，17+ 平台
  👉 詳見 [[Understand-Anything]]
- **CodeGraph** → 程式碼知識圖譜 + MCP 整合
  👉 詳見 [[colbymchenry-codegraph|CodeGraph]]

## 相關概念

- [[Context-Database]] — 知識圖譜是 context 組織的一種方式
- [[LLM]] — 知識圖譜是 RAG 的進化形態，讓 LLM 更精準檢索
- [[llm-knowledge-base]] — 雙層結構（概念頁+專案頁）本質是一種輕量級知識圖譜
- [[rag]] — GraphRAG = Knowledge Graph + RAG
- [[code-intelligence]] — 用知識圖譜和語意分析加速程式碼理解
- [[Token-Optimization]] — 知識圖譜可達 71.5x token 縮減

## 來源
- GraphRAG / Microsoft Research 等知識圖譜相關研究
- 知識庫內知識圖譜相關專案頁面
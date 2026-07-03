---
title: GraphRAG
slug: GraphRAG
language: zh-TW
---

# GraphRAG

> Knowledge Graph + RAG 的結合——用圖結構組織實體關係，讓 RAG 檢索沿著語義關聯路徑發現隱含資訊。

## 核心內容

GraphRAG（Graph Retrieval-Augmented Generation）是將知識圖譜（Knowledge Graph）與檢索增強生成（RAG）結合的技術架構。傳統 RAG 依賴向量相似度檢索，只能找到語義相近的文字片段；GraphRAG 則在此基礎上加入圖結構，讓檢索能沿著實體關係邊走語義關聯路徑，從而獲得更精確、更完整的上下文。

傳統 RAG 面臨三大挑戰：語義近似不等於邏輯相關（向量接近不代表有因果或層級關係）、碎片化檢索（只取 top-k 片段可能遺漏關鍵上下文）、缺乏全局視角（純文字檢索無法理解實體間的結構性關聯）。GraphRAG 透過實體抽取、關係建構、圖結構索引和多跳檢索來解決這些問題。

GraphRAG 的流程從原始文件開始：實體抽取 → 關係建構 → 知識圖譜建構。查詢時透過意圖解析和圖檢索（多跳）組裝上下文，再由 LLM 生成回答。知識圖譜可增量更新，不需重建整個索引。社群偵測摘要技術能對圖進行社群分割，自動產生每個社群的摘要，實現全局理解。

## 關鍵要素

- **結構化知識組織**：將非結構化文件轉為結構化知識圖譜，實體和關係一目了然
- **多跳推理檢索**：不只找相似文字，還能沿著關係路徑發現隱含資訊
- **社群偵測摘要**：對圖進行社群分割，自動產生每個社群的摘要，實現全局理解
- **更精確的答案生成**：結合局部檢索和全局摘要，減少幻覺和遺漏
- **支援動態更新**：知識圖譜可增量更新，不需重建整個索引

## 各框架的做法

- **MiroFish** → 用 GraphRAG 從種子文件自動建構實體關係圖，注入 Agent 集體記憶進行社會模擬
  👉 詳見 [[666ghj-MiroFish|MiroFish]]
- **Graphify** → Knowledge Graph + RAG + MCP，將文件轉為知識圖譜進行 GraphRAG 檢索
  👉 詳見 [[safishamsi-graphify|Graphify]]
- **Cognee** → AI 記憶平台，結合知識圖譜和向量搜尋，支援 Agent 跨 session 記憶
  👉 詳見 [[topoteretes-cognee|Cognee]]
- **NexusRAG** → RAG + Knowledge Graph，結合圖結構與文件解析進行檢索
  👉 詳見 [[LeDat98-NexusRAG|NexusRAG]]
- **LeDat98-NexusRAG** → Knowledge Graph 整合 RAG 的文件檢索系統
  👉 詳見 [[LeDat98-NexusRAG|NexusRAG]]

## 相關概念

- [[rag|RAG]] — GraphRAG 是 RAG 加入圖結構的進化形式
- [[Knowledge-Graph|知識圖譜]] — 知識圖譜是 GraphRAG 的結構基礎
- [[AI-Agent|模擬]] — GraphRAG 為社會模擬提供建圖基礎
- [[hichunk|HiChunk]] — 階層式分塊為 GraphRAG 提供更高品質輸入
- [[document-parsing|文件解析]] — 文件解析是 GraphRAG 的資料前處理步驟
- [[AI-Agent|AI Agent]] — Agent 可用 GraphRAG 增強推理和記憶能力

## 來源

- MiroFish、Graphify、Cognee 等 GraphRAG 相關專案文件
- Microsoft Research: GraphRAG 相關論文與研究
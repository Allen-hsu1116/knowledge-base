---
title: Context Database
slug: Context-Database
created: 2026-05-03
updated: 2026-08-22
language: zh-TW
---

# Context Database

> Context Database 是專為 AI Agent 設計的上下文管理範式，以分層結構統一管理 Agent 所需的記憶、資源和技能，解決傳統 RAG 碎片化、檢索效果差、不可觀察的問題。

## 核心內容

Context Database 是專為 AI Agent 設計的上下文管理範式，核心創新是像管理本地檔案一樣管理上下文。不同於傳統 RAG 的 flat 向量搜尋，Context Database 採用分層結構——按需載入、精確控制 token 消耗、支援可觀察的檢索軌跡，讓 Agent 的記憶、資源和技能統一管理。

Context Database 解決了 AI Agent 開發的五大上下文挑戰：碎片化（記憶散落各處）、需求暴增（長期任務產生大量上下文）、檢索效果差（flat 向量搜尋缺乏全局視角）、不可觀察（隱式檢索鏈像黑盒子）、記憶迭代有限（只有使用者互動記錄）。透過分層載入和結構化目錄，Context Database 實現了精確的 token 控制和可追蹤的檢索流程。

分層載入是 Context Database 的核心策略：L0 永遠載入（系統提示、角色設定）——固定 token 開銷；L1 按需載入（當前對話、最近任務）——中等 token 開銷；L2 搜尋載入（歷史記憶、資源索引）——按需 token 開銷。這種分層方式讓 Agent 在不同場景下精確控制 context 長度，避免一次性塞入所有資訊。

## 關鍵要素

- **分層載入（Tiered Loading）**：L0 永遠載入、L1 按需載入、L2 搜尋載入，精確控制 token 消耗
- **統一管理**：記憶、資源、技能統一在一個結構中，告別記憶在程式碼、資源在向量庫、技能散落各處的碎片化
- **目錄遞迴檢索**：先定位目錄再語意搜尋的雙重篩選，比 flat 向量搜尋更精準
- **可觀察性**：每次檢索都有視覺化軌跡，可以追蹤為什麼載入某段上下文，出錯時可以除錯
- **記憶迭代**：不只記錄使用者互動，也從任務執行中累積學習

## 各框架的做法

- **OpenViking** → 字節跳動開源，檔案系統範式 + L0/L1/L2 分層載入 + 目錄遞迴檢索
  👉 詳見 [[volcengine-OpenViking]]
- **Mem0** → AI Agent 記憶層，向量搜尋 + RAG，SOTA 記憶管理
  👉 詳見 [[mem0ai-mem0|Mem0]]
- **Cognee** → AI 記憶平台，知識圖譜 + 向量搜尋 + 認知科學本體，Agent 跨 session 記憶
  👉 詳見 [[topoteretes-cognee|Cognee]]
- **Supermemory** → AI 記憶引擎，使用者畫像 + RAG + MCP
  👉 詳見 [[supermemoryai-supermemory|Supermemory]]
- **Basic Memory** → AI 記憶 + Markdown + 知識圖譜 + 語意搜尋
  👉 詳見 [[basicmachines-co-basic-memory|Basic Memory]]
- **CocoIndex** → 增量索引引擎，只索引變更部分，delta-only 最高效率
  👉 詳見 [[cocoindex]]
- **Apache Maka** → 以 append-only Runtime Event Log 保存 evidence，再將 session、UI 與模型 context 投影成不同視圖
  👉 詳見 [[apache-maka|Apache Maka]]

## 相關概念

- [[AI-Agent]] — Agent 需要上下文管理來維持長期記憶
- [[LLM]] — Context Database 管理 LLM 的 context window
- [[Knowledge-Graph]] — 知識圖譜是另一種 context 組織方式
- [[Token-Optimization]] — 分層載入是 Token 優化的核心策略
- [[llm-knowledge-base]] — 編譯式知識管理，raw→wiki 精煉後載入
- [[rag]] — Context Database 是 RAG 的進化形態
- [[apache-maka|Apache Maka]] — 展示「執行記錄不等於推論上下文」的 local-first runtime 設計

## 來源
- 知識庫內 Context Database 相關原始資料與專案頁面
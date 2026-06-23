---
title: MemPalace 使用情境討論
slug: mempalace-usage-discussion
language: zh-TW
---

# MemPalace 使用情境討論

> MemPalace 用三層結構化索引 + 知識圖譜管理對話記憶，設計目標是「對話記憶」而非「文件檢索」，與通用 RAG 有本質差異。

## 核心內容

MemPalace 用三層結構化索引（Wing/Room/Drawer）搭配知識圖譜來管理對話記憶。核心設計理念是不改寫原文——原文逐字存在 Drawer 裡，需要時透過 Wing（人/專案）→ Room（主題）→ Drawer（原文）的層級縮限搜尋範圍，再做語意比對。R@5 能到 96.6% 不需要 LLM。

MemPalace 不能當通用 RAG 替代品，因為它的設計目標是「對話記憶」而非「文件檢索」。它沒有文件解析管線（通用 RAG 要處理 PDF、Word、DB 等），縮限假設太強（跨部門/跨系統分類邊界不清楚），更新策略是 append-only 而非版本更新/過期，規模假設是數千條而非數十萬份文件。

但 MemPalace 的設計思路——結構化索引 + 知識圖譜 + 縮限搜尋——可以改善傳統 RAG。具體建議包括：加結構化索引先縮限搜尋範圍、加知識圖譜先走圖再走向量、不要過度 chunk 保留完整語境、加 reranking 用 LLM 或 cross-encoder 重排。

與編譯式知識庫（raw→wiki）的關係是互補：MemPalace 負責精準找到原文（記憶層），知識庫負責概念整理和交叉連結（編譯層），兩層互補。

## 關鍵要素

- **三層結構化索引**：Wing（人/專案）→ Room（主題）→ Drawer（原文），比 flat vector search 精準
- **知識圖譜帶時間**：時序性實體關係圖，支援有效期間（validity windows），底層 SQLite
- **混合搜尋策略**：先縮限到相關 Wing/Room，再在 Drawer 裡做語意比對，R@5 達 96.6%
- **不改寫原文**：與編譯式知識庫互補——MemPalace 負責精準檢索，知識庫負責概念提煉
- **不適合通用 RAG**：設計目標是對話記憶，沒有文件解析管線，規模假設不同

## 各框架的做法

- **MemPalace** → 三層宮殿索引 + 時序知識圖譜，append-only 對話記憶
  👉 詳見 [[MemPalace-mempalace]]
- **編譯式知識庫** → raw→wiki 的概念提煉，lint 回饋迴圈持續改進
  👉 詳見 [[llm-knowledge-base]]
- **Project Golem** → lancedb-pro 向量記憶，另一種記憶持久化方案
  👉 詳見 [[project-golem]]
- **HiChunk** → 階層式文件分塊，階層概念跟 MemPalace 的三層結構相似
  👉 詳見 [[hichunk]]
- **RAG** → 傳統 flat chunk 搜尋，可從 MemPalace 借鏡結構化索引改善
  👉 詳見 [[rag]]

## 相關概念

- [[rag]] — MemPalace 的結構化索引可以改善傳統 RAG
- [[Knowledge-Graph]] — MemPalace 的時序性知識圖譜基礎
- [[llm-knowledge-base]] — 編譯式知識庫方法論，與 MemPalace 互補

## 來源

- Discord 乖乖學習吧頻道討論（2026-05-07）
---
source: discord-conversation
date: 2026-05-07
tags: [MemPalace, RAG, memory, knowledge-graph, MCP]
channel: 乖乖學習吧
---

# MemPalace 使用情境討論

> MemPalace 用三層結構化索引 + 知識圖譜，而不是改寫原文。設計目標是「對話記憶」，不是「文件檢索」。

## MemPalace 怎麼建立關係？

### 1. 宮殿結構（Wings → Rooms → Drawers）
- **Wing** = 人或專案
- **Room** = 主題
- **Drawer** = 原文內容（逐字儲存）
- 搜尋時可限定 Wing/Room，比 flat vector search 精準

### 2. 知識圖譜
- 時序性實體關係圖，帶有效期間（validity windows）
- 例如：「A 專案」→ 用了 →「技術 X」→ 從 2026-03 到 2026-05
- 支援 add / query / invalidate / timeline 操作
- 底層 SQLite，不是向量 DB

### 3. 語意搜尋
- 原文存進 ChromaDB 做向量索引
- 搜尋時先縮限到相關 Wing/Room，再在 Drawer 裡做語意比對
- R@5 能到 96.6% 不需要 LLM

## 跟 RAG 的關鍵差異

| | 傳統 RAG | MemPalace |
|---|---|---|
| 結構 | flat chunk | Wing/Room/Drawer 三層 |
| 搜尋 | flat vector search | 先縮限再語意搜尋 |
| 關係 | 丟失 | 知識圖譜帶時間 |
| 精準度 | 雜訊多 | 結構化縮限 |

## 為什麼不能當通用 RAG 替代品

1. **設計目標不同**：為「對話記憶」設計，不是「文件檢索」
2. **沒有文件解析管線**：通用 RAG 要處理 PDF、Word、DB 等
3. **縮限假設太強**：跨部門/跨系統分類邊界不清楚
4. **更新策略不同**：append-only vs 版本更新/過期
5. **規模假設不同**：數千條 vs 數十萬份文件

## 改善 RAG 的建議（從 MemPalace 借鏡）

1. **加結構化索引** — 先根據類型、部門、時間分類，縮限搜尋範圍
2. **加知識圖譜** — 先走圖再走向量
3. **不要過度 chunk** — 原文保留完整語境
4. **加 reranking** — 用 LLM 或 cross-encoder 重排

## 跟我們知識庫的對比

| | MemPalace | 通用 RAG | 我們的知識庫 |
|---|---|---|---|
| 設計目標 | Agent 對話記憶 | 任意文件檢索 | raw→wiki 概念整理 |
| 資料來源 | 對話紀錄、程式碼 | PDF/Word/DB/API | URL、文字素材 |
| 結構假設 | 人→主題→原文 | 彈性 metadata schema | raw→wiki→schema 三層 |
| 更新模式 | append-only | 版本更新、過期淘汰 | compile 更新、lint 維護 |
| 規模 | 數千條 | 數十萬份文件 | 數十到數百篇 |

改善 RAG 更值得參考的是 MemPalace 的**設計思路**（結構化索引 + 知識圖譜 + 縮限搜尋），或者把 MemPalace 當記憶層，另外搭文件 RAG 層，兩層互補。

## 相關主題

- [[MemPalace-mempalace|MemPalace 專案]]
- [[rag|RAG 概念]]
- [[Knowledge-Graph|知識圖譜]]

## 參考資料

- Discord 乖乖學習吧頻道討論
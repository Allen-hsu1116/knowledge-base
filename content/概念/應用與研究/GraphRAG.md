---
title: GraphRAG
slug: GraphRAG
updated: 2026-06-14
language: zh-TW
---

# GraphRAG

> ⭐— · Knowledge Graph + RAG 的結合——用圖結構組織實體關係，讓 RAG 檢索不只是向量相似度，還能沿著圖邊走語義關聯路徑。

## 快速導航

- ⚡ [[Knowledge-Graph]] · [[rag]] · [[simulation]] · [[hichunk]]
- 🕸️ **MiroFish** → [[666ghj-MiroFish]]（用 GraphRAG 建構實體關係圖）
- 🔍 **RAG** → [[rag]]（GraphRAG 是 RAG 的進化形式）
- 📊 **HiChunk** → [[hichunk]]（階層式分塊是 GraphRAG 的前處理技術）

## 是什麼

GraphRAG（Graph Retrieval-Augmented Generation）是將知識圖譜（Knowledge Graph）與檢索增強生成（RAG）結合的技術架構。傳統 RAG 依賴向量相似度檢索，只能找到語義相近的文字片段；GraphRAG 則在此基礎上加入圖結構，讓檢索能沿著實體關係邊（edge）走語義關聯路徑，從而獲得更精確、更完整的上下文。

### 核心問題

傳統 RAG 面臨的三大挑戰，GraphRAG 試圖解決：

1. **語義近似 ≠ 邏輯相關**：向量接近不代表有因果或層級關係
2. **碎片化檢索**：只取 top-k 片段，可能遺漏關鍵上下文
3. **缺乏全局視角**：純文字檢索無法理解實體間的結構性關聯

### GraphRAG 的解法

- **實體抽取**：從文件中自動識別實體（人、組織、概念、事件）
- **關係建構**：建立實體間的語義邊（belongs_to、causes、relates_to）
- **圖結構索引**：將知識圖譜作為檢索的結構化索引
- **多跳檢索**：沿著圖邊跳轉，找到向量搜索無法發現的隱含關聯

## 核心特色

- **結構化知識組織**：將非結構化文件轉為結構化知識圖譜，實體和關係一目了然
- **多跳推理檢索**：不只找相似文字，還能沿著關係路徑發現隱含資訊
- **社群偵測摘要**：對圖進行社群分割，自動產生每個社群的摘要，實現全局理解
- **更精確的答案生成**：結合局部檢索和全局摘要，減少幻覺和遺漏
- **支援動態更新**：知識圖譜可增量更新，不需重建整個索引

## 怎麼用

### 基本 GraphRAG 流程

```
原始文件 → 實體抽取 → 關係建構 → 知識圖譜
                                      ↓
查詢問題 → 意圖解析 → 圖檢索（多跳） → 上下文組裝 → LLM 生成回答
```

### 使用場景

- **社會模擬**：MiroFish 從種子文件自動建構實體關係圖，為模擬 Agent 提供集體記憶
- **企業知識庫**：將公司文件、報告、郵件轉為知識圖譜，支援智能問答
- **學術研究**：從論文中抽取概念關係，建立研究領域知識網絡
- **金融分析**：從新聞和報告中抽取公司、事件、影響關係

### HiChunk 結合

GraphRAG 的前置步驟是文件分塊（chunking）。[[hichunk|HiChunk]] 的階層式分塊方法可保留文件結構，為 GraphRAG 提供更高品質的輸入：

```
文件 → HiChunk 階層式分塊 → 實體抽取 → 知識圖譜 → GraphRAG 檢索
```

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[rag]] | 進化 | GraphRAG 是 RAG 加入圖結構的進化形式 |
| [[Knowledge-Graph]] | 基礎 | 知識圖譜是 GraphRAG 的結構基礎 |
| [[simulation]] | 應用 | GraphRAG 為社會模擬提供建圖基礎 |
| [[hichunk]] | 前處理 | 階層式分塊為 GraphRAG 提更高品質輸入 |
| [[document-parsing]] | 上游 | 文件解析是 GraphRAG 的資料前處理步驟 |
| [[AI-Agent]] | 整合 | Agent 可用 GraphRAG 增強推理和記憶能力 |

## 相關專案

- [[666ghj-MiroFish|MiroFish]] — 用 GraphRAG 從種子文件自動建構實體關係圖，注入 Agent 集體記憶

## 相關概念

← [[Knowledge-Graph]] · [[rag]] · [[simulation]] · [[hichunk]] · [[document-parsing]] · [[AI-Agent]]

## 來源

- [MiroFish 專案文件](../raw/2026-05-25-666ghj-MiroFish.md)
- [HiChunk 階層式分塊](../raw/2026-05-13-hichunk.md)
- Microsoft Research: GraphRAG: Unlocking LLM Discovery on Complex Data

---

_此頁由 daily-llm-trending 自動維護_
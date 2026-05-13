---
title: HiChunk
---

# HiChunk 階層式文件分塊框架

> 用微調 LLM 做多層級文件結構化，結合 Auto-Merge 檢索演算法，解決 RAG 中 chunking 造成的不完整資訊問題。— 騰訊優圖實驗室

## 快速導航
- 🔍 **RAG** → [[rag|RAG]]: HiChunk 是 RAG 系統中 chunking 環節的改進
- 📄 **文件解析** → [[document-parsing|文件解析]]: 文件結構化是 chunking 的前一步
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]: 階層式結構與知識圖譜有概念關聯

## 是什麼

HiChunk 是騰訊優圖實驗室提出的 RAG 文件分塊框架，包含兩個核心貢獻：

1. **HiCBench**：專門評估 chunking 品質的基準測試，解決現有 RAG 基準因 evidence sparsity 無法準確評估的問題
2. **HiChunk 框架**：基於微調 LLM 的多層級文件結構化，結合 Auto-Merge 檢索演算法，動態調整檢索片段的語義粒度

## 為什麼重要

RAG 系統中，document chunking 是把長文件切成可檢索片段的關鍵步驟。傳統做法（固定大小切、語義切）各有缺陷：
- 固定大小切可能切斷語義完整段落
- 純語義切缺乏層級結構，無法調整檢索粒度

HiChunk 用 **階層式分塊**（每個 chunk 帶 level 標記）+ **Auto-Merge**（動態合併相關片段）解決這個問題。

## 核心概念

### 階層式分塊（Hierarchical Chunking）
每個 chunk 帶有 level 標記，表示在文件階層中的位置。例如 level 1 是大章節，level 2 是小節，level 3 是段落。檢索時可以根據需要動態調整粒度。

### Auto-Merge 檢索
找到小粒度 chunk 後，可以自動往上合併到更大粒度的片段，確保檢索結果的資訊完整性。

### HiCBench 評估基準
- 基於 OHRBench 選取高品質文件
- 手動標註多層級分塊點
- 合成 evidence-dense QA 對，比其他基準更能評估 chunking 品質

## 支援的分塊方法

| 方法 | 代號 | 說明 |
|------|------|------|
| Fixed Chunking | C | 固定大小分塊 |
| SemanticChunk | SC | 語義分塊 |
| LumberChunk | LC | 用 LLM 判斷分塊邊界 |
| HiChunk | HC | 階層式分塊 + Auto-Merge |

## 專案資訊

- **GitHub**: https://github.com/TencentCloudADP/hichunk
- **Stars**: 96
- **語言**: Python
- **論文**: arXiv:2509.11552
- **作者**: Wensheng Lu et al., Tencent Youtu Lab

## 與相關主題的連結

- [[rag|RAG]] — HiChunk 改進的是 RAG pipeline 中的 chunking 環節
- [[document-parsing|文件解析]] — 文件結構化是 chunking 的前置步驟
- [[Knowledge-Graph]] — 階層式結構與知識圖譜有概念關聯
- [[cocoindex]] — 增量索引，另一種 RAG pipeline 優化方式
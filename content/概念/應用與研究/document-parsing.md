---
title: 文件解析（Document Parsing）
created: 2026-05-09
---

# 文件解析（Document Parsing）

> 將 PDF、DOCX、圖片等非結構化文件轉為結構化資料，讓 AI Agent 能可靠理解與使用。

## 概述

文件解析是 RAG 和 AI Agent 工作流的關鍵第一步。品質不佳的解析會導致表格合併格錯位、圖表數值遺失、格式語義（如刪除線表示過時內容）消失，直接影響 Agent 的每一步推理。

## 核心挑戰

- **表格結構保真**：合併格、多層表頭容易錯位，Agent 可能讀到錯誤欄位
- **圖表資料提取**：多數解析器只回傳原始文字，無法提取精確數值
- **格式語義保留**：刪除線（過時）、粗體（定義詞）、上標/下標（註腳、公式）都有語義
- **閱讀順序**：多欄排版、頁首頁尾的排序邏輯
- **視覺定位**：將提取內容追溯回頁面上的原始位置

## 解析管線

```
輸入文件 → 文件載入 → 佈局分析 → 內容提取 → 結構化輸出
   │          │          │          │          │
  PDF      PyMuPDF   視覺模型   OCR+表格   Markdown/
  DOCX     docling   閱讀順序   圖表數值   JSON/
  圖片     markitdown  區塊偵測  格式語義    LLM-ready
```

## 品質評估五維度（ParseBench）

1. **表格保真度**：合併格、多層表頭是否正確
2. **圖表數值**：能否提取精確數值
3. **內容忠實度**：文字是否完整、正確
4. **格式語義**：刪除線、粗體等是否保留
5. **視覺定位**：能否追溯回頁面位置

## 相關專案

| 專案 | 說明 | Stars |
|------|------|-------|
| [[run-llama-ParseBench]] | 文件解析基準測試，五維度評測（表格、圖表、內容忠實度、語義格式、視覺定位） | ⭐468 |
| [[docling]] | IBM 開源文件解析庫，支援多格式 | ⭐59k |
| [[microsoft-markitdown]] | 微軟 Markdown 轉換工具 | ⭐120k |
| [[aiptimizer-TurboOCR]] | GPU 加速 OCR 伺服器，270img/s TensorRT FP16 | ⭐264 |
| [[pymupdf4llm]] | PyMuPDF 的 LLM 友善封裝 | ⭐1.6k |
| [[flamehaven01-Flamehaven-Filesearch]] | 自架式 RAG 搜尋引擎，34 格式解析 | ⭐100 |
| [[Crawl4AI]] | LLM 友善網頁爬蟲，網頁→Markdown | ⭐65.3k |

## 相關概念

- [[rag]] — 檢索增強生成
- [[ocr-memory]] — OCR 記憶壓縮
- [[AI-Agent]] — AI Agent
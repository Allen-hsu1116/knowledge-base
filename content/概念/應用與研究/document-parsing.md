---
title: 文件解析
slug: document-parsing
language: zh-TW
---

# 文件解析

> 將 PDF、DOCX、圖片等非結構化文件轉為結構化資料，是 RAG 和知識庫管線的關鍵第一步。

## 核心內容

文件解析（Document Parsing）是將 PDF、DOCX、圖片、HTML 等非結構化或半結構化文件，轉換為結構化、機器可讀格式的技術。在 AI 應用中，解析品質直接影響下游的每一步——從 RAG 檢索到 Agent 推理。

品質不佳的解析會導致表格合併格錯位、圖表數值遺失、格式語義（如刪除線表示過時內容）消失，這些錯誤會沿著 AI 管線一路放大。因此文件解析被視為 RAG 和 AI Agent 工作流的關鍵第一步，上游解析品質決定了下游的整體表現。

解析管線通常包含：文件載入（PyMuPDF、docling）、佈局分析（視覺模型判讀閱讀順序）、內容提取（OCR + 表格 + 圖表數值）、結構化輸出（Markdown、JSON、LLM-ready 格式）。高品質解析器能正確保留表格結構（合併儲存格、嵌套表頭）、從圖表中提取數值資料、保留格式語義標記，並將提取內容追溯回頁面上的原始位置。

## 關鍵要素

- **表格結構保真** — 合併格、多層表頭正確保留，避免欄位錯位
- **圖表資料提取** — 從視覺化圖表中提取精確數值，轉為機器可讀格式
- **格式語義保留** — 刪除線（過時）、粗體（定義詞）、上標/下標等語義標記
- **閱讀順序還原** — 透過佈局分析還原多欄排版、頁首頁尾的正確閱讀順序
- **視覺定位追溯** — 將提取內容映射回頁面位置，支援引用和驗證
- **品質評估** — ParseBench 五維度：表格保真、圖表數值、內容忠實、格式語義、視覺定位

## 各框架的做法

- **Docling** → IBM 開源文件解析庫，支援多格式、表格保真、圖表數值提取
  👉 詳見 [[docling]]
- **markitdown** → 微軟文件轉 Markdown 工具，支援多種格式快速轉換
  👉 詳見 [[microsoft-markitdown]]
- **PaddleOCR** → OCR 引擎，80k+ Stars，LLM-Ready 文件解析
  👉 詳見 [[PaddlePaddle-PaddleOCR]]
- **LiteParse** → Rust 文件解析，輕量高效的 PDF + OCR
  👉 詳見 [[run-llama-liteparse]]
- **OpenDataLoader PDF** → PDF 解析 + OCR + Bounding Box + 無障礙
  👉 詳見 [[opendataloader-project-opendataloader-pdf]]
- **ParseBench** → 文件解析基準測試，五維度品質評估
  👉 詳見 [[run-llama-ParseBench]]

## 相關概念

- [[rag]] — 文件解析是 RAG 管線的前置步驟
- [[hichunk]] — 解析後的文件需要分塊策略
- [[AI-Agent]] — Agent 需要可靠的文件輸入才能正確推理
- [[Knowledge-Graph]] — 解析後的實體和關係可建構知識圖譜
- [[cocoindex]] — 增量索引管理解析資料的更新

## 來源

- Docling、markitdown、PaddleOCR 等專案頁面
- ParseBench 文件解析基準測試
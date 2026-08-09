---
title: pdf-inspector
slug: firecrawl-pdf-inspector
created: 2026-08-06
updated: 2026-08-06
stars: 11460
language: Rust
topics:
  - pdf
  - pdf-classification
  - pdf-extraction
  - pdf-parser
  - ocr-routing
  - markdown
  - rust
  - text-extraction
---

# pdf-inspector

> ⭐11.5k · 高速 Rust PDF 解析庫 — 智慧分類 + 位置感知文字擷取 + Markdown 轉換，無需 OCR，200ms 處理文字型 PDF

## 快速導航

- 🧠 [[document-parsing\|文件解析]] — pdf-inspector 是文件解析生態的重要一員
- 🛠 [[rag\|RAG]] — 產出的 Markdown 直接可做 RAG embedding
- 🔗 [[firecrawl-firecrawl\|Firecrawl]] — 同一團隊的網頁爬蟲旗艦產品

## 是什麼

pdf-inspector 是 Firecrawl 團隊打造的 Rust PDF 解析庫，解決一個核心問題：約 54% 的 PDF 是文字型的，根本不需要昂貴的 OCR 服務。它能在 10-50ms 內分類 PDF 是 TextBased、Scanned、ImageBased 還是 Mixed，然後只對需要 OCR 的部分路由到 OCR，文字型的直接本地解析——整體在 200ms 內完成。

這個智慧路由策略讓大規模文件處理管線的成本大幅降低。在 opendataloader-bench 200 PDF 評測中，pdf-inspector 以 0.875 總分和 0.47 秒完成時間領先 liteparse、opendataloader、pymupdf4llm 和 markitdown，特別在表格擷取（TEDS 0.814）和閱讀順序（NID 0.915）上表現突出。

除了核心 Rust 庫，還提供 Python（PyO3）、Node.js（NAPI）、瀏覽器 WebAssembly 和 CLI 綁定，覆蓋幾乎所有使用場景。架構上分為 detector（分類）和 extractor（擷取），共用一次文件載入避免重複 I/O。

## 核心特色

- **智慧分類**：採樣 content stream 在 10-50ms 分類 PDF 類型，回傳信心分數（0.0-1.0）和逐頁 OCR 路由建議
- **位置感知文字擷取**：保留字型資訊、X/Y 座標、自動多欄閱讀順序
- **Markdown 轉換**：標題（H1-H4 透過字型大小比）、列表、程式碼區塊（等寬字型偵測）、表格、粗體/斜體、URL 連結、分頁標記
- **雙模式表格偵測**：rectangle-based（從 PDF 繪圖運算偵測）+ heuristic（從文字對齊推斷），處理財務表格、註腳和跨頁表格
- **CID 字型支援**：ToUnicode CMap 解碼 Type0/Identity-H 字型，UTF-16BE/UTF-8/Latin-1 編碼
- **編碼問題偵測**：自動標記損壞的字型編碼，讓呼叫端知道要 fallback 到 OCR
- **瀏覽器 WebAssembly**：同一個 Rust 解析器在瀏覽器和 Web Worker 中本地執行，嵌入 CMaps，無需伺服器往返
- **輕量純 Rust**：無 ML 模型、無外部服務，唯一依賴是 `lopdf`

## 怎麼用

**Python**：

```bash
pip install maturin
maturin develop --release
```

```python
import pdf_inspector

result = pdf_inspector.process_pdf("document.pdf")
print(result.pdf_type)   # "text_based", "scanned", "image_based", "mixed"
print(result.markdown)   # Markdown string or None
```

**Node.js**：

```bash
npm install @firecrawl/pdf-inspector
```

```javascript
import { readFileSync } from 'fs';
import { processPdf, classifyPdf } from '@firecrawl/pdf-inspector';

const result = processPdf(readFileSync('document.pdf'));
console.log(result.pdfType);   // "TextBased", "Scanned", "ImageBased", "Mixed"
console.log(result.markdown);  // Markdown string or null
```

**Rust**：

```bash
cargo add pdf-inspector
```

**CLI**：

```bash
pdf2md document.pdf              # PDF → Markdown
pdf2md document.pdf --json       # JSON 輸出
detect-pdf document.pdf --json   # 只做分類
```

## 跟其他方案的關係

| 特色 | pdf-inspector | [[run-llama-liteparse\|LiteParse]] | [[opendataloader-project-opendataloader-pdf\|OpenDataLoader]] | [[pymupdf4llm]] | [[microsoft-markitdown\|MarkItDown]] |
|---|---|---|---|---|---|
| 語言 | Rust | Rust | Python | Python | Python |
| Overall 分數 | 0.875 | 0.873 | 0.831 | 0.735 | 0.589 |
| 表格 (TEDS) | 0.814 | 0.693 | 0.489 | 0.401 | 0.273 |
| 速度 (200 docs) | 0.47s | 0.75s | 2.57s | 17.1s | 16.2s |
| OCR 路由 | ✅ | — | — | — | — |
| 瀏覽器 WASM | ✅ | — | — | — | — |
| 依賴 | lopdf | 多 | 多 | PyMuPDF | 多 |

pdf-inspector 屬於 [[document-parsing\|文件解析]] 生態的純本地、無 OCR 路線。與需要完整 OCR 的方案（如 [[opendatalab-MinerU\|MinerU]]、[[PaddlePaddle-PaddleOCR\|PaddleOCR]]）互補——pdf-inspector 先快速分類，只把需要 OCR 的路由出去。它的 Markdown 輸出可直接用於 [[rag\|RAG]] 管線。

## 相關概念

← [[document-parsing\|文件解析]] · [[rag\|RAG]] · [[firecrawl-firecrawl\|Firecrawl]]

## 來源

- GitHub: https://github.com/firecrawl/pdf-inspector
- 官網: https://firecrawl.github.io/pdf-inspector/
- raw/2026-08-06-firecrawl-pdf-inspector.md

---

| 項目 | 內容 |
|---|---|
| **GitHub** | https://github.com/firecrawl/pdf-inspector |
| **Stars** | ⭐ 11,460 |
| **License** | MIT |
| **Language** | Rust |
| **收錄日期** | 2026-08-06 |
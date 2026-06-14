---
title: LiteParse
slug: run-llama-liteparse
created: 2026-05-30
updated: 2026-05-30
stars: 7302
language: Rust
---

# LiteParse

> ⭐7.3k · LlamaIndex 出品的開源高速文件解析器，Rust 核心、本地運行、支援多語言綁定

快速導航：[[document-parsing|文件解析]] · [[rag|RAG]] · [[docling]]

## 是什麼

LiteParse 是 LlamaIndex 團隊推出的開源文件解析工具，專注於快速且輕量的 PDF 和文件解析。它以 Rust 為核心實現，透過 PDFium 函式庫提取文字，並提供精確的 bounding box（文字定位框）資訊，讓使用者能精確知道每段文字在頁面上的位置。

與 LlamaIndex 的雲端產品 LlamaParse 不同，LiteParse 完全在本地運行，不依賴任何 LLM 或雲端服務。這代表它不會處理複雜的表格理解或多欄版面分析——這些是 LlamaParse 的強項。LiteParse 的定位是「快速、可靠、可自託管的基礎解析」，對於簡單到中等複雜度的文件，它已經足夠好用。

LiteParse 支援 PDF、DOCX、XLSX、PPTX 和圖片格式的輸入，透過 LibreOffice 和 ImageMagick 進行格式轉換，然後以 PDFium 進行文字提取。OCR 部分支援內建 Tesseract 或外接 HTTP OCR 伺服器（EasyOCR、PaddleOCR 等），彈性很高。

## 核心特色

- **Rust 核心高效能**：以 Rust 實現的文字提取引擎，透過 PDFium C 函式庫進行空間文字解析，速度快且記憶體佔用低
- **多語言綁定**：提供 Node.js/TypeScript、Python、Rust 和 WASM 四種語言綁定，以及統一的 `lit` CLI 工具
- **彈性 OCR 系統**：內建 Tesseract（零設定，隨附在函式庫中），也支援透過 HTTP API 接入 EasyOCR、PaddleOCR 等外部 OCR 伺服器
- **Bounding Box 輸出**：精確的文字定位資訊，輸出包含每段文字在頁面上的座標，適合需要版面重建的場景
- **截圖生成**：可為每一頁生成高品質 PNG 截圖，方便 LLM Agent 提取文字無法捕捉的視覺資訊
- **Agent Skill 支援**：提供 `npx skills add run-llama/llamaparse-agent-skills --skill liteparse` 指令，一鍵整合到 Agent 工作流

## 怎麼用

安裝 LiteParse 有多種方式，依你的語言選擇：

**Python**：
```bash
pip install liteparse
```

**Node.js / TypeScript**：
```bash
npm i @llamaindex/liteparse
```

**Rust**：
```bash
cargo install liteparse  # CLI
cargo add liteparse      # 函式庫
```

**瀏覽器（WASM）**：
```bash
npm i @llamaindex/liteparse-wasm
```

基本使用：
```bash
# 解析文件
lit parse document.pdf

# JSON 格式輸出
lit parse document.pdf --format json -o output.json

# 指定頁數
lit parse document.pdf --target-pages "1-5,10,15-20"

# 產生截圖（供 LLM Agent 使用）
lit screenshot document.pdf -o ./screenshots

# 批次處理整個目錄
lit batch-parse ./input-directory ./output-directory
```

## 跟其他方案的關係

| 方案 | Stars | 語言 | 核心差異 | 本地運行 |
|------|-------|------|----------|----------|
| **[[run-llama-liteparse\|LiteParse]]** | ⭐7.3k | Rust | 快速基礎解析，bounding box，多語言綁定 | ✅ |
| [[docling\|Docling]] | ⭐59k | Python | IBM 出品，深度結構化，複雜版面 | ✅ |
| [[microsoft-markitdown\|MarkItDown]] | ⭐121k | Python | 微軟出品，轉 Markdown 為主 | ✅ |
| LlamaParse | ⭐— | SaaS | 雲端服務，支援複雜表格、手寫、掃描件 | ❌ |
| [[pymupdf4llm\|PyMuPDF4LLM]] | ⭐1.7k | Python | 輕量 PDF 轉 Markdown | ✅ |

← [[document-parsing|文件解析]] · [[rag|RAG]] · [[docling]] · [[microsoft-markitdown|MarkItDown]]

## 來源

- GitHub: <https://github.com/run-llama/liteparse>
- 原始 README: `raw/2026-05-30-run-llama-liteparse.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [run-llama/liteparse](https://github.com/run-llama/liteparse) |
| Stars | ⭐7,302 |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-05-30 |
---
title: PyMuPDF4LLM
slug: pymupdf4llm
created: 2026-05-10
updated: 2026-05-10
stars: 1,664
language: zh-TW
topics: [RAG, 文件解析, OCR]
---

# PyMuPDF4LLM

> ⭐1,664 · 一行把 PDF 轉成 LLM 友善的 Markdown/JSON，免 GPU 免雲端。

## 快速導航

- [[docling]] — 文件解析（Docling）
- [[cocoindex]] — 增量索引
- [[microsoft-markitdown]] — 微軟文件轉 Markdown

## 是什麼

pymupdf/pymupdf4llm 是 PyMuPDF 的輕量擴展，把 PDF 和其他文件轉成結構化的 Markdown、JSON 和純文字，專為 RAG 管線、向量嵌入和 LLM 攝取最佳化。底層用 MuPDF C 引擎，不需要 GPU。

## 核心特色

- **三種格式** — `to_markdown()`、`to_json()`、`to_text()` 開箱即用
- **免 GPU 免雲端** — 任何能跑 Python 的機器都能用
- **版面感知** — 多欄版面重建閱讀順序、表格偵測、標題層級對應
- **智慧 OCR** — 只對需要 OCR 的區域做 OCR，比全文件 OCR 快約 50%
- **框架整合** — LlamaIndex 和 LangChain 直接支援
- **頁面分塊** — `page_chunks=True` 輸出帶完整 metadata 的分塊，直接送向量庫
- **成本優勢** — 比視覺 LLM 提取便宜 10–250×
- **Office 支援** — DOCX、XLSX、PPTX、HWP 透過 PyMuPDF Pro 支援

## 怎麼用

```bash
pip install pymupdf4llm
```

```python
import pymupdf4llm

# 基本：PDF → Markdown
md = pymupdf4llm.to_markdown("document.pdf")

# 結構化：PDF → JSON（含 bbox、layout metadata）
data = pymupdf4llm.to_json("document.pdf")

# 分塊：逐頁輸出帶 metadata
chunks = pymupdf4llm.to_markdown("document.pdf", page_chunks=True)

# 強制 OCR（已損壞文字層）
md = pymupdf4llm.to_markdown("document.pdf", force_ocr=True)

# 指定頁面
md = pymupdf4llm.to_markdown("document.pdf", pages=[0, 1, 5])

# LlamaIndex 整合
reader = pymupdf4llm.LlamaMarkdownReader()
docs = reader.load_data("document.pdf")

# LangChain 整合
from langchain_community.document_loaders import PyMuPDFLoader
loader = PyMuPDFLoader("document.pdf")
pages = loader.load()
```

## 跟其他方案的關係

- 與 [[docling]] 定位相近：都是文件→Markdown 轉換，但 PyMuPDF4LLM 底層是 C 引擎速度更快，Docling 用 Python + AI 模型
- 與 [[microsoft-markitdown]] 互補：MarkItDown 支援更多 Office 格式，PyMuPDF4LLM 對 PDF 更深入（詳見下方比較）
- 與 [[cocoindex]] 互補：PyMuPDF4LLM 做文件解析，cocoindex 做增量索引管線
- 與 [[datalab-to-chandra|Chandra]] 對比：Chandra 主打高精確度 OCR，PyMuPDF4LLM 主打速度和成本效率

### PyMuPDF4LLM vs MarkItDown

| | **PyMuPDF4LLM** | **[[microsoft-markitdown|MarkItDown]]** |
|---|---|---|
| **定位** | PDF→LLM 友善格式，版面感知 | 任何格式→Markdown，輕量通用 |
| **底層引擎** | MuPDF C 引擎（快） | 純 Python（輕量） |
| **PDF 深度** | ⭐⭐⭐ 版面重建、多欄、表格、閱讀順序 | ⭐⭐ 基本提取，無版面重建 |
| **OCR** | 智慧混合 OCR（只對需要區域做） | 依賴外部（EXIF + 基本 OCR） |
| **輸出格式** | Markdown / JSON / 純文字 | Markdown |
| **頁面分塊** | ✅ page_chunks 帶完整 metadata | ❌ 無內建分塊 |
| **框架整合** | LlamaIndex + LangChain | MCP Server |
| **格式支援** | PDF 為主，Office 需 Pro | PDF/DOCX/PPTX/XLSX/圖片/音訊/HTML |
| **速度** | 快（C 引擎） | 中等（純 Python） |
| **成本 vs 視覺 LLM** | 便宜 10-250× | 便宜但無此數據 |
| **License** | AGPL-3.0 | MIT |
| **Stars** | ⭐1,664 | ⭐120,637 |

**選擇建議**：
- 只要處理 PDF 且需要版面精確還原 → **PyMuPDF4LLM**
- 需要處理多種格式（Office、音訊、圖片）→ **MarkItDown**
- 兩者可以搭配使用：MarkItDown 處理非 PDF 格式，PyMuPDF4LLM 處理 PDF

## 相關概念

- [[docling]]
- [[cocoindex]]
- [[microsoft-markitdown]]
- [[Knowledge-Graph|Knowledge Graph]]

## 來源

- raw/2026-05-08-pymupdf4llm.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [pymupdf/pymupdf4llm](https://github.com/pymupdf/pymupdf4llm) | ⭐1,664 | AGPL-3.0 | 2026-05-08 |
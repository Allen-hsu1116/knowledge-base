---
title: opendataloader-pdf
slug: opendataloader-project-opendataloader-pdf
created: 2026-06-20
updated: 2026-06-20
stars: 25475
language: Java
topics:
  - PDF Parsing
  - RAG
  - Document Extraction
  - PDF Accessibility
  - PDF/UA
  - OCR
---

# opendataloader-pdf

> ⭐25.5k · Java · Apache-2.0 · PDF 解析器界的 #1，為 AI/RAG 管線而生，還自動生成 Tagged PDF 達成無障礙合規

## 快速導航

- 🤖 [[AI-Agent]] — RAG 是 Agent 的核心能力之一
- 🔍 [[rag|RAG]] — 檢索增強生成概念
- 📄 [[document-parsing|PDF Documents]] — PDF 處理工作流
- 📚 [[llama-index|LlamaIndex]] — RAG 框架整合

## 是什麼

OpenDataLoader PDF 是一個開源 PDF 解析器，專為 AI 資料提取和 PDF 無障礙自動化設計。它在 200 個真實 PDF 的基準測試中拿下 **#1 總體準確率（0.907）**，支援從簡單數位 PDF 到掃描文件、複雜表格、數學公式的全方位提取。

最大亮點：它是**第一個開源端到端 Tagged PDF 自動標記工具**——把無標記 PDF 自動轉成螢幕閱讀器可讀的 Tagged PDF，與 PDF Association 和 Dual Lab（veraPDF 開發者）合作，遵循 Well-Tagged PDF 規範。

## 核心特色

- **#1 基準測試** — 0.907 總體準確率，0.928 表格準確率（hybrid 模式）
- **雙模式架構**：
  - **Fast 模式**（預設）— 純 Java 本地處理，0.015s/page，無需 GPU
  - **Hybrid 模式** — 複雜頁面路由到 AI 後端，表格準確率從 0.489 → 0.928
- **每個元素的邊界框** — JSON 輸出包含 `[left, bottom, right, top]` 座標，可用於 RAG 來源引用
- **XY-Cut++ 閱讀順序** — 處理多欄佈局、科學論文等複雜排版
- **OCR（80+ 語言）** — hybrid 模式內建，支援掃描品質差的 300 DPI+ 文件
- **AI 安全過濾** — 自動偵測並過濾隱藏的 prompt injection（透明文字、零字體、頁外內容）
- **LangChain 整合** — `pip install langchain-opendataloader-pdf`
- **PDF 無障礙自動化** — Auto-tagging 生成 Tagged PDF（Apache 2.0 免費），PDF/UA 導出為企業版
- **多語言 SDK** — Python、Node.js、Java

## 怎麼用

### 安裝

```bash
pip install -U opendataloader-pdf
```

> 需要 Java 11+ 和 Python 3.10+

### 基本用法

```python
import opendataloader_pdf

opendataloader_pdf.convert(
    input_path=["file1.pdf", "file2.pdf", "folder/"],
    output_dir="output/",
    format="markdown,json"
)
```

### Hybrid 模式（複雜 PDF）

```bash
pip install -U "opendataloader-pdf[hybrid]"
opendataloader-pdf-hybrid --port 5002  # 啟動 AI 後端
opendataloader-pdf --hybrid docling-fast file1.pdf file2.pdf folder/
```

### OCR（掃描文件）

```bash
opendataloader-pdf-hybrid --port 5002 --force-ocr --ocr-lang "ch_tra,en"
```

### Tagged PDF（無障礙）

```python
opendataloader_pdf.convert(
    input_path=["file1.pdf"],
    output_dir="output/",
    format="tagged-pdf"
)
```

### 輸出格式

- **JSON** — 結構化資料 + 邊界框 + 語意類型
- **Markdown** — 適合 LLM context 和 RAG chunking
- **HTML** — 網頁展示
- **Tagged PDF** — 無障礙 PDF
- **Text** — 純文字

## 跟其他方案的關係

| 工具 | Overall 準確率 | 表格準確率 | 速度 (s/page) | License |
|------|---------------|-----------|---------------|---------|
| **opendataloader [hybrid]** | **0.907** | **0.928** | 0.463 | Apache-2.0 |
| nutrient | 0.885 | 0.708 | **0.008** | 商業 |
| docling | 0.882 | 0.887 | 0.762 | MIT |
| marker | 0.861 | 0.808 | 53.932 | GPL-3.0 |
| unstructured [hi_res] | 0.841 | 0.588 | 3.008 | Apache-2.0 |
| pymupdf4llm | 0.732 | 0.401 | 0.091 | AGPL-3.0 |
| markitdown | 0.589 | 0.273 | 0.114 | MIT |

**關鍵差異**：opendataloader 是唯一同時具備 #1 準確率、開源、無 GPU 需求、Tagged PDF 自動標記的工具。

## 相關概念

← [[rag|RAG]] · [[AI-Agent]] · [[document-parsing|PDF Documents]] · [[llama-index|LlamaIndex]]

## 來源

- 📦 GitHub：[opendataloader-project/opendataloader-pdf](https://github.com/opendataloader-project/opendataloader-pdf)
- 📁 raw：`raw/2026-06-20-opendataloader-project-opendataloader-pdf.md`
- raw/2026-06-04-opendataloader-project-opendataloader-pdf.md
---

| 項目 | 值 |
|------|-----|
| GitHub | [opendataloader-project/opendataloader-pdf](https://github.com/opendataloader-project/opendataloader-pdf) |
| Stars | ⭐25,475 |
| License | Apache-2.0 |
| 語言 | Java |
| 收錄日期 | 2026-06-20 |
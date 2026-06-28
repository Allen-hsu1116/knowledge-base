---
title: Docling
slug: docling
source: https://github.com/docling-project/docling
date: 2026-05-03
stars: '⭐59878'
updated: 2026-06-14
language: zh-TW
---

# Docling

> ⭐59878 · IBM 開源的文件解析引擎，把 PDF/DOCX/PPTX/XLSX/HTML 等文件轉成結構化資料，讓 LLM 和 RAG 系統可以直接消化。59k ⭐，MIT 授權。

## 快速導航

- 📚 **知識庫上游** → [[llm-knowledge-base]]（Docling 是知識管線的 parsing 層）
- 🏰 **記憶系統** → [[mempalace]]（Docling 解析 → MemPalace 儲存/檢索）
- 🔄 **Agent 工作流** → [[AI-Agent]]（文件解析是 RAG 管線的基礎）

## 是什麼

Docling 解決的是 AI 應用的「上游」問題：在你能讓 LLM 讀懂文件之前，你必須先把文件從各種格式中解析出來。它是 LLM/RAG 知識管線的基礎設施層。支援 PDF（頁面佈局、閱讀順序、表格結構、程式碼、公式、圖片分類）、DOCX、PPTX、XLSX、HTML、圖片、音訊、LaTeX、專業 XML（USPTO 專利、JATS 論文、XBRL 財報）、WebVTT 影音字幕等格式。

## 核心特色

- **DoclingDocument 統一表達** — 所有格式轉成同一種結構（DoclingDocument），一次解析到處通用
- **多種匯出** — 支援 Markdown、HTML、WebVTT、DocTags、lossless JSON，滿足不同下游需求
- **本地執行** — 敏感資料和離線環境也能用，不需上傳到雲端
- **OCR 支援** — 掃描 PDF 和圖片也能解析，不限制輸入品質
- **Visual Language Models** — 支援 GraniteDocling（IBM 258M 參數模型），圖表理解（Bar chart、Pie chart、Line plot 轉成表格或描述）
- **MCP Server** — 讓任何 Agent 透過 MCP 協議使用 Docling，跟 [[AI-Agent]] 生態系無縫整合

## 怎麼用

### 安裝

```bash
pip install docling
```

### Python API

```python
from docling.document_converter import DocumentConverter

source = "https://arxiv.org/pdf/2408.09869"
converter = DocumentConverter()
result = converter.convert(source)
print(result.document.export_to_markdown())
```

### CLI

```bash
# 基本用法
docling https://arxiv.org/pdf/2206.01062

# 使用 VLM 模型
docling --pipeline vlm --vlm-model granite_docling https://arxiv.org/pdf/2206.01062
```

## 跟其他方案的關係

Docling 是 [[llm-knowledge-base]] 和 [[AI-Agent]] 的基礎設施層。沒有好的文件解析，就沒有好的知識庫和 RAG。

跟 [[cocoindex]] 的關係：Docling 負責上游文件解析（PDF→結構化資料），CocoIndex 負責下游增量索引（結構化資料→向量搜尋）。兩者互補，Docling 解析 → CocoIndex 索引。

跟 [[mempalace]] 的「原文逐字儲存」理念互補：Docling 負責解析，MemPalace 負責儲存和檢索。

59k ⭐ 說明這是社群公認的文件解析標準。IBM 開源但社群驅動，不是封閉產品。

## 相關概念

← [[llm-knowledge-base]] · [[mempalace]] · [[AI-Agent]] · [[cocoindex]]

## 來源

- raw/2026-05-03-docling.md

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/docling-project/docling |
| Stars | ⭐59,878 |
| Language | Python |
| 建立日期 | 2024-07-09 |
| 授權 | MIT |
| 收錄日期 | 2026-05-03 |
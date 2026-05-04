---
source: https://github.com/docling-project/docling
date: 2026-05-03
tags: [document-parsing, pdf, rag, mcp, ibm, open-source, python, docling]
---

# Docling

> IBM 開源的文件解析引擎，把 PDF/DOCX/PPTX/XLSX/HTML 等文件轉成結構化資料，讓 LLM 和 RAG 系統可以直接消化。59k ⭐，MIT 授權。

## 核心內容

### 定位
Docling 解決的是 AI 應用的「上游」問題：在你能讓 LLM 讀懂文件之前，你必須先把文件從各種格式中解析出來。它是 LLM/RAG 知識管線的基礎設施層。

### 支援格式
- 📄 PDF（進階：頁面佈局、閱讀順序、表格結構、程式碼、公式、圖片分類）
- 📝 DOCX, PPTX, XLSX, HTML
- 🖼️ 圖片（PNG, TIFF, JPEG...）
- 🎵 WAV, MP3（語音辨識）
- 📜 LaTeX, 純文字, Markdown 超集（.qmd, .Rmd）
- 💼 專業 XML：USPTO 專利、JATS 論文、XBRL 財報
- 🆕 WebVTT 影音字幕

### 核心特色
- **DoclingDocument**：統一表達格式，所有格式轉成同一種結構
- **多種匯出**：Markdown、HTML、WebVTT、DocTags、lossless JSON
- **本地執行**：敏感資料和離線環境也能用
- **OCR 支援**：掃描 PDF 和圖片也能解析
- **Visual Language Models**：支援 GraniteDocling（IBM 258M 參數模型）
- **圖表理解**：Bar chart、Pie chart、Line plot 轉成表格或描述
- **結構化資訊抽取**：🧪 beta 功能
- **MCP Server**：讓任何 Agent 透過 MCP 協議使用 Docling

### 整合生態
- LangChain、LlamaIndex、Crew AI、Haystack 等主流 Agent 框架
- MCP Server 讓 OpenClaw 等 Agent 工具也能直接呼叫

### 安裝與使用
```bash
pip install docling
```
```python
from docling.document_converter import DocumentConverter
source = "https://arxiv.org/pdf/2408.09869"
converter = DocumentConverter()
result = converter.convert(source)
print(result.document.export_to_markdown())
```

CLI 也能直接用：
```bash
docling https://arxiv.org/pdf/2206.01062
docling --pipeline vlm --vlm-model granite_docling https://arxiv.org/pdf/2206.01062
```

### 為什麼重要
Docling 是 [[llm-knowledge-base]] 和 [[AI-Agent]] 的基礎設施層。沒有好的文件解析，就沒有好的知識庫和 RAG。它是「把非結構化文件變成結構化知識」的第一步。

特別值得注意的是：
- 59k ⭐ 說明這是社群公認的文件解析標準
- IBM 開源但社群驅動，不是封閉產品
- MCP Server 支援讓它跟 Agent 生態系無縫整合
- 跟 [[mempalace]] 的「原文逐字儲存」理念互補：Docling 負責解析，MemPalace 負責儲存和檢索

## 快速導航
- 📚 **知識庫上游** → [[llm-knowledge-base]]（Docling 是知識管線的 parsing 層）
- 🏰 **記憶系統** → [[mempalace]]（Docling 解析 → MemPalace 儲存/檢索）
- 🔄 **Agent 工作流** → [[AI-Agent]]（文件解析是 RAG 管線的基礎）

## 來源
- raw/2026-05-03-docling.md
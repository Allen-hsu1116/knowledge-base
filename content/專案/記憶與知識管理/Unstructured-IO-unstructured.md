---
title: Unstructured
slug: Unstructured-IO-unstructured
created: 2026-08-16
updated: 2026-08-16
stars: 15313
language: HTML
topics: [data-pipelines, document-parser, document-parsing, llm, nlp, ocr, pdf, pdf-to-json, preprocessing]
---

# Unstructured

> ⭐15313 · 開源 ETL 工具，將 PDF、HTML、Word 等 60+ 種非結構化文件轉換為 LLM 可用的結構化資料

## 快速導航


- 📄 **文件解析** → [[opendataloader-project-opendataloader-pdf]] · [[document-parsing]]
- 🔍 **RAG** → [[langgenius-dify]] · [[rag]]

## 是什麼

Unstructured 是一個開源 Python 庫，提供非結構化資料的攝取和預處理工具。它支援 PDF、HTML、Word 文件、電子郵件、圖片、掃描文件等 60+ 種格式，將複雜文件轉換為乾淨的結構化格式，專為 LLM 資料處理工作流而設計。模組化的函數和連接器組成一個緊密系統，簡化資料攝取和預處理，適應不同平台並高效轉換非結構化資料為結構化輸出。

對於 Agent 生態系統，Unstructured 提供了 Transform MCP 伺服器，讓生產級文件處理能力直接進入 agent 的對話中。Agent 可以將 60+ 種檔案類型轉為結構化資料，直接在當前 session 中解析、豐富、分塊和嵌入文件，結果可用於應用、向量資料庫和下游流程。Transform MCP 與 Claude Code、Cursor、Codex CLI 等任何 MCP 相容的宿主都能搭配使用，每月 15,000 頁免費額度。

除了開源庫，Unstructured 也提供商業級 Pipelines 產品，提供更強的處理效能、分塊、嵌入和圖表/表格豐富化生成，可透過低程式碼 UI 或 API 操作。

## 核心特色

- **60+ 檔案格式支援**：PDF、HTML、XML、JSON、Email、Word、PowerPoint、圖片、掃描文件等
- **Transform MCP 伺服器**：文件處理直接進入 agent session，解析/豐富/分塊/嵌入一步到位
- **模組化設計**：按檔案類型安裝對應 extras（如 `pip install "unstructured[docx,pptx]"`）
- **Docker 支援**：多平台映像（x86_64 + Apple Silicon），一鍵 `docker pull` 即可使用
- **OCR 整合**：內建 tesseract-ocr 支援，可處理掃描文件和圖片
- **商業級 Pipelines**：低程式碼 UI / API 提供分塊、嵌入、圖表表格豐富化

## 怎麼用

```bash
# 安裝所有文件類型支援
pip install "unstructured[all-docs]"

# 或只裝基本（純文字、HTML、XML、JSON、Email）
pip install unstructured

# 指定文件類型
pip install "unstructured[docx,pptx]"

# Docker
docker pull downloads.unstructured.io/unstructured-io/unstructured:latest
docker run -dt --name unstructured downloads.unstructured.io/unstructured-io/unstructured:latest
docker exec -it unstructured bash
```

```python
from unstructured.partition.auto import partition

elements = partition(filename="example-docs/eml/fake-email.eml")
print("\n\n".join([str(el) for el in elements]))
```

## 跟其他方案的關係

- **Docling**：IBM 的文件解析庫；Unstructured 支援更多格式且有 MCP 整合
- **MinerU**：上海 AI Lab 的 PDF 解析；Unstructured 範圍更廣不限 PDF
- **PyMuPDF4LLM**：輕量 PDF→Markdown；Unstructured 是完整 ETL 管線
- **LiteParse**：LlamaIndex 的輕量解析器；Unstructured 更重但功能更完整
- **Firecrawl**：網頁爬蟲+解析；Unstructured 專注本地文件

| 能力 | Unstructured | Docling | MinerU | PyMuPDF4LLM |
|---|:---:|:---:|:---:|:---:|
| 60+ 格式 | ✓ | — | — | — |
| MCP Server | ✓ | — | — | — |
| Docker | ✓ | — | — | — |
| OCR | ✓ | — | ✓ | — |
| 分塊/嵌入 | ✓ | — | — | — |
| 商業版 | ✓ | — | — | — |

## 相關概念


← [[opendataloader-project-opendataloader-pdf]] · [[document-parsing]] · [[rag]] · [[langgenius-dify]]

## 來源

- GitHub: <https://github.com/Unstructured-IO/unstructured>
- 文件: <https://docs.unstructured.io/>
- 原始 README: `raw/2026-08-16-Unstructured-IO-unstructured.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Unstructured-IO/unstructured |
| Stars | ⭐15313|
| License | Apache-2.0 |
| 收錄日期 | 2026-08-16 |

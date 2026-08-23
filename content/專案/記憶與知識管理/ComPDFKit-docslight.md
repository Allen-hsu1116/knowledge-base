---
title: DocSlight
slug: ComPDFKit-docslight
created: 2026-07-08
updated: 2026-07-08
stars: 108
language: Vue
topics:
  - document-parser
  - document-parsing
  - ocr
  - pdf-parser
  - extraction
  - rag
  - intelligent-document-processing
  - open-source
---

# DocSlight

> ⭐108 · 開源文件解析與資料擷取引擎——精確解析 PDF、掃描檔、圖片和 Office 檔案，OCR 支援 80+ 語言

## 快速導航

- [[document-parsing]]
- [[rag]]
- [[網頁爬蟲]]
- [[opendatalab-MinerU]]
- [[docling]]


快速導航：[[document-parsing]] · [[rag]] · [[網頁爬蟲]]

## 是什麼

DocSlight 是 ComPDFKit（KDAN 生態系）開源的文件解析與資料擷取引擎。它能精確解析任何文件——包括 PDF、掃描檔、圖片和 Office 檔案——並從中擷取結構化資料。與傳統 OCR 工具不同，DocSlight 結合了 AI 驅動的文件解析、80+ 語言 OCR 和結構化資料擷取於單一開源平台。

DocSlight 提供兩種模式：本地模式（免費、無需註冊）使用開源 OCR 和文件解析；雲端模式（有免費額度）透過 ComPDF Cloud API 提供更高精確度的 PDF 解析。輸出格式支援 Markdown 和 JSON，方便下游 RAG 管線、AI Agent 和企業文件工作流程使用。

它特別適合 RAG 管線和知識庫構建、發票處理、合約分析、文件數位化和 AI Agent 工具整合等場景。提供 Web UI、CLI 和 Python SDK 三種介面，支援本地部署或雲端 API。

## 核心特色

- **多格式解析**：支援 PDF、圖片（掃描檔）、Word、PPT、Excel 的解析和擷取，涵蓋企業常見文件類型
- **80+ 語言 OCR**：支援 80+ 語言的 OCR 辨識，具備多語言自動偵測功能，適合跨語言文件處理
- **結構化資料擷取**：支援基於 schema 的結構化欄位擷取，附帶邊界框（bounding box）可追溯性，精確定位每個擷取的資料元素
- **Markdown/JSON 輸出**：解析結果以 Markdown 或 JSON 格式輸出，直接可用於 RAG 管線、AI Agent 和下游處理
- **本地 + 雲端雙模式**：本地模式完全免費無需註冊，雲端模式透過 ComPDF API 提供更高精確度，有免費額度
- **三種介面**：Web UI（拖放操作）、CLI（命令列批次處理）、Python SDK（程式化整合），滿足不同使用場景
- **RAG 與 Agent 整合**：專為 RAG 管線、AI Agent 工具整合和企業文件自動化（IDP）設計，可作為 MCP 文件讀取工具

## 怎麼用

### 安裝

```bash
pip install docslight
```

### 本地模式（免費）

```bash
# 解析 PDF 為 Markdown
docslight parse invoice.pdf --mode local --output invoice.md

# 解析圖片為 JSON（含邊界框）
docslight parse scan.png --mode local -o json --bbox
```

### 雲端模式（高精確度）

```bash
# 設定 API Key
export COMPDF_API_KEY="your_public_key"

# 使用雲端引擎解析
docslight parse invoice.pdf --mode cloud --output invoice.md

# 結構化欄位擷取
docslight extract invoice.pdf --schema '{"fields": ["invoice_no", "date", "total"]}'
```

### Python SDK

```python
from docslight import Parser

# 本地模式
parser = Parser(mode="local")
result = parser.parse("contract.pdf")
print(result.text)          # Markdown 文字
print(result.metadata)      # 頁面、區塊、邊界框

# 雲端模式
parser = Parser(mode="cloud", api_key="your_key")
result = parser.parse("invoice.pdf")
print(result.tables)        # 結構化表格
print(result.blocks[0].bbox)  # 邊界框
```

### Web UI

```bash
git clone https://github.com/ComPDFKit/docslight.git
cd docslight
docker compose -f docker/docker-compose.yml up
# → http://localhost:3022
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | OCR 語言 | 結構化擷取 | RAG 就緒 | 本地部署 |
|------|-------|------|---------|-----------|---------|---------|
| **DocSlight** | ⭐108 | 文件解析引擎 | 80+ | ✅ schema | ✅ MD/JSON | ✅ |
| [[opendatalab-MinerU\|MinerU]] | ⭐69.6k | 文件解析 | 109 | 部分 | ✅ | ✅ |
| [[docling]] | ⭐59.2k | 文件解析 | 部分 | 部分 | ✅ | ✅ |
| [[microsoft-markitdown\|MarkItDown]] | ⭐120.6k | 文件轉換 | 部分 | ❌ | ✅ | ✅ |
| [[PaddlePaddle-PaddleOCR\|PaddleOCR]] | ⭐80k | OCR | 多語言 | ❌ | 部分 | ✅ |

← [[document-parsing]] · [[rag]] · [[網頁爬蟲]]

## 相關概念


← [[document-parsing]] · [[rag]]

## 來源

- GitHub: <https://github.com/ComPDFKit/docslight>
- 官方網站: <https://www.compdf.com/ai/docslight>
- 文件: <https://www.compdf.com/guides/api-reference/v2/ai/overview>
- 原始 README: `raw/2026-07-08-ComPDFKit-docslight.md`
- 授權: LGPL-3.0

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/ComPDFKit/docslight |
| Stars | ⭐108|
| License | LGPL-3.0 |
| 收錄日期 | 2026-07-08 |

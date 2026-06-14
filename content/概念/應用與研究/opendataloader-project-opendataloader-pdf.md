---
title: OpenDataLoader PDF
slug: opendataloader-project-opendataloader-pdf
created: 2026-06-04
updated: 2026-06-04
stars: 23272
language: Java
---

# OpenDataLoader PDF

> ⭐23.3k · Java · Apache-2.0 · PDF Parser for AI-ready data — 從 PDF 提取 Markdown、JSON（含 bounding box）、HTML，benchmarks #1

**快速導航**：[[document-parsing|文件解析]] · [[rag|RAG]] · [[docling|Docling]] · [[microsoft-markitdown|MarkItDown]]

## 是什麼

OpenDataLoader PDF 是一個專為 AI 工作流設計的 PDF 解析器，能將任何 PDF 文件轉換成結構化的 Markdown、JSON（含每個元素的 bounding box 座標）和 HTML 格式。它是目前開源 PDF 解析器中 benchmark 排名第一的方案，整體準確率達到 0.907（hybrid 模式）。

這個專案的核心價值在於：它同時解決了 PDF 資料擷取和 PDF 無障礙化兩大難題。在資料擷取方面，它使用確定性的本地 Java 引擎處理簡單頁面（0.015s/page），遇到複雜頁面則自動路由到 AI 後端（hybrid 模式）。在無障礙化方面，它是第一個能端到端自動產生 Tagged PDF 的開源工具，符合 PDF Association 的 Well-Tagged PDF 規範。

OpenDataLoader PDF 提供 Python、Node.js、Java 三種 SDK，也支援 CLI 命令列操作，並與 LangChain 整合，方便直接接入 RAG pipeline。

## 核心特色

- **Benchmark #1**：hybrid 模式整體準確率 0.907、表格準確率 0.928，在 200 份真實 PDF 上測試居所有開源方案之首
- **Bounding Box 全覆蓋**：每個元素（標題、段落、表格、圖片）都附帶座標，方便 RAG 系統做 source citation
- **Hybrid 模式**：簡單頁面走本地 Java（0.02s），複雜頁面自動路由 AI 後端，兼顧速度和準確率
- **PDF 無障礙自動化**：第一個能自動把 untagged PDF 轉成 Tagged PDF 的開源工具，基於 PDF Association 協作與 veraPDF 驗證
- **多語言 OCR**：hybrid 模式內建 80+ 語言 OCR，處理掃描件和低品質影本
- **多 SDK 支援**：Python（3.10+）、Node.js、Java（11+）三端一致 API，CLI 也可用

## 怎麼用

### 安裝

```bash
# 基本版 — 確定性本地模式
pip install -U opendataloader-pdf

# Hybrid 版 — 含 AI 後端，支援複雜表格、OCR、公式
pip install -U "opendataloader-pdf[hybrid]"
```

> 前置需求：Java 11+（`java -version` 確認）

### 基本使用 — Python

```python
import opendataloader_pdf

# 批次轉換，一次呼叫處理多個檔案
opendataloader_pdf.convert(
    input_path=["file1.pdf", "file2.pdf", "folder/"],
    output_dir="output/",
    format="markdown,json"
)
```

### Hybrid 模式 — 複雜 PDF

```bash
# Terminal 1 — 啟動 AI 後端
opendataloader-pdf-hybrid --port 5002

# Terminal 2 — 處理 PDF
opendataloader-pdf --hybrid docling-fast file1.pdf file2.pdf folder/
```

### 無障礙 — 自動 Tagged PDF

```bash
opendataloader-pdf --format tagged-pdf file1.pdf file2.pdf folder/
```

### Node.js

```typescript
import { convert } from '@opendataloader/pdf';

await convert(['file1.pdf', 'file2.pdf', 'folder/'], {
  outputDir: 'output/',
  format: 'markdown,json'
});
```

## 跟其他方案的關係

| 方案 | 整體準確率 | 表格準確率 | 速度 (s/page) | License | Bounding Box |
|------|-----------|-----------|---------------|---------|-------------|
| **OpenDataLoader PDF (hybrid)** | **0.907** | **0.928** | 0.463 | Apache-2.0 | ✅ |
| Docling | 0.882 | 0.887 | 0.762 | MIT | ❌ |
| Marker | 0.861 | 0.808 | 53.9 | GPL-3.0 | ❌ |
| Unstructured (hi_res) | 0.841 | 0.588 | 3.0 | Apache-2.0 | ❌ |
| MinerU | 0.831 | 0.873 | 5.9 | AGPL-3.0 | ❌ |
| PyMuPDF4LLM | 0.732 | 0.401 | 0.09 | AGPL-3.0 | ❌ |
| MarkItDown | 0.589 | 0.273 | 0.11 | MIT | ❌ |
| LiteParse | 0.576 | 0.000 | 1.06 | Apache-2.0 | ❌ |

OpenDataLoader PDF 的核心差異是**bounding box 全覆蓋 + benchmark 最高準確率 + 確定性輸出**。相較 [[docling|Docling]] 和 [[microsoft-markitdown|MarkItDown]] 只輸出文字，OpenDataLoader PDF 的 JSON 輸出每個元素都有座標，對 RAG source citation 至關重要。相較 [[run-llama-liteparse|LiteParse]] 追求速度犧牲表格解析，OpenDataLoader 在 hybrid 模式下表格準確率達 0.928。

← [[docling|Docling]] · [[microsoft-markitdown|MarkItDown]] · [[run-llama-liteparse|LiteParse]] · [[rag|RAG]] → 相關概念

## 來源

- GitHub：[opendataloader-project/opendataloader-pdf](https://github.com/opendataloader-project/opendataloader-pdf)
- Raw 檔案：`raw/2026-06-04-opendataloader-project-opendataloader-pdf.md`
- Benchmark 詳情：[opendataloader-bench](https://github.com/opendataloader-project/opendataloader-bench)
- 官方文件：[opendataloader.org](https://opendataloader.org)

---

| 項目 | 值 |
|------|-----|
| GitHub | [opendataloader-project/opendataloader-pdf](https://github.com/opendataloader-project/opendataloader-pdf) |
| Stars | ⭐23,272 |
| License | Apache-2.0 |
| Language | Java |
| 收錄日期 | 2026-06-04 |
---
title: Chandra
slug: datalab-to-chandra
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Chandra

> 高精確度 OCR 模型 — 基於視覺模型，專攻複雜表格、表單、手寫，完整保留版面結構。datalab-to 開源。

## 快速導航

- 🗄️ **RAG** → [[docling]]（Chandra 做 OCR，docling 做文件解析 pipeline，兩者互補）
- 🧠 **AI Agent** → [[AI-Agent]]（Chandra 可作為 Agent 的 OCR 工具）
- 🔌 **MCP** → [[MCP]]（Chandra 有 Python API，可包裝成 MCP 工具）

## 是什麼

Chandra 是 datalab-to 開源的高精確度 OCR 模型。跟傳統 OCR（Tesseract 等）不同，它基於視覺模型（不是傳統 pipeline OCR），專門處理複雜表格、表單和手寫文字，同時完整保留文件版面結構。Python API 簡單易用，可直接整合到任何文件處理 pipeline。

## 核心特色

- **表格 OCR** — 精確辨識複雜表格結構，包括合併儲存格、跨欄標題、嵌套表格。基於視覺模型理解表格的空間佈局，不是用啟發式規則切割，所以處理複雜排版比傳統 OCR 強很多
- **表單辨識** — 理解表單版面，欄位和值正確對應。能區分表單的 label 和 value 區域，處理手寫填寫和列印混合的表單
- **手寫辨識** — 支援手寫文字辨識。基於視覺模型端到端辨識手寫字跡，不需要傳統的「文字行切割 → 字元分割 → 單字辨識」多步 pipeline
- **完整版面** — 不只辨識文字，保留文件整體版面結構（標題、段落、表格、圖片的相對位置和層級關係）。輸出包含結構化的版面資訊
- **Python API** — `from chandra import OCR; result = OCR("document.pdf")`，三行就能用。輸出結構化結果：text（文字）、tables（表格）、layout（版面）

## 怎麼實現的

Chandra 的核心是視覺模型端到端辨識，跳過傳統 OCR pipeline：

1. **視覺模型架構**：不像傳統 OCR 用「文字偵測 → 行切割 → 字元辨識 → 後處理」的多步 pipeline，Chandra 用視覺模型（可能是基於 Transformer 的架構）直接從圖片端到端輸出結構化結果。跳過中間步驟減少累積誤差
2. **表格理解**：視覺模型直接理解表格的空間結構（儲存格邊界、合併區域、標題行），輸出結構化的表格資料（行列索引 + 內容）。不需要用啟發式規則猜測表格邊界
3. **版面分析**：模型同時做版面分析（區域偵測）和文字辨識。輸出的 layout 資訊包含每個區域的類型（標題/段落/表格/圖片）、位置、層級關係
4. **端到端訓練**：模型在大量帶標註的文件資料集上端到端訓練（表格、表單、手寫等多場景），不是分模組訓練再拼接

## 怎麼用

```bash
pip install chandra-ocr

# 基本 OCR
from chandra import OCR
result = OCR("document.pdf")
print(result.text)      # 辨識的文字
print(result.tables)    # 表格資料（結構化）
print(result.layout)    # 版面結構資訊

# 處理複雜表格
result = OCR("financial_report.pdf")
for table in result.tables:
    print(table.headers)   # 表頭
    print(table.rows)      # 資料行
    print(table.merged)    # 合併儲存格資訊

# 處理表單
result = OCR("tax_form.pdf")
for field in result.fields:
    print(f"{field.label}: {field.value}")

# 整合到 RAG pipeline
# 先用 Chandra 做 OCR，再用 docling 做結構化處理
from chandra import OCR
from docling import DocumentConverter

ocr_result = OCR("complex_table.pdf")
# 用 Chandra 的表格結果補強 docling 的文件解析
```

## 跟其他方案的關係

| 工具 | 定位 | 表格能力 | 手寫 | 版面保留 | 方法 |
|------|------|----------|------|----------|------|
| **Chandra** | 高精確度 OCR | ✅ 強 | ✅ | ✅ | 視覺模型 |
| **[[microsoft-markitdown\|MarkItDown]]** | 文件→Markdown | ⚠️ 基本 | ❌ | ⚠️ 基本 | 規則轉換 |
| **[[docling]]** | 完整文件解析 | ✅ | ❌ | ✅ | 混合 pipeline |
| **Tesseract** | 傳統 OCR | ❌ | ❌ | ❌ | Pipeline OCR |

- Chandra 是 OCR 專精工具，搭配 [[docling]] 或 [[microsoft-markitdown|MarkItDown]] 使用效果更好：先用 Chandra 做 OCR（特別是表格和手寫），再用 docling/MarkItDown 做結構化處理
- 跟 Tesseract 的根本差異：Tesseract 用傳統 pipeline（偵測→切割→辨識→後處理），每步累積誤差；Chandra 用視覺模型端到端，直接輸出結構化結果
- 可包裝成 [[MCP]] 工具，讓 AI Agent 透過 MCP 呼叫 Chandra 做 OCR

## 相關概念

← [[docling]] · [[AI-Agent]] · [[MCP]]

## 來源

- raw/2026-05-05-datalab-to-chandra.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [datalab-to/chandra](https://github.com/datalab-to/chandra) | ⭐10,444 | Apache-2.0 | 2026-05-05 |
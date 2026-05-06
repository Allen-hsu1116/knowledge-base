# Chandra

> 高精確度 OCR 模型 — 專攻複雜表格、表單、手寫，完整保留版面結構。

## 快速導航

- 🗄️ **RAG** → [[docling]]（Chandra 做 OCR，docling 做文件解析 pipeline，兩者互補）
- 🧠 **AI Agent** → [[AI-Agent]]（Chandra 可作為 Agent 的 OCR 工具）
- 🔌 **MCP** → [[MCP]]（Chandra 有 Python API，可包裝成 MCP 工具）

## 是什麼

Chandra 是 datalab-to 開源的高精確度 OCR 模型。跟傳統 OCR（Tesseract 等）不同，它基於視覺模型，專門處理複雜表格、表單和手寫文字，同時完整保留文件版面結構。

## 核心特色

- **表格 OCR**：精確辨識複雜表格結構，包括合併儲存格
- **表單辨識**：理解表單版面，欄位和值對應正確
- **手寫辨識**：支援手寫文字辨識
- **完整版面**：不只辨識文字，保留文件整體版面結構
- **Python API**：簡單易用，可整合到任何 pipeline

## 怎麼用

```bash
pip install chandra-ocr

# Python API
from chandra import OCR
result = OCR("document.pdf")
print(result.text)
print(result.tables)
print(result.layout)
```

## 跟其他方案的關係

| 工具 | 定位 | 表格能力 | 手寫 | 版面保留 |
|------|------|----------|------|----------|
| **Chandra** | 高精確度 OCR | ✅ 強 | ✅ | ✅ |
| **[[microsoft-markitdown\|MarkItDown]]** | 文件→Markdown | ⚠️ 基本 | ❌ | ⚠️ 基本 |
| **[[docling]]** | 完整文件解析 | ✅ | ❌ | ✅ |

Chandra 是 OCR 專精工具，搭配 docling 或 MarkItDown 使用效果更好：先用 Chandra 做 OCR，再用 docling/MarkItDown 做結構化處理。

## 相關概念

← [[docling]] · [[AI-Agent]] · [[MCP]]

## 來源

- raw/2026-05-05-datalab-to-chandra.md

---

- **GitHub**: https://github.com/datalab-to/chandra
- **Stars**: ⭐10,444
- **License**: Apache-2.0
- **收錄日期**: 2026-05-05
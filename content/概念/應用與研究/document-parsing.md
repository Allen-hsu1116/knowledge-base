---
title: 文件解析（Document Parsing）
created: 2026-05-09
---

# 文件解析（Document Parsing）

> 將 PDF、DOCX、圖片等非結構化文件轉為結構化資料，讓 AI Agent 能可靠理解與使用。

## 快速導航

- 🔍 **RAG** → [[rag]]（文件解析是 RAG 管線的第一步）
- 📄 **HiChunk** → [[hichunk]]（解析後的分塊策略）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 需要可靠的文件輸入）

## 核心內容

文件解析是 RAG 和 AI Agent 工作流的關鍵第一步。品質不佳的解析會導致表格合併格錯位、圖表數值遺失、格式語義（如刪除線表示過時內容）消失，直接影響 Agent 的每一步推理。

### 核心挑戰

- **表格結構保真**：合併格、多層表頭容易錯位，Agent 可能讀到錯誤欄位
- **圖表資料提取**：多數解析器只回傳原始文字，無法提取精確數值
- **格式語義保留**：刪除線（過時）、粗體（定義詞）、上標/下標（註腳、公式）都有語義
- **閱讀順序**：多欄排版、頁首頁尾的排序邏輯
- **視覺定位**：將提取內容追溯回頁面上的原始位置

### 解析管線

```
輸入文件 → 文件載入 → 佈局分析 → 內容提取 → 結構化輸出
   │          │          │          │          │
  PDF      PyMuPDF   視覺模型   OCR+表格   Markdown/
  DOCX     docling   閱讀順序   圖表數值   JSON/
  圖片     markitdown  區塊偵測  格式語義    LLM-ready
```

### 品質評估五維度（ParseBench）

1. **表格保真度**：合併格、多層表頭是否正確
2. **圖表數值**：能否提取精確數值
3. **內容忠實度**：文字是否完整、正確
4. **格式語義**：刪除線、粗體等是否保留
5. **視覺定位**：能否追溯回頁面位置

## 各框架的做法

### 文件解析工具

| 專案 | 說明 | Stars |
|------|------|-------|
| 👉 [[docling]] | IBM 開源文件解析庫，支援多格式 | ⭐59k |
| 👉 [[microsoft-markitdown]] | 微軟 Markdown 轉換工具 | ⭐120k |
| 👉 [[run-llama-ParseBench]] | 文件解析基準測試，五維度評測 | ⭐468 |
| 👉 [[aiptimizer-TurboOCR]] | GPU 加速 OCR 伺服器，270img/s TensorRT FP16 | ⭐264 |
| 👉 [[pymupdf4llm]] | PyMuPDF 的 LLM 友善封裝 | ⭐1.6k |
| 👉 [[hichunk]] | 階層式文件分塊，解析後的分塊策略 | ⭐96 |
| 👉 [[pdfcraft]] | 瀏覽器端 PDF 工具箱，90+ 工具全 client-side | ⭐5.5k+ |

## 怎麼用

文件解析通常透過專用工具庫實現，以下是幾個常見用法：

```python
# Docling（IBM 開源文件解析）
pip install docling
from docling.document_converter import DocumentConverter
converter = DocumentConverter()
result = converter.convert("document.pdf")
print(result.document.export_to_markdown())
```

```python
# markitdown（微軟文件轉 Markdown）
pip install markitdown
from markitdown import MarkItDown
md = MarkItDown()
result = md.convert("document.docx")
print(result.text_content)
```

## 跟其他方案的關係

| 概念 | 關係 |
|------|------|
| [[rag]] | 文件解析是 RAG 管線的前置步驟 |
| [[hichunk]] | 解析後的文件需要分塊策略，HiChunk 提供階層式分塊 |
| [[AI-Agent]] | Agent 需要可靠的文件輸入才能正確推理 |
| [[ocr-memory]] | OCR 記憶壓縮與文件解析相關 |

## 相關概念

← [[rag]] · [[hichunk]] · [[AI-Agent]] · [[ocr-memory]]

## 來源

- raw/ 目錄中多個文件解析相關原始檔案

---

_此頁由 daily-llm-trending 自動維護_
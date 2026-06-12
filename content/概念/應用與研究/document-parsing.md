# 文件解析（Document Parsing）

> 將 PDF、DOCX、圖片等非結構化文件轉為結構化資料，讓 AI Agent 能可靠理解與使用。文件解析是 RAG 和知識庫管線的關鍵第一步。

## 快速導航

- ⚡ [[rag]] · [[hichunk]] · [[AI-Agent]] · [[Knowledge-Graph]]
- 🔍 **RAG** → [[rag]]（文件解析是 RAG 管線的第一步）
- 📄 **HiChunk** → [[hichunk]]（解析後的分塊策略）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 需要可靠的文件輸入）

## 是什麼

文件解析（Document Parsing）是將 PDF、DOCX、圖片、HTML 等非結構化或半結構化文件，轉換為結構化、機器可讀格式的技術。在 AI 應用中，解析品質直接影響下游的每一步——從 RAG 檢索到 Agent 推理。

品質不佳的解析會導致表格合併格錯位、圖表數值遺失、格式語義（如刪除線表示過時內容）消失，這些錯誤會沿著 AI 管線一路放大。文件解析是 RAG 和 AI Agent 工作流的關鍵第一步，上游解析品質決定了下游的整體表現。

### 解析管線

```
輸入文件 → 文件載入 → 佈局分析 → 內容提取 → 結構化輸出
   │          │          │          │          │
  PDF      PyMuPDF   視覺模型   OCR+表格   Markdown/
  DOCX     docling   閱讀順序   圖表數值   JSON/
  圖片     markitdown  區塊偵測  格式語義    LLM-ready
```

## 核心特色

- **表格結構保真**：合併格、多層表頭容易錯位，Agent 可能讀到錯誤欄位。高品質解析器（如 Docling）能正確保留表格結構，包括合併儲存格和嵌套表頭
- **圖表資料提取**：多數解析器只回傳原始文字，無法提取精確數值。Docling 等先進解析器能從圖表中提取數值資料，將視覺化資訊轉為機器可讀格式
- **格式語義保留**：刪除線（過時）、粗體（定義詞）、上標/下標（註腳、公式）都有語義。解析時保留這些格式標記，讓下游 AI 能理解文件的深層語意
- **閱讀順序還原**：多欄排版、頁首頁尾、旁註等複雜版面需要正確排序。解析器需透過佈局分析（視覺模型）還原人類的閱讀順序
- **視覺定位追溯**：將提取內容追溯回頁面上的原始位置，支援引用和驗證。這是 RAG 系統提供引用來源的基礎

### 品質評估五維度（ParseBench）

1. **表格保真度**：合併格、多層表頭是否正確
2. **圖表數值**：能否提取精確數值
3. **內容忠實度**：文字是否完整、正確
4. **格式語義**：刪除線、粗體等是否保留
5. **視覺定位**：能否追溯回頁面位置

## 怎麼用

### Docling（IBM 開源文件解析）

```python
pip install docling
from docling.document_converter import DocumentConverter

converter = DocumentConverter()
result = converter.convert("document.pdf")
print(result.document.export_to_markdown())
```

### markitdown（微軟文件轉 Markdown）

```python
pip install markitdown
from markitdown import MarkItDown

md = MarkItDown()
result = md.convert("document.docx")
print(result.text_content)
```

### 常見使用場景

- **RAG 管線**：解析企業文件為結構化資料，供知識庫檢索
- **知識圖譜建構**：從文件提取實體和關係，建構知識圖譜
- **資料分析**：從報表和圖表中提取數值，進行自動分析
- **合規審查**：解析合約、法規文件，自動比對條款
- **多語言翻譯**：保留文件結構的同時進行翻譯

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[rag]] | 上游 | 文件解析是 RAG 管線的前置步驟 |
| [[hichunk]] | 串接 | 解析後的文件需要分塊策略，HiChunk 提供階層式分塊 |
| [[AI-Agent]] | 消費者 | Agent 需要可靠的文件輸入才能正確推理 |
| [[Knowledge-Graph]] | 下游 | 解析後的實體和關係可建構知識圖譜 |
| [[ocr-memory]] | 相關 | OCR 記憶壓縮與文件解析相關 |
| [[cocoindex]] | 串接 | 增量索引可管理解析資料的更新 |

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

## 相關概念

← [[rag]] · [[hichunk]] · [[AI-Agent]] · [[ocr-memory]] · [[Knowledge-Graph]] · [[cocoindex]]

## 來源

- [文件解析相關原始檔案](../raw/2026-05-03-docling.md)
- [文件解析基準測試](../raw/2026-05-05-microsoft-markitdown.md)

---

_此頁由 daily-llm-trending 自動維護_
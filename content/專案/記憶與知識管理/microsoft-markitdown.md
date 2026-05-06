# MarkItDown

> 微軟開源的文件轉 Markdown 工具 — 把 PDF、Office、圖片、音訊等任何格式轉成 LLM 能讀的 Markdown。

## 快速導航

- 🧠 **LLM** → [[LLM]]（MarkItDown 把非結構化文件轉成 LLM 能理解的 Markdown）
- 🔌 **MCP** → [[MCP]]（MarkItDown 有 MCP Server 整合）
- 🗄️ **RAG** → [[docling]]（兩者都是文件解析工具，MarkItDown 輕量、docling 功能更完整）

## 是什麼

MarkItDown 是微軟開源的 Python 工具，把各種文件格式（PDF、DOCX、PPTX、XLSX、圖片、音訊、HTML、ZIP）轉成 Markdown。它的定位是 LLM pipeline 的前置處理器 — 讓任何文件都能被 LLM 讀取。

## 核心特色

- **廣泛格式支援**：PDF、DOCX、PPTX、XLSX、圖片（EXIF + OCR）、音訊（ Whisper 轉錄）、HTML、ZIP
- **CLI + Python library**：`markitdown file.pdf > out.md` 或 Python API
- **MCP Server 整合**：可作為 MCP 工具被 Agent 呼叫
- **LLM 友善輸出**：轉出的 Markdown 結構清晰，適合 RAG 和 Agent pipeline
- **輕量快速**：純 Python，無重依賴

## 怎麼用

```bash
pip install markitdown
markitdown path-to-file.pdf > output.md

# Python API
from markitdown import MarkItDown
md = MarkItDown()
result = md.convert("path-to-file.pdf")
print(result.text_content)
```

## 跟其他方案的關係

| 工具 | 定位 | 格式支援 | LLM 整合 |
|------|------|----------|----------|
| **MarkItDown** | 輕量文件→Markdown | PDF/Office/圖片/音訊 | MCP Server |
| **[[docling]]** | 完整文件解析框架 | PDF/DOCX/PPTX/HTML/圖片 | Docling Pipeline |
| **[[datalab-to-chandra\|Chandra]]** | 高精確度 OCR | 表格/表單/手寫 | Python API |

MarkItDown 勝在輕量和快速，適合簡單轉換場景；docling 功能更完整，適合複雜 RAG pipeline；Chandra 專攻 OCR 精確度，特別是表格和手寫。

## 相關概念

← [[LLM]] · [[MCP]] · [[docling]]

## 來源

- raw/2026-05-05-microsoft-markitdown.md

---

- **GitHub**: https://github.com/microsoft/markitdown
- **Stars**: ⭐120,637
- **License**: MIT
- **收錄日期**: 2026-05-05
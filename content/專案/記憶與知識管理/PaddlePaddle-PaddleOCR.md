---
title: PaddleOCR
slug: PaddlePaddle-PaddleOCR
created: 2026-06-05
updated: 2026-06-05
stars: 79871
language: Python
---

# PaddleOCR

> ⭐80k · 百度開源的全能 OCR 工具包，把 PDF 和圖片轉成 LLM 可用的結構化資料，支援 100+ 語言

## 快速導航
[[document-parsing|文件解析]] · [[rag|RAG]] · [[PaddlePaddle-PaddleOCR|PaddleOCR]]

## 是什麼

PaddleOCR 是百度 PaddlePaddle 生態下的旗艦 OCR 專案，定位為「全球領先的 OCR 工具包與文件 AI 引擎」。它不只做文字辨識，而是把 PDF、圖片等各種文件轉成 LLM 可直接消化的 Markdown 或 JSON 格式，是建構 RAG 和 Agent 應用的基礎設施。

專案的核心由三大引擎組成：**PaddleOCR-VL** 是專為文件解析設計的視覺語言模型（0.9B 參數但準確率達 96.3%）、**PP-StructureV3** 負責版面結構感知的轉換（提供更細緻的座標資訊）、**PP-OCRv5** 則是通用場景文字辨識引擎，支援超過 100 種語言。三個引擎各司其職，從精確的文件版面解析到快速的街景文字辨識都有對應方案。

PaddleOCR 被 Dify、RAGFlow、Cherry Studio、MinerU 等頂級專案深度整合，是 AI 應用生態中 PDF/圖片解析的事實標準。支援 NVIDIA GPU、Intel CPU、昆侖芯 XPU 等多種硬體後端，從邊緣裝置到雲端部署都能一鍵完成。

## 核心特色

- **PaddleOCR-VL-1.6 視覺語言模型**：僅 0.9B 參數卻在 OmniDocBench v1.6 達到 96.3% 準確率，領先文字、公式、表格辨識，並大幅強化古籍、罕見字、印章、圖表辨識能力，輸出 Markdown 和 JSON 格式
- **PP-StructureV3 版面結構解析**：結構感知轉換引擎，可將複雜 PDF 和圖片轉為 Markdown/JSON，提供表格單元格座標、文字座標等細粒度資訊，適合需要精確版面理解的場景
- **PP-OCRv5 百語辨識**：支援 100+ 語言的原生辨識，單一模型優雅處理中英日拼音等多語混合文件，較前代提升 13% 準確率，維持 PaddleOCR 著名的「極致效率」
- **LLM 生态深度整合**：Dify、RAGFlow、Pathway、Cherry Studio 等主流 AI 平台的預設 OCR 引擎，提供完整的 LLM 資料飛輪管線（Data Engine），可持續為大模型微調建構高品質資料集
- **多平台一鍵部署**：NVIDIA GPU、Intel CPU、昆侖芯 XPU、多種 AI 加速器全面支援，提供 Python SDK、Go SDK、TypeScript SDK、瀏覽器端 PaddleOCR.js 等多元介面

## 怎麼用

```bash
# 安裝
pip install paddleocr

# 基本文字辨識（PP-OCRv5）
paddleocr --image_dir document.jpg --lang ch

# Python API 使用
from paddleocr import PaddleOCR
ocr = PaddleOCR(use_angle_cls=True, lang="ch")
result = ocr.ocr("document.jpg", cls=True)

# PaddleOCR-VL 文件解析（結構化 Markdown 輸出）
from paddleocr import PaddleOCR
ocr = PaddleOCR(use_paddocrvl=True)
result = ocr.ocr("report.pdf")

# PP-StructureV3 版面分析
from paddleocr import PPStructure
table_engine = PPStructure(show_log=True)
result = table_engine("table_page.png")
```

更詳細的文件請參考 [PP-OCR 文檔](https://www.paddleocr.ai/latest/en/version3.x/pipeline_usage/OCR.html)、[PaddleOCR-VL 文檔](https://www.paddleocr.ai/latest/en/version3.x/pipeline_usage/PaddleOCR-VL.html)、[PP-StructureV3 文檔](https://www.paddleocr.ai/latest/en/version3.x/pipeline_usage/PP-StructureV3.html)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 多語言 | VLM 文件解析 | 結構化輸出 | 部署方式 |
|------|-------|------|--------|-------------|-----------|---------|
| **PaddleOCR** | ⭐80k | OCR + 文件 AI 引擎 | 100+ 語言 | ✅ PaddleOCR-VL-1.6 | Markdown/JSON+座標 | 端雲一體 |
| [[docling|Docling]] | ⭐59k | 文件解析 | 多語言 | ✅ Docling-parse | Markdown/JSON | Python |
| [[ragflow|RAGFlow]] | ⭐80k | RAG 引擎 | 多語言 | ✅ 內建 DeepDoc | Markdown | Docker |
| [[opendataloader-project-opendataloader-pdf|OpenDataLoader PDF]] | ⭐23k | PDF 解析 | 多語言 | ✅ Hybrid 模式 | Markdown+Bounding Box | Python |
| Tesseract | ⭐65k | 傳統 OCR | 100+ 語言 | ❌ | 純文字 | C++/Python |
| [[run-llama-liteparse|LiteParse]] | ⭐7.3k | 文件解析 | 多語言 | ❌ | Markdown/JSON | Rust/Python |

PaddleOCR 的差異化在於它是少數同時提供 VLM 級別文件理解（PaddleOCR-VL）和結構化版面解析（PP-StructureV3）的方案，而且 0.9B 模型就能達到 SOTA 準確率，部署門檻極低。

## 相關概念
← [[document-parsing|文件解析]] · [[rag|RAG]] · [[llm-knowledge-base|OCR-Memory]]

## 來源

- GitHub: <https://github.com/PaddlePaddle/PaddleOCR>
- 原始 README: `raw/2026-06-05-PaddlePaddle-PaddleOCR.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [PaddlePaddle/PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR) |
| Stars | ⭐79,871 |
| License | Apache 2.0 |
| Language | Python |
| 收錄日期 | 2026-06-05 |
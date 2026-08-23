---
title: MinerU
slug: opendatalab-MinerU
created: 2026-06-26
updated: 2026-06-26
stars: 69.6k
language: Python
topics:
  - document-analysis
  - docx
  - extract-data
  - layout-analysis
  - ocr
  - parser
  - pdf
  - pdf-converter
  - pdf-extractor-llm
  - pdf-extractor-rag
  - pdf-parser
  - pptx
  - python
  - xlsx
---

# MinerU

> ⭐69600 · 高精度文件解析引擎，把 PDF/DOCX/PPTX/XLSX/圖片轉成 LLM-ready Markdown/JSON，支援 109 語言 OCR、VLM+OCR 雙引擎

## 快速導航


- 📄 **文件解析** → [[document-parsing|文件解析]]
- 🔍 **RAG** → [[rag|RAG]]
- 🤖 **AI Agent** → [[AI-Agent|AI Agent]]
- 📝 **OCR 記憶** → [[llm-knowledge-base|OCR-Memory]]

## 是什麼

MinerU 是由 OpenDataLab 開發的高精度文件解析工具，能將 PDF、圖片、DOCX、PPTX、XLSX 等多種格式轉換為機器可讀的 Markdown 和 JSON，專為下游的檢索、擷取和處理流程設計。它誕生於 InternLM 大語言模型的預訓練過程中——團隊在處理科學文獻時發現符號轉換是個巨大瓶頸，於是打造了 MinerU 來解決這個問題，並開源分享給整個 AI 社群。

MinerU 的核心能力涵蓋版面分析、公式辨識（轉 LaTeX）、表格結構還原（轉 HTML）、多欄佈局閱讀順序偵測、頁首頁腳自動移除、跨頁表格合併等。它提供三種推理後端：`pipeline`（快速穩定、無幻覺、CPU/GPU 都能跑）、`vlm-engine`（高精度、支援 vLLM/LMDeploy/mlx）、`hybrid-engine`（高精度 + 原生文字擷取 + 低幻覺）。最新 3.4 版本的 pipeline 後端在 OmniDocBench v1.6 上達到 86.2 分，OCR 模型升級到 PP-OCRv6 後準確度再提升約 11%。

MinerU 不只是一個解析器——它已進化成企業級文件解析基礎設施。透過 `mineru-api` 和 `mineru-router`，支援異步任務提交、多 GPU 負載平衡、一鍵多卡部署。整合方面，它原生支援 MCP Server（Cursor/Claude Desktop/Windsurf）、LangChain、LlamaIndex、RAGFlow、Dify、FastGPT 等主流框架，還提供 Python/Go/TypeScript SDK、CLI、REST API、Docker 等多種使用方式。在國內 AI 晶片生態上，支援昇騰、寒武紀、燧原、摩爾線程等 10+ 國產晶片。

## 核心特色


1. **全格式原生解析** — 支援 PDF、圖片、DOCX、PPTX、XLSX 五大格式，原生解析 DOCX 不需先轉 PDF，端到端速度快數十倍且零幻覺
2. **VLM + OCR 雙引擎** — pipeline 後端用 PP-OCRv6 OCR 模型（109 語言），vlm-engine 用 MinerU2.5-Pro VLM 模型（支援圖表解析、跨頁合併），hybrid-engine 兼顧精度與速度
3. **公式與表格結構化** — 數學公式自動轉 LaTeX，表格自動轉 HTML，精確保留原始文件結構包含標題、段落、列表
4. **智能版面分析** — 多欄佈局自動偵測閱讀順序，自動移除頁首頁腳頁碼，跨頁表格自動合併，垂直文字與行間公式編號辨識
5. **企業級部署** — mineru-router 支援多服務多 GPU 統一入口與負載平衡，滑動窗口機制大幅降低長文檔記憶體峰值，多執行緒並發推理
6. **MCP + 主流框架整合** — 原生 MCP Server 讓 AI coding tool 直接呼叫，LangChain/LlamaIndex/RAGFlow/Dify/FastGPT 開箱即用
7. **全平台 + 離線支援** — Windows/Linux/macOS 全支援，純 CPU 環境也能跑，GPU/MPS 加速可選，完全離線私有部署
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

## 怎麼用

```bash
# 1. 安裝 MinerU（推薦用 pip）
pip install mineru

# 2. 基本用法 — 解析單一 PDF 檔案
mineru -p input.pdf -o output_dir/

# 3. 使用 pipeline 後端（快速穩定，CPU 也能跑）
mineru -p input.pdf -o output_dir/ -b pipeline

# 4. 使用 VLM 後端（最高精度，需 GPU）
mineru -p input.pdf -o output_dir/ -b vlm-engine

# 5. 使用 hybrid 後端 + medium effort（平衡精度與速度）
mineru -p input.pdf -o output_dir/ -b hybrid-engine -e medium

# 6. 批量解析整個資料夾
mineru -p input_folder/ -o output_dir/

# 7. API 模式 — 啟動本地服務
mineru --api

# 8. Docker 部署
docker run --gpus all -v $(pwd):/workspace opendatalab/mineru:latest \
  mineru -p /workspace/input.pdf -o /workspace/output/

# 9. MCP Server 模式（供 Cursor / Claude Desktop 使用）
# 在 MCP client 設定中加入 MinerU server 即可
```

**前置需求：** Python 3.8+，pipeline 後端可在純 CPU 環境運行，vlm-engine 需 GPU（建議 8GB+ VRAM）

## 跟其他方案的關係

| 方案 | 定位 | 格式支援 | OCR 語言 | VLM 引擎 | MCP 整合 |
|------|------|---------|---------|---------|---------|
| **MinerU** | 文件解析引擎 | PDF/DOCX/PPTX/XLSX/圖片 | 109 語言 | ✅ MinerU2.5-Pro | ✅ 原生 |
| [[PaddlePaddle-PaddleOCR\|PaddleOCR]] | OCR 工具箱 | 圖片/PDF | 80+ 語言 | ❌ | ❌ |
| [[run-llama-liteparse\|LiteParse]] | 輕量文件解析 | PDF/圖片 | 有限 | ❌ | ❌ |
| [[microsoft-markitdown\|MarkItDown]] | 文件轉 Markdown | Office 系列 | ❌ | ❌ | ✅ |
| [[docling\|Docling]] | 文件解析 | PDF/DOCX | 有限 | ✅ | ✅ |

MinerU 跟 PaddleOCR 的差異在於：PaddleOCR 專注 OCR 引擎本身，MinerU 是完整的文件解析管線，用了 PaddleOCR 的模型（PP-OCRv6）作為 pipeline 後端的 OCR 組件。跟 LiteParse 的差異在於：LiteParse 是 Rust 寫的輕量解析器，MinerU 功能更全面、支援 VLM 高精度模式。跟 MarkItDown 的差異在於：MarkItDown 主要把 Office 文件轉 Markdown，MinerU 更擅長複雜 PDF 的版面分析和公式表格結構化。跟 Docling 的差異在於：Docling 也是全格式文件解析器，但 MinerU 在國產晶片生態和中文 OCR 場景上有更大優勢。

## 相關概念


← [[document-parsing]] · [[rag]] · [[llm-knowledge-base]] · [[AI-Agent]]

## 來源

- GitHub: https://github.com/opendatalab/MinerU
- raw/2026-06-26-opendatalab-MinerU.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/opendatalab/MinerU |
| Stars | ⭐69600|
| License | MinerU Open Source License (based on Apache 2.0) |
| 收錄日期 | 2026-06-26 |

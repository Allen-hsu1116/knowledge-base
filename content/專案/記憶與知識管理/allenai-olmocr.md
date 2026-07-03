---
title: olmOCR
slug: allenai-olmocr
created: 2026-07-02
updated: 2026-07-02
stars: 18.2k
language: Python
topics: OCR, PDF, VLM, Document-Parsing, LLM-Dataset
---

# olmOCR

> ⭐18.2k · Allen Institute for AI (Ai2) · Python

## 快速導航

- 📄 **文件解析** → [[document-parsing|文件解析]]
- 🧠 **RAG** → [[rag|RAG]]
- 🔍 **OCR** → OCR
- 📦 **MinerU** → [[opendatalab-MinerU|MinerU]]

## 是什麼

olmOCR 是由 Allen Institute for AI (Ai2) 開發的開源 PDF 線性化工具包，專為 LLM 資料集建構和訓練而設計。它將 PDF、PNG、JPEG 等影像格式文件轉換成乾淨、可讀的純文字 Markdown，支援方程式、表格、手寫內容和複雜排版。

核心基於一個 7B 參數的視覺語言模型 (VLM)，能處理多欄佈局、插入圖表，並自動移除頁首頁尾。每百萬頁的轉換成本不到 200 美元，是建構大規模 LLM 訓練資料集的經濟高效方案。

最新版本 v0.4.0 在 olmOCR-Bench 上達到 82.4 分，超越 Mistral OCR API (72.0)、Marker (76.1)、MinerU (75.2)、DeepSeek-OCR (75.7) 等同類工具。

## 核心特色

- **VLM 驅動的 OCR** — 基於 7B 參數視覺語言模型 (olmOCR-2-7B-1025-FP8)，能理解複雜文件佈局、方程式和表格，不僅是傳統 OCR 文字辨識
- **自然閱讀順序** — 即使存在圖表、多欄佈局和插入內容，仍能維持正確的閱讀順序輸出
- **大規模批量處理** — 支援遠端 vLLM 推論伺服器，可分散式處理百萬頁級別的文件轉換
- **olmOCR-Bench 評測基準** — 內建 7,000+ 測試案例涵蓋 1,400 份文件的完整評測套件，橫跨 ArXiv、數學、表格、多欄等 8 個類別
- **多種安裝模式** — 輕量遠端推論、本地 GPU 推論、Beaker 叢集執行、評測套件，可依需求選擇
- **RL 訓練管線** — v0.4.0 引入合成資料和 RL 訓練，並提供簡潔的訓練程式碼讓使用者自行訓練 olmOCR 模型

## 怎麼用

### 安裝

```bash
# 建立獨立 conda 環境
conda create -n olmocr python=3.11
conda activate olmocr

# 本地 GPU 推論（需要 NVIDIA GPU ≥12GB VRAM）
pip install olmocr[gpu] --extra-index-url https://download.pytorch.org/whl/cu128

# 輕量遠端推論（不需要 GPU）
pip install olmocr
```

### 轉換 PDF

```bash
# 轉換單一 PDF
olmocr ./localworkspace --markdown --pdfs sample.pdf

# 批量轉換
olmocr ./localworkspace --markdown --pdfs *.pdf

# 使用遠端推論伺服器
olmocr ./localworkspace --server http://remote:8000/v1 \
  --model allenai/olmOCR-2-7B-1025-FP8 --markdown --pdfs *.pdf
```

結果輸出至 `./localworkspace/markdown/` 目錄。

## 跟其他方案的關係

olmOCR 是 [[document-parsing|文件解析]] 領域的頂級方案之一，專注於將 PDF 轉換為 LLM 可用的純文字格式。

| 方案 | 基準分數 | 技術路線 | 適用場景 |
|------|---------|---------|---------|
| **olmOCR** | 82.4±1.1 | 7B VLM + RL | 大規模 LLM 資料集建構 |
| [[opendatalab-MinerU|MinerU]] | 75.2±1.1 | VLM+OCR 雙引擎 | 通用文件解析 + MCP |
| [[microsoft-markitdown|MarkItDown]] | — | 傳統解析器 | 輕量快速轉換 |
| Mistral OCR API | 72.0±1.1 | 商用 API | 雲端無 GPU 場景 |
| DeepSeek-OCR | 75.7±1.0 | VLM | 多語言 OCR |
| PaddleOCR-VL | 80.0±1.0 | VLM | 高精度中文場景 |

與 [[opendatalab-MinerU|MinerU]] 相比，olmOCR 更專注於 LLM 訓練資料的管線，而 MinerU 更通用且支援 MCP Server。兩者都可搭配 [[rag|RAG]] 系統使用，提供高品質的文件解析結果。

## 相關概念

← [[document-parsing|文件解析]] · [[rag|RAG]] · OCR · [[opendatalab-MinerU|MinerU]]

## 來源

- **GitHub**: https://github.com/allenai/olmocr
- **Demo**: https://olmocr.allenai.org/
- **Tech Report v1**: https://arxiv.org/abs/2502.18443
- **Tech Report v2**: https://arxiv.org/abs/2510.19817
- **Raw**: `raw/2026-07-02-allenai-olmocr.md`

---

| 項目 | 值 |
|------|-----|
| **GitHub** | https://github.com/allenai/olmocr |
| **Stars** | ⭐18,267 |
| **License** | Apache-2.0 |
| **Language** | Python |
| **收錄日期** | 2026-07-02 |
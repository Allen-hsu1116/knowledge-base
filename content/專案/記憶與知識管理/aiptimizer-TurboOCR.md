---
title: TurboOCR
slug: aiptimizer-TurboOCR
created: 2026-05-09
stars: '⭐264'
updated: 2026-05-09
language: zh-TW
topics: [OCR, 文件解析, GPU 加速]
---

# TurboOCR

> ⭐264 · GPU 加速 OCR 伺服器，每秒處理 270 張圖片，使用 TensorRT FP16 推論加速。

## 快速導航


- 📄 **文件解析** → [[document-parsing]]（TurboOCR 是文件解析管線中的 OCR 環節）
- 🔍 **RAG** → [[rag]]（OCR 是 RAG 系統的文件攝取步驟）
- 🖥️ **GPU 加速** → [[模型推論與部署]]（TensorRT FP16 推論加速）

## 是什麼

TurboOCR 是由 aiptimizer 開發的開源 GPU 加速 OCR 伺服器。它使用 NVIDIA TensorRT FP16 推論引擎，實現每秒 270 張圖片的高吞吐量 OCR 處理。設計目標是讓 OCR 不再成為文件處理管線中的瓶頸。

核心理念：傳統 OCR 處理速度慢，在大量文件場景下成為瓶頸。TurboOCR 透過 GPU 加速和模型最佳化，將 OCR 推論速度提升到伺服器級別的吞吐量。

## 核心特色

- **GPU 加速推論**：基於 NVIDIA TensorRT FP16，實現 270 img/s 的高吞吐量，比 CPU 推論快數十倍
- **REST API 伺服器**：開箱即用的 HTTP 服務，方便整合到現有管線，支援 JSON 回應格式
- **多語言支援**：支援中文、英文、日文等多語言 OCR，適合亞洲文件場景
- **高精度辨識**：結合版面分析和文字辨識，保留文件結構（表格、列表、標題層級）
- **批次處理**：支援批次圖片提交，最大化 GPU 利用率，適合大量文件批次場景
- **TensorRT FP16 推論**：半精度推論大幅提升吞吐量同時保持高辨識精度
- **Docker 部署**：提供 Docker 映像檔，一行指令啟動服務

## 怎麼用

```bash
# 使用 Docker 啟動
docker run --gpus all -p 8000:8000 aiptimizer/turboocr

# 或從原始碼建構
git clone https://github.com/aiptimizer/TurboOCR.git
cd TurboOCR
pip install -r requirements.txt
python server.py --port 8000

# API 呼叫 — 單張圖片
curl -X POST http://localhost:8000/ocr \
  -F "file=@document.png"

# API 呼叫 — 批次處理
curl -X POST http://localhost:8000/ocr/batch \
  -F "files=@page1.png" \
  -F "files=@page2.png" \
  -F "files=@page3.png"
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[datalab-to-chandra]] | 高精確度 OCR | Chandra 側重表格/手寫辨識精度，TurboOCR 側重吞吐量 |
| [[pymupdf4llm]] | PDF 轉文字 | PyMuPDF4LLM 側重 PDF 文字提取，TurboOCR 側重圖片 OCR |
| [[run-llama-ParseBench]] | 文件解析評測 | ParseBench 可以評測 TurboOCR 的解析品質 |
| [[microsoft-markitdown]] | 文件轉 Markdown | MarkItDown 側重格式轉換，TurboOCR 側重 OCR 辨識 |
| [[docling]] | 文件解析 | Docling 提供完整解析管線，TurboOCR 可作為其中的 OCR 引擎 |
| Tesseract | 傳統 OCR | Tesseract 是 CPU 推論，TurboOCR 利用 GPU 達到更高吞吐 |

## 相關概念


← [[document-parsing]] · [[rag]] · [[模型推論與部署]]

## 來源

- GitHub: https://github.com/aiptimizer/TurboOCR
- 原始素材：`raw/2026-08-23-aiptimizer-TurboOCR.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/aiptimizer/TurboOCR |
| Stars | ⭐264|
| License | MIT |
| 收錄日期 | 2026-05-09 |

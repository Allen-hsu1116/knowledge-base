---
title: TurboOCR
created: 2026-05-09
---

# TurboOCR

> GPU 加速 OCR 伺服器（270 張/秒，TensorRT FP16 + PP-OCRv5），單請求 p50 延遲 11ms，FUNSD 基準 F1=90.2%。⭐264

## 快速導航
- 🔍 **文件解析** → [[document-parsing]]（TurboOCR 是高效能 OCR 伺服器）
- 📝 **OCR 相關** → [[ocr-memory]]（OCR 相關概念）

## 是什麼

TurboOCR 是一套用 C++ 和 CUDA 寫的 OCR 伺服器，核心引擎是 PaddleOCR v5（PP-OCRv5），透過 TensorRT FP16 推理實現極高吞吐量。在 FUNSD 表單理解基準上達到 270 張/秒（並行數 16），稀疏圖片更可達 1,200+ 張/秒。單請求 p50 延遲僅 11ms，同時 F1 分數 90.2% 比 PaddleOCR Python 版本更高。

它不只做文字辨識——還內建版面偵測（25 類區域）、閱讀順序排列、PDF 四種模式處理、gRPC 支援。

## 核心特色

- **極致效能**：270 img/s on FUNSD（並行 16），稀疏圖片 1,200+ img/s，11ms p50 延遲，比 PaddleOCR Python 快 50 倍
- **四種 PDF 處理模式**：ocr（最安全）、geometric（~10x 快）、auto（混合）、auto_verified（交叉比對）
- **版面偵測與閱讀順序**：PP-DocLayoutV3 偵測 25 種文件區域類型，class-aware XY-cut 排列閱讀順序
- **多種 API 介面**：/ocr/raw（最快）、/ocr、/ocr/batch、/ocr/pixels（零解碼路徑）、/ocr/pdf、gRPC（port 50051）
- **Docker 一行部署**：首次啟動自動從 ONNX 建 TensorRT engine（~90 秌），之後秒啟

## 怎麼用

```bash
# Docker 部署
docker run --gpus all -p 8000:8000 -p 50051:50051 \
  -v trt-cache:/home/ocr/.cache/turbo-ocr \
  ghcr.io/aiptimizer/turboocr:v2.2.2

# 快速測試
curl -X POST http://localhost:8000/ocr/raw \
  --data-binary @document.png -H "Content-Type: image/png"
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[document-parsing]] | 文件解析概念 | TurboOCR 是 OCR 引擎，是文件解析管線的一環 |
| [[ocr-memory]] | OCR 相關概念 | OCR 技術筆記 |

## 相關概念

← [[document-parsing]] · [[ocr-memory]]

## 來源

- raw/2026-05-09-aiptimizer-TurboOCR.md

---

- **GitHub**: https://github.com/aiptimizer/TurboOCR
- **Stars**: ⭐264
- **License**: MIT
- **收錄日期**: 2026-05-09
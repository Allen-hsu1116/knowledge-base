---
title: TurboOCR
created: 2026-05-09
tags: [ocr, document-parsing, gpu, tensorrt, cpp]
---

# TurboOCR — GPU 加速 OCR 伺服器（270 張/秒，TensorRT FP16 + PP-OCRv5）

> 在 NVIDIA GPU 上以 TensorRT FP16 推理 PaddleOCR v5，單請求 p50 延遲 11ms，FUNSD 基準 F1=90.2%，比 PaddleOCR Python 更快也更準。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [aiptimizer/TurboOCR](https://github.com/aiptimizer/TurboOCR) |
| Stars | ⭐264 |
| Language | C++ / CUDA |
| 建立日期 | 2026-03-20 |
| 收錄日期 | 2026-05-09 |
| 授權 | MIT |

## 快速導航

- [[document-parsing]] — 文件解析
- [[ocr-memory]] — OCR 相關概念

## 簡介

TurboOCR 是一套用 C++ 和 CUDA 寫的 OCR 伺服器，核心引擎是 PaddleOCR v5（PP-OCRv5），透過 TensorRT FP16 推理實現極高吞吐量。在 FUNSD 表單理解基準上達到 270 張/秒（並行數 16），稀疏圖片更可達 1,200+ 張/秒。單請求 p50 延遲僅 11ms，同時 F1 分數 90.2% 比 PaddleOCR Python 版本更高（使用相同模型權重）。

它不只做文字辨識——還內建版面偵測（25 類區域）、閱讀順序排列、PDF 四種模式處理、gRPC 支援，一個 binary 同時提供 HTTP 與 gRPC 服務，共享同一個 GPU pipeline pool。

## 核心特色

### 極致效能

- **270 img/s** on FUNSD A4 表單（並行數 16），稀疏圖片 **1,200+ img/s**
- **11ms p50 延遲**（單請求），適合即時場景
- TensorRT FP16 推理，比 PaddleOCR Python 快 50 倍
- F1 = 90.2% on FUNSD，比 PaddleOCR Python 使用相同權重更準確

### 四種 PDF 處理模式

| 模式 | 說明 | 速度 |
|------|------|------|
| `ocr` | 渲染 + 完整 OCR 管線（最安全） | 基準 |
| `geometric` | 僅用 PDFium 文字層，不做柵格化 | ~10x 快 |
| `auto` | 逐頁：有文字層就用，沒有就 OCR | 最適合混合 PDF |
| `auto_verified` | 完整 OCR + 交叉比對原生文字層 | 比 OCR 稍慢 |

**重要安全提醒**：`geometric` 和 `auto` 模式信任 PDF 的原生文字層，惡意 PDF 可嵌入不可見文字或字形映射。處理不受信任的上傳時應使用 `ocr` 模式。

### 版面偵測與閱讀順序

使用 PP-DocLayoutV3 偵測 25 種文件區域類型（abstract、chart、table、header、footer、reference 等），並透過 class-aware XY-cut 演算法排列閱讀順序：先 header（TOP），再 body（XY-cut 排序），最後 footer/footnote/reference（BOTTOM）。

### 多種 API 介面

- **`/ocr/raw`**：原始圖片位元組（最快路徑）
- **`/ocr`**：Base64 JSON（方便但稍慢）
- **`/ocr/batch`**：多圖批次辨識
- **`/ocr/pixels`**：零解碼路徑——直接傳 BGR 像素，省去 PNG/JPEG 解碼
- **`/ocr/pdf`**：PDF 原始位元組或多部分上傳，所有頁面平行處理
- **gRPC**：port 50051，protobuf 介面

### 部署與監控

- Docker 一行部署：`docker run --gpus all -p 8000:8000 -p 50051:50051 ghcr.io/aiptimizer/turboocr:v2.2.2`
- 首次啟動自動從 ONNX 建 TensorRT engine（~90 秌），之後快取在 volume 中秒啟
- Prometheus metrics（請求計數、延遲分佈、VRAM 使用率）在 `/metrics`
- Nginx (port 8000) 反向代理到 Drogon (port 8080) 做連線緩衝

## 安裝方式

```bash
# Docker 部署（推薦）
docker run --gpus all -p 8000:8000 -p 50051:50051 \
  -v trt-cache:/home/ocr/.cache/turbo-ocr \
  ghcr.io/aiptimizer/turboocr:v2.2.2

# 快速測試
curl -X POST http://localhost:8000/ocr/raw \
  --data-binary @document.png -H "Content-Type: image/png"
```

需求：Linux、NVIDIA driver 595+、Turing 或更新 GPU（RTX 20 系列 / GTX 16 系列+）。

## 技術棧

- **核心語言**：C++ / CUDA
- **OCR 引擎**：PP-OCRv5（PaddleOCR v5）
- **推理引擎**：TensorRT FP16
- **版面偵測**：PP-DocLayoutV3（25 類）
- **Web 伺服器**：Drogon（C++ 高效能）+ Nginx（反向代理）
- **PDF 處理**：PDFium
- **容器化**：Docker + GHCR
- **監控**：Prometheus

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/aiptimizer/TurboOCR)
- [官網](https://turboocr.com)
- [Docker Image](https://ghcr.io/aiptimizer/turboocr)
- [gRPC Proto](https://github.com/aiptimizer/TurboOCR/blob/main/proto/ocr.proto)
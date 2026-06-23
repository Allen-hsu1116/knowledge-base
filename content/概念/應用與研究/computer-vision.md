---
title: 電腦視覺
slug: computer-vision
language: zh-TW
---

# 電腦視覺

> 讓電腦理解和處理視覺資訊的 AI 領域，包括影像辨識、物體偵測、語義分割和場景理解。

## 核心內容

電腦視覺（Computer Vision，簡稱 CV）是 AI 的核心分支，目標是讓機器能從影像和影片中提取有意義的資訊。從影像分類到場景理解，CV 技術已在自動駕駛、醫療影像、工業檢測、安全監控等領域廣泛應用。

CV 的主要任務涵蓋多個層次：影像分類（識別物體類別，如 ResNet、ViT）、物體偵測（定位和辨識多個物體，如 YOLO、DETR）、語義分割（像素級場景理解，如 SAM、U-Net）、姿態估計（偵測人體關鍵點）、光學字元辨識（OCR）和 3D 視覺（深度估計和 3D 重建）。

近年 CV 的發展趨勢包括：模型無關工具箱（讓開發者自由組合不同框架的模型）、即時推理（YOLO 達到即時物體偵測速度，適合邊緣裝置）、通用分割模型（SAM 能分割任何物體）、多模態融合（Vision-Language Model 結合視覺和語言理解）和邊緣裝置部署（量化後的 CV 模型可在微控制器上即時推理）。

## 關鍵要素

- **模型無關工具箱** — 支援 Ultralytics、Transformers、MMDetection 等多種框架
- **即時推理** — YOLO 達到即時物體偵測速度，適合邊緣裝置部署
- **通用分割** — SAM 能分割任何影像中的任何物體，無需特定類別訓練
- **多模態融合** — VLM 將視覺和語言理解結合，實現視覺問答和推理
- **邊緣部署** — 量化後的 CV 模型可在 ESP32-S3 等微控制器上即時推理
- **OCR 文字辨識** — 從影像中提取文字，GPU 加速可達 270img/s

## 各框架的做法

- **supervision** → 模型無關的 CV 工具箱，支援多種偵測框架和追蹤器
  👉 詳見 [[roboflow-supervision]]
- **Mano-P** → GUI-VLA 邊緣裝置 AI，在 Edge 上實現視覺理解
  👉 詳見 [[Mininglamp-AI-Mano-P]]
- **TurboOCR** → GPU 加速 OCR 伺服器，TensorRT FP16 達 270img/s
  👉 詳見 [[aiptimizer-TurboOCR]]
- **PaddleOCR** → 80k+ Stars 的 OCR 引擎，LLM-Ready 文件解析
  👉 詳見 [[PaddlePaddle-PaddleOCR]]
- **Frigate NVR** → 邊緣 AI + 電腦視覺，自架 NVR 安全監控
  👉 詳見 [[blakeblackshear-frigate]]
- **RuView** → ESP32-S3 上的輕量視覺 AI，嵌入式 CV 部署
  👉 詳見 [[ruvnet-RuView]]

## 相關概念

- [[AI-Agent]] — 視覺是 Agent 感知環境的重要能力
- [[embedded-AI]] — CV 模型量化後可在邊緣裝置即時推理
- [[computer-use-agent]] — Computer Use Agent 依賴 CV 理解螢幕畫面
- [[document-parsing]] — OCR 是文件解析的核心技術
- [[world-model]] — 世界模型需要 CV 理解物理世界

## 來源

- supervision、PaddleOCR、TurboOCR 等專案頁面
- CVPR、ECCV、ICCV 會議論文
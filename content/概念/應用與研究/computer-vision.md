---
title: 電腦視覺
aliases:
  - Computer Vision
  - CV
---

# 電腦視覺

> 讓電腦理解和處理視覺資訊的 AI 領域，包括影像辨識、物體偵測和場景理解。

## 快速導航

- ⚡ [[AI-Agent]] · [[embedded-AI]] · [[AI-video-generation]] · [[rag]]
- 👁️ **supervision** → [[roboflow-supervision|supervision]]（電腦視覺工具箱）
- 🖥️ **Mano-P** → [[Mininglamp-AI-Mano-P|Mano-P]]（GUI-VLA 邊緣裝置 AI）
- 📄 **TurboOCR** → [[aiptimizer-TurboOCR|TurboOCR]]（GPU 加速 OCR）

## 是什麼

電腦視覺（Computer Vision，簡稱 CV）是 AI 的核心分支，目標是讓機器能從影像和影片中提取有意義的資訊。從影像分類到場景理解，CV 技術已在自動駕駛、醫療影像、工業檢測、安全監控等領域廣泛應用。

### CV 的主要任務

| 任務 | 說明 | 代表技術 |
|------|------|----------|
| 影像分類 | 識別影像中的物體類別 | ResNet、ViT |
| 物體偵測 | 定位和辨識多個物體 | YOLO、DETR |
| 語義分割 | 像素級場景理解 | SAM、U-Net |
| 姿態估計 | 偵測人體關鍵點 | OpenPose、MediaPipe |
| 光學字元辨識 | 從影像中提取文字 | PaddleOCR、TurboOCR |
| 3D 視覺 | 深度估計和 3D 重建 | NeRF、3D Gaussian Splatting |

## 核心特色

- **模型無關工具箱**：supervision 提供模型無關的 CV 工具，支援 Ultralytics、Transformers、MMDetection 等多種框架
- **即時推理能力**：YOLO 達到即時物體偵測速度，適合邊緣裝置部署
- **通用分割模型**：SAM（Segment Anything Model）能分割任何影像中的任何物體
- **多模態融合**：Vision-Language Model（VLM）將視覺和語言理解結合，實現視覺問答和推理
- **邊緣裝置部署**：量化後的 CV 模型可在 ESP32-S3 等微控制器上即時推理

## 怎麼用

### 使用 supervision 進行物體偵測

```python
import supervision as sv
from ultralytics import YOLO

# 載入模型和影片
model = YOLO("yolov8n.pt")
video = sv.VideoSource("traffic.mp4")

# 設定追蹤器和標註器
tracker = sv.ByteTrack()
box_annotator = sv.BoxAnnotator()

for frame in video:
    result = model(frame)[0]
    detections = sv.Detections.from_ultralytics(result)
    detections = tracker.update_with_detections(detections)
    annotated = box_annotator.annotate(frame, detections)
    # 輸出標註後的影格
```

### CV 技術選擇指南

| 需求 | 推薦技術 | 說明 |
|------|----------|------|
| 即時偵測 | YOLO | 速度最快的通用物體偵測 |
| 精確分割 | SAM | 通用分割，可分割任何物體 |
| 影像分類 | ViT / ResNet | 高準確率的影像分類 |
| OCR 文字辨識 | TurboOCR | GPU 加速的高精度 OCR |
| 邊緣裝置 | RuView | ESP32-S3 上的輕量視覺 AI |
| 工具箱 | supervision | 模型無關的 CV 工具鏈 |

### 常見應用場景

- **安全監控**：即時偵測異常行為和人員入侵
- **自動駕駛**：環境感知、物體偵測、車道辨識
- **工業檢測**：產品瑕疵偵測和品質控制
- **醫療影像**：病灶偵測和影像診斷輔助
- **文件數位化**：OCR 文字辨識和文件理解

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 感知 | 視覺是 Agent 感知環境的重要能力 |
| [[embedded-AI]] | 部署 | CV 模型量化後可在邊緣裝置即時推理 |
| [[AI-video-generation]] | 生成 | 影片生成需要 CV 理解視覺品質 |
| [[diffusion-model]] | 基礎 | 擴散模型依賴 CV 技術的視覺理解能力 |
| [[rag]] | 擴展 | 視覺 RAG（V-RAG）將圖像納入檢索範圍 |
| [[world-model]] | 整合 | 世界模型需要 CV 理解物理世界 |

## 相關專案

- [[roboflow-supervision|supervision]] — 電腦視覺工具箱（⭐25K+）
- [[Mininglamp-AI-Mano-P|Mano-P]] — GUI-VLA 邊緣裝置 AI
- [[aiptimizer-TurboOCR|TurboOCR]] — GPU 加速 OCR

## 相關概念

← [[AI-Agent]] · [[embedded-AI]] · [[AI-video-generation]] · [[diffusion-model]] · [[rag]] · [[world-model]]

## 來源

- [supervision 專案文件](../raw/2026-05-15-roboflow-supervision.md)
- CVPR、ECCV、ICCV 會議論文

---

_此頁由 daily-llm-trending 自動維護_
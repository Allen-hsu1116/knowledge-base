---
title: supervision
date: 2026-05-15
stars: 38878
language: Python
repo: roboflow/supervision
---

# supervision — 電腦視覺的可重用工具箱

supervision 是 Roboflow 開源的電腦視覺工具庫，從資料載入到即時區域計數，提供構建 CV 應用所需的基礎模組，讓你專注在模型之上的應用開發。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [roboflow/supervision](https://github.com/roboflow/supervision) |
| Stars | ⭐38,878 |
| Language | Python |
| 建立日期 | 2022-11-28 |
| 收錄日期 | 2026-05-15 |
| 授權 | MIT |

## 快速導航

- [[電腦視覺]] — supervision 是電腦視覺的基礎工具庫
- [[document-parsing]] — 視覺化標註工具可輔助文件解析
- [[visualization]] — 提供豐富的視覺化 annotator
- [[web-scraping]] — 即時串流處理可結合網路攝影機資料

## 詳細簡介

supervision 的設計哲學是「模型無關」。不管你用的是 Ultralytics YOLO、HuggingFace Transformers、MMDetection 還是 Roboflow Inference，只要插入模型輸出，supervision 就能處理後續的視覺化、追蹤、區域分析等工作。它的核心抽象是 `sv.Detections`，一個統一的偵測結果格式，所有模型連接器都輸出這個格式。

這個函式庫在電腦視覺工作流程中的定位很明確：模型負責推理，supervision 負責推理之後的所有事——標註畫框、追蹤物件、計算區域內數量、估計速度、分割資料集、轉換格式。你不需要為每個模型重新寫這些工具。

## 核心特色

### 模型連接器

supervision 內建多個模型連接器，一行程式碼就能把模型輸出轉為 `sv.Detections`：
- **Ultralytics** — YOLO 系列模型
- **Transformers** — HuggingFace 的偵測/分割模型
- **MMDetection** — OpenMMLab 的偵測框架
- **Inference** — Roboflow 自家的推理引擎
- **RF-DETR** — 直接回傳 sv.Detections 的新架構

### 高度可定制的標註器

supervision 提供一系列 annotator，每個都可以獨立調整顏色、粗細、圓角、透明度等參數，讓你組合出最適合你場景的視覺化效果。BoxAnnotator 只是起點，還有 MaskAnnotator、LabelAnnotator、TraceAnnotator 等，支援影片逐幀標註。

### 資料集工具

supervision 的資料集工具可以：
- **載入**：從 COCO、YOLO、Pascal VOC 格式讀取
- **分割**：一行程式碼把資料集分成 train/test/valid
- **合併**：多個不同類別的資料集合併為一個，自動處理類別衝突
- **儲存**：匯出為 COCO、YOLO、Pascal VOC
- **轉換**：格式間互相轉換，如 YOLO → Pascal VOC

### 即時區域分析

supervision 內建區域（Zone）和線段（Line Zone）分析功能，可以：
- 定義多邊形區域，計算區域內的物件數量
- 設定穿越線，計算經過的物體數量
- 追蹤物件停留時間（Dwell Time）
- 估計車輛速度（搭配透視轉換）

## 安裝方式

```bash
# 基本安裝
pip install supervision

# 含額外依賴
pip install pillow rfdetr

# 使用 Conda
conda install -c conda-forge supervision
```

```python
import supervision as sv
from rfdetr import RFDETRSmall
from PIL import Image

image = Image.open("photo.jpg")
model = RFDETRSmall()
detections = model.predict(image, threshold=0.5)

# 使用 annotator 視覺化
box_annotator = sv.BoxAnnotator()
annotated_frame = box_annotator.annotate(
    scene=image.copy(), detections=detections
)
```

## 技術棧

- **Python** — 主要語言（≥ 3.9）
- **OpenCV** — 影像處理基礎
- **NumPy** — 陣列運算
- **Ultralytics / Transformers / MMDetection** — 模型連接器
- **Roboflow Inference** — 自家推理引擎

## 相關連結

- [GitHub Repo](https://github.com/roboflow/supervision)
- [官方文件](https://roboflow.github.io/supervision)
- [Cheatsheet](https://roboflow.github.io/cheatsheet-supervision/)
- [Cookbooks](https://supervision.roboflow.com/develop/cookbooks/)
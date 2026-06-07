---



title: supervision
slug: roboflow-supervision
created: 2026-05-15
stars: '⭐38878'



updated: 2026-05-15
language: zh-TW
topics: []
---

# supervision

> 電腦視覺的可重用工具箱，從資料載入到即時區域計數，提供構建 CV 應用所需的基礎模組。⭐38,878

## 快速導航
- 🖥️ **電腦視覺** → [[visualization]]（提供豐富的視覺化 annotator）
- 🔍 **文件解析** → [[document-parsing]]（視覺化標註工具可輔助文件解析）
- 🌐 **網頁爬蟲** → [[web-scraping]]（即時串流處理可結合網路攝影機資料）

## 是什麼

supervision 是 Roboflow 開源的電腦視覺工具庫，設計哲學是「模型無關」。不管你用的是 Ultralytics YOLO、HuggingFace Transformers、MMDetection 還是 Roboflow Inference，只要插入模型輸出，supervision 就能處理後續的視覺化、追蹤、區域分析等工作。核心抽象是 `sv.Detections`，一個統一的偵測結果格式。

## 核心特色

- **模型連接器**：Ultralytics、Transformers、MMDetection、Inference、RF-DETR，一行程式碼輸出 sv.Detections
- **高度可定制的標註器**：BoxAnnotator、MaskAnnotator、LabelAnnotator、TraceAnnotator 等，支援影片逐幀標註
- **資料集工具**：載入（COCO/YOLO/Pascal VOC）、分割、合併、儲存、格式轉換，一站搞定資料集管理
- **即時區域分析**：多邊形區域計數、穿越線計數、停留時間估計、車輛速度估計
- **追蹤與分析**：內建 ByteTrack 和 BOT-SORT 追蹤器整合，支援軌跡視覺化
- **Python >= 3.9**：相容現代 Python 生態系

## 怎麼用

```bash
# 基本安裝
pip install supervision
```

```python
import supervision as sv
from rfdetr import RFDETRSmall
from PIL import Image

# 載入圖片並偵測
image = Image.open("photo.jpg")
model = RFDETRSmall()
detections = model.predict(image, threshold=0.5)

# 標註 bounding boxes
box_annotator = sv.BoxAnnotator()
annotated_frame = box_annotator.annotate(
    scene=image.copy(), detections=detections
)

# 區域計數
polygon = sv.PolygonZone(polygon=[[0, 0], [100, 0], [100, 100], [0, 100]])
count = polygon.trigger(detections=detections)

# 追蹤（影片處理）
tracker = sv.ByteTrack()
for frame in video_frames:
    detections = model.predict(frame)
    tracks = tracker.update_with_detections(detections)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[visualization]] | 視覺化 | supervision 提供豐富的 CV 視覺化工具 |
| [[document-parsing]] | 文件解析 | 視覺化標註工具可輔助文件解析場景中的版面分析 |
| Ultralytics YOLO | 偵測模型 | YOLO 是偵測模型，supervision 是後處理工具箱 |
| OpenCV | 視覺基礎庫 | OpenCV 提供基礎影像操作，supervision 提供 CV 專用高階抽象 |
| Roboflow Inference | 推論服務 | Inference 是 Roboflow 的推論引擎，supervision 可直接接收其輸出 |

## 相關概念

← [[visualization]] · [[document-parsing]] · [[web-scraping]]

## 來源

- raw/2026-05-15-roboflow-supervision.md

---

- **GitHub**: https://github.com/roboflow/supervision
- **Stars**: ⭐38,878
- **License**: MIT
- **收錄日期**: 2026-05-15
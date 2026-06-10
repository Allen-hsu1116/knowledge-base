---
title: OpenCV
slug: opencv-opencv
created: 2012-07-19
updated: 2026-06-08
stars: 88086
language: C++
topics:
  - computer-vision
  - deep-learning
  - image-processing
  - opencv
---

# OpenCV

> ⭐88k · 開源電腦視覺庫——影像處理、深度學習推論、物件偵測、3D 重建一站式工具集，自 2012 年起持續維護，是全球最廣泛使用的 CV 基礎建設。

## 快速導航

- [[computer-vision]] — 電腦視覺核心概念
- [[deep-learning]] — 深度學習相關技術
- [[模型推論與部署]] — 模型部署策略
- [[roboflow-supervision]] — 另一個影像辨識工具

## 是什麼

OpenCV（Open Source Computer Vision Library）是由 Intel 發起、全球社群共同維護的開源電腦視覺庫。自 2012 年建立以來，它已成為影像處理和電腦視覺領域的事實標準，涵蓋从基礎影像操作、特徵偵測、相機校正到深度學習推論（DNN module）的完整工具鏈。

OpenCV 提供 C++、Python、Java、MATLAB 等多語言介面，並支援 Windows、Linux、macOS、Android、iOS 全平台。核心模組超過 2500 個演算法，從濾波、幾何變換、色彩空間轉換到人臉偵測、物件追蹤、光流估計、3D 重建等進階功能一應俱全。

## 核心特色

- **2500+ 演算法**：涵蓋影像處理、特徵偵測、物件追蹤、光流、3D 重建、機器學習等完整 CV 管線
- **DNN 推論模組**：內建深度學習推論引擎，支援 ONNX、Caffe、TensorFlow 等格式，可直接載入模型做推論
- **全平台支援**：Windows、Linux、macOS、Android、iOS、WebAssembly 一套程式碼到處跑
- **多語言介面**：C++ 原生核心，Python、Java、MATLAB 等官方綁定，社群提供 Rust、Go、Ruby 等
- **OpenCV Contrib**：透過 opencv_contrib 擴充模組取得 ARUCO 標記、文字辨識、深度圖處理等進階功能
- **GPU 加速**：CUDA、OpenCL、Vulkan 加速，關鍵運算可在 GPU 上平行執行

## 怎麼用

**Python（最泛用）：**
```bash
pip install opencv-python
```

```python
import cv2

img = cv2.imread("photo.jpg")
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + "haarcascade_frontalface_default.xml")
faces = face_cascade.detectMultiScale(gray, 1.1, 4)
for (x, y, w, h) in faces:
    cv2.rectangle(img, (x, y), (x+w, y+h), (255, 0, 0), 2)
cv2.imwrite("output.jpg", img)
```

**C++ 從原始碼建構：**
```bash
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
cd opencv && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
make -j$(nproc) && sudo make install
```

## 跟其他方案的關係

| 專案 | 定位 | 與 OpenCV 的關係 |
|------|------|-----------------|
| [[roboflow-supervision\|Supervision]] | 影像標註與後處理 | 上層工具：用 Supervision 做標註和視覺化，底層推論可接 OpenCV DNN |
| Pillow | 基礎影像處理（Python） | Pillow 更簡單易用，OpenCV 功能更全面，含深度學習推論 |
| scikit-image | 科學影像分析（Python） | 偏學術研究，OpenCV 偏工業應用和即時處理 |
| MediaPipe | Google 手部/人體追蹤 | MediaPipe 專注特定任務，OpenCV 提供通用 CV 工具箱 |
| [[模型推論與部署]] | 部署概念 | OpenCV DNN 是輕量推論選項之一 |

← [[computer-vision]] · [[deep-learning]] · [[模型推論與部署]] · [[roboflow-supervision]]

## 來源

- GitHub: [opencv/opencv](https://github.com/opencv/opencv)
- raw/opencv-opencv.md

---

| 項目 | 內容 |
|------|------|
| GitHub | [opencv/opencv](https://github.com/opencv/opencv) |
| Stars | ⭐88,086 |
| License | Apache-2.0 |
| Language | C++ |
| 收錄日期 | 2026-06-08 |
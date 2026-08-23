---
title: LocateAnything (NVIDIA)
slug: nvidia-locate-anything
created: 2026-06-05
updated: 2026-08-23
language: zh-TW
---

# LocateAnything (NVIDIA)

> 📄 NVIDIA Research 提出的統一視覺定位框架，透過 Parallel Box Decoding (PBD) 一次 forward pass 解碼整個 bounding box，同時提升速度與精度。搭配 1.38 億訓練樣本的 LocateAnything-Data，在多個基準測試上推進 speed-accuracy 前沿。

## 核心內容

LocateAnything 是 NVIDIA Research 發表的統一視覺定位與偵測框架。它解決的核心問題是：現有 VLM（視覺語言模型）將 2D bounding box 序列化為 1D token 序列逐個解碼，這既破壞了 box 內部幾何耦合性，又造成推理瓶頸。

**Parallel Box Decoding (PBD)** 是關鍵創新：將每個幾何單元（bounding box、point）作為原子單位，在單一步驟中平行解碼，而非將座標拆成多個 token 逐一生成。這同時保留 box 內幾何一致性，並大幅解鎖平行度。

## 關鍵要素

- 將 bounding box 的 (x1, y1, x2, y2) 作為一個原子單位解碼，而非逐 token 生成
- 三種解碼方式對比：
- 超過 138M（1.38 億）訓練樣本
- 可擴展的資料引擎自動策展
- 大幅提升資料多樣性，改善高精度定位
- Object detection（物件偵測）

## 各框架的做法

- **roboflow-supervision** → 展示此主題在實際專案或工具中的做法
  👉 詳見 [[roboflow-supervision]]
- **huggingface-transformers** → 展示此主題在實際專案或工具中的做法
  👉 詳見 [[huggingface-transformers]]

## 延伸筆記

### 原有筆記：快速導航
- 🤖 [[AI-Agent]] — Agent 需要精確的視覺定位能力
- 🖥️ [[computer-vision]] — 電腦視覺基礎
- 🧠 [[flash-attention]] — 高效注意力機制

### 原有筆記：是什麼
LocateAnything 是 NVIDIA Research 發表的統一視覺定位與偵測框架。它解決的核心問題是：現有 VLM（視覺語言模型）將 2D bounding box 序列化為 1D token 序列逐個解碼，這既破壞了 box 內部幾何耦合性，又造成推理瓶頸。

**Parallel Box Decoding (PBD)** 是關鍵創新：將每個幾何單元（bounding box、point）作為原子單位，在單一步驟中平行解碼，而非將座標拆成多個 token 逐一生成。這同時保留 box 內幾何一致性，並大幅解鎖平行度。

### 原有筆記：核心特色
**1. Parallel Box Decoding (PBD)**
- 將 bounding box 的 (x1, y1, x2, y2) 作為一個原子單位解碼，而非逐 token 生成
- 三種解碼方式對比：
  - Textual Digits：「1024」→ 4 個 token（1, 0, 2, 4）
  - Quantized Tokens：x1→y1→x2→y2（4 步序列）
  - **PBD：整個 box 一次 forward pass**（1 步）

**2. LocateAnything-Data — 大規模訓練資料引擎**
- 超過 138M（1.38 億）訓練樣本
- 可擴展的資料引擎自動策展
- 大幅提升資料多樣性，改善高精度定位

**3. 統一框架 — 多種定位任務**
- Object detection（物件偵測）
- Referring expression comprehension（指代表達理解）
- Grounding captioning（定位描述）
- Region captioning（區域描述）
- Point grounding（點定位）

**4. On-Demand Inference Modes**
- 支援不同推理模式：精確模式、高速模式
- 可根據場景需求調整速度-精度平衡

### 原有筆記：怎麼用
```bash

pip install torch transformers



```

**模型與 Demo：**
- HuggingFace Model: 可下載預訓練模型
- HuggingFace Demo: 線上試用
- Project Page: https://research.nvidia.com/labs/lpr/locate-anything/

**使用場景：**
- 需要高效且精確的視覺定位（如機器人抓取、UI 自動化、圖片編輯）
- 現有 VLM 的 sequential token 解碼成為推理瓶頸時
- 需要統一的 detection + grounding 框架取代多個專用模型

### 原有筆記：跟其他方案的關係
| 方法 | 解碼方式 | Box 一致性 | 推理速度 | 高 IoU 精度 | 訓練資料規模 |
|------|---------|-----------|---------|------------|------------|
| **LocateAnything (PBD)** | 平行（1 step/box） | ✅ 原子單位 | 🟢 高 | 🟢 優 | 138M+ |
| Qwen-VL (Textual Digits) | 序列（4+ tokens/box） | ❌ 獨立 token | 🟡 中 | 🟡 中 | — |
| Kosmos-2 (Quantized) | 序列（4 tokens/box） | ❌ 逐 token | 🟡 中 | 🟡 中 | — |
| Grounding DINO | 傳統偵測頭 | ✅ 原子 | 🟢 高 | 🟡 專用 | — |
| YOLO 系列 | 傳統偵測頭 | ✅ 原子 | 🟢 極高 | 🟡 一般 | — |

**關鍵差異：** 傳統 detector（如 YOLO/Grounding DINO）雖然也是原子解碼，但它們是封閉詞彙或需要專用架構。LocateAnything 在開放詞彙的 generative VLM 框架內實現原子解碼，同時享受 VLM 的語義理解能力。

### 原有筆記：相關概念
← [[AI-Agent]] · [[computer-vision]] · [[flash-attention]]

### 原有筆記：來源
- PDF: https://research.nvidia.com/labs/lpr/locate-anything/LocateAnything.pdf
- Raw: `raw/2026-06-05-nvidia-locate-anything.md`

### 延伸筆記：核心特色
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

### 延伸筆記：快速導航
- 🔗 **延伸主題** → [[roboflow-supervision]]
- 🔗 **延伸主題** → [[huggingface-transformers]]

### 延伸筆記：跟其他方案的關係
| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[roboflow-supervision]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[huggingface-transformers]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念

- [[AI-Agent]]
- [[computer-vision]]
- [[flash-attention]]
- [[LLM]]
- [[AI-Skills]]

## 來源

- https://research.nvidia.com/labs/lpr/locate-anything/
- https://research.nvidia.com/labs/lpr/locate-anything/LocateAnything.pdf
- https://github.com/SandAI-org/MagiAttention
- `raw/2026-06-05-nvidia-locate-anything.md`
- Raw: `raw/2026-06-05-nvidia-locate-anything.md`

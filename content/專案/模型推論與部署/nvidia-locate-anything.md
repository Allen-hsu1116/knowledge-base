---
title: LocateAnything (NVIDIA)
slug: nvidia-locate-anything
created: 2026-06-05
updated: 2026-06-05
stars: —
language: Python
---

# LocateAnything

> 📄 NVIDIA Research 提出的統一視覺定位框架，透過 Parallel Box Decoding (PBD) 一次 forward pass 解碼整個 bounding box，同時提升速度與精度。搭配 1.38 億訓練樣本的 LocateAnything-Data，在多個基準測試上推進 speed-accuracy 前沿。

## 快速導航

- 🤖 [[AI-Agent]] — Agent 需要精確的視覺定位能力
- 🖥️ [[computer-vision]] — 電腦視覺基礎
- 🧠 [[flash-attention]] — 高效注意力機制

## 是什麼

LocateAnything 是 NVIDIA Research 發表的統一視覺定位與偵測框架。它解決的核心問題是：現有 VLM（視覺語言模型）將 2D bounding box 序列化為 1D token 序列逐個解碼，這既破壞了 box 內部幾何耦合性，又造成推理瓶頸。

**Parallel Box Decoding (PBD)** 是關鍵創新：將每個幾何單元（bounding box、point）作為原子單位，在單一步驟中平行解碼，而非將座標拆成多個 token 逐一生成。這同時保留 box 內幾何一致性，並大幅解鎖平行度。

## 核心特色

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

## 怎麼用

**模型與 Demo：**
- HuggingFace Model: 可下載預訓練模型
- HuggingFace Demo: 線上試用
- Project Page: https://research.nvidia.com/labs/lpr/locate-anything/

**使用場景：**
- 需要高效且精確的視覺定位（如機器人抓取、UI 自動化、圖片編輯）
- 現有 VLM 的 sequential token 解碼成為推理瓶頸時
- 需要統一的 detection + grounding 框架取代多個專用模型

## 跟其他方案的關係

| 方法 | 解碼方式 | Box 一致性 | 推理速度 | 高 IoU 精度 | 訓練資料規模 |
|------|---------|-----------|---------|------------|------------|
| **LocateAnything (PBD)** | 平行（1 step/box） | ✅ 原子單位 | 🟢 高 | 🟢 優 | 138M+ |
| Qwen-VL (Textual Digits) | 序列（4+ tokens/box） | ❌ 獨立 token | 🟡 中 | 🟡 中 | — |
| Kosmos-2 (Quantized) | 序列（4 tokens/box） | ❌ 逐 token | 🟡 中 | 🟡 中 | — |
| Grounding DINO | 傳統偵測頭 | ✅ 原子 | 🟢 高 | 🟡 專用 | — |
| YOLO 系列 | 傳統偵測頭 | ✅ 原子 | 🟢 極高 | 🟡 一般 | — |

**關鍵差異：** 傳統 detector（如 YOLO/Grounding DINO）雖然也是原子解碼，但它們是封閉詞彙或需要專用架構。LocateAnything 在開放詞彙的 generative VLM 框架內實現原子解碼，同時享受 VLM 的語義理解能力。

## 相關概念

← [[AI-Agent]] · [[computer-vision]] · [[flash-attention]]

## 來源

- PDF: https://research.nvidia.com/labs/lpr/locate-anything/LocateAnything.pdf
- Raw: `raw/2026-06-05-nvidia-locate-anything.md`

---

| 項目 | 值 |
|------|-----|
| 類型 | 研究論文 |
| 發布者 | NVIDIA Research |
| 年份 | 2026 |
| 作者 | Shihao Wang, Shilong Liu 等 |
| 收錄日期 | 2026-06-05 |

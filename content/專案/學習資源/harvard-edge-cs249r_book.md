---
title: Machine Learning Systems (CS249r)
slug: harvard-edge-cs249r_book
created: 2026-07-03
updated: 2026-07-03
stars: 25586
language: Python
topics:
  - artificial-intelligence
  - machine-learning-systems
  - deep-learning
  - edge-machine-learning
  - embedded-ml
  - tinyml
  - textbook
  - computer-systems
  - cloud-ml
  - courseware
---

# Machine Learning Systems (CS249r)

> ⭐25586 · 哈佛 ML Systems 教科書，從模型到基礎設施的完整 AI 工程課程，MIT Press 2026 出版

## 快速導航


- 📖 **學習資源** → [[microsoft-AI-For-Beginners|AI for Beginners]] · [[rasbt-LLMs-from-scratch|LLMs from Scratch]]
- 🧠 **模型推論** → [[模型推論與部署]] · [[vLLM]]
- 🔧 **邊緣 AI** → [[embedded-AI|邊緣裝置 AI]] · [[NVlabs-Sana|Sana]]

## 是什麼

CS249r Book 是哈佛大學（Harvard）的 Machine Learning Systems 開源教科書，由 Vijay Janapa Reddi 教授主導。它的使命是把 AI engineering 建立成一門與軟體工程、計算機工程並立的基礎學科——不只是訓練模型，而是設計、建構和評估端到端的智慧系統。目標是今年幫助 10 萬學習者掌握 ML Systems，2030 年達到 100 萬人。

這不是一本只有文字的教科書。整個 repo 就是課程本身，包含七個相互關聯的組件：教科書（雙卷，MIT Press 2026 紙質版）、互動式 Labs（Marimo notebook）、TinyTorch（從零建構 ML 框架，20 個漸進模組）、硬體 Kits（Arduino/Seeed/Raspberry Pi 部署）、MLSys·im（基礎設施模擬器）、StaffML（面試題庫與模擬面試）、以及教師 Hub（教學大綱、簡報、TA 手冊）。

學習迴圈是：Read → Explore → Build → Model → Deploy → Practice → Teach。教科書給你心智模型，Labs 讓你互動探索 trade-off，TinyTorch 讓你從零建構內部機制，硬體 Kits 讓你面對真實部署限制，MLSys·im 讓你模擬無法負擔的基礎設施規模。每個組件都因為「只讀不動手記不住，只寫不理解」的教學理念而存在。

## 核心特色

- **雙卷教科書**：Volume I + Volume II，涵蓋從演算法到基礎設施的完整 ML Systems 知識
- **TinyTorch**：20 個漸進模組，從零建構自己的 ML 框架，真正理解系統內部
- **互動式 Labs**：Marimo notebook，改一個參數看什麼壞掉，建立直覺
- **硬體 Kits**：Arduino、Seeed、Grove、Raspberry Pi 部署，真實記憶體/功耗/延遲限制
- **MLSys·im 模擬器**：計算記憶體瓶頸、網路飽和、排程限制，模擬無法存取的基礎設施規模
- **StaffML 面試準備**：物理基礎的面試題庫、模擬面試、進度追蹤
- **教師 Hub**：兩份 16 週教學大綱、評分 rubric、TA 手冊、Beamer 簡報
- **多語言支援**：英文、中文、日文、韓文 README

## 怎麼用

使用：

```bash
# 克隆 repo
git clone https://github.com/harvard-edge/cs249r_book.git
cd cs249r_book

# 線上閱讀教科書
# Volume I: https://mlsysbook.ai/vol1/
# Volume II: https://mlsysbook.ai/vol2/

# 啟動 Labs（需要 Python 3.10+）
cd labs
pip install -r requirements.txt
marimo run lab_00_introduction.py

# TinyTorch（從零建構 ML 框架）
# https://mlsysbook.ai/tinytorch/

# MLSys·im 模擬器
# https://mlsysbook.ai/mlsysim/

# StaffML 面試題庫
# https://mlsysbook.ai/staffml/
```

學習路徑：
1. 學生 → 讀 Volume I + 做 Lab 00 → 建 TinyTorch + 用 MLSys·im + 練 StaffML
2. 教師 → 開 AI Engineering Blueprint → 用課程地圖、簡報、rubric、TA 指南
3. 貢獻者 → 選最常用的組件 → 改進章節、Labs、測試、範例

## 跟其他方案的關係


- **[[microsoft-AI-For-Beginners|AI for Beginners]]** → 微軟 12 週 AI 入門課程，CS249r 更深入系統工程層面
- **[[rasbt-LLMs-from-scratch|LLMs from Scratch]]** → 從零建構 LLM，CS249r 更廣泛涵蓋 ML 系統全貌
- **[[mlabonne-llm-course|LLM Course]]** → LLM 專項學習路線圖，CS249r 是完整 ML Systems 課程
- **[[krahets-hello-algo|Hello 算法]]** → 演算法與資料結構入門，CS249r 聚焦 ML 系統工程
- **TinyTorch vs PyTorch** → TinyTorch 是教學用的迷你框架，[[pytorch-pytorch|PyTorch]] 是生產級框架

← [[microsoft-AI-For-Beginners|AI for Beginners]] · [[rasbt-LLMs-from-scratch|LLMs from Scratch]] · [[模型推論與部署]]

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[microsoft-AI-For-Beginners]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[rasbt-LLMs-from-scratch]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[microsoft-AI-For-Beginners]] · [[rasbt-LLMs-from-scratch]] · [[模型推論與部署]] · [[vLLM]]

## 來源

- GitHub: <https://github.com/harvard-edge/cs249r_book>
- 官網: <https://mlsysbook.ai>
- Volume I: <https://mlsysbook.ai/vol1/>
- Volume II: <https://mlsysbook.ai/vol2/>
- 原始 README: `raw/2026-07-03-harvard-edge-cs249r_book.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/harvard-edge/cs249r_book |
| Stars | ⭐25586|
| License | CC-BY-NC-SA 4.0 |
| 收錄日期 | 2026-07-03 |

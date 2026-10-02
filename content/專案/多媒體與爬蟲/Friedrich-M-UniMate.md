---
title: UniMate
slug: Friedrich-M-UniMate
created: '2026-10-02'
updated: '2026-10-02'
stars: 1079
language: zh-TW
topics:
- generative-AI
- computer-vision
---

# UniMate

> ⭐1.1k · 以文字條件與統一模型生成多種骨架的 3D 動作，採 flow matching 訓練。

## 快速導航

- [[generative-AI]] — 相關原理與使用邊界。
- [[computer-vision]] — 相鄰技術與應用脈絡。

## 是什麼

UniMate 是文字條件的 3D 骨架動作生成研究專案，目標是讓同一模型處理人形、四足、鳥類與其他拓樸，不必為每一種骨架重新訓練。它屬生成式 AI／圖形學，不是聊天 LLM；README 說明預設使用 flan-t5-base 編碼文字與關節名稱。

專案釋出訓練、推論及資料處理程式，並介紹包含 13,006 段文字配對動作的 UniML3D。模型以 flow matching 學習由雜訊到動作的速度場，搭配遮罩、旋轉與平滑損失。上游同時提醒許多動作和骨架仍會失敗，新 rig 的官方前處理流程在此快照仍列 TODO，不能將研究展示理解為任意資產即插即用。

## 核心特色

- **跨骨架條件生成**：以骨架拓樸、T-pose 及文字條件產生 articulated motion。

- **兩類 attention 配置**：提供 graph＋adaLN 與 full＋cross-attention 配對供比較。

- **Flow matching 訓練**：結合 masked L2、旋轉及速度平滑損失。

- **動作補間與編輯**：固定部分影格或關節，生成其餘動作。

- **長動作擴展**：以相鄰片段重疊的固定影格銜接多段文字指令。

- **資料處理到網格動畫**：包含特徵擷取與動畫 GLB／FBX 匯出流程。

## 怎麼用

### 安裝

以下為文件指令，並非本次任務的執行紀錄。

```bash
git clone https://github.com/Friedrich-M/UniMate.git
cd UniMate
conda create -n unimate python=3.10 -y
conda activate unimate
pip install "setuptools<81"
pip install -r requirements.txt --no-build-isolation
```

### 使用流程

1. 先依資料來源取得合法資產，建立 dataset/features/<dataset>/，再下載相容 checkpoint。

2. 推論需要訓練輸出內的 config.json、dataset_stats.npy 與 checkpoints；不是只有權重即可。

3. 使用 python -m unimate.inference.sample --exp_dir outputs/uniml3d_60frames_graph_adaln --test_cases_json test_cases.json 執行官方形式的取樣。

4. test_cases.json 的 object_type 必須存在資料集；輸出包含動作 .npy 與可選渲染，未在本次任務實跑。

### 限制與注意事項

- 程式碼 MIT 不涵蓋所有資料：Truebones 動作需購買，Mixamo 與 Objaverse 資產各有授權。

- 「即時、無逐骨架重新訓練」為上游描述；本次未測延遲、GPU 記憶體需求或泛化成功率。

## 跟其他方案的關係

以下為依功能定位整理的比較，不是效能排名。

| 方案 | 定位 | 適用差異 |
|---|---|---|
| UniMate | 文字與骨架條件的動作生成 | 生成關節動作，不直接等同像素影片生成 |
| 人工 keyframe 動畫 | 由動畫師指定姿態與時間 | 控制精細，與生成結果整理可互補 |
| 文字生成影片 | 直接生成視覺影格 | 不保證提供可編輯骨架或網格動畫 |

## 相關概念

← [[generative-AI]] · [[computer-vision]]

## 來源

- GitHub：https://github.com/Friedrich-M/UniMate
- 原始 README 快照：`raw/2026-10-02-Friedrich-M-UniMate.md`
- Stars 與程式語言為 2026-10-02 GitHub API 快照；功能描述以當日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Friedrich-M/UniMate |
| Stars | 1,079 |
| License | MIT（程式碼）；資料依各來源授權 |
| Language | Python |
| 收錄日期 | 2026-10-02 |

---
title: LingBot-Map
slug: Robbyant-lingbot-map
created: 2026-10-10
updated: 2026-10-10
stars: 17701
language: Python
topics: [computer-vision, streaming-3d-reconstruction, geometric-context-transformer]
---

# LingBot-Map

> ⭐17.7k · 以 Geometric Context Transformer 從連續影像串流重建三維場景的研究專案；不是聊天 LLM。

## 快速導航

- [[computer-vision]] — 深度、相機姿態與三維場景重建。
- [[world-model]] — 可重建生成影片，但重建器不等於世界生成模型。

## 是什麼

LingBot-Map 是 Robbyant 團隊提出的串流三維重建模型與實作。它接收影像序列或影片，以 feed-forward 架構逐步估計幾何與相機資訊，並提供瀏覽器互動視覺化及離線渲染流程。

核心是 Geometric Context Transformer：將 anchor context、pose-reference window 與 trajectory memory 結合，處理座標基準、密集幾何提示和長距離漂移修正。它與語言模型共用 Transformer、KV cache 等技術思路，但任務是視覺幾何，不應歸為通用 LLM 或 Agent 框架。

官方 README 宣稱在指定解析度下可達約 20 FPS，並展示超過萬幀的長序列。本頁未實測速度；硬體、attention 後端、關鍵幀與視覺化設定都會影響結果。

## 核心特色

- **幾何上下文整合**：三種上下文機制共同維持串流重建的空間一致性。
- **Paged KV cache**：推薦 FlashInfer，另提供 PyTorch SDPA fallback。
- **關鍵幀快取**：非關鍵幀仍輸出預測，但不持續增加快取。
- **Windowed 模式**：長距離或姿態崩潰時可透過視窗重設狀態並保留重疊資訊。
- **互動與離線輸出**：`demo.py` 提供 viser；batch pipeline 可產生點雲巡覽 MP4。
- **可追溯評估入口**：README 提供 KITTI、Oxford Spires 等 benchmark 與前處理線索。

## 怎麼用

### 安裝

以下依官方 CUDA 路徑整理，需相容 NVIDIA GPU；不是 macOS 原生 GPU 安裝指南。

```bash
git clone https://github.com/Robbyant/lingbot-map.git
cd lingbot-map
conda create -n lingbot-map python=3.10 -y
conda activate lingbot-map
pip install torch==2.8.0 torchvision==0.23.0 --index-url https://download.pytorch.org/whl/cu128
pip install -e ".[vis]"
pip install --index-url https://pypi.org/simple flashinfer-python
```

### 執行範例

先從 README 指向的 Hugging Face 或 ModelScope 下載權重，將 placeholder 改為真實檔案路徑。

```bash
python demo.py --model_path /path/to/lingbot-map.pt \
  --image_folder example/courthouse
```

互動 viewer 預設使用 `http://localhost:8080`。不安裝 FlashInfer 時，可加 `--use_sdpa`。

### 長序列與資源限制

- 超長影片可改用 `--mode windowed`，再按資料調整關鍵幀間隔。
- README 說明 video RoPE 以 320 views 訓練；增加影片長度不代表可無限增加有效幾何範圍。
- `--offload_to_cpu` 與降低 `--num_scale_frames` 可調整 GPU 記憶體壓力。
- 離線 renderer 另需 render dependencies、Kaolin、ffmpeg 與 CUDA extensions。
- `--mask_sky` 需要 ONNX runtime 與天空分割模型，首次執行可能下載額外檔案。

本次只核對文件並收錄，未安裝模型或執行推論。

## 跟其他方案的關係

| 方案或方法 | 主要定位 | 如何比較 |
|---|---|---|
| LingBot-Map | 串流影像到三維幾何 | 適合逐幀輸入及長序列重建研究 |
| 迭代最佳化式重建 | 對幾何或場景參數反覆求解 | 與 feed-forward 主路徑不同，精度與速度須按相同資料實測 |
| 世界模型 | 生成或預測環境演變 | 可提供待重建影片，但不等同幾何重建器 |
| 通用聊天 LLM | 文字理解、生成與工具使用 | 可協助操作流程，不是本專案的模型任務 |

以上為任務與架構定位比較，不表示本地驗證過官方 benchmark 優勢。

## 相關概念

← [[computer-vision]] · [[world-model]]

## 來源

- [GitHub：Robbyant/lingbot-map](https://github.com/Robbyant/lingbot-map)
- [官方 README](https://github.com/Robbyant/lingbot-map/blob/main/README.md)
- 原始快照：`raw/2026-10-10-Robbyant-lingbot-map.md`
- Metadata 快照：`raw/2026-10-10-Robbyant-lingbot-map.metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Robbyant/lingbot-map |
| Stars | 17,701（2026-10-10 快照） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-10-10 |

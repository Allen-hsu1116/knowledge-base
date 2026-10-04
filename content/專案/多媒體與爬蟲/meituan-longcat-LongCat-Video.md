---
title: LongCat-Video
slug: meituan-longcat-LongCat-Video
created: 2026-10-04
updated: 2026-10-04
stars: 8740
language: zh-TW
topics: [AI-video-generation, generative-AI]
---

# LongCat-Video

> ⭐8.7k · 統一文字、圖片與影片延續生成，另提供音訊驅動 Avatar 的開源影片模型與推論程式。

## 快速導航

- 🎬 [[AI-video-generation]] — 文字轉影片、影片延伸及音訊驅動角色。
- 🧠 [[generative-AI]] — 跨模態條件生成與生成品質評估。

## 是什麼

LongCat-Video 是美團 LongCat 團隊的影片生成專案，基礎模型有 13.6B 參數，在同一架構內支援 Text-to-Video、Image-to-Video 與 Video-Continuation。Repo 不只是權重下載入口，還包含安裝流程、單卡／多卡推論範例、長影片和互動生成程式，因此以專案頁收錄。

其長影片路線把 Video-Continuation 納入預訓練，並使用時空 coarse-to-fine 生成與 Block Sparse Attention 改善推論效率。官方宣稱可生成分鐘級影片及 720p、30fps 輸出；這些是來源描述，實際速度和品質仍依硬體、設定與內容而異。

同一 Repo 也維護 LongCat-Video-Avatar 與 Avatar 1.5。後者以 Whisper-large-v3 音訊編碼器、蒸餾推論及可選 INT8 DiT 載入，處理單路與多路音訊驅動人物影片；它不是把一般對話 LLM 直接拿來輸出影像。

## 核心特色

- **統一影片任務**：基礎模型可從文字、圖片或既有影片上下文生成。
- **長影片延續**：提供 long-video 與 continuation 範例，以分段延續處理較長內容。
- **推論效率設計**：時空 coarse-to-fine 與 Block Sparse Attention，並提供編譯選項。
- **多 GPU 推論**：範例以 `torchrun` 搭配 `context_parallel_size`。
- **音訊驅動 Avatar**：支援單人及多人音訊條件，1.5 版採 Whisper-large-v3。
- **蒸餾與量化**：Avatar 1.5 要求 `--use_distill`，且可用 `--use_int8` 降低 DiT 顯存需求。

## 怎麼用

### 安裝基礎影片模型環境

以下為 README 的 CUDA 12.4／Python 3.10 範例，應使用隔離環境並確認 GPU、驅動與套件相容性；不是 macOS 原生執行指引。

```bash
git clone --single-branch --branch main https://github.com/meituan-longcat/LongCat-Video
cd LongCat-Video
conda create -n longcat-video python=3.10
conda activate longcat-video
pip install torch==2.6.0+cu124 torchvision==0.21.0+cu124 torchaudio==2.6.0 --index-url https://download.pytorch.org/whl/cu124
pip install ninja psutil packaging
pip install flash_attn==2.7.4.post1
pip install -r requirements.txt
```

### 下載權重與推論

```bash
pip install "huggingface_hub[cli]"
huggingface-cli download meituan-longcat/LongCat-Video --local-dir ./weights/LongCat-Video
torchrun run_demo_text_to_video.py --checkpoint_dir=./weights/LongCat-Video --enable_compile
```

圖片與長影片任務可分別參考 `run_demo_image_to_video.py`、`run_demo_long_video.py`。上述是官方使用指引的整理，本次收錄未下载大型權重或實測 GPU 推論。

### Avatar 1.5 額外條件

需再安裝 `librosa`、`ffmpeg` 與 `requirements_avatar.txt`，下載對應 Avatar 1.5 權重，使用 `--model_type avatar-v1.5 --use_distill`。不要混用基礎模型和 Avatar 的權重路徑；雙音訊的合併與串接模式對輸入長度有不同要求。

## 跟其他方案的關係

以下根據官方 README 任務定位與內部評測表整理，不能解讀為第三方一致性排名。

| 方案 | 定位／架構 | 比較注意事項 |
|---|---|---|
| LongCat-Video | 13.6B Dense，文字／圖片／影片延續 | 統一多任務；需另行評估算力需求 |
| LongCat-Video-Avatar 1.5 | 音訊驱動人物影片 | 側重唇形與角色時序，使用獨立權重與參數 |
| Wan 2.2 A14B | README 比較中的 MoE 影片模型 | 總參數和啟用參數不同，不能只看單一參數量 |
| Veo3／PixVerse-V5 | README 列出的專有文字轉影片方案 | 官方內部 MOS 只代表該測試條件，不是普遍勝負 |

圖片轉影片內部評測中，LongCat-Video 並非所有品質指標領先；選型應用自己的提示詞、畫面與時長重新評估。

## 相關概念

← [[AI-video-generation]] · [[generative-AI]]

## 來源

- [GitHub 與官方 README](https://github.com/meituan-longcat/LongCat-Video)
- [LongCat-Video 技術報告入口](https://arxiv.org/abs/2510.22200)（延伸閱讀，本頁未全文解讀）
- 原始快照：`raw/2026-10-04-meituan-longcat-LongCat-Video.md`
- Metadata 快照：`raw/2026-10-04-meituan-longcat-LongCat-Video.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/meituan-longcat/LongCat-Video |
| Stars | 8,740（2026-10-04 快照） |
| License | MIT；README 亦標示模型權重為 MIT |
| Language | Python |
| 收錄日期 | 2026-10-04 |

---
title: nanochat
slug: karpathy-nanochat
created: 2026-11-03
updated: 2026-11-03
stars: 59891
language: zh-TW
topics: ["LLM", "llm-internals"]
---

# nanochat

> ⭐59.9k · 以精簡實驗程式串起 tokenizer、預訓練、微調、評估與對話推論的 LLM 訓練專案。

## 快速導航
- [[LLM]] — 理解主要概念與應用背景。
- [[llm-internals]] — 對照實作機制與技術邊界。

## 是什麼

nanochat 是 Andrej Karpathy 維護的小型 LLM 實驗程式庫，定位是可讀、可修改、可從頭跑完的訓練基準，而不是功能龐大的通用模型平台。它以單一 GPU 節點為主要設計目標，涵蓋從 tokenizer 到聊天推論的主要階段。

核心設計是用 Transformer 的 `--depth` 作為模型規模旋鈕，推導寬度、注意力頭數、學習率與訓練長度等設定。研究者可以比較不同深度的 compute-optimal 模型，而不必每次手動重組大量設定。

README 的低成本 GPT-2 等級訓練是特定硬體、資料與 CORE 指標下的作者報告，不代表能以同樣預算取得當代 ChatGPT 的完整能力。CPU／MPS 範例刻意縮小模型，適合學習流程而非追求強能力。

## 核心特色

- **端到端流程**：包含 BPE tokenizer、預訓練、SFT、評估與帶 KV cache 的推論；程式樹也提供 RL 腳本。

- **深度驅動縮放**：以 --depth 調整模型大小，其餘超參數依專案規則推導，方便比較模型系列。

- **明確衡量指標**：研究流程追蹤 val_bpb、DCLM CORE、VRAM 與 token throughput，而非只看對話印象。

- **GPU 與縮小版實驗**：speedrun 針對 8×H100；單 GPU 可用梯度累積，CPU／MPS 則另有小型範例。

- **可讀基準而非大框架**：重視程式的可修改性與認知負擔，適合研究訓練流程與效能改動。

## 怎麼用

### 安裝

```bash
git clone https://github.com/karpathy/nanochat.git
cd nanochat
uv sync --extra gpu
source .venv/bin/activate
```

以上使用已安裝的 uv 與適合的 CUDA 環境；CPU／MPS 改用 `uv sync --extra cpu`。不要在一般筆電直接套用完整 GPU speedrun。

### 入門流程

```bash
bash runs/speedrun.sh
python -m scripts.chat_cli
```

先閱讀腳本的下載、訓練與評估步驟再啟動。低 VRAM 設備可能需降低 `--device-batch-size`；CPU／MPS 可研究 `runs/runcpu.sh`，結果不能當作完整 speedrun 的等價重現。

### 使用限制

成本、訓練時間與排行榜會隨版本及租用價格變動；這次收錄只核對文件，沒有租用 GPU 或重跑效能數據。

## 跟其他方案的關係

以下為依官方定位整理的用途比較，不是本次實測排名。

| 方案 | 定位 | 選用情境 |
|---|---|---|
| nanochat | 從頭訓練到對話的精簡基準 | 希望理解與修改整段 LLM 生命週期 |
| nanoGPT | 較聚焦預訓練的前身 | 只想先研究 GPT 預訓練 |
| [[rasbt-LLMs-from-scratch]] | 循序學習模型實作 | 先建立原理與程式基礎 |
| [[Ollama]] | 使用既有模型的本地推論 | 目標是直接使用模型而非從零訓練 |

## 相關概念

← [[LLM]] · [[llm-internals]]

## 來源

- [GitHub：karpathy/nanochat](https://github.com/karpathy/nanochat)
- [README](https://github.com/karpathy/nanochat/blob/master/README.md)
- 原始快照：`raw/2026-11-03-karpathy-nanochat.md`
- Metadata：`raw/2026-11-03-karpathy-nanochat.metadata.json`

資料擷取日：2026-11-03。Stars 為收錄時快照；安裝指令依官方文件整理，並非本次執行記錄。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [karpathy/nanochat](https://github.com/karpathy/nanochat) |
| Stars | 59,891 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-03 |

---
title: "NVIDIA Model Optimizer"
slug: NVIDIA-Model-Optimizer
created: 2026-09-25
updated: 2026-09-25
stars: 4079
language: zh-TW
topics: ["模型推論與部署", "LLM"]
---

# NVIDIA Model Optimizer

> ⭐4.1k · 整合量化、剪枝、蒸餾與投機解碼訓練的模型最佳化工具庫。

## 快速導航

- [[模型推論與部署]] — 技術與使用情境。
- [[LLM]] — 延伸閱讀與實務取捨。

## 是什麼

NVIDIA Model Optimizer，簡稱 ModelOpt，是部署前的模型最佳化函式庫。它接收 Hugging Face、PyTorch 或 ONNX 模型，透過 Python API 組合壓縮及加速技術，再匯出供推論框架使用的 checkpoint。

它並不是 TensorRT-LLM、vLLM 或 SGLang 的替代伺服器，而是這些部署方案的上游最佳化環節。README 也說明整合 Megatron-Bridge、Megatron-LM 與 Accelerate，以支援需要訓練的最佳化流程。

降低精度或刪除參數必須兼顧品質。官方新聞列出的速度與大小收益來自特定模型、GPU 及設定，不應直接套用到自己的服務；應以實際任務準確率、吞吐量、延遲及記憶體量測決策。

## 核心特色

- **PTQ 與 QAT／QAD**
  提供訓練後量化，也可透過量化感知訓練或蒸餾恢復品質。

- **剪枝與 NAS**
  以移除參數及架構搜尋調整模型大小和計算需求。

- **知識蒸餾**
  使較小模型學習較大模型行為，需準備適合的資料與訓練流程。

- **投機解碼與稀疏化**
  提供 draft modules 訓練與參數稀疏化等不同加速路徑。

- **下游部署整合**
  匯出 checkpoint 接 TensorRT-LLM、TensorRT、vLLM 或 SGLang；仍需查模型與精度支援矩陣。

## 怎麼用

### 安裝與準備

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -U "nvidia-modelopt[all]"
```

1. 先確認 Python、PyTorch、CUDA、目標 GPU 與所選技術的官方環境要求。
2. LLM／VLM 可從 examples/hf_ptq 入門；Diffusers、ONNX、QAT 與剪枝有各自範例。
3. 先量測原始模型，再做校準／訓練、匯出 checkpoint，最後到目標推論框架測量品質和速度。

### 最小操作入口

```bash
git clone https://github.com/NVIDIA/Model-Optimizer.git
cd Model-Optimizer
# 先閱讀與目標模型相符的範例說明
python -c "import modelopt; print(modelopt.__file__)"
```

### 限制與驗證

安裝成功不代表目前 GPU 支援所有低精度 kernel。全功能 extra 會安裝額外第三方套件，必須分別審閱其授權；本頁未下載模型或執行量化。

上述指令整理自官方文件，作為讀者操作入口；本次收錄只驗證文件與知識庫建置，未安裝候選專案。

## 跟其他方案的關係

以下是用途定位比較，不是效能排行榜。

| 方案 | 主要角色 | 適用情境 |
|---|---|---|
| ModelOpt | 量化、剪枝、蒸餾與匯出 | 部署前最佳化模型 |
| TensorRT-LLM | LLM 推論執行與加速 | 執行適用格式的最佳化模型 |
| vLLM／SGLang | 推論服務與請求處理 | 部署相容 checkpoint 並量測服務效能 |

## 相關概念

← [[模型推論與部署]] · [[LLM]]

## 來源

- [GitHub](https://github.com/NVIDIA/Model-Optimizer)
- [README](https://github.com/NVIDIA/Model-Optimizer/blob/main/README.md)
- 原始快照：`raw/2026-09-25-NVIDIA-Model-Optimizer.md`
- Metadata：`outputs/2026-09-25-NVIDIA-Model-Optimizer-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [NVIDIA/Model-Optimizer](https://github.com/NVIDIA/Model-Optimizer) |
| Stars | 4,079（2026-09-25 快照） |
| License | Apache-2.0 |
| Language | Python（GitHub 主語言；本文為繁體中文） |
| 收錄日期 | 2026-09-25 |

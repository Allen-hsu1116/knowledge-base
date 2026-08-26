---
title: LlamaFactory
slug: hiyouga-LlamaFactory
created: 2026-06-27
updated: 2026-08-26
stars: 72532
language: Python
topics:
  - llm
  - fine-tuning
  - lora
  - qlora
  - peft
  - rlhf
  - transformers
---

# LlamaFactory

> ⭐72532 · 統一高效微調 100+ LLMs & VLMs 的零代碼訓練框架

## 快速導航

- 🧠 **LLM** → [[LLM]]
- 🤗 **Transformers** → [[huggingface-transformers|Transformers]]
- ⚡ **vLLM** → [[vLLM]]

## 是什麼

LlamaFactory 是一個開源的 LLM/VLM 微調框架，讓使用者能夠在不寫任何代碼的情況下，透過 CLI 或 Web UI（LLaMA Board）完成大語言模型的微調訓練。它支援超過 100 種模型，包括 LLaMA、Qwen、DeepSeek、Gemma、GLM、Phi 等主流模型家族，以及多種視覺語言模型（VLM）如 LLaVA、Qwen-VL、InternVL 等。

這個框架的核心設計理念是「統一」與「高效」。所謂統一，是指它將多種訓練方法（持續預訓練、監督微調、獎勵建模、PPO、DPO、KTO、ORPO 等）整合到同一個介面中；所謂高效，是指它支援從 16-bit 全量微調到 2/3/4/5/6/8-bit QLoRA 的多種資源策略，讓使用者可以在單張消費級 GPU 上完成大模型的微調。

LlamaFactory 已被 Amazon、NVIDIA、阿里雲等企業採用，並發表於 ACL 2024。它還整合了 FlashAttention-2、Unsloth、Liger Kernel 等加速技術，以及 vLLM/SGLang 推理後端，形成從訓練到部署的完整工作流。

## 核心特色

- **100+ 模型支援**：涵蓋 LLaMA、Qwen3、DeepSeek-R1、Gemma 3、GLM-4、Phi-4、GPT-OSS、InternVL 等主流模型，Day-0/Day-1 支援最新發布的模型
- **多種訓練方法**：持續預訓練、監督微調（含多模態）、獎勵建模、PPO、DPO、KTO、ORPO、SimPO 等偏好學習算法
- **彈性資源策略**：16-bit 全量微調、freeze-tuning、LoRA、DoRA、PiSSA，以及 2-8 bit QLoRA（AQLM/AWQ/GPTQ/LLM.int8/HQQ/EETQ）
- **先進優化算法**：GaLore、BAdam、APOLLO、Adam-mini、Muon、OFT、LongLoRA、LLaMA Pro、Mixture-of-Depths、LoRA+、LoftQ 等
- **實用技巧整合**：FlashAttention-2、Unsloth 長序列訓練、Liger Kernel、KTransformers、RoPE scaling、NEFTune、rsLoRA
- **全方位任務**：多輪對話、工具使用、圖像理解、視覺定位、影片辨識、音頻理解
- **實驗監控**：LlamaBoard、TensorBoard、Wandb、MLflow、SwanLab 等多種實驗追蹤工具
- **快速推理**：OpenAI 風格 API、Gradio UI、CLI，搭配 vLLM 或 SGLang 後端實現高速推理

## 怎麼用

```bash
# 安裝
pip install llamafactory

# CLI 快速開始 — 微調 Llama 3 模型
llamafactory-cli train \
  --model_name_or_path meta-llama/Meta-Llama-3-8B \
  --dataset alpaca_gpt4_zh \
  --finetuning_type lora \
  --lora_rank 8 \
  --output_dir ./saves/llama3-lora

# 啟動 Web UI（零代碼訓練）
llamafactory-cli webui

# 使用 vLLM 後端部署推理
llamafactory-cli api \
  --model_name_or_path ./saves/llama3-lora \
  --infer_backend vllm
```

也支援 Docker 部署和 Colab 免費 GPU 訓練環境。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **LlamaFactory** | ⭐72.5k | 微調框架 | 100+ 模型、零代碼 Web UI | 多種訓練方法（SFT/DPO/PPO 等） |
| [[marin-community-marin\|Marin]] | ⭐2.1k | 基礎模型研發平台 | 資料到預訓練的開放流程 | scaling、MoE 與叢集實驗 |
| [[mlabonne-llm-course|LLM Course]] | ⭐80.2k | 學習資源 | 微調/量化/合併教學 | Colab 筆記本 |
| [[huggingface-transformers|Transformers]] | ⭐160k | 模型庫 | 模型生態系統 | PEFT/TGI 整合 |
| [[vLLM]] | ⭐79.5k | 推理引擎 | PagedAttention 高速推理 | LlamaFactory 可選用為推理後端 |
| [[Ollama]] | ⭐171k | 本地部署 | 一鍵本地運行 | LlamaFactory 可導出 Ollama modelfile |

← [[LLM]] · [[huggingface-transformers|Transformers]] · [[vLLM]] · [[Ollama]] · [[flash-attention|FlashAttention]]


## 相關概念


← [[LLM]] · [[huggingface-transformers]] · [[vLLM]] · [[marin-community-marin]]

## 來源

- GitHub: <https://github.com/hiyouga/LlamaFactory>
- 原始 README: `raw/2026-06-27-hiyouga-LlamaFactory.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/hiyouga/LlamaFactory |
| Stars | ⭐72532|
| License | Apache-2.0 |
| 收錄日期 | 2026-06-27 |

---
title: KTransformers
slug: kvcache-ai-ktransformers
created: 2026-07-21
updated: 2026-07-21
stars: 18733
language: Python
topics:
  - llm-inference
  - heterogeneous-computing
  - moe
  - cpu-gpu
  - fine-tuning
  - quantization
---

# KTransformers

> ⭐18733 · CPU-GPU 異構運算框架，讓超大 MoE 模型在消費級硬體上高效推論與微調

## 快速導航


[[LLM]] · [[vLLM]] · [[kv-cache]]

## 是什麼

KTransformers 是由清華大學 MADSys 實驗室與 Approaching.AI 團隊共同開發的開源研究專案，專注於透過 CPU-GPU 異構運算實現大型語言模型的高效推論與微調。專案的核心構想是利用「熱專家放 GPU、冷專家放 CPU」的異構放置策略，讓需要數百 GB 記憶體的 MoE（Mixture-of-Experts）模型能在消費級硬體上運行。

KTransformers 目前提供兩大核心能力：**Inference**（基於 kt-kernel 的高效能推論伺服）和 **SFT**（結合 LLaMA-Factory 的微調整合）。推論方面支援 Intel AMX 和 AVX512/AVX2 加速的 INT4/INT8 量化、NUMA 感知的 MoE 專家調度、以及 GPU 端的 GPTQ 支援。微調方面則實現了 CPU/GPU 混合微調，在 4×RTX 4090 上就能微調 DeepSeek-V3/R1 等超大 MoE 模型，速度比 ZeRO-Offload 快 6-12 倍。

專案支援豐富的模型生態，包括 DeepSeek-V3/R1、Kimi-K2 系列、GLM-5/5.2、MiniMax-M2/M3、Qwen3 等，並持續提供 Day0 支援（模型發布當天即可使用）。KTransformers 已整合進 SGLang 推論框架，並在 GOSIM Paris 2026 展示了在消費級硬體上的推論效能。

## 核心特色

- **CPU-GPU 異構推論**：將 MoE 模型的熱門專家放在 GPU、冷門專家放在 CPU，最大化利用有限 VRAM，24GB VRAM 即可跑 DeepSeek-R1
- **AMX/AVX 核心加速**：Intel AMX 和 AVX512/AVX2 優化的 INT4/INT8 量化推論核心，支援 AVX2-only CPU 後端
- **LLaMA-Factory 微調整合**：CPU/GPU 混合微調，4×RTX 4090 可微調 DeepSeek-V3（671B），速度比 ZeRO-Offload 快 6-12 倍，CPU 記憶體減半
- **3 層 Prefix Cache**：GPU-CPU-Disk 三層快取重用機制，大幅降低重複請求的延遲
- **Day0 模型支援**：DeepSeek-V4-Flash、GLM-5.2、MiniMax-M3 等最新模型發布當天即提供支援
- **多平台多 GPU**：支援 NVIDIA/AMD ROCm/Intel Arc/Ascend NPU，多 GPU 平行推論

## 怎麼用

安裝 kt-kernel 推論引擎：

```bash
cd kt-kernel
pip install .
```

微調快速開始（需要先安裝 LLaMA-Factory）：

```bash
cd /path/to/LLaMA-Factory
pip install -e .
pip install -r requirements/ktransformers.txt
CUDA_VISIBLE_DEVICES=0,1,2,3 accelerate launch \
  --config_file examples/ktransformers/accelerate/fsdp2_kt_int8.yaml \
  src/train.py \
  examples/ktransformers/train_lora/qwen3_5moe_lora_sft_kt.yaml
```

DeepSeek-R1 推論範例（24GB VRAM + 382GB DRAM）：

```bash
# 參考 doc/en/DeepseekR1_V3_tutorial.md
# 支援 139K 更長上下文 + FP8 混合精度
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **KTransformers** | ⭐18.7k | 異構推論框架 | CPU-GPU MoE 專家調度 | LLaMA-Factory 微調整合 |
| [[vLLM]] | ⭐79.5k | 推論加速 | PagedAttention | 高吞吐推論 |
| [[sgl-project-sglang\|SGLang]] | ⭐27.6k | 推論加速 | RadixAttention | 結構化生成 |
| [[lyogavin-airllm\|AirLLM]] | ⭐18.9k | 低 VRAM 推論 | 分層推理 | 記憶體最佳化 |
| [[NVIDIA-TensorRT-LLM]] | ⭐13.6k | GPU 推論 | TensorRT 最佳化 | NVIDIA 官方 |

## 相關概念


← [[LLM]] · [[vLLM]] · [[kv-cache]]

## 來源

- GitHub: <https://github.com/kvcache-ai/ktransformers>
- 線上文檔: <https://kvcache-ai.github.io/ktransformers/>
- 原始 README: `raw/2026-07-21-kvcache-ai-ktransformers.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/kvcache-ai/ktransformers |
| Stars | ⭐18733|
| License | Apache-2.0 |
| 收錄日期 | 2026-07-21 |

---
title: NVlabs Sana
slug: NVlabs-Sana
created: 2026-05-10
updated: 2026-05-10
stars: 6361
language: zh-TW
topics: [擴散模型, 影片生成, 世界模型]
---

# NVlabs Sana

> ⭐6361 · NVIDIA/MIT 打造的高效擴散模型系列，支援 4K 影像到影片生成，比同級模型快 100 倍

## 快速導航

- 🛠 **模型推論與部署** → [[模型推論與部署]]（高效推論架構設計）
- 🎬 **AI 影片生成** → [[AI-video-generation]]（文字轉影片生成技術）
- 🧠 **生成式 AI** → [[generative-AI]]（生成模型生態系）
- 🔗 **SGLang 整合** → [[sgl-project-sglang]]（高效推論服務框架）

## 是什麼

Sana 是 NVIDIA 與 MIT Han Lab 合作開發的高效擴散模型系列，涵蓋文字轉影像（最高 4K）、文字轉影片、一步生成（Sprint）、世界模型等任務。核心設計理念是在保持生成品質的同時大幅壓縮計算成本——1.6B 參數即可達到甚至超越 12B 模型的效果。

系列成員包括：
- **SANA**：文字轉影像，最高 4K 解析度
- **SANA-1.5**：推理時計算擴展，更高品質
- **SANA-Sprint**：一步/少步生成，H100 上 0.1 秒出圖
- **SANA-Video/LongSANA**：影片生成，即時分鐘長度
- **SANA-WM**：2.6B 可控世界模型，6-DoF 相機控制
- **Sol-RL**：NVFP4 推論 + BF16 訓練 RL，4.64 倍更快收斂

## 核心特色

- **Linear Diffusion Transformer**：用線性注意力取代二次注意力，大幅降低長序列計算成本
- **DC-AE 深度壓縮自編碼器**：32x 空間壓縮率（vs 常見 8x），讓 latent 空間更緊湊
- **SANA-Sprint**：透過 sCM 蒸餾實現一步/少步生成，H100 上 0.1 秒出圖
- **SANA-Video + LongSANA**：區塊因果線性注意力實現即時分鐘長度影片生成
- **SANA-WM**：2.6B 可控世界模型，支援 6-DoF 相機控制和 720p 1 分鐘影片生成
- **多種量化支援**：8bit/4bit 量化可在 8GB VRAM 上跑 4K 生成
- **學術認可**：ICLR 2025 Oral、ICML 2025、ICCV 2025 Highlight、ICLR 2026 Oral

### 效能對比（1024px 影像生成）

| 方法 | 吞吐量（samples/s） | 延遲（s） | 參數量（B） | 加速倍數 |
|------|---------------------|-----------|-------------|----------|
| FLUX-dev | 0.04 | 23.0 | 12.0 | 1.0× |
| Sana-1.6B | 1.0 | 1.2 | 1.6 | 23.3× |
| Sana-1.5 4.8B | 0.26 | 4.2 | 4.8 | 6.5× |

## 怎麼用

```bash
# 安裝
git clone https://github.com/NVlabs/Sana.git
cd Sana && ./environment_setup.sh sana

# 或使用 diffusers
pip install diffusers transformers accelerate
```

```python
# 基本文字轉影像（diffusers）
from diffusers import SanaPipeline
pipe = SanaPipeline.from_pretrained("Efficient-Large-Model/Sana_1600M_1024px_BF16")
pipe.to("cuda")
image = pipe("A cat sitting on a windowsill")[0].save("output.png")

# SANA-Sprint 一步生成
from diffusers import SanaSprintPipeline
pipe = SanaSprintPipeline.from_pretrained("Efficient-Large-Model/SanaSprint_1600M_1024px")
image = pipe("sunset over mountains", num_inference_steps=1)[0].save("sprint.png")

# SANA-1.5（更高品質）
pipe = SanaPipeline.from_pretrained(
    "Efficient-Large-Model/SANA1.5_1.6B_1024px_diffusers",
    torch_dtype=torch.bfloat16,
)
```

Docker 快速部署（SGLang 服務）詳見 https://nvlabs.github.io/Sana/docs/sglang/

## 跟其他方案的關係


- **FLUX.1 / SD3.5**：Sana 以 1.6B 參數達到 12B 模型的品質，速度快 20 倍，體積小 20 倍
- **Stable Diffusion 3**：Sana 採用線性注意力架構，在長序列生成上瓶頸更低
- **ComfyUI**：已有完整 ComfyUI 節點支援，可無縫整合工作流
- [[NVIDIA-TensorRT-LLM]]：NVIDIA 高效推論生態，TensorRT-LLM 側重 LLM 推論，Sana 側重视覺生成
- [[sgl-project-sglang]]：可透過 SGLang 提供 OpenAI 相容 API 服務
- **Wan 2.1**：影片生成競品，SANA-Video 在 720p VBench 上以 2B 參數超越 Wan-2.1 14B

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[NVIDIA-TensorRT-LLM]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[sgl-project-sglang]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念

← [[模型推論與部署]] · [[AI-video-generation]] · [[generative-AI]] · [[sgl-project-sglang]]

## 來源

- [GitHub：專案原始碼](https://github.com/NVlabs/Sana)
- raw/2026-05-19-NVlabs-Sana.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/NVlabs/Sana |
| Stars | ⭐6361|
| License | Apache 2.0 |
| 收錄日期 | 2026-05-10 |

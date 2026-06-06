---
title: NVIDIA Cosmos
slug: NVIDIA-cosmos
created: 2026-06-06
updated: 2026-06-06
stars: 9417
language: Jupyter Notebook
topics:
  - world-model
  - physical-ai
  - robot
  - autonomous-vehicle
  - vision-language-model
  - nvidia
---

# NVIDIA Cosmos

> ⭐9.4k · NVIDIA 開源世界模型平台——為機器人、自駕車、智慧基礎設施建構 Physical AI

快速導航：[[computer-vision|電腦視覺]] · [[NVIDIA-cosmos|Cosmos]] · [[NVlabs-Sana|Sana]]

## 是什麼

NVIDIA Cosmos 是 NVIDIA 推出的開源世界模型平台，提供模型、資料集和工具，讓開發者能為機器人、自駕車、智慧基礎設施等 Physical AI 場景建構應用。Cosmos 3 是其最新一代模型家族，基於 Mixture-of-Transformers (MoT) 架構，將自回歸 Transformer（推理）和擴散 Transformer（生成）統一到單一框架中。

Cosmos 3 暴露兩個執行面：**Reasoner** 模式接收文字和視覺輸入，產生文字輸出，用於世界理解、物理推理、任務規劃、動作預測等場景；**Generator** 模式接收文字、視覺、聲音、動作輸入，產生影像、影片、聲音、動作序列，用於世界生成、世界模擬、合成資料生成、策略學習等場景。兩個模式共享同一個 Transformer 架構和多模態注意力層。

對 AI Agent 開發者來說，Cosmos 的意義在於它提供了一個統一的「世界模擬器」——Agent 不需要真的在物理世界試錯，而是在 Cosmos 生成的模擬環境中學習和驗證行為策略。這對機器人操控、自動駕駛、工業自動化等 Physical AI 場景是關鍵基礎設施。

## 核心特色

- **Mixture-of-Transformers 架構**：將自回歸推理（Reasoner）和擴散生成（Generator）統一到單一模型，兩個模式共享權重和 3D mRoPE 位置編碼，訓練一次即可同時用於理解和生成
- **Omnimodal 跨模態處理**：同時處理語言、影像、影片、聲音、動作序列五種模態，是世界模型中唯一把「理解」和「生成」統一在同一模型中的方案——不再需要分別訓練 VLM 和影片生成模型
- **Cosmos3-Nano 16B + Cosmos3-Super 64B**：Nano 版用於快速推理和機器人端部署，Super 版用於前沿研究和生成品質，另有 Policy-DROID 16B 專為單臂機器人操控設計
- **多種部署路徑**：研究用 Diffusers + Transformers，生產用 vLLM-Omni / vLLM（OpenAI 相容 API），微調用 Cosmos Framework 訓練配方，支援 NVIDIA Ampere / Hopper / Blackwell GPU
- **Physical AI 動作建模**：支援 9D 相機運動、9D 自駕車動作、57D 第一人稱運動、10D/20D/29D 機器人操控等多種動作空間，可做前向動力學、逆動力學、策略預測

## 怎麼用

```bash
# 安裝（Diffusers 路徑——研究用）
pip install torch transformers accelerate diffusers imageio

# Reasoner：文字+視覺推理
from transformers import AutoModelForCausalLM, AutoProcessor

model = AutoModelForCausalLM.from_pretrained(
    "nvidia/Cosmos3-Nano", torch_dtype=torch.bfloat16, device_map="auto"
)
processor = AutoProcessor.from_pretrained("nvidia/Cosmos3-Nano")

# Generator：文字生成影片/圖片
from diffusers import CosmosPipeline

pipe = CosmosPipeline.from_pretrained(
    "nvidia/Cosmos3-Super-Text2Image", torch_dtype=torch.bfloat16
)
pipe.to("cuda")

# vLLM-Omni 生產部署（OpenAI 相容 API）
python -m vllm serve nvidia/Cosmos3-Nano --task generate
```

詳細模型文件請參考 [Cosmos Hugging Face](https://huggingface.co/nvidia/Cosmos3-Nano) 和 [Cosmos Framework](https://github.com/NVIDIA/cosmos-framework)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 世界理解 | 世界生成 | 動作建模 | 多模態 |
|------|-------|------|---------|---------|---------|--------|
| **NVIDIA Cosmos** | ⭐9.4k | 世界模型平台 | ✅ Reasoner | ✅ Generator | ✅ 多種動作空間 | 文字/影像/影片/聲音/動作 |
| [[NVlabs-Sana|Sana]] | ⭐6.4k | 擴散模型 | ❌ | ✅ 圖片生成 | ❌ | 文字→圖片 |
| GPT-4V | — | VLM | ✅ | ❌ | ❌ | 文字/影像 |
| Sora | — | 影片生成 | ❌ | ✅ 影片 | ❌ | 文字/影像→影片 |
| Genie 2 (DeepMind) | — | 世界模型 | ❌ | ✅ 互動環境 | ✅ 遊戲場景 | 文字/影像→互動 |

NVIDIA Cosmos 的差異化在於它是唯一把「世界理解（Reasoner）」和「世界生成（Generator）」統一到單一架構的開源模型——不像 VLM 只能理解、不像影片模型只能生成，Cosmos 用同一組權重同時做到理解和生成，對 Physical AI 的閉環模擬至關重要。

← [[computer-vision|電腦視覺]] · [[NVlabs-Sana|Sana]] · [[world-model|世界模型]]

## 來源

- GitHub: <https://github.com/NVIDIA/cosmos>
- 原始 README: `raw/2026-06-06-NVIDIA-cosmos.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [NVIDIA/cosmos](https://github.com/NVIDIA/cosmos) |
| Stars | ⭐9,417 |
| License | NVLA (NVIDIA Source Code License) |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-06-06 |
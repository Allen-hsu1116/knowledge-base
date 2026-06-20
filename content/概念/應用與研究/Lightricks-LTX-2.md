---
title: LTX-2
slug: Lightricks-LTX-2
created: 2026-06-20
updated: 2026-06-20
stars: 7672
language: Python
topics: [generative-ai, ltx, ltx-2]
---

# LTX-2

> ⭐7.7k · 首個 DiT-based 音影片生成基礎模型——同步音影片、高保真、多效能模式、生產級輸出。

快速導航：[[NVlabs-Sana|Sana]] · [[NVIDIA-cosmos|NVIDIA Cosmos]] · [[OpenBMB-VoxCPM|VoxCPM]] · [[harry0703-MoneyPrinterTurbo|MoneyPrinterTurbo]]

## 是什麼

LTX-2 是由 Lightricks 開發的首個基於 DiT（Diffusion Transformer）的音影片生成基礎模型。它將現代影片生成的所有核心能力整合到單一模型中：同步音訊和影片、高保真度、多種效能模式、生產級輸出、API 存取和開放存取。這意味著開發者可以用一個模型完成從文字到影片、圖片到影片、音訊到影片等多種生成任務。

模型提供 10 種不同的生成管線，包括推薦的兩階段生產級管線（TI2VidTwoStagesPipeline）、最快推論的蒸餾管線（DistilledPipeline，僅 8 步）、影片到影片轉換（ICLoraPipeline）、關鍵幀插值、音訊到影片生成、HDR 輸出、唇形同步等。每種管線針對不同的使用場景最佳化。

LTX-2 的 22B 參數模型支援 FP8 量化以降低 VRAM 需求，並可透過 LoRA 進行微調訓練。它提供 ComfyUI 整合，並有完整的訓練工具包（ltx-trainer）支援 LoRA、全量微調和 IC-LoRA 訓練。在 2026 年 1 月發布後，迅速獲得 7.6k+ stars。

## 核心特色

- **首個 DiT 音影片基礎模型**：同步音影片生成，一個模型涵蓋所有核心能力
- **10 種生成管線**：兩階段生產級、蒸餾快速、影片到影片、關鍵幀插值、音訊到影片、HDR、唇形同步等
- **22B 參數模型**：支援 FP8 量化（fp8-cast / fp8-scaled-mm），Hopper/Blackwell GPU 最佳化
- **LoRA 訓練支援**：完整訓練工具包（ltx-trainer），支援 LoRA、全量微調、IC-LoRA
- **ComfyUI 整合**：透過 ComfyUI-LTXVideo 插件無縫接入
- **蒸餾管線**：最快 8 步生成（stage 1: 8 步, stage 2: 4 步）
- **自動 Prompt 增強**：管線支援 enhance_prompt 參數
- **梯度估計優化**：步數從 40 降至 20-30 同時保持品質

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/Lightricks/LTX-2.git
cd LTX-2

# 設定環境
uv sync --frozen
source .venv/bin/activate

# 下載模型（從 HuggingFace）
# LTX-2.3 Model Checkpoint: ltx-2.3-22b-dev.safetensors
# Spatial Upscaler: ltx-2.3-spatial-upscaler-x2-1.1.safetensors
# Distilled LoRA: ltx-2.3-22b-distilled-lora-384-1.1.safetensors
# Gemma Text Encoder: Gemma 3 12B

# 使用蒸餾管線（最快）
# DistilledPipeline — 8 步 stage 1, 4 步 stage 2

# FP8 量化
# --quantization fp8-cast（CLI）
# quantization=QuantizationPolicy.fp8_cast()（Python）

# ComfyUI 整合
# https://github.com/Lightricks/ComfyUI-LTXVideo/
```

## 跟其他方案的關係

| 方案 | 核心定位 | 音影片同步 | 管線數 | LoRA 訓練 | 模型大小 |
|------|----------|-----------|--------|----------|----------|
| [[Lightricks-LTX-2\|LTX-2]] | DiT 音影片基礎模型 | ✅ | 10 | ✅ | 22B |
| [[NVlabs-Sana\|Sana]] | 擴散模型 | — | — | — | — |
| [[NVIDIA-cosmos\|NVIDIA Cosmos]] | 世界模型 | — | — | — | — |
| [[OpenBMB-VoxCPM\|VoxCPM]] | 語音合成 | — | — | — | — |
| [[harry0703-MoneyPrinterTurbo\|MoneyPrinterTurbo]] | 影片自動化 | — | — | — | — |

與 [[NVlabs-Sana|Sana]] 互補：Sana 聚焦擴散模型和世界模型研究，LTX-2 則提供完整的音影片生成生產管線。與 [[harry0703-MoneyPrinterTurbo|MoneyPrinterTurbo]] 的關係在於兩者都涉及影片生成，但 LTX-2 是底層模型，MoneyPrinterTurbo 是上層自動化工具。

## 相關概念

← [[NVlabs-Sana|Sana]] · [[NVIDIA-cosmos|NVIDIA Cosmos]] · [[OpenBMB-VoxCPM|VoxCPM]] · [[harry0703-MoneyPrinterTurbo|MoneyPrinterTurbo]]

## 來源

- GitHub：https://github.com/Lightricks/LTX-2
- 論文：https://arxiv.org/abs/2601.03233
- 模型：https://huggingface.co/Lightricks/LTX-2.3
- Raw 檔案：`knowledge-base/raw/2026-06-20-Lightricks-LTX-2.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Lightricks/LTX-2](https://github.com/Lightricks/LTX-2) |
| Stars | ⭐7,672 |
| License | Other |
| Language | Python |
| 收錄日期 | 2026-06-20 |
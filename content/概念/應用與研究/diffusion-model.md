# 擴散模型

> 透過漸進去噪生成高品質內容的模型架構，是當前圖像和影片生成的主流技術

## 快速導航

- ⚡ [[generative-AI]] · [[AI-video-generation]] · [[embedded-AI]] · [[模型推論與部署]]
- 🎨 **Sana** → [[NVlabs-Sana]]（NVIDIA 高效擴散模型家族）
- 🌍 **世界模型** → [[world-model]]（擴散模型在世界模型中的應用）
- 🔧 **模型部署** → [[模型推論與部署]]（擴散模型的推論優化）

## 是什麼

擴散模型（Diffusion Model）是一類生成模型，運作原理是先在前向過程中逐步對資料加入雜訊，再在反向過程中學習逐步去噪，最終從純雜訊還原出高品質樣本。相較於 GAN，擴散模型訓練更穩定、生成多樣性更高，已成為影像生成的主流架構。

### 核心原理

1. **前向過程（加噪）**：逐步向真實數據加入高斯雜訊，直到變成純雜訊
2. **反向過程（去噪）**：學習從雜訊逐步還原出清晰數據
3. **取樣生成**：從隨機雜訊開始，經過去噪步驟生成新樣本

### 關鍵技術

- **Denoising Schedule**：控制去噪步數與強度的排程，步數越少推理越快
- **Latent Diffusion**：在壓縮後的 latent 空間中做擴散，大幅降低計算成本（如 Stable Diffusion、Sana）
- **Distillation**：將多步擴散蒸餾為少步或一步生成（如 Sana-Sprint、LCM）
- **Flow Matching**：用連續正規化流替代傳統擴散，訓練更穩定

## 核心特色

- **訓練穩定性高**：不像 GAN 有模式崩潰問題，擴散模型訓練更加穩定
- **生成多樣性好**：能生成多樣且高品質的樣本，不會陷入單一模式
- **可控制性強**：支援條件生成（文字、圖片、相機軌跡等），實現精細控制
- **推論優化空間大**：蒸餾、量化、步數壓縮等多種加速技術，從秒級到亞秒級
- **跨模態擴展**：從圖像到影片、3D、音訊，擴散模型已成為多模態生成的統一架構

## 怎麼用

### 使用 Sana 生成圖像（diffusers）

```python
import torch
from diffusers import SanaPipeline

pipe = SanaPipeline.from_pretrained(
    "Efficient-Large-Model/SANA1.5_1.6B_1024px_diffusers",
    torch_dtype=torch.bfloat16,
)
pipe.to("cuda")

prompt = 'a cyberpunk cat with a neon sign that says "Sana"'
image = pipe(
    prompt=prompt,
    height=1024,
    width=1024,
    guidance_scale=4.5,
    num_inference_steps=20,
)[0]
image[0].save("sana.png")
```

### 選擇擴散模型

| 需求 | 推薦模型 | 特色 |
|------|----------|------|
| 高品質圖像 | Stable Diffusion 3 | MMDiT 架構，文字理解力強 |
| 高效生成 | Sana / Sana-Sprint | 線性注意力 + DC-AE，速度極快 |
| 影片生成 | Sana-Video | Block Linear DiT，720p 1 分鐘影片 |
| 世界模型 | Sana-WM | 6-DoF 相機控制，可控世界生成 |
| 高品質但有彈性 | FLUX | 12B DiT，品質頂級但計算成本高 |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[generative-AI]] | 包含 | 擴散模型是生成式 AI 的核心架構之一 |
| [[AI-video-generation]] | 應用 | 影片生成是擴散模型的重要應用方向 |
| [[world-model]] | 延伸 | 世界模型用擴散模型生成可控環境影片 |
| [[模型推論與部署]] | 優化 | 擴散模型需要大量推論優化才能實用 |
| [[embedded-AI]] | 邊緣 | 擴散模型量化後可在邊緣裝置運行 |

## 相關概念

← [[generative-AI]] · [[AI-video-generation]] · [[world-model]] · [[模型推論與部署]] · [[embedded-AI]]

## 來源

- [NVIDIA Sana 專案文件](../raw/2026-05-19-NVlabs-Sana.md)
- Stable Diffusion、FLUX 等開源模型文件

---

_此頁由 daily-llm-trending 自動維護_
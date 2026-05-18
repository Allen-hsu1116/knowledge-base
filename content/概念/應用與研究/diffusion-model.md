# 擴散模型

> 透過漸進去噪生成高品質內容的模型架構，是當前圖像和影片生成的主流技術

## 核心內容

擴散模型（Diffusion Model）是一類生成模型，運作原理是先在前向過程中逐步對資料加入雜訊，再在反向過程中學習逐步去噪，最終從純雜訊還原出高品質樣本。相較於 GAN，擴散模型訓練更穩定、生成多樣性更高，已成為影像生成的主流架構。

### 關鍵技術
- **Denoising Schedule**：控制去噪步數與強度的排程，步數越少推理越快
- **Latent Diffusion**：在壓縮後的 latent 空間中做擴散，大幅降低計算成本（如 Stable Diffusion、Sana）
- **Distillation**：將多步擴散蒸餾為少步或一步生成（如 Sana-Sprint、LCM）

## 各框架的做法
- **NVIDIA Sana** → 用線性注意力 + DC-AE 深度壓縮實現高效擴散生成
  👉 詳見 [[NVlabs-Sana]]
- **Stable Diffusion 3** → 採用 MMDiT（Multimodal DiT）架構
- **FLUX** → 12B 參數 DiT 架構，高品質但計算成本高

## 相關概念
- [[generative-AI]]
- [[AI-video-generation]]
- [[模型推論與部署]]

## 來源
- raw/2026-05-19-NVlabs-Sana.md
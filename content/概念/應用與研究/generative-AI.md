---
title: 生成式 AI
slug: generative-AI
added: 2026-05-17
---

# 生成式 AI

> 能夠生成新內容（圖片、影片、音訊、文字等）的人工智慧技術，從訓練資料中學習分佈，創造前所未見的輸出。

## 核心內容

生成式 AI（Generative AI）是指能夠生成新內容（圖片、影片、音訊、文字等）的人工智慧技術。相較於判別式 AI 只做分類或預測，生成式 AI 能從訓練資料中學習資料分佈，創造出前所未見的輸出。

### 生成式 AI 的類型

| 類型 | 輸入 | 輸出 | 代表模型 |
|------|------|------|----------|
| 文字生成 | 提示詞 | 文字 | GPT-4、Claude、Gemini |
| 圖片生成 | 文字/圖片 | 圖片 | Flux、Midjourney、Stable Diffusion |
| 影片生成 | 文字/圖片 | 影片 | Kling、Sora、Veo、Wan 2.6 |
| 音訊生成 | 文字 | 語音/音樂 | Whisper、Bark、ElevenLabs |
| 程式碼生成 | 提示詞 | 程式碼 | GitHub Copilot、Claude Code |
| 多模態 | 文字/圖片/音訊 | 多種 | GPT-4o、Gemini |

### 核心技術

- **Transformer**：注意力機制架構，是 GPT、Claude 等語言模型的基礎
- **擴散模型（Diffusion Model）**：逐步去噪生成圖片和影片，是 Stable Diffusion、Sora 的基礎
- **GAN（生成對抗網路）**：生成器和判別器對抗訓練，早期圖片生成主流
- **VAE（變分自編碼器）**：學習潛在空間分佈，用於壓縮和生成
- **自回歸模型**：逐 token/逐像素生成，GPT 系列採用此架構

### 發展歷程

- 2022：Stable Diffusion 開源圖片生成、ChatGPT 引爆文字生成
- 2023：GPT-4 多模態、Claude 系列推出
- 2024：Sora 首次展示長影片生成、圖片生成品質大幅提升
- 2025：影片生成成熟（Kling、Veo、Seedance）、語音克隆普及
- 2026：多模態整合、Agent 系統化使用生成式模型

生成式 AI（Generative AI）是指能夠生成新內容（圖片、影片、音訊、文字等）的人工智慧技術。相較於判別式 AI 只做分類或預測，生成式 AI 能從訓練資料中學習分佈，創造出前所未見的輸出。

## 核心概念

- **文字轉圖片（Text-to-Image）**：從文字描述生成圖片，如 Flux、Midjourney、Stable Diffusion
- **文字轉影片（Text-to-Video）**：從文字描述生成影片，如 Kling、Sora、Veo、Wan 2.2
- **圖片轉圖片（Image-to-Image）**：以參考圖片為基礎進行風格轉換或編輯
- **唇形同步（Lip Sync）**：將音訊與人像或影片結合，生成對嘴影片

## 相關專案

- [[Anil-matcha-Open-Generative-AI|Open Generative AI]] — 開源 AI 影片工作室，200+ 模型、4 大工作室

## 相關概念

- [[AI-Agent]] — AI Agent 可驅動生成式模型進行自動化媒體生成
- [[AI-video-generation]] — AI 影片生成技術
- [[LLM]] — 大語言模型
- [[Whisper]] — 語音辨識

## 來源

- wiki 彙總頁，整理自生成式 AI 相關專案頁
- [IBM: What is Generative AI](https://www.ibm.com/think/topics/generative-ai)
- [NVIDIA: What is Generative AI](https://www.nvidia.com/en-us/glossary/generative-ai/)
- [Wikipedia: Generative AI](https://en.wikipedia.org/wiki/Generative_artificial_intelligence)
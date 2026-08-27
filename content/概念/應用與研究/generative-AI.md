---
title: 生成式 AI
slug: generative-AI
created: 2026-06-20
updated: 2026-08-27
language: zh-TW
---

# 生成式 AI

> 能夠生成新內容（圖片、影片、音訊、文字等）的人工智慧技術，從訓練資料中學習分佈，創造前所未見的輸出。

## 核心內容

生成式 AI（Generative AI）是指能夠生成新內容的人工智慧技術。相較於判別式 AI 只做分類或預測（回答「這是什麼？」），生成式 AI 能從訓練資料中學習資料分佈，創造出前所未見的輸出（回答「創造新的什麼」）。

生成式 AI 的底層技術不斷演進：GAN（生成對抗網路）是早期的圖片生成主流，擴散模型（Diffusion Model）成為當前影像和影片生成的核心架構，自回歸模型（如 GPT 系列）則主導文字生成。2022-2026 年是生成式 AI 的爆發期——Stable Diffusion 開源圖片生成、ChatGPT 引爆文字生成、Sora 證明長影片生成可行。

生成式 AI 正在從「工具」進化成「AI Agent 的核心能力」。Agent 可以驅動多個生成式模型進行自動化媒體生成，從文字到圖片到影片，自動完成全流程。跨模態生成讓一個模型可以處理多種媒體類型，應用場景從文字擴展到跨模態的統一生成。

## 關鍵要素

- **跨模態生成**：從文字到圖片、影片、音訊、程式碼，一個模型可以跨多種媒體
- **從訓練資料學習分佈**：不是複製貼上，而是理解資料分佈後創造新內容
- **多種底層架構**：Transformer（文字）、擴散模型（圖片/影片）、GAN、VAE、自回歸模型
- **Agent 整合趨勢**：生成式 AI 成為 AI Agent 的核心能力，驅動自動化媒體生成
- **條件生成控制**：透過文字、圖片、相機軌跡等條件實現精細控制

## 各框架的做法

- **Garden Skills** → gpt-image-2 以三種執行模式、18 類視覺方向和 79 個模板封裝圖片生成與編輯
  👉 詳見 [[ConardLi-garden-skills\|Garden Skills]]
- **Open Generative AI** → 開源 AI 工作室，整合 200+ 生成式模型
  👉 詳見 [[Anil-matcha-Open-Generative-AI|Open Generative AI]]
- **ViMax** → AI 影片生成 Agent，整合生成式模型進行自動化媒體生成
  👉 詳見 [[HKUDS-ViMax|ViMax]]
- **OpenToonz** → 開源 2D 動畫工具，結合生成式 AI 輔助動畫製作
  👉 詳見 [[opentoonz-opentoonz|OpenToonz]]
- **Sana** → NVIDIA 高效擴散模型家族，涵蓋圖片、影片和世界模型生成
  👉 詳見 [[NVlabs-Sana|Sana]]
- **Generative AI for Beginners** → 微軟 21 課生成式 AI 入門課程，涵蓋 LLM、Prompt Engineering、RAG、Function Calling、AI Agent
  👉 詳見 [[microsoft-generative-ai-for-beginners|Generative AI for Beginners]]
- **ComfyUI** → 用節點圖把圖片、影片、音訊、3D 與文字模型組成可重用生成工作流
  👉 詳見 [[Comfy-Org-ComfyUI|ComfyUI]]
- **Awesome GPT-Image-2** → 把 GPT-Image-2 案例與模板整理成 Prompt as Code 和 Agent Skill
  👉 詳見 [[freestylefly-awesome-gpt-image-2|Awesome GPT-Image-2]]

## 相關概念

- [[AI-video-generation|AI 影片生成]] — 生成式 AI 的影片子領域
- [[diffusion-model|擴散模型]] — 生成式 AI 的核心架構之一
- [[LLM|大語言模型]] — 文字生成的核心技術
- [[語音辨識]] — 語音合成是音訊生成的基礎
- [[AI-Agent|AI Agent]] — Agent 驅動生成式模型進行自動化
- [[ConardLi-garden-skills]] — 將圖片生成與內容出版流程封裝為跨 Agent Skills

## 來源

- [[marceloprates-prettymaps|prettymaps]] — 以公開地理資料、圖層規則與程式化樣式產生風格化地圖

- 知識庫內生成式 AI 相關專案頁面
- Sana、Open Generative AI、ViMax 等專案文件
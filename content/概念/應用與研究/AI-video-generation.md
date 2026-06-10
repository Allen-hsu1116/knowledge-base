---
title: AI 影片生成
slug: AI-video-generation
added: 2026-05-17
---

# AI 影片生成

> 利用深度學習模型從文字或圖片生成影片的技術，近年模型品質快速提升，已可生成高品質影片。

## 核心內容

AI 影片生成（AI Video Generation）是利用深度學習模型從文字描述（Text-to-Video）或靜態圖片（Image-to-Video）生成影片的技術。核心原理是透過擴散模型（Diffusion Model）或 Transformer 架構，在潛在空間中逐步去噪生成影片幀序列，並透過時序注意力機制保持幀間一致性。

2024-2026 年是 AI 影片生成的爆發期：Sora 首次證明了長影片生成的可能性，Kling 3.0 帶來了原生 4K 輸出，Seedance 2.0 實現了精準的唇形同步，而 Wan 2.6 作為開源模型讓所有人都能使用。截至 2026 年 5 月，頂級模型已可生成 30 秒以上的高品質影片，物理一致性和運動合理性大幅提升。

### 技術路線

- **擴散模型路線**：Sora、Kling、Veo 等主流模型都基於擴散模型，在空間和時間維度上逐步去噪
- **Transformer 路線**：部分模型使用純 Transformer 架構處理影片生成
- **混合架構**：許多模型結合了擴散模型和 Transformer 的優勢

### 關鍵挑戰

- **時序一致性**：保持影片中物體和場景在時間軸上的一致性
- **物理合理性**：生成符合物理規律的運動和互動
- **文字理解**：準確理解複雜的文字描述並轉化為視覺內容
- **唇形同步**：讓生成影片中的人物口型與音訊精確匹配
- **計算成本**：影片生成需要大量 GPU 資源

## 主要模型

| 模型 | 類型 | 特色 |
|------|------|------|
| Kling | Text-to-Video / Image-to-Video | 快影科技出品，高品質動態影片 |
| Sora | Text-to-Video | OpenAI 出品，長影片生成能力 |
| Veo | Text-to-Video | Google DeepMind 出品 |
| Wan 2.2 | Text-to-Video / Image-to-Video | 開源影片生成模型 |
| Seedance 2.0 | Text-to-Video / Image-to-Video | ByteDance 出品，支援多比例與延伸 |

## 關鍵能力

- **Text-to-Video**：從文字描述直接生成影片
- **Image-to-Video**：以靜態圖片為起點生成動態影片
- **Lip Sync**：將音訊與人像結合，生成對嘴影片
- **影片延伸**：在既有影片基礎上無縫延續

## 相關專案

- [[Anil-matcha-Open-Generative-AI|Open Generative AI]] — 開源 AI 影片工作室，整合 200+ 生成式模型

## 相關概念

- [[generative-AI|生成式 AI]] — 生成式 AI 概覽
- [[LLM]] — 大語言模型，影片生成的文字理解基礎
- [[AI-Agent]] — AI Agent 可驅動生成式模型進行自動化媒體生成

## 來源

- wiki 彙總頁，整理自 AI 影片生成相關專案頁
- 各模型官方網站和文件
---
title: Open Generative AI
slug: Anil-matcha-Open-Generative-AI
github: https://github.com/Anil-matcha/Open-Generative-AI
stars: 14436
language: JavaScript
created: 2023-05-09
added: 2026-05-17
---

# Open Generative AI

> 開源免費的 AI 圖片與影片生成工作室，支援 200+ 模型，無內容審查、無訂閱費用，可自架。

開源免費的 AI 圖片與影片生成工作室，支援 200+ 模型，無內容審查、無訂閱費用，可自架。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [Anil-matcha/Open-Generative-AI](https://github.com/Anil-matcha/Open-Generative-AI) |
| Stars | ⭐14,436 |
| 語言 | JavaScript |
| 建立日期 | 2023-05-09 |
| 收錄日期 | 2026-05-17 |
| 授權 | 開源（查看 repo） |

## 快速導航

- [[generative-AI]] — 生成式 AI 概覽
- [[AI-Agent]] — AI Agent 生態
- [[AI-video-generation]] — AI 影片生成

## 詳細簡介

Open Generative AI 是一個全方位的 AI 媒體生成平台，提供圖片、影片、唇形同步和電影工作室四大功能模組。與 Midjourney、Runway 等封閉平台不同，它完全開源、免費、可自架，且不接受任何內容審查或提示詞限制。

平台的核心特色是整合了超過 200 個生成式模型，涵蓋 Flux、Nano Banana、Midjourney、Kling、Sora、Veo、Seedream、Wan 2.2 等主流模型，使用者可以在單一介面中自由切換和比較不同模型的生成效果。

除了桌面應用外，也提供線上託管版本（muapi.ai），無需安裝即可使用所有功能。桌面版額外支援本地模型推論（sd.cpp 和 Wan2GP 兩種引擎），讓使用者在無網路環境下也能生成圖片和影片。

## 核心特色

### 四大工作室

- **Image Studio**：80+ 模型，支援文字轉圖片和圖片轉圖片，可上傳最多 14 張參考圖片
- **Video Studio**：雙模式（Text-to-Video / Image-to-Video），支援 Kling、Sora、Veo、Seedance 2.0 等最新模型
- **Lip Sync Studio**：9 個專門模型，支援圖片+音訊和影片+音訊兩種模式
- **Cinema Studio**：「Infinite Budget」電影工作流程，自動化多鏡頭影片生成

### 本地推論引擎

桌面應用內建兩種本地推論引擎：sd.cpp（C++ 實作，支援 Apple Silicon Metal GPU 加速）用於圖片模型，Wan2GP（需自建 GPU 伺服器）用於影片模型。這樣的架構讓 Mac 使用者也能透過遠端 GPU 來生成影片。

### AI Agent 整合

透過 Generative-Media-Skills 套件，Claude Code、Codex 等 AI coding agent 可以直接從終端機驅動 200+ 模型，實現自動化媒體生成流程（提示詞 → 生成 → 編輯 → 拼接）。

## 安裝方式

```bash
# 線上版（免安裝）
# 直接訪問 https://muapi.ai/open-generative-ai

# 桌面版安裝（macOS）
# 從 GitHub Releases 下載 DMG 安裝

# macOS 首次開啟需解除 Gatekeeper 限制
xattr -cr "/Applications/Open Generative AI.app"

# 從原始碼建置
git clone https://github.com/Anil-matcha/Open-Generative-AI
cd Open-Generative-AI
npm install
npm run dev
```

## 技術棧

| 技術 | 用途 |
|------|------|
| Electron | 桌面應用框架 |
| React | 前端 UI |
| Node.js | 後端服務 |
| SQLite | 本地資料儲存 |
| sd.cpp | 本地圖片推論引擎 |
| Wan2GP | 本地影片推論引擎 |

## 授權

開源專案（查看 repo 中的 LICENSE）

## 相關連結

- [GitHub](https://github.com/Anil-matcha/Open-Generative-AI)
- [線上版](https://muapi.ai/open-generative-ai)
- [Discord](https://discord.gg/s7KW4fsqXK)
- [Generative-Media-Skills（AI Agent 整合）](https://github.com/SamurAIGPT/Generative-Media-Skills)
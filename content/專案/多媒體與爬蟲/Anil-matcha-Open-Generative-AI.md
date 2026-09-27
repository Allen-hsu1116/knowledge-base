---
title: Open Generative AI
slug: Anil-matcha-Open-Generative-AI
github: https://github.com/Anil-matcha/Open-Generative-AI
stars: 14436
language: JavaScript
topics: [生成式 AI, 影片生成, 開源]
created: 2023-05-09
added: 2026-05-17
updated: 2026-09-27
---

# Open Generative AI

> ⭐14436 · 可自架的 AI 媒體工作室，整合雲端模型 API 與可選本機推論；開源介面不等於所有模型免費或離線。

**[⚠️ 可能過時] 舊筆記把「無訂閱」推成模型使用免費、把可自架推成資料必定不離機。2026-09-27 官方 README 明列 MuAPI 雲端請求、檔案上傳與不同本地引擎；使用成本、審查政策與資料邊界取決於所選模型及供應商。** 來源見頁末。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [Anil-matcha/Open-Generative-AI](https://github.com/Anil-matcha/Open-Generative-AI) |
| Stars | ⭐14436|
| 語言 | JavaScript |
| 建立日期 | 2023-05-09 |
| 收錄日期 | 2026-05-17 |
| 授權 | 開源（查看 repo） |

## 快速導航


- [[generative-AI]] — 生成式 AI 概覽
- [[AI-Agent]] — AI Agent 生態
- [[AI-video-generation]] — AI 影片生成

## 詳細簡介

Open Generative AI 是可自架的 AI 媒體生成介面，整合圖片、影片、唇形同步與電影工作流。原始快照列四大模組；官方 README 現已列更多工作室，模型與工作室數會隨版本變化。MIT 應用授權不會取代底層模型或 API 服務條款。

平台的核心特色是整合了超過 200 個生成式模型，涵蓋 Flux、Nano Banana、Midjourney、Kling、Sora、Veo、Seedream、Wan 2.2 等主流模型，使用者可以在單一介面中自由切換和比較不同模型的生成效果。

除了桌面應用外，也提供線上託管版本（muapi.ai）。sd.cpp 可在應用所在主機推論相容圖片模型；Wan2GP 則是連到使用者自行部署的 GPU 伺服器。只有模型、權重與依賴都準備完成且未使用遠端服務的配置，才能合理談離線運行；Mac 連遠端 Wan2GP 並非完全本機。

## 核心特色

- **四大工作室** — Image Studio（80+ 模型，文字轉圖片和圖片轉圖片）、Video Studio（Text-to-Video / Image-to-Video，支援 Kling、Sora、Veo）、Lip Sync Studio（9 個專門模型）、Cinema Studio（「Infinite Budget」電影工作流程，自動化多鏡頭影片生成）
- **200+ 模型聚合** — 整合 Flux、Nano Banana、Midjourney、Kling、Sora、Veo、Seedream、Wan 2.2 等主流模型，使用者在單一介面中自由切換和比較不同模型的生成效果
- **本地推論引擎** — 桌面應用內建 sd.cpp（C++ 實作，支援 Apple Silicon Metal GPU 加速）用於圖片模型，Wan2GP（需自建 GPU 伺服器）用於影片模型，讓 Mac 使用者也能透過遠端 GPU 來生成影片
- **AI Agent 整合** — 透過 Generative-Media-Skills 套件，Claude Code、Codex 等 AI coding agent 可以直接從終端機驅動 200+ 模型，實現自動化媒體生成流程
- **可自架介面** — 應用以 MIT 提供；模型權重、API 用量與硬體成本另計，服務政策依供應商

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

## 是什麼


Open Generative AI 是可自架的 AI 媒體生成工作室，在單一介面提供多模型生成工作流，而不是把商用模型變成免費的本機模型。

它涵蓋圖片、影片、唇形同步等流程；原始快照的 200+ 模型與四大工作室是歷史資料，最新可用集合依版本及 API 而定。桌面版可用 sd.cpp 做本機圖片推論，也可連自己的 Wan2GP GPU 伺服器，後者是否離線取決於伺服器部署位置。

## 怎麼用

### 線上版（免安裝）

直接訪問 [muapi.ai/open-generative-ai](https://muapi.ai/open-generative-ai) 即可使用所有功能。

### 桌面版安裝

```bash
# 從 GitHub Releases 下載 DMG 安裝
# https://github.com/Anil-matcha/Open-Generative-AI/releases

# macOS 首次開啟需解除 Gatekeeper 限制
xattr -cr "/Applications/Open Generative AI.app"

# 從原始碼建置
git clone https://github.com/Anil-matcha/Open-Generative-AI
cd Open-Generative-AI
npm install
npm run dev
```

### AI Agent 整合

透過 [Generative-Media-Skills](https://github.com/SamurAIGPT/Generative-Media-Skills)，Claude Code、Codex 等 AI coding agent 可以直接從終端機驅動 200+ 模型。

## 跟其他方案的關係


Open Generative AI 在 [[generative-AI]] 生態的差異是可自架與修改介面、聚合不同後端；不能由此推論每個後端都免費、無內容政策或可在自己的硬體執行。自架介面、遠端模型 API 與本機推論是不同層次。

跟 [[AI-video-generation]] 專案（如 ComfyUI）相比：ComfyUI 是節點式工作流引擎（需要手動串接節點），Open Generative AI 是工作室式介面（選模型→生成→完成）。兩者定位不同：一個是工程師的瑞士刀，一個是創作者的快速工具。

跟 [[heygen-com-hyperframes|Hyperframes]] 的差異：Hyperframes 是 Agent-first 的影片渲染框架（HTML → MP4），Open Generative AI 是模型聚合平台（200+ 模型 → 圖片/影片）。不同層次的工具。

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[generative-AI]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[AI-video-generation]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[generative-AI]] · [[AI-video-generation]] · [[AI-Agent]]

> [⚠️ 日期校正] 本頁「收錄日期」統一採 projects.md 的索引收錄批次（2026-05-17）；原欄位 2023-05-09、2026-05-17 與索引不一致，舊值保留於 lint 稽核與備份。這不是上游專案建立日期。

## 來源

- [原始資料](../raw/2026-05-17-Anil-matcha-Open-Generative-AI.md)
- GitHub: https://github.com/Anil-matcha/Open-Generative-AI
- [2026-09-27 核對：官方 README 的 Local Model Inference、API 與 License](https://github.com/Anil-matcha/Open-Generative-AI/blob/main/README.md)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Anil-matcha/Open-Generative-AI |
| Stars | ⭐14436 |
| License | MIT（應用）；模型與服務條款另計 |
| 收錄日期 | 2026-05-17 |

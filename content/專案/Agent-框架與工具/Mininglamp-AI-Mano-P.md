---
title: Mano-P
slug: Mininglamp-AI-Mano-P
created: 2025-06-07
updated: 2026-10-04
stars: 2288
language: Python/Model
topics: [VLA, GUI-Agent, Computer-Use, Edge-AI]
---

# Mano-P

> ⭐2288 · GUI-VLA 智能體，支援 Apple Silicon 本地推論；CLI 預設為雲端，處理敏感畫面前必須明確選擇本地模式。

## 快速導航


- 🤖 [[AI-Agent]] — GUI 智能體應用
- 🖥️ [[computer-use-agent]] — 電腦操控技術
- 🦾 [[trycua-cua]] — 另一個 CUA 智能體專案
- ⚡ [[embedded-AI]] — 邊緣 AI 部署

## 是什麼

**Mano-P** 是明略科技（Mininglamp）推出的 GUI-VLA（視覺-語言-動作）智能體專案。「Mano」是西班牙語的「手」，「P」代表 Private，強調隱私優先。它支援 Apple Silicon 裝置端推論，但不能把這項能力等同所有執行模式的資料處理方式；官方 README 明載 CLI 預設使用雲端，本地模式需設定模型並加上 `--local`。

來源快照記錄 Mano-CUA 1.1 在 OSWorld 的成功率為 58.2%，高於同表 opencua-72b 的 45.0%；WebRetriever Protocol I 為 41.7 NavEval。這些是來源當時的特定模型與測試設定，不代表今日排行榜，也不能套用成本地 4B 模型的成績。

**[⚠️ 可能過時] 舊頁無條件宣稱「資料不離開設備」，與 2026-10-04 官方 README 的 cloud/local 雙模式及預設 cloud 說明衝突。** 雲端模式會傳送截圖與任務描述至 `mano.mininglamp.com`；本地推論僅消除模型推論的外傳路徑，操作瀏覽器或其他服務仍可能連網。來源見下方官方 README。

## 核心特色

- **🏆 OSWorld 基準快照** — Mano-CUA 1.1 的 58.2% 成功率；不是本地 4B 模型或即時排名的保證
- **🔒 可選本地推論** — Apple M4 + 32GB RAM 為 README 的本地配置範例；CLI 預設雲端，需明確切換
- **🚀 高效推理** — Mano-CUA-4B 在 Apple M5 Pro 達 ~80 tokens/s；搭配 Cider W8A8 量化，prefill 加速 12.7%
- **🔄 自主長任務執行** — 支援數十到數百步的企業級業務流程自動化
- **🛠️ Cider SDK** — 伴隨推論 SDK，提供 W8A8/W4A8 激活量化，MLX 不原生支援的加速原語
- **🏗️ Mano-AFK** — 自主應用構建，從 PRD 到部署、測試、修復的完整循環

## 怎麼用

```bash
# 安裝 Mano-P Skills（第一階段：Agent Skills）
pip install mano-cua

# 使用 Mano-CUA Skills 構建智能 CUA 任務工作流
# 在 OpenClaw 或 Claude Code 中使用

# 第二階段：本地模型推理（Mac M4 + 32GB RAM）
# 從 HuggingFace 或 ModelScope 下載模型
# https://huggingface.co/Mininglamp-2718/Mano-CUA-4B-Thinking-1.1

# Cider SDK 加速（INT8 量化推理）
pip install cider-sdk
```

**依 2026-10-04 官方 README 明確啟用本地模式：**

```bash
mano-cua check
mano-cua install-sdk
mano-cua install-model
# 完成模型準備後，以非敏感任務驗證本地推論
mano-cua run "Type hello in the search box" --local
```

上述為來源用法整理，未在本次 lint 安裝或執行；未加 `--local` 的 `mano-cua run` 不應用於要求不外傳的資料。

## 跟其他方案的關係

| 專案 | 類型 | 邊緣推理 | OSWorld 成績 | 開源 | 語言 |
|------|------|----------|-------------|------|------|
| **Mano-P** | GUI-VLA Agent | 可選 Apple Silicon 本地模式 | 58.2%（Mano-CUA 1.1 來源快照） | ✅ Apache 2.0 | 中英 |
| opencua-72b | 來源比較的 GUI 模型 | 本頁未核實硬體配置 | 45.0%（來源快照） | 依模型授權 | 依模型說明 |
| [[trycua-cua\|CUA]] | 沙箱、SDK 與評測基礎設施 | 支援本地與雲端環境 | 不適用：不是 opencua-72b 模型 | 依專案授權 | 依接入模型 |
| [[computer-use-agent|Claude Computer Use]] | 雲端 CUA | ❌ 雲端 | 31.3 | ❌ 商業 | 英 |
| UI-TARS | GUI Agent | ❌ | 較低 | ✅ | 英 |

## 相關概念


← [[AI-Agent]] · [[computer-use-agent]] · [[trycua-cua]] · [[embedded-AI]]

## 來源

- **GitHub**: https://github.com/Mininglamp-AI/Mano-P
- [官方 README：Skills、Cloud / Local CLI](https://github.com/Mininglamp-AI/Mano-P/blob/main/README.md) — 2026-10-04 核對預設雲端及 `--local` 行為。
- raw/2025-06-07-Mininglamp-AI-Mano-P.md
- raw/2026-05-20-Mininglamp-AI-Mano-P.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Mininglamp-AI/Mano-P |
| Stars | ⭐2288|
| License | Apache License 2.0 |
| 收錄日期 | 2025-06-07 |

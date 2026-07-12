---
title: Mano-P
slug: Mininglamp-AI-Mano-P
created: 2025-06-07
updated: 2025-06-07
stars: 2288
language: Python/Model
topics: [VLA, GUI-Agent, Computer-Use, Edge-AI]
---

# Mano-P

> ⭐2.3k · 開源 GUI-VLA 智能體，OSWorld 基準測試第一名，可在 Apple M4 Mac mini/MacBook 本地運行推理，資料不離開設備。

## 快速導航

- 🤖 [[AI-Agent]] — GUI 智能體應用
- 🖥️ [[computer-use-agent]] — 電腦操控技術
- 🦾 [[trycua-cua]] — 另一個 CUA 智能體專案
- ⚡ [[embedded-AI]] — 邊緣 AI 部署

## 是什麼

**Mano-P** 是明略科技（Mininglamp）推出的開源 GUI-VLA（視覺-語言-動作）智能體專案，專為邊緣裝置設計。「Mano」是西班牙語的「手」，「P」代表 Private，強調隱私優先。它可以在 Apple M4 晶片的 Mac mini 或 MacBook 上完全本地運行推理，無需雲端 API，所有截圖和任務資料都在設備上處理。

Mano-P 在 OSWorld 基準測試中達成 58.2% 成功率，排名第一（超過 opencua-72b 的 45.0%），在 WebRetriever Protocol I 測試中獲得 41.7 NavEval 分數，超越 Gemini 2.5 Pro 和 Claude 4.5 的 Computer Use 模式。

## 核心特色

- **🏆 OSWorld #1** — 58.2% 成功率，領先第二名 13.2 個百分點
- **🔒 完全本地執行** — 在 Apple M4 + 32GB RAM 上運行，無需雲端 API，資料不外洩
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

## 跟其他方案的關係

| 專案 | 類型 | 邊緣推理 | OSWorld 成績 | 開源 | 語言 |
|------|------|----------|-------------|------|------|
| **Mano-P** | GUI-VLA Agent | ✅ Apple M4 | 58.2% #1 | ✅ Apache 2.0 | 中英 |
| [[trycua-cua|OpenCUA]] | CUA Agent | ❌ 需雲端 | 45.0% | ✅ | 英 |
| [[computer-use-agent|Claude Computer Use]] | 雲端 CUA | ❌ 雲端 | 31.3 | ❌ 商業 | 英 |
| UI-TARS | GUI Agent | ❌ | 較低 | ✅ | 英 |

## 相關概念

← [[AI-Agent]] · [[computer-use-agent]] · [[trycua-cua]] · [[embedded-AI]]

## 來源

- **GitHub**: https://github.com/Mininglamp-AI/Mano-P
- raw/2025-06-07-Mininglamp-AI-Mano-P.md

---

| 項目 | 資訊 |
|------|------|
| GitHub | https://github.com/Mininglamp-AI/Mano-P |
| Stars | ⭐ 2,288 |
| License | Apache License 2.0 |
| 收錄日期 | 2025-06-07 |
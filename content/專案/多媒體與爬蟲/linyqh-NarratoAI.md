---
title: NarratoAI
slug: linyqh-NarratoAI
created: 2025-06-07
updated: 2025-06-07
stars: 9698
language: Python
topics:
  - Video-Generation
  - AI-Video
  - Content-Automation
  - LLM
---

# NarratoAI

> ⭐9.7k · 一站式 AI 影視解說+自動化剪輯工具，基於 LLM 實現文案撰寫、自動化影片剪輯、配音和字幕生成。

## 快速導航

- 🤖 [[AI-Agent]] — AI 自動化應用
- 🎬 [[harry0703-MoneyPrinterTurbo]] — 另一個 AI 影片生成工具
- 📋 [[feicaiclub-video-spec-builder]] — 影片分鏡腳本工具
- ⚙️ [[workflow-automation]] — 工作流程自動化

## 是什麼

**NarratoAI** 是一款自動化影視解說工具，基於大語言模型（LLM）實現從文案撰寫到自動化影片剪輯、配音和字幕生成的一站式流程。它支援本地部署的開源版，也有雲端託管版（NarratoAI.cn）。

主要功能包括：紀錄片逐幀分析、短劇解說和混剪、語音克隆（IndexTTS2）、Fun-ASR 一鍵轉錄字幕、多種 TTS 支援（包括騰訊雲 TTS）、多種大模型供應商管理等。

## 核心特色

- **📺 一站式流程** — 文案撰寫 → 影片剪輯 → 配音 → 字幕，全自動
- **🔊 語音克隆** — 支援 IndexTTS2 語音克隆技術
- **🎬 短劇解說+混剪** — 支援短劇內容的解說和混剪製作
- **🧠 多模型支援** — DeepSeek R1/V3、Qwen2-VL 等多種大模型
- **📝 Fun-ASR 轉錄** — 一鍵字幕轉錄功能

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/linyqh/NarratoAI.git
cd NarratoAI

# 安裝依賴
pip install -r requirements.txt

# 複製設定檔
cp config/example.toml config.toml
# 編輯 config.toml 填入 API keys

# 啟動 Web UI
python app.py
```

## 跟其他方案的關係

| 專案 | 定位 | 剪輯 | 解說 | 語音克隆 | 開源 |
|------|------|------|------|----------|------|
| **NarratoAI** | 影視解說+剪輯 | ✅ | ✅ | ✅ IndexTTS2 | ✅ |
| [[harry0703-MoneyPrinterTurbo\|MoneyPrinterTurbo]] | 短影片生成 | ✅ | ❌ | ✅ | ✅ MIT |
| [[feicaiclub-video-spec-builder\|video-spec-builder]] | 分鏡腳本 | ❌ | ❌ | ❌ | ✅ MIT |

## 相關概念

← [[AI-Agent]] · [[harry0703-MoneyPrinterTurbo]] · [[feicaiclub-video-spec-builder]] · [[workflow-automation]]

## 來源

> 完整 README 見 [[raw/2025-06-07-linyqh-NarratoAI|raw 檔案]]

---

| 項目 | 資訊 |
|------|------|
| GitHub | https://github.com/linyqh/NarratoAI |
| Stars | ⭐ 9,698 |
| License | Other（非商用，需聯繫作者取得商業授權）|
| 收錄日期 | 2025-06-07 |
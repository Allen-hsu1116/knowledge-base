---
title: MoneyPrinterTurbo
slug: harry0703-MoneyPrinterTurbo
created: 2025-06-07
updated: 2025-06-07
stars: 80701
language: Python
topics:
  - Video-Generation
  - AI-Video
  - Content-Automation
  - LLM
---

# MoneyPrinterTurbo

> ⭐80.7k · 只需提供影片主題或關鍵字，即可全自動生成影片文案、素材、字幕、背景音樂，合成高清短影片。

## 快速導航

- 🤖 [[AI-Agent]] — AI 自動化應用
- 🎬 [[linyqh-NarratoAI]] — AI 影視解說+剪輯
- 📋 [[feicaiclub-video-spec-builder]] — 影片分鏡腳本工具
- ⚙️ [[workflow-automation]] — 工作流程自動化

## 是什麼

**MoneyPrinterTurbo** 是一款 AI 短影片全自動生成工具。只需提供一個影片主題或關鍵字，就能自動生成影片文案、從高清無版權素材庫匹配合適片段、生成字幕、配上背景音樂，最終合成高清短影片。

支援 9:16 豎屏和 16:9 橫屏兩種格式，提供 Web UI 和 API 兩種操作方式。影片文案支援中文和英文，語音合成支援多種語音並可即時試聽。

## 核心特色

- **🎯 一鍵全自動** — 主題/關鍵字 → 文案 → 素材 → 字幕 → 音樂 → 影片
- **📐 多尺寸支援** — 豎屏 9:16 (1080×1920) 和橫屏 16:9 (1920×1080)
- **📦 批量生成** — 一次生成多個影片，選最滿意的
- **🎵 背景音樂** — 隨機或指定音樂，可調整音量
- **🎬 字幕美化** — 字體、位置、顏色、大小、描邊全可調
- **🤖 多模型支援** — OpenAI、DeepSeek、Ollama、通義千問、Gemini、文心一言等 10+ 種 LLM
- **🖥️ Web UI + API** — 雙模式操作，MVC 架構代碼清晰

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/harry0703/MoneyPrinterTurbo.git
cd MoneyPrinterTurbo

# 安裝依賴
pip install -r requirements.txt

# 複製設定檔
cp config/config.example.toml config/config.toml
# 編輯 config.toml 填入 API keys

# 啟動 Web UI
python webui.py

# 或使用 API 模式
python main.py
```

## 跟其他方案的關係

| 專案 | 定位 | 自動文案 | 語音合成 | 字幕 | 批量 | 開源 |
|------|------|---------|---------|------|------|------|
| **MoneyPrinterTurbo** | 短影片全自動 | ✅ | ✅ 多語音 | ✅ | ✅ | ✅ MIT |
| [[linyqh-NarratoAI\|NarratoAI]] | 影視解說+剪輯 | ✅ | ✅ 含克隆 | ✅ | ❌ | ✅ 非商用 |
| [[feicaiclub-video-spec-builder\|video-spec-builder]] | 分鏡腳本 | ❌ | ❌ | ❌ | ❌ | ✅ MIT |
| Pika/Sora | 影片生成模型 | ❌ | ❌ | ❌ | ❌ | ❌ 商業 |

## 相關概念

← [[AI-Agent]] · [[linyqh-NarratoAI]] · [[feicaiclub-video-spec-builder]] · [[workflow-automation]]

## 來源

> 完整 README 見 [[raw/2025-06-07-harry0703-MoneyPrinterTurbo|raw 檔案]]

---

| 項目 | 資訊 |
|------|------|
| GitHub | https://github.com/harry0703/MoneyPrinterTurbo |
| Stars | ⭐ 80,701 |
| License | MIT License |
| 收錄日期 | 2025-06-07 |
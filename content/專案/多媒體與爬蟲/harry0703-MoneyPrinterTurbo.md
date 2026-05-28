---
title: MoneyPrinterTurbo
slug: harry0703-MoneyPrinterTurbo
created: 2024-03-11
updated: 2026-05-28
stars: 62027
language: Python
topics:
  - AI-video-generation
  - generative-AI
  - LLM
  - content-automation
---

# MoneyPrinterTurbo

> ⭐62k · AI 驅動的全自動短影音生成器，輸入主題即可一鍵產出完整影片

快速導航：[[AI-video-generation|AI 影片生成]] · [[generative-AI|生成式 AI]] · [[LLM]] · [[content-automation|內容自動化]]

## 是什麼

MoneyPrinterTurbo 是一個基於 Python 的全自動短影音生成工具。使用者只需提供一個影片主題或關鍵詞，系統就會自動生成文案、搜尋素材、添加字幕和背景音樂，最終合成一條高清短影片。支援 9:16 豎屏和 16:9 橫屏兩種常見短影片格式。

## 核心特色

- 🎬 **全自動流程**：從主題到成片，一鍵完成所有步驟
- 🧠 **多模型支援**：OpenAI、DeepSeek、Moonshot、Gemini、Ollama 等 LLM 生成文案
- 📐 **多尺寸輸出**：9:16 豎屏 / 16:9 橫屏任選
- 🔊 **語音合成**：Edge TTS + Azure TTS，支援中英文語音
- 📝 **字幕與配樂**：自動生成可自訂樣式的字幕，搭配背景音樂
- 🖥️ **Web UI + API**：Streamlit 網頁介面 + FastAPI REST API，部署靈活
- 📦 **批量生成**：支援一次生成多支影片

## 怎麼用

```bash
# 安裝
git clone https://github.com/harry0703/MoneyPrinterTurbo
cd MoneyPrinterTurbo

# 安裝依賴
pip install -r requirements.txt

# 設定環境變數
cp .env.example .env
# 編輯 .env 填入 API Key（OpenAI / DeepSeek / Moonshot 等）

# 啟動 Web UI
streamlit run webui/Main.py

# 或啟動 API 服務
python main.py
```

技術棧：Python、Streamlit（Web UI）、FastAPI（API）、ImageMagick（字幕渲染）、Whisper / Edge TTS（語音合成）、Pexels（素材來源）。

## 跟其他方案的關係

| 方案 | Stars | 類型 | AI 影片 | 字幕生成 | 語音合成 | Web UI |
|------|-------|------|---------|---------|---------|--------|
| **MoneyPrinterTurbo** | ⭐62k | 全自動影片 | ✅ | ✅ | ✅ | ✅ |
| 短影音剪輯軟體 | — | 手動剪輯 | ❌ | ❌ | ❌ | ✅ |
| [[moeru-ai-airi|AIRI]] | ⭐39.7k | AI 虛擬角色 | ❌ | ❌ | ✅ | ✅ |

← [[AI-video-generation|AI 影片生成]] · [[generative-AI|生成式 AI]] · [[LLM]] · [[content-automation|內容自動化]]

## 來源

- GitHub: <https://github.com/harry0703/MoneyPrinterTurbo>
- 原始 README: `raw/2026-05-28-harry0703-MoneyPrinterTurbo.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [harry0703/MoneyPrinterTurbo](https://github.com/harry0703/MoneyPrinterTurbo) |
| Stars | ⭐62,027 |
| License | — |
| Language | Python |
| 收錄日期 | 2026-05-28 |
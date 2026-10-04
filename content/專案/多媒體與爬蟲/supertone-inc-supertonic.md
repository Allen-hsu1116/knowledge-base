---
title: Supertonic
slug: supertone-inc-supertonic
created: 2026-05-16
date: 2026-05-16
stars: 13316
updated: 2026-10-04
language: zh-TW
topics: [TTS, 邊緣裝置, 語音合成]
---

# Supertonic

> ⭐13316 · 基於 ONNX Runtime 的裝置端多語言 TTS；專案已封存並停止支援，模型備妥後可本地推論。Stars 為歷史快照。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [supertone-oss-archive/supertonic](https://github.com/supertone-oss-archive/supertonic) |
| Stars | ⭐13316|
| Language | Swift (主要) + 多語言 SDK |
| 建立日期 | 2025-11-18 |
| 收錄日期 | 2026-05-16 |
| 授權 | 範例程式 MIT；模型 OpenRAIL-M，須分別遵守條款 |

## 快速導航


- [[語音辨識]] — 語音相關技術
- [[模型推論與部署]] — 模型部署策略
- [[LLM]] — 大語言模型
- [[embedded-AI]] — 邊緣裝置 AI

## 是什麼


Supertonic 是 Supertone Inc. 開發的開源文字轉語音（TTS）系統，專為裝置端本地推論設計。

基於 ONNX Runtime，Supertonic 在相依套件、模型及 voice styles 備妥後可本地合成語音，不需呼叫雲端推論 API。這不等於下載、Web 整合或本地 HTTP server 沒有安全與隱私風險。Supertonic 3 官方列表包含 31 種語言，但未列中文、日文或韓文。

**[⚠️ 可能過時] 2026-10-04 核對官方 README：程式已遷至 `supertone-oss-archive` 並封存，不再提供開發、修補或支援。** 舊頁的零隱私風險、中文／日文／韓文支援及原 namespace 自動下載描述不應繼續當成有效指引；下方已改採封存版 Quick Start。效能主張仍需依原始測試硬體與基線解讀。

## 核心特色

- **可本地推論**：下載模型與相依套件後不需雲端推論 API；部署者仍須管理整合程式與網路權限
- **31 種語言支援**：包含英文、法文、德文、西班牙文等；官方列表未列中文、日文及韓文
- **極致輕量**：模型遠小於同級開源 TTS 系統，適合嵌入式裝置和行動端
- **CPU 上接近 GPU 效能**：在 CPU 推論速度接近 A100 GPU 上大型基線模型的水準
- **多平台 SDK**：Python、Node.js、瀏覽器三端支援，ONNX Runtime 統一推論引擎

## 怎麼用

**封存版官方 Quick Start（Python 3.11）：**

```bash
git clone https://github.com/supertone-oss-archive/supertonic.git
cd supertonic
python3.11 -m venv .venv
source .venv/bin/activate
python -m pip install huggingface_hub
hf download supertone-oss-archive/supertonic-3 \
  --revision aafc6e32416a594460b32413efc49d7fe4ce6d46 \
  --local-dir assets
python -m pip install -r py/requirements.txt
cd py
python example_onnx.py --n-test 1 --text "This speech was generated locally." --lang en
```

官方說明舊版 Python SDK 的自動下載可能仍使用原 `Supertone` namespace；若使用 SDK，應依封存文件提供本地 `model_dir` 並設 `auto_download=False`。上述指令為文件整理，本次 lint 未安裝或執行模型。

**Node.js：**
```bash
cd nodejs && npm install && npm start
```

**瀏覽器：**
```bash
cd web && npm install && npm run dev
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Ollama\|Ollama]] | 本地 LLM 部署 | 互補：Ollama 跑語言模型，Supertonic 跑語音合成 |
| ElevenLabs | 雲端 TTS | 對比：ElevenLabs 需要雲端，Supertonic 全本地推論 |
| Whisper | 語音辨識（STT） | 互補：Whisper 做 STT，Supertonic 做 TTS，組成完整語音管線 |
| [[vLLM]] | 推論引擎 | 不同領域：vLLM 做 LLM 推論，Supertonic 做 TTS 推論 |

## 相關概念


← [[語音辨識]] · [[模型推論與部署]] · [[LLM]] · [[embedded-AI]]

## 來源

- [GitHub：專案原始碼](https://github.com/supertone-inc/supertonic)
- [封存版 README](https://github.com/supertone-oss-archive/supertonic/blob/main/README.md) — 2026-10-04 核對停止支援公告、語言列表、下載方法與授權。
- [原始資料](../raw/2026-05-16-supertone-inc-supertonic.md)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/supertone-oss-archive/supertonic |
| Stars | ⭐13316 |
| License | 範例程式 MIT；模型 OpenRAIL-M |
| 收錄日期 | 2026-05-16 |

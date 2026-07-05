---
title: ViMax
slug: HKUDS-ViMax
created: 2026-05-22
updated: 2026-05-22
stars: 6064
language: Python
topics: [AI 影片生成, AI Agent, 生成式 AI]
---

# ViMax — Agentic Video Generation

> ⭐6.1k · Director、Screenwriter、Producer、Video Generator 四合一的 agentic 影片生成框架

## 快速導航

- 🎬 **AI 影片生成** → [[AI-video-generation]]（端到端 AI 影片生成的完整方案）
- 🤖 **AI Agent** → [[AI-Agent]]（多 agent 分工協作的影片製作管線）
- 🎨 **生成式 AI** → [[generative-AI]]（生成式 AI 在影片領域的應用）

## 是什麼

ViMax 是一個 agentic 影片生成框架，由 Director、Screenwriter、Producer、Video Generator 四個角色組成多 agent 協作管線。解決參考圖取得、一致性檢查、腳本生成、分鏡設計、鏡頭設計、角色跨場景一致、製作效率、AI 影片生成規模化等挑戰。支援 MiniMax 等 chat model provider 作為生成後端。

## 核心特色

- **Idea2Video** — 從點子到完整影片，多 agent 自動化說故事、角色設計、製作
- **Novel2Video** — 小說轉分集影片，智慧敘事壓縮、角色追蹤、逐場景視覺改編
- **Script2Video** — 寫任何劇本直接生成影片
- **AutoCameo** — 上傳照片把自己/寵物變成影片客串明星
- **多 Agent 協作** — Director 主導、Screenwriter 寫劇本、Producer 統籌，搭配圖像/影片生成後端
- **一致性保證** — 解決角色跨場景一致、參考圖取得等核心挑戰

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/HKUDS/ViMax.git
cd ViMax

# 安裝依賴
pip install -r requirements.txt

# 設定 API key（MiniMax 等 chat model provider）
# 參考 README 的設定指引

# 執行
python run.py --mode idea2video --input "你的影片點子"
```

## 跟其他方案的關係

| 方案 | 定位 | 多 Agent | 輸入方式 | 角色一致性 | 開源 |
|------|------|---------|---------|-----------|------|
| **ViMax** | Agentic 影片生成 | ✅ 4 角色 | idea/novel/script | ✅ | ✅ |
| **MovieGen** | 影片生成模型 | ❌ | prompt | ❌ | ❌ |
| **Sora** | 影片生成模型 | ❌ | prompt | ❌ | ❌ |
| **Kling** | 影片生成模型 | ❌ | prompt/圖片 | 部分 | ❌ |

- ViMax 是 [[AI-Agent]] 在影片生成領域的實作，用多 agent 分工解決複雜影片製作流程
- **vs MovieGen/Sora/Kling**：ViMax 是 agentic 框架，解決從點子到成片的全流程；後三者是單步生成模型
- ViMax 可接各種影片生成後端（含 MovieGen、Sora、Kling 等），定位互補

## 相關概念

← [[AI-video-generation]] · [[AI-Agent]] · [[generative-AI]]

## 來源

- raw/2026-05-22-HKUDS-ViMax.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [HKUDS/ViMax](https://github.com/HKUDS/ViMax) | ⭐6,064 | 待確認 | 2026-05-22 |
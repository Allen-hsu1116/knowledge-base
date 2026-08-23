---
title: video-use
slug: browser-use-video-use
created: 2026-07-01
updated: 2026-07-01
stars: 12595
language: Python
topics:
  - video-editing
  - ai-agent
  - claude-code
  - coding-agent
  - ffmpeg
  - transcription
  - content-automation
---

# video-use

> ⭐12595 · 用 Claude Code 等 Coding Agent 編輯影片，把原始素材丟進資料夾，跟 Agent 聊天就能拿回 final.mp4

## 快速導航


- 🤖 **Coding Agent** → [[anthropics-claude-code|Claude Code]] · [[Coding-Agent-CLI]]
- 🎬 **影片生成** → [[AI-video-generation|AI 影片生成]] · [[content-automation|內容自動化]]
- 🧠 **Agent 設計** → [[harness-engineering|Harness Engineering]] · [[AI-Agent]]

## 是什麼

video-use 是 browser-use 團隊推出的開源專案，核心概念是讓 Coding Agent（如 Claude Code、Codex、Hermes）直接編輯影片。你不用學 Premiere 或 DaVinci，只要把原始影片素材丟進一個資料夾，打開終端機跟 Agent 說「edit these into a launch video」，它就會自動分析素材、提出剪輯策略、等你確認後產出 final.mp4。

這個專案的核心洞察是：LLM 不需要「看」影片，它需要「讀」影片。video-use 透過兩層設計把影片轉成 LLM 可理解的文字格式——第一層是 ElevenLabs Scribe 產生的 word-level 逐字稿（含時間戳和說話者辨識），壓縮成約 12KB 的文字；第二層是按需生成的視覺複合圖（filmstrip + waveform + word labels），只在決策點才呼叫。相比天真的「逐幀截圖」做法（30,000 幀 × 1,500 tokens = 4500 萬 tokens 的噪音），這個方法大幅降低了 token 消耗。

剪輯流程包含自動去除 filler words（嗯、啊、false starts）、自動調色、30ms 音頻淡入淡出避免爆音、字幕燒錄、動畫覆蓋生成（支援 HyperFrames、Remotion、Manim、PIL），以及自我評估迴圈——在每個剪輯點檢查渲染輸出，發現問題就自動修復重渲染（最多 3 次）。

## 核心特色

- **文字優先的影片理解**：LLM 不看影片而是「讀」影片，12KB 文字 + 少數 PNG 就夠了，比逐幀截圖節省數萬倍 tokens
- **自動化剪輯全流程**：去 filler words、去死寂、自動調色、字幕燒錄、動畫覆蓋——一句話搞定
- **自我評估迴圈**：在每個剪輯邊界檢查渲染結果，視覺跳動、爆音、隱藏字幕都能自動抓到並修復
- **多 Agent 動畫生成**：動畫覆蓋透過平行子 Agent 生成，每個動畫一個 Agent，支援 HyperFrames、Remotion、Manim、PIL
- **Session 記憶持久化**：剪輯偏好和專案狀態存在 project.md，下次 session 自動接續
- **Agent Skill 格式**：以 SKILL.md 定義，可安裝到 Claude Code、Codex、Hermes、OpenClaw 等任何有 shell 存取的 Agent
- **ElevenLabs Scribe 整合**：用 ElevenLabs 做 word-level 語音轉文字，含說話者辨識和音頻事件標記

## 怎麼用

一鍵安裝（貼入 Claude Code 或任何 Agent）：

```text
Set up https://github.com/browser-use/video-use for me.
Read install.md first to install this repo, wire up ffmpeg, register the skill
with whichever agent you're running under, and set up the ElevenLabs API key.
```

手動安裝：

```bash
# 1. Clone 並 symlink 到 Agent 的 skills 目錄
git clone https://github.com/browser-use/video-use ~/Developer/video-use
ln -sfn ~/Developer/video-use ~/.claude/skills/video-use

# 2. 安裝依賴
cd ~/Developer/video-use
uv sync
brew install ffmpeg
brew install yt-dlp  # 可選，用於下載線上素材

# 3. 設定 ElevenLabs API Key
cp .env.example .env
# 編輯 .env 填入 ELEVENLABS_API_KEY
```

使用方式：

```bash
cd /path/to/your/videos
claude    # 或 codex, hermes 等
# 在 session 中輸入：
# edit these into a launch video
```

## 跟其他方案的關係


- **[[anthropics-claude-code|Claude Code]]** → video-use 是 Claude Code 的 Skill，透過 SKILL.md 整合
- **[[browser-use-browser-use|Browser Use]]** → 同一團隊出品，Browser Use 給 LLM 結構化 DOM，video-use 給 LLM 結構化 transcript，理念一致
- **[[harness-engineering|Harness Engineering]]** → video-use 體現了 Harness Engineering 的精神：用好的引導和工具邊界讓 LLM 做複雜任務
- **[[calesthio-OpenMontage|OpenMontage]]** → 同為 Agentic 影片製作，OpenMontage 更偏向生成式，video-use 偏向剪輯
- **[[heygen-com-hyperframes|HyperFrames]]** → video-use 整合 HyperFrames 作為動畫覆蓋生成引擎之一

← [[anthropics-claude-code|Claude Code]] · [[browser-use-browser-use|Browser Use]] · [[AI-video-generation|AI 影片生成]] · [[content-automation|內容自動化]]

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[anthropics-claude-code]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[browser-use-browser-use]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[anthropics-claude-code]] · [[Coding-Agent-CLI]] · [[AI-video-generation]] · [[content-automation]]

## 來源

- GitHub: <https://github.com/browser-use/video-use>
- Browser Use Cloud: <https://cloud.browser-use.com>
- 原始 README: `raw/2026-07-01-browser-use-video-use.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/browser-use/video-use |
| Stars | ⭐12595|
| License | MIT |
| 收錄日期 | 2026-07-01 |

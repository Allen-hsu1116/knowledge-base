---
title: Claude Video (/watch)
slug: bradautomates-claude-video
created: 2026-07-07
updated: 2026-07-07
stars: 4237
language: Python
topics:
  - AI-Skills
  - anthropics-claude-code
  - video-analysis
  - multimodal
  - agent-skills
---

# Claude Video (/watch)

> ⭐4237 · 讓 Claude 能「看」任何影片——自動下載、截取畫面、轉錄音訊，全部交給 Claude 分析

## 快速導航

- [[AI-Skills]]
- [[anthropics-claude-code]]
- [[AI-Agent]]
- [[Whisper]]
- [[browser-use-video-use]]


快速導航：[[AI-Skills]] · [[anthropics-claude-code|Claude Code]] · [[AI-Agent]] · [[Whisper]]

## 是什麼

Claude Video（/watch）是一個 Agent Skill，讓 AI Agent 獲得「觀看影片」的能力。你可以貼一個 YouTube 連結或本地檔案路徑，加上一個問題，Skill 會自動下載影片、用 ffmpeg 截取畫面、拉取字幕（免費的字幕優先，沒字幕則用 Whisper API 轉錄），然後把所有畫面和轉錄文字交給 Claude。等 Claude 回答時，它已經「看過」影片了。

這解決了一個根本問題：AI Agent 能讀網頁、能跑腳本、能瀏覽 repo，但就是沒辦法「看影片」。你貼一個 YouTube 連結過去，它只能從標題猜內容，或拉一個缺失 90% 畫面資訊的字幕。有了 /watch，Claude 可以真正看到畫面上的每一幀、聽到每一句話，像一個看過影片的人一樣回答問題。

Skill 本身是自包含的——SKILL.md 加上 scripts/ 資料夾被作為一個整體複製到各個 Agent 平台。它支援 Claude Code（Plugin）、Codex、Cursor、Copilot、Gemini CLI 等 50+ Agent Skills 宿主，跨平台運作。

## 核心特色

- **場景感知畫面截取**：用 ffmpeg 進行場景變化偵測，自動選擇有意義的畫面幀，支援 efficient（關鍵幀，50 幀上限）、balanced（場景變化，100 幀上限）、token-burner（無上限）三種模式
- **免費字幕優先**：先用 yt-dlp 拉取原生字幕（手動或自動生成），免費即時；沒有字幕時才用 Whisper API（Groq whisper-large-v3 優先，更便宜更快）
- **畫面去重**：自動偵測並去除近似重複的畫面幀（如靜態簡報投影片），用 16×16 灰階縮圖計算平均絕對差異，確保 token 預算花在獨特內容上
- **跨平台 Agent Skill**：遵循 Agent Skills 開放標準，一個 Skill 在 Claude Code、Codex、Cursor、Copilot、Gemini CLI 等 50+ 宿主上運作
- **自動安裝依賴**：首次運行時自動檢查並安裝 ffmpeg 和 yt-dlp（macOS 用 brew，Linux 印出 apt/dnf 指令），零設定開始
- **時間區段聚焦**：用 --start/--end 指定特定時間段，獲得更密集的畫面預算和更低的 token 成本
- **Token 預算控制**：畫面幀數根據影片長度自動調整，長片會發出「稀疏掃描」警告，建議用聚焦模式重新運行

## 怎麼用

### 安裝

```bash
# Claude Code（推薦）
/plugin marketplace add bradautomates/claude-video
/plugin install watch@claude-video

# Codex, Cursor, Copilot, Gemini CLI 等 50+ 宿主
npx skills add bradautomates/claude-video -g

# claude.ai 網頁版
# 下載 watch.skill → Settings → Capabilities → Skills → +
```

### 基本使用

```bash
# 分析 YouTube 影片
/watch https://youtu.be/dQw4w9WgXcQ what happens at the 30 second mark?

# 摘要影片
/watch https://youtu.be/<long-video> summarize this

# 診斷螢幕錄影中的 bug
/watch ~/Movies/screen-recording.mp4 when does the UI break?

# 聚焦特定時間段（更密集的畫面）
/watch https://youtu.be/abc --start 2:15 --end 2:45
```

### 進階選項

```bash
# 指定畫質模式
/watch "$URL" --detail efficient      # 快速關鍵幀（50 幀上限）
/watch "$URL" --detail balanced       # 場景感知（100 幀上限，預設）
/watch "$URL" --detail token-burner   # 無上限，最完整

# 提高解析度以讀取螢幕文字
/watch "$URL" --resolution 1024

# 指定 Whisper 後端
/watch "$URL" --whisper groq           # Groq whisper-large-v3（推薦，便宜）
/watch "$URL" --whisper openai         # OpenAI whisper-1

# 禁用轉錄，純畫面
/watch "$URL" --no-whisper
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 影片分析 | 安裝方式 | 依賴 | Agent 標準 |
|------|-------|------|---------|---------|------|-----------|
| **Claude Video** | ⭐4.2k | Agent Skill | ✅ 畫面+音訊 | Plugin/npx skills | yt-dlp+ffmpeg | Agent Skills |
| [[browser-use-video-use\|video-use]] | ⭐12.6k | Agent Skill | ✅ 影片編輯 | Skill 格式 | ElevenLabs Scribe | Agent Skills |
| [[Whisper]] | ⭐99.2k | 獨立工具 | ✅ 純語音 | pip install | PyTorch | — |
| [[microsoft-VibeVoice\|VibeVoice]] | ⭐48.5k | 獨立工具 | ✅ 純語音 | pip install | PyTorch | — |

← [[AI-Skills]] · [[anthropics-claude-code|Claude Code]] · [[AI-Agent]] · [[Whisper]]

## 相關概念


← [[AI-Skills]] · [[anthropics-claude-code]]

## 來源

- GitHub: <https://github.com/bradautomates/claude-video>
- 原始 README: `raw/2026-07-07-bradautomates-claude-video.md`
- 作者: Brad Bonanno ([@bradbonanno](https://www.youtube.com/@bradbonanno))
- Agent Skills 標準: <https://agentskills.io>

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/bradautomates/claude-video |
| Stars | ⭐4237|
| License | MIT |
| 收錄日期 | 2026-07-07 |

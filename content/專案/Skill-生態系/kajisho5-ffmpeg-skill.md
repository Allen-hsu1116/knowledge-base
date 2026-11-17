---
title: "ffmpeg-skill"
slug: kajisho5-ffmpeg-skill
created: 2026-11-17
updated: 2026-11-17
stars: 6732
language: zh-TW
topics: ["agent-skills", "ai-agents", "audio-processing", "captions", "claude-code", "codex", "coding-agent", "cursor", "ffmpeg", "gemini-cli-extension", "loudness-normalization", "mcp", "mcp-server", "model-context-protocol", "python", "subtitles", "transcoding", "video", "video-editing", "whisper"]
---

# ffmpeg-skill

> ⭐6.7k · 為 Coding Agent 提供本地 FFmpeg 編輯、機器可讀契約與產物驗證。

## 快速導航

- [[AI-Skills]]
- [[MCP]]
- [[AI-Agent]]

## 是什麼

ffmpeg-skill 把影片與音訊處理包裝成 Agent Skill、具型別參數的腳本及 MCP 工具。README 列出 42 個工具，讓 Agent 先測量素材，再剪輯、輸出並檢查，而不是自行猜測 FFmpeg shell 指令。

它是處理檔案的執行層，不負責決定故事、精華片段或交付是否值得核准。核心工具使用 Python 標準函式庫及本地 FFmpeg；Agent 所使用的模型與可選語音轉錄仍有各自的依賴及隱私邊界。

## 核心特色

### 1. 先測量再編輯

probe 取得真實時長、畫面與音訊資料，再選擇適當操作。

### 2. 機器可讀契約

input_schema 從 argparse 定義推導，降低 CLI 與工具描述漂移。

### 3. 精簡 MCP 介面

預設列出核心 12 個工具；完整 42 個仍可按名稱呼叫。

### 4. 產物驗證閉環

check 檢查規格，look 產生 contact sheet，不能僅靠執行成功宣稱完成。

## 怎麼用

### 安裝與起步

以下為來源文件的操作入口，並非本次已在主機安裝或執行的紀錄。

```bash
# 先自行備妥 Python 3、ffmpeg 與 ffprobe
npx ffmpeg-skill
npx ffmpeg-skill doctor
npx ffmpeg-skill contract --json
```

### 操作順序

1. 預設安裝對象為 Claude Code；Cursor／Codex 可依 README 使用對應旗標。

2. 先用 doctor 檢查所需 codec/filter，再要求 Agent 處理副本而非唯一原始素材。

3. 語音轉錄需要另裝本地引擎，首次下載模型可能連網；本次沒有安裝此 Skill。

### 使用邊界

- 無雲端 API 指的是工具核心；若 Agent 使用雲端 LLM，仍須檢查它送出的文字或影像。
- doctor 的整體 ok 與單一工具 usable 不同，缺一個 filter 不代表所有功能都不可用。

## 跟其他方案的關係

以下是依專案定位整理的比較，非效能測試或排名。

| 方案 | 定位 | 選用差異 |
| --- | --- | --- |
| ffmpeg-skill | 結構化本地執行工具 | 提供契約、驗證與 MCP，而非剪輯決策者。 |
| 直接 FFmpeg CLI | 低階影音指令 | 彈性高，但呼叫者需自行確保參數及產物正確。 |
| video-production-agent | 上游規劃層 | README 將其定位為決策端，可與此工具搭配。 |

## 相關概念

← [[AI-Skills]] · [[MCP]] · [[AI-Agent]]

## 來源

- GitHub：https://github.com/kajisho5/ffmpeg-skill
- README 快照：`raw/2026-11-17-kajisho5-ffmpeg-skill.md`
- Metadata 快照：`raw/2026-11-17-kajisho5-ffmpeg-skill.metadata.json`


---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/kajisho5/ffmpeg-skill |
| Stars | 6,732（2026-11-17 擷取） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-17 |

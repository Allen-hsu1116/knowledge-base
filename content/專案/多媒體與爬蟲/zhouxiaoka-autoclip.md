---
title: "AutoClip"
slug: "zhouxiaoka-autoclip"
created: "2026-09-22"
updated: "2026-09-22"
stars: 8237
language: "zh-TW"
topics: ["ai", "ai-agents", "ai-tools", "ai-video", "ai-video-editor", "auto", "auto-highlight", "highlight", "llm", "video", "video-editing", "video-processing", "videos"]
---

# AutoClip

> ⭐8.2k · 以字幕分析找出長影片高光，串接自動剪輯、合集與短影音匯出。

## 快速導航

- [[content-automation]] — 從既有長影片的字幕評分到片段與合集匯出，屬素材再製而非文字到影片生成。
- [[MCP]] — 以 autoclip mcp 提供 stdio 入口，讓客戶端調用同一影片處理管線；雲端分析會送出字幕。

## 是什麼

AutoClip 針對訪談、播客、課程及直播回放，把影片字幕送入模型分析，產生大綱、話題時間線、精彩度評分與片段標題，再在本地完成剪輯和合集。這是既有素材的再編輯工作流，不是從文字生成全新影片的模型。

專案提供桌面版、Docker Web、CLI 和 MCP 入口，並可選擇雲端 API 或 Ollama／LM Studio 本地模型。它的高光判斷主要依賴字幕，因此語音辨識品質與文本內容直接影響結果；純視覺動作或音樂影片不一定適合。

## 核心特色

- **多種輸入**：本地影片、YouTube 與 B 站連結，亦可附帶 SRT 字幕。

- **字幕驅動分析**：提取大綱、時間線、評分與片段標題。

- **剪輯與合集**：自動產生切片及推薦合集，也能手動調整順序。

- **平台匯出預設**：包含 Shorts 等格式，支援燒錄字幕與標題卡。

- **模型可替換**：支援 OpenAI 相容介面、Gemini、通義千問等雲端，以及本地模型。

- **CLI／MCP 整合**：同一處理管線可被批次腳本或 MCP 客戶端調用。

## 怎麼用

### 安裝與啟動

```bash
git clone https://github.com/zhouxiaoka/autoclip.git
cd autoclip
python3 -m venv venv
source venv/bin/activate
python -m pip install -r requirements.txt
python -m pip install -e .
```

### 建議使用流程

1. 先準備 Python 3.10+（官方建議 3.11）及 PATH 中的 FFmpeg；CLI 本地流程不需要 Redis。

2. 選定模型並測試連線。無字幕影片需 faster-whisper 及語音模型；已有字幕可提供 --srt talk.srt。

3. 以 autoclip doctor --provider ollama 檢查環境，再執行 autoclip run talk.mp4 --provider ollama --json。

4. 使用回傳 PROJECT_ID 執行 autoclip export PROJECT_ID --preset shorts；autoclip mcp 啟動 stdio 服務。

### 使用邊界

影片本地剪輯不等於完全不外傳：雲端模型會收到字幕，主動發布會把影片送到目標平台。下載素材須遵守版權與平台條款。Docker 存取宿主機模型不能直接把容器 localhost 當宿主機。

以上指令依官方文件整理；本次只做資料收錄與網站驗證，未安裝或執行此專案。

## 跟其他方案的關係

下表為依功能定位整理的編輯比較，非效能測試。

| 方案 | 主要用途 | 關係與邊界 |
| --- | --- | --- |
| AutoClip | 字幕理解、評分與既有素材切片 | 適合口語內容高光整理 |
| 手動時間軸剪輯 | 人工選點、編排與細部調整 | 適合需要精準敘事與美術控制的後製 |
| 文字到影片模型 | 從提示生成新的畫面 | 與素材再剪輯是不同任務 |

## 相關概念

← [[content-automation]] · [[MCP]]

## 來源

- [GitHub 專案](https://github.com/zhouxiaoka/autoclip)
- [官方補充資料](https://github.com/zhouxiaoka/autoclip/blob/main/docs/CLI_AND_MCP.md)
- 原始 README：`raw/2026-09-22-zhouxiaoka-autoclip.md`
- GitHub metadata 快照：`outputs/trending-2026-09-22/zhouxiaoka-autoclip.json`

---

| 欄位 | 資訊 |
| --- | --- |
| GitHub | https://github.com/zhouxiaoka/autoclip |
| Stars | ⭐8,237（2026-09-22 查詢） |
| License | MIT |
| Language | Python（主要程式語言）；本文 zh-TW |
| 收錄日期 | 2026-09-22 |

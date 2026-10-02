---
title: yoinks
slug: pablostanley-yoinks
created: '2026-10-02'
updated: '2026-10-02'
stars: 2939
language: zh-TW
topics:
- media-streaming
- 網頁爬蟲
---

# yoinks

> ⭐2.9k · 以 Ink 終端介面封裝 yt-dlp 的影音下載工具；非 LLM。

## 快速導航

- [[media-streaming]] — 相關原理與使用邊界。
- [[網頁爬蟲]] — 相鄰技術與應用脈絡。

## 是什麼

yoinks 是互動式終端影音下載工具，讓使用者貼上 URL、選擇解析度或 MP3，再將檔案存到 Downloads。README 宣稱透過 yt-dlp 支援 YouTube、X、Instagram、Threads、TikTok 等超過 1,800 個站點；實際可用性仍取決於上游擷取器與站點變更。

它的定位是下載工作流的介面層：Ink 提供 React 式終端 UI，yt-dlp 負責擷取，ffmpeg 處理串流合併與音訊抽取。專案未宣稱具備 LLM、字幕摘要或 Agent 能力，因此歸在多媒體與爬蟲，而非 AI 框架。

## 核心特色

- **全螢幕 TUI**：以鍵盤或滑鼠選擇格式，離開時恢復終端 scrollback。

- **解析度與 MP3 選擇**：提供格式清單與估計檔案大小。

- **yt-dlp 整合**：優先使用已安裝版本，否則首次執行下載至 ~/.yoinks/bin。

- **ffmpeg 回退**：從 PATH 找 ffmpeg，沒有時使用 ffmpeg-static。

- **主題切換**：auto、light、dark 模式，可在啟動或會話中切換。

## 怎麼用

### 安裝

以下為文件指令，並非本次任務的執行紀錄。

```bash
npm install -g yoinks
yoinks
# 或不做全域安裝（npx 仍可能下載套件）
npx yoinks
```

### 使用流程

1. 需求為 Node.js 18 以上；下載的二進位與套件仍需進行供應鏈檢查。

2. 啟動後貼上你有權保存的影音 URL，再從清單選擇格式。

3. 檔案預設存於 ~/Downloads，完成時終端會印出路徑。

4. 可用 yoinks --theme light 指定主題；本次未安裝套件或下載影音。

### 限制與注意事項

- --best、--mp3、自訂輸出目錄及播放清單在 README 仍列 roadmap，不能當成已完成功能。

- 只下載擁有權利保存的內容；平台條款與著作權仍適用。

## 跟其他方案的關係

以下為依功能定位整理的比較，不是效能排名。

| 方案 | 定位 | 適用差異 |
|---|---|---|
| yoinks | 以互動 TUI 包裝影音下載 | 適合手動挑選格式 |
| 直接使用 yt-dlp | 直接操作底層下載器 | yoinks 依賴它，並非獨立擷取引擎 |
| 串流播放器 | 線上播放內容 | 下載封存與播放是不同工作流程 |

## 相關概念

← [[media-streaming]] · [[網頁爬蟲]]

## 來源

- GitHub：https://github.com/pablostanley/yoinks
- 原始 README 快照：`raw/2026-10-02-pablostanley-yoinks.md`
- Stars 與程式語言為 2026-10-02 GitHub API 快照；功能描述以當日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/pablostanley/yoinks |
| Stars | 2,939 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-10-02 |

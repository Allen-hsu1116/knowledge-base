---
title: PipePipe
slug: InfinityLoop1308-PipePipe
created: 2026-09-28
updated: 2026-09-28
stars: 6572
language: zh-TW
topics: ["privacy", "free-software"]
---

# PipePipe

> ⭐6.6k · 以 NewPipe 硬分叉為基礎的 Android 影音客戶端；不是 LLM 工具。

## 快速導航

- [[privacy]] — 相關概念與實作案例
- [[free-software]] — 相關概念與實作案例

## 是什麼

PipePipe 是讓 Android 使用者瀏覽 YouTube 等服務的開源客戶端，主打播放、篩選及播放清單體驗。它出現在本日 Trending 候選，但 README 沒有將其定位為 LLM、Agent 或模型推論專案。

作者自 2022 年開始獨立開發，明確表示不再跟隨 NewPipe 的更新節奏。評估功能、錯誤與版本時應以 PipePipe 自身文件為準，不能直接把 NewPipe 的修正或限制套用過來。

## 核心特色

### 影音整合

整合 SponsorBlock 與 ReturnYouTubeDislike，並可顯示 YouTube 原始標題。

### 播放體驗

提供彈幕式聊天室、AV1／VP9、背景音樂播放與睡眠計時器。

### 內容篩選

以關鍵字、頻道等條件過濾內容，也能封鎖 Shorts 與付費影片。

### 清單管理

支援整份播放清單下載，以及本地清單與歷史的搜尋、排序。

## 怎麼用

需要 Android 裝置；一般使用者可透過 README 連結的 F-Droid 或 IzzyOnDroid 安裝。

```bash
git clone https://github.com/InfinityLoop1308/PipePipe.git
cd PipePipe
```

上面是取得原始碼的指令，不是 APK 安裝或完整建置流程。手機安裝請使用官方 README 所連結的套件來源，避免下載來路不明的 APK。

### 使用邊界與注意事項

- 登入 Cookie 只應用於自己允許的情境；README 說明 YouTube Cookie 用於取得播放串流。
- 登入不會自動賦予付費內容存取權；仍需遵守帳號權限與服務規則。
- GitHub 主語言 Shell 是此倉庫統計，不代表整個 Android 應用完全以 Shell 寫成。

## 跟其他方案的關係

以下為依 README 定位整理的分工比較，不是效能實測。

| 方案 | 定位 | 與本專案的差異 |
| --- | --- | --- |
| NewPipe | 上游起源 | PipePipe 已獨立發展，不持續同步上游更新。 |
| Tubular | 另一個 NewPipe 分叉 | README 將其描述為持續跟隨 NewPipe 的分叉。 |
| LLM／Agent 工具 | 模型與任務自動化 | PipePipe 是影音客戶端，不應混為 AI 推論工具。 |

## 相關概念

← [[privacy]] · [[free-software]]

## 來源

- GitHub：[InfinityLoop1308/PipePipe](https://github.com/InfinityLoop1308/PipePipe)
- README：https://github.com/InfinityLoop1308/PipePipe/blob/main/README.md
- 原始快照：`raw/2026-09-28-InfinityLoop1308-PipePipe.md`
- Metadata：`raw/2026-09-28-InfinityLoop1308-PipePipe.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [InfinityLoop1308/PipePipe](https://github.com/InfinityLoop1308/PipePipe) |
| Stars | 6,572（2026-09-28 快照） |
| License | GPL-3.0 |
| Language | Shell（GitHub 倉庫統計） |
| 收錄日期 | 2026-09-28 |

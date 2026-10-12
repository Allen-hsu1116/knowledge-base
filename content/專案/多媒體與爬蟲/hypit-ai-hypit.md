---
title: "Hypit"
slug: hypit-ai-hypit
created: 2026-10-12
updated: 2026-10-12
stars: 21204
language: "TypeScript"
topics: ["agentic-ai", "ai", "ai-agents", "ai-video", "compiler", "dsl", "ffmpeg", "generative-ai", "llm", "markup-language", "monorepo", "plugin-system", "programming-language", "text-to-video", "typescript", "video", "video-automation", "video-clone", "video-editing", "video-generation"]
---

# Hypit

> ⭐21.2k · 讓 Coding Agent 以可編輯工作流組合素材、字幕與效果，生成及重跑影片版本。

## 快速導航

- [[AI-video-generation]] — 對應的知識庫概念與其他實作。
- [[AI-Skills]] — 對應的知識庫概念與其他實作。

## 是什麼

Hypit 提供讓 Claude Code、Codex 等 Agent 建立影片的語言與系統。它不只產生腳本，而是把畫面、字幕、B-roll 與效果編排成能編輯、重跑的 composition；README 展示 SVML 原始內容與影片預覽，並強調以字詞而非固定秒數錨定時間。

工作可以從參考影片、現有範例或純文字描述開始。生成模型並非必要條件：字幕、動態圖形與程式化視覺也能在不呼叫生成服務的情況下組合輸出。它比較接近 Agent 驅動的影片製作系統，而不是單一文字轉影片模型；流量與低成本宣傳不應視為保證結果。

## 核心特色

### 可重跑影片工作流

保留合成結構與素材關係，修改文案或部分素材後可以重新製作。

### 版本化內容變體

可重用共同 composition，針對變更的主持人、語言或內容產生新版本。

### 組件可替換

可使用安裝套件、修改例子或自行建立組件，不必把字幕與人物綁在一起。

### 服務可選

README 說明可用託管服務、自有 API 或本地模型，實際接入仍需依各服務文件設定。

### Skill 入口

安裝技能後由 Agent 檢查執行環境、要求必要憑證並準備影片所需工具。

## 怎麼用

以下為上游文件的安裝／取得方式，僅作操作參考；本次收錄未安裝或執行第三方專案。

```bash
npx skills add hypit-ai/hypit -g
```

1. 安裝的是 Skill，不代表影片執行環境與所有模型服務已經備妥；首次使用應讓 Agent 列出需求。
2. 在專案目錄提供自有或已授權素材，先製作一個短片版本並檢查字幕與音畫同步。
3. 確認品質與成本後，再重用 composition 製作多語言或文案變體。

使用／驗收任務示例：

```text
/hypit 用我提供的已授權素材做一段產品介紹，
保留可修改的工作流，先不要呼叫付費生成服務。
```

**限制與注意事項：** 授權是附加條件的 Apache 2.0 修改版，不是標準 Apache-2.0：對外多租戶／託管服務、商業再分發等須取得商業授權。素材、肖像與第三方模型條款也要另外確認。

## 跟其他方案的關係

下表是依上游定位整理的用途比較，不是效能測試結果。

| 方案 | 定位 | 與本專案的差異 |
|---|---|---|
| 文字轉影片模型 | 依文字或圖片生成畫面 | Hypit 編排素材、字幕及效果，模型只是一種素材來源。 |
| 傳統非線性剪輯器 | 人工操作時間軸與剪輯介面 | Hypit 偏向 Agent 編寫及重跑結構化工作流。 |
| 簡報生成 Skill | 輸出投影片與演講內容 | Hypit 主要交付帶時間結構的影片。 |

## 相關概念

← [[AI-video-generation]] · [[AI-Skills]]

## 來源

- [GitHub：hypit-ai/hypit](https://github.com/hypit-ai/hypit)
- 原始資料：`raw/2026-10-12-hypit-ai-hypit.md`（README 與完整 metadata 快照）。
- [上游 LICENSE](https://github.com/hypit-ai/hypit/blob/main/LICENSE)

Stars 與文件內容以 2026-10-12 抓取快照為準；專案描述不是本次實測背書。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [hypit-ai/hypit](https://github.com/hypit-ai/hypit) |
| Stars | ⭐21,204 |
| License | Modified Apache-2.0（附加商業限制） |
| Language | TypeScript |
| 收錄日期 | 2026-10-12 |

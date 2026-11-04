---
title: "Hex"
slug: "anomalyco-hex"
created: "2026-11-04"
updated: "2026-11-04"
stars: 4587
language: "Rust"
topics: ["dictation", "linux", "local-first", "macos", "rust", "speech-recognition", "speech-to-text", "voice-control"]
---

# Hex

> ⭐4.6k · Rust · 跨平台本地語音聽寫工具，按住快捷鍵說話，再將文字貼入目前應用。

## 快速導航

- [[語音辨識]]
- [[privacy]]

## 是什麼

Hex 是 Anomaly 提供的本地語音聽寫工具，面向 macOS、Windows 與 Linux 桌面。主要互動是按住快捷鍵錄音、放開後轉錄，並將結果貼入正在使用的應用程式。

README 說明首次使用需要下載語音模型，之後核心轉錄在裝置上進行。這是語音輸入應用，不應等同通用 LLM 助理；官方文件也明確區分已出貨功能、實驗區與未完成計畫，避免把 roadmap 當作現有能力。

## 核心特色

- 按鍵式聽寫：以按住、說話、放開的短流程降低輸入摩擦。

- 裝置端轉錄：模型初次下載後，本地執行核心語音辨識。

- 跨應用貼上：將辨識文字送進使用者目前工作的應用。

- 多平台套件：提供 macOS Apple silicon、Windows 及 Linux 不同架構下載。

- Stable／Dev 分流：穩定版與開發版有不同下載管道，實驗功能放在 Labs。

## 怎麼用

macOS 可使用官方列出的 Homebrew cask；其他系統請選擇 README 對應架構安裝包。

```bash
# macOS，需先有 Homebrew
brew install --cask anomalyco/tap/hex
```

### 使用與驗證注意事項

- 首次啟動需要網路下載語音模型，完成後才開始評估本地聽寫流程。

- 測試流程：開啟文字編輯器、按住設定的快捷鍵說話、放開並確認貼上的文字。

- 醫療、金融與私人內容仍應人工校對；本地辨識不代表轉錄內容一定正確。

- 本地轉錄的隱私主張不代表下載、更新及所有實驗功能都永不連線，需逐項確認。

- 官方 docs 將 Windows／Linux 指南標示為 beta 要求；不同平台成熟度不可直接視為相同。

- 本次未實際安裝或測試音訊與桌面權限。

## 跟其他方案的關係

以下是依官方定位整理的選型對照，不是效能實測結果。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| Hex | 桌面本地聽寫產品 | 著重快捷鍵與跨應用貼上。 |
| 雲端語音 API | 遠端語音辨識服務 | 需要傳輸音訊，費用及保留政策依供應商而異。 |
| 自行組裝 ASR | 模型與輸入流程自行整合 | 可客製化，但需額外實作快捷鍵、錄音與輸入介面。 |

## 相關概念

← [[語音辨識]] · [[privacy]]

## 來源

- GitHub：https://github.com/anomalyco/hex
- 官方 README：https://github.com/anomalyco/hex/blob/dev/README.md
- 原始快照：`raw/2026-11-04-anomalyco-hex.md`
- API metadata：`raw/2026-11-04-anomalyco-hex-metadata.json`
- 官方文件導覽：https://github.com/anomalyco/hex/blob/dev/docs/README.md

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/anomalyco/hex |
| Stars | 4,587（2026-11-04 快照） |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-11-04 |

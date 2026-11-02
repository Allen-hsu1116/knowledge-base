---
title: "Handy"
slug: "cjpais-Handy"
created: "2026-11-02"
updated: "2026-11-02"
stars: 36559
language: "Rust"
topics: ["語音辨識", "privacy"]
---

# Handy

> ⭐36.6k · 以快捷鍵啟動、本地辨識並貼入文字欄位的開源語音輸入桌面工具。

## 快速導航

- [[語音辨識]] — 延伸概念與相關實作。
- [[privacy]] — 使用情境與設計取捨。

## 是什麼

Handy 把語音轉文字封裝成桌面使用流程：按下快捷鍵、說話、結束錄音，將辨識內容貼入正在使用的應用程式。核心定位是隱私導向的輸入工具，不是完整語音對話 Agent。

README 描述本地使用 Silero VAD 過濾靜音，並以 Whisper 或 Parakeet 模型處理轉錄。支援 Windows、macOS 與 Linux，但系統權限、文字輸入方式與硬體加速能力會影響體驗。

## 核心特色

- **本地轉錄**：核心語音辨識不需把音訊傳往雲端。

- **快捷鍵操作**：提供按住錄音與切換錄音等模式。

- **模型選擇**：Whisper 多種大小及 Parakeet V3。

- **桌面整合**：將文字貼入應用，並提供 CLI 控制。

- **靜音過濾**：透過 Silero VAD 處理無語音片段。

## 怎麼用

### 安裝或取得專案

以下為文件化操作範例；本次收錄沒有在主機安裝或執行此專案。

```bash
brew install --cask handy
# 此 Homebrew cask 並非由 Handy 開發者維護
# 安裝後啟動 App，授予麥克風與輔助使用權限
```

### 使用流程

1. 也可直接從官方 Releases 下載對應平台安裝包。
2. 先下載並選擇模型，再設定快捷鍵與測試語言辨識。
3. Linux Wayland 的文字注入可能需額外工具，依 README 平台說明處理。

### 限制與注意

- 離線描述針對核心轉錄；模型下載與另行配置的外部後處理須分開評估。
- macOS 藍牙麥克風錄音可能影響播放音質；可改用內建麥克風。

## 跟其他方案的關係

以下是定位比較，不是相同環境的效能測試。

| 方案 | 定位 | 選用注意 |
|---|---|---|
| Handy | 快捷鍵與桌面轉錄流程 | 著重隨處輸入文字 |
| Whisper 模型 | 語音辨識核心 | 不等於完整桌面 UI |
| 雲端轉錄服務 | 遠端處理音訊 | 資料傳輸與費用模型不同 |

## 相關概念

← [[語音辨識]] · [[privacy]]

## 來源

- [GitHub：cjpais/Handy](https://github.com/cjpais/Handy)
- 原始 README：`raw/2026-11-02-cjpais-Handy.md`
- Metadata：`raw/2026-11-02-cjpais-Handy.metadata.json`
- 本頁依收錄當日 README 與 GitHub metadata 整理。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [cjpais/Handy](https://github.com/cjpais/Handy) |
| Stars | 36,559（2026-11-02 快照） |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-11-02 |

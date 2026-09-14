---
title: cool-retro-term
slug: Swordfish90-cool-retro-term
created: '2026-09-14'
updated: '2026-09-14'
stars: 26226
language: zh-TW
topics:
- free-software
- productivity
---

# cool-retro-term

> ⭐26.2k · 以 Qt6／QML 重現 CRT 螢幕風格的 Linux、macOS 終端機；非 LLM 工具

## 快速導航

- [[free-software]] — 主題與延伸閱讀
- [[productivity]] — 使用情境與部署考量

## 是什麼

cool-retro-term 是模擬老式陰極射線管螢幕外觀與操作感的終端模擬器。它把復古顯示效果放在日常 shell 的呈現層，而不是提供新的語言模型、Agent 執行引擎或自動化框架。

專案使用 qtermwidget 的 QML 移植版 qmltermwidget，README 明確指出支援 Linux 與 macOS、需要 Qt6。對知識庫而言，它是開發環境的周邊基礎設施；外觀偏好不能視為 Coding Agent 效能提升的證據。

## 核心特色

- **CRT 視覺效果**：重現老式螢幕觀感，README 展示 Amber、IBM DOS、Green 外觀。

- **可調整配色與字型**：透過右鍵選單修改顏色、字型與效果。

- **QML 終端元件**：以 qmltermwidget 提供終端功能，Qt6 負責應用與介面。

- **跨平台發布**：Linux 可下載 AppImage，macOS 可下載 dmg，部分發行版也有官方套件。

- **命令列控制**：main.cpp 列出工作目錄、profile、全螢幕與執行命令等參數。

## 怎麼用

安裝既有發行版套件與自行建置是不同路徑；套件版本不一定等於 Qt6 開發分支。以下為 Ubuntu 套件安裝方式，其他平台請到官方 Releases 選擇對應檔案。

### 安裝與啟動

```bash
sudo apt install cool-retro-term
cool-retro-term --help
cool-retro-term
```

### 初次使用流程

1. 安裝後先開啟一般 shell，確認字型、中文輸入與顯示比例符合需求。

2. 從右鍵選單調整色彩、字型與效果；以閱讀舒適度優先於擬真程度。

3. 若要使用 Qt6 分支或 beta，先閱讀對應 Linux／macOS build wiki。

### 限制與導入注意

- 官方稱設計目標為 reasonably lightweight，但本次沒有執行效能或耗電測試。

- GitHub license 欄為空；根目錄同時有 gpl-2.0.txt、gpl-3.0.txt，不能直接推定整個儲存庫為單一 SPDX 授權。

- 本次查得最新 release 為 2.0.0-beta2（2026-05-31），採用前應留意預發布狀態。

## 跟其他方案的關係

以下為依文件定位整理的選型比較，不是效能排名或完整功能實測。

| 方案 | 核心定位 | 適合情境 |
|---|---|---|
| cool-retro-term | CRT 視覺與終端操作 | 想要復古外觀的本地 shell |
| 一般終端模擬器 | 命令輸入與可讀性 | 不需要 CRT 效果的日常開發 |
| [[manaflow-ai-cmux]] | Coding Agent 終端工作流 | Agent 通知與工作流管理，不是同一設計重點 |

## 相關概念

← [[free-software]] · [[productivity]]

## 來源

- [GitHub](https://github.com/Swordfish90/cool-retro-term)
- [README](https://github.com/Swordfish90/cool-retro-term/blob/master/README.md)
- 原始 README 快照：`raw/2026-09-14-Swordfish90-cool-retro-term.md`
- GitHub metadata：`raw/2026-09-14-Swordfish90-cool-retro-term.metadata.json`
- https://github.com/Swordfish90/cool-retro-term/blob/master/app/main.cpp
- https://github.com/Swordfish90/cool-retro-term/releases/tag/2.0.0-beta2

本頁依收錄日取得的官方文件整理；未安裝或執行候選專案，功能與相容性以實際版本為準。

---

| 欄位 | 資料 |
|---|---|
| GitHub | [Swordfish90/cool-retro-term](https://github.com/Swordfish90/cool-retro-term) |
| Stars | 26,226（2026-09-14 快照） |
| License | 未統一確認；repo 含 GPL-2.0 與 GPL-3.0 文本 |
| Language | QML（程式碼）；zh-TW（本文） |
| 收錄日期 | 2026-09-14 |

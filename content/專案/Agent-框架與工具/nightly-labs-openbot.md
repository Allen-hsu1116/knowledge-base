---
title: "OpenBot"
slug: "nightly-labs-openbot"
created: "2026-10-27"
updated: "2026-10-27"
stars: 1479
language: "zh-TW"
topics: ["AI-Agent", "AI-Skills"]
---

# OpenBot

> ⭐1.48k · 以持久 Agent、獨立工作區與佇列組織 AI 隊友的 local-first 桌面工作台。

## 快速導航

- [[AI-Agent]] — 相關方法與實作背景。
- [[AI-Skills]] — 相關方法與實作背景。

## 是什麼

OpenBot 把 Codex、Claude、Grok 及透過 ACP 接入的其他 Agent 放在桌面工作空間中。每位 Agent 有獨立對話與工作目錄，並共享訊息、檔案傳送、內嵌瀏覽器及任務協作能力。

它的 local-first 指資料與工作狀態優先保存在本機，不等於離線運作：模型供應商、網頁及插件仍可能使用網路。專案目前標示 development preview，採 PolyForm Noncommercial 1.0.0，不應視為可自由商用的開源軟體。

## 核心特色

- 持久隊友：維持各 Agent 的指令、模型、會話與工作空間。

- 持久 FIFO 佇列：支援暫停、恢復、取消與崩潰後狀態保存。

- 團隊溝通：Agent 間訊息、圖片、檔案與有明確任務負責人的共享頻道。

- 瀏覽器與 Computer Use：提供內嵌瀏覽器及選配桌面控制能力。

- 多後端接入：支援本機 CLI、ACP、自訂 OpenAI-compatible endpoint 與本機模型服務偵測。

## 怎麼用

一般使用者可從 Releases 下載 macOS／Windows／Linux 安裝檔；下方是 README 的 Nix 安裝選項，需預先具備 Nix 並允許該非自由授權套件。

```bash
nix profile install github:nightly-labs/openbot
```

1. 依作業系統選擇安裝方式，先核對 release 與授權條件。

2. 在 onboarding 選擇 provider，安裝或指定相容 runtime 並完成其認證。

3. 先以無敏感資料的獨立工作區測試隊友、佇列與檔案交接。

### 使用邊界

- 重要：README 明示 danger-full-access 與 approvalPolicy: never，首次同意後不逐動作確認；工作區不是可靠安全隔離。

- 不要把 local-first 當成資料不出網保證；商業使用須另洽授權。本次未安裝或啟動 OpenBot。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不是實測效能排名。

| 方案 | 定位 | 選擇重點 |
|---|---|---|
| OpenBot | 多隊友桌面工作台、佇列與通訊 | 組織既有 Agent runtime |
| 單一 Coding Agent CLI | 終端內執行任務 | 可作為工作台底層能力，而非同一層產品 |
| Skills | 可重用操作知識與配方 | 能擴充 Agent，但不提供完整桌面協作介面 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]]

## 來源

- GitHub：https://github.com/nightly-labs/openbot
- README 原始快照：`raw/2026-10-27-nightly-labs-openbot.md`
- https://github.com/nightly-labs/openbot/blob/main/LICENSE

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/nightly-labs/openbot |
| Stars | 1,479（2026-10-27 擷取） |
| License | PolyForm Noncommercial 1.0.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-27 |

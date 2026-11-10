---
title: GBrain
slug: garrytan-gbrain
created: 2026-11-10
updated: 2026-11-10
stars: 32152
language: zh-TW
topics: [AI-Agent, MCP, Knowledge-Management]
---

# GBrain

> ⭐32.2k · 為既有 Agent 加上可溯源、可修正、可跨客戶端共用的持久記憶。

## 快速導航

- [[AI-Agent]] — 與既有 Agent 配合，而非要求更換身分。
- [[MCP]] — 以標準工具介面分享與查詢記憶。

## 是什麼

GBrain 是 Garry Tan 開源的 Agent 記憶與知識系統，以明確事實和來源紀錄為核心，支援修正、撤回及跨 Agent 存取。它是 MIT 授權的自架軟體；gbrain.io 則是可選的付費託管服務，兩者不應混為一談。

它可以先用不需要模型 API 金鑰的本地關鍵字搜尋起步，再選擇加入語意檢索、答案合成與背景資料補充。既有的 Claude Code、Codex、OpenClaw 或 Hermes 可以保留自身身分與工作流程，只把長期知識交由 GBrain 管理。

它不是單純的對話紀錄備份，也不是保證不外傳資料的封閉環境：設定雲端 embedding、reranking、抽取或合成供應商後，文字可能送往該供應商；即使使用 keyless 模式，被召回的記憶仍可能進入 Agent 所用模型的上下文。

## 核心特色

- **明確事實與來源**：保存可追溯的記憶，支援更正與撤回，避免把所有聊天片段直接當成永久真相。
- **逐步增加能力**：先啟用 keyless 關鍵字檢索，需要時再加上 embedding、重排序與模型能力。
- **檢索與合成分離**：`search` 回傳來源頁；`think` 另做附引用的合成回答，指出資料陳舊、矛盾或缺口。
- **具型別的知識圖譜**：支援關係查詢；本地寫入與遠端寫入的邊建立時機不同，不能假設每次寫入都立即完成圖譜更新。
- **可調整資料結構**：schema packs 定義頁面類型與配置，可配合既有筆記組織方式。
- **MCP 與多 Agent 接入**：支援本地 stdio、遠端存取與多種客戶端，持久偏好可共用，暫時任務狀態留在各 harness。
- **背景維護**：可選擇持續攝取、補充與整理，但需另行配置運算資源及 API 成本。

## 怎麼用

### 本地最小起步

先準備 Bun 1.4.4 或更新版本。官方明確警告 npm 上同名 `gbrain` 套件不是本專案，應從 GitHub stable channel 安裝。

```bash
bun install -g github:garrytan/gbrain#stable
gbrain init --pglite --no-embedding
gbrain import ~/notes/ --no-embed
gbrain search "a phrase from a note" --json
gbrain doctor
```

上述指令整理自官方 README，本文收錄時未在本機安裝或執行 GBrain。匯入前應先確認筆記目錄與敏感資料範圍。

### 接到既有 Coding Agent

```bash
gbrain setup claude-code --dry-run
# 檢查將修改的檔案並備份後，才正式執行：
gbrain setup claude-code
```

`setup` 會處理 MCP、hooks 及 Agent 指令區塊，不只是安裝一個 CLI。Codex 可使用對應的 `gbrain setup codex`；操作後仍應在實際客戶端驗證一次記住與召回的往返。

### 安全與備份邊界

- 遠端授權以 source、operation grants 與 visibility filters 約束；直接讀本地檔案或共用資料庫憑證是不同信任邊界。
- Markdown 匯出不等於完整資料庫備份。
- 開啟遠端 MCP、分享及背景工作以前，應分別審核授權、資料流與費用。

## 跟其他方案的關係

以下是依官方功能描述整理的定位比較，不是效能實測。

| 方案 | 主要角色 | 與 GBrain 的關係 |
|---|---|---|
| 一般 Markdown 筆記 | 人工編輯與閱讀知識 | 可成為 GBrain 匯入來源，但單靠檔案不等於召回與合成服務 |
| 關鍵字／向量檢索 | 找到相關資料 | GBrain 可提供檢索，並另選配帶來源的答案合成 |
| Agent harness | 規劃與執行工作 | GBrain 作為持久記憶配套，不要求取代既有 Agent |
| gbrain.io | 託管 GBrain | 免自行維運的付費選項，自架版本仍可獨立使用 |

## 相關概念

← [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub：garrytan/gbrain](https://github.com/garrytan/gbrain)
- [官方 README](https://github.com/garrytan/gbrain/blob/master/README.md)
- 原始快照：`raw/2026-11-10-garrytan-gbrain.md`
- Metadata 快照：`raw/2026-11-10-garrytan-gbrain.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/garrytan/gbrain |
| Stars | 32,152（2026-11-10 擷取） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-11-10 |

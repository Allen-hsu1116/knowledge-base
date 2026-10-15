---
title: "nvm（Node Version Manager）"
slug: nvm-sh-nvm
created: 2026-10-15
updated: 2026-10-15
stars: 95456
language: zh-TW
topics: ["Coding-Agent-CLI", "self-hosted"]
---

# nvm（Node Version Manager）

> ⭐95.5k · 每使用者、每 shell 管理 Node.js 版本的工具；不是 LLM 或套件管理器。

## 快速導航

- [[Coding-Agent-CLI]] — 相關概念與配套背景
- [[self-hosted]] — 相關概念與配套背景

## 是什麼

nvm 是用 shell 實作的 Node.js 版本管理工具，讓不同專案選用各自需要的 Node 版本。它以使用者層級安裝、在 shell 中載入，避免把所有專案綁在同一個系統版本。

官方支援 POSIX shell 的 Unix、macOS 與 Windows WSL 情境；它不等於原生 Windows 的 nvm-windows 專案。nvm 控制執行環境，npm 等工具仍負責專案套件。

Node 生態的 Coding Agent、MCP server 或網站建置常需要明確 runtime 版本；nvm 可作為配套工具，但本身不提供模型、Agent 或 MCP 協議實作。

## 核心特色

### 1. 並存多個 Node 版本

透過 install 與 use 安裝及切換，減少不同專案版本衝突。

### 2. 使用者與 shell 隔離

每個 shell 需載入 nvm，不依賴全系統唯一 Node 安裝。

### 3. 專案版本宣告

以 .nvmrc 配合 nvm install／nvm use，讓團隊知道專案需要的版本。

### 4. LTS 與版本管理

提供 LTS 選擇、已安裝版本列表與預設別名，方便維護環境。

## 怎麼用

依本次 README 使用 v0.40.8 安裝腳本。以下刻意先下載供審閱；安裝會嘗試調整 shell profile，執行前應備份該檔。

```bash
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh -o nvm-install.sh
# 審閱腳本並備份 shell profile 後
bash nvm-install.sh
# 重新開啟終端機後
command -v nvm
nvm install --lts
nvm use --lts
node --version
```

### 操作與驗證重點

1. 在含 .nvmrc 的專案中使用 nvm install 與 nvm use；不要假設切換目錄就自動生效。
2. CI、cron 或 Docker 的非互動 shell 可能不讀 profile，必須明確載入 nvm。
3. 切換 Node 後檢查 node 與 npm 實際版本；本次收錄沒有修改本機 Node 環境。

以下內容依官方文件整理；安裝指令僅為讀者參考，本次未安裝或實測候選軟體。

## 跟其他方案的關係

| 方案 | 定位 | 使用邊界 |
| --- | --- | --- |
| nvm | 管理 Node.js 的安裝與切換 | 不負責 LLM 推論，也不取代 npm |
| npm | 管理 JavaScript 套件 | 套件管理和 runtime 管理是不同問題 |
| [[oven-sh-bun\|Bun]] | 另一套 JavaScript／TypeScript 工具鏈 | 不是 nvm 的版本切換子命令 |

### 限制與選擇提醒

- 原生 Windows 使用者不要把本 repo 與 nvm-windows 混為一談。
- 自動化環境的 PATH 與 shell 初始化必須驗證；互動終端機可用不代表 cron 可用。

## 相關概念

← [[Coding-Agent-CLI]] · [[self-hosted]]

## 來源

- [GitHub：nvm-sh/nvm](https://github.com/nvm-sh/nvm)
- README 快照：`raw/2026-10-15-nvm-sh-nvm.md`
- GitHub metadata：`raw/2026-10-15-nvm-sh-nvm-metadata.json`

---

| Metadata | 值 |
| --- | --- |
| GitHub | [nvm-sh/nvm](https://github.com/nvm-sh/nvm) |
| Stars | 95,456（2026-10-15 快照） |
| License | MIT |
| Language | Shell（程式）；zh-TW（本頁） |
| 收錄日期 | 2026-10-15 |

---
title: "uv"
slug: "astral-sh-uv"
created: "2026-11-19"
updated: "2026-11-19"
stars: 92220
language: "zh-TW"
topics: ["Coding-Agent-CLI", "MCP"]
---

# uv

> ⭐92.2k · Rust 實作的 Python 套件、環境與專案管理工具。

## 快速導航

- 🧠 [[Coding-Agent-CLI]] — 核心使用情境。
- 🛠 [[MCP]] — 相關工程與整合考量。

## 是什麼

uv 將 Python 版本、虛擬環境、相依套件與專案鎖檔整合成一套 CLI。它由 Astral 開發，既能接手既有 pip 工作流程，也能以專案模式管理開發與部署環境。

對 LLM 應用而言，它是環境基礎設施而非模型或 Agent 框架。管理 Python 工具與單檔腳本的能力，可降低 Coding Agent 或 Python MCP 工具啟動時的環境差異；工具執行仍須自行管理權限。

## 核心特色

- **統一工具鏈**：涵蓋套件安裝、專案管理、Python 版本與工具執行。

- **可重現專案**：提供 universal lockfile 與 workspace 管理。

- **腳本相依性**：支援單檔腳本 inline dependency metadata。

- **隔離工具執行**：`uvx` 是 `uv tool run` 的別名，可在暫時環境執行工具。

- **快取共用**：全域快取減少套件重複儲存；README 的倍速宣稱是特定 benchmark，非本次實測。

## 怎麼用

### 安裝與啟動

以下為官方 README 流程或加上隔離環境的改寫；本次收錄並未執行安裝。

```bash
python3 -m venv .venv
.venv/bin/python -m pip install uv
.venv/bin/uv --version
```

### 基本操作

```bash
uv init example
cd example
uv add ruff
uv run ruff check
uv lock
uv sync
```

### 使用前確認

- 上例第一段以獨立 venv 安裝；後續 `uv` 命令需使用該環境 PATH，或替換成安裝後的完整路徑。

- 將專案設定與 lockfile 納入版本控制；不要把虛擬環境誤當安全沙箱。

## 跟其他方案的關係

以下是依工具職責整理的選型比較，不是效能測試排名。

| 方案 | 主要角色 | 選用考量 |
|---|---|---|
| uv | 套件、Python 與專案生命週期 | 希望整合多個 Python 管理工具時 |
| pip / virtualenv | 較細分的套件安裝與環境工具 | 既有流程可先採 uv 的 pip 相容介面 |
| MCP | 工具連接協議 | uv 可執行 Python 工具，但不取代協議 |

## 相關概念

← [[Coding-Agent-CLI]] · [[MCP]]

## 來源

- [GitHub](https://github.com/astral-sh/uv)
- [官方 README](https://github.com/astral-sh/uv/blob/main/README.md)
- 原始快照：`raw/2026-11-19-astral-sh-uv.md`

資料為 2026-11-19 抓取的預設分支快照；Stars 與文件內容會持續變動。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/astral-sh/uv |
| Stars | 92,220 |
| License | Apache-2.0 OR MIT（README 授權章節） |
| Language | Rust（原始碼）；zh-TW（本文） |
| 收錄日期 | 2026-11-19 |

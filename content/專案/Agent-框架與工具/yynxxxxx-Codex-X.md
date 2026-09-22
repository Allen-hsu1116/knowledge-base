---
title: "Codex-X"
slug: "yynxxxxx-Codex-X"
created: "2026-09-22"
updated: "2026-09-22"
stars: 3685
language: "zh-TW"
topics: ["Coding-Agent-CLI", "MCP"]
---

# Codex-X

> ⭐3.7k · 集中管理 Codex 的 Provider、提示詞、會話、Skills、MCP 與 TOML 設定。

## 快速導航

- [[Coding-Agent-CLI]] — 以桌面介面管理 Codex Provider、提示詞與會話，不取代底層 CLI 執行引擎。
- [[MCP]] — 集中管理 Codex 的 MCP 配置與啟停；設定管理介面不等於新的 MCP 協議實作。
- [[prompt-security]] — 管理外部 Prompt 與 Skill 的追加／替換，需審閱設定差異；模板的越獄宣稱不是安全保證。

## 是什麼

Codex-X 是面向 OpenAI Codex 桌面端與 CLI 的社群桌面管理工具，把散落在設定檔中的 Provider、登入資料、提示詞及本地會話狀態集中到可視化介面。它不取代 Codex 的模型或執行引擎，也不是 OpenAI 官方 Codex 本體。

實作使用 Tauri 2、React／TypeScript、Rust 與 SQLite，支援 macOS、Windows 和 Linux。主要价值是降低多套模型與設定切換的操作成本；因為會接觸 auth.json、config.toml 及提示詞入口，使用前應備份並審閱每次變更的實際內容。

## 核心特色

- **Provider 與登入管理**：保存多個可命名的官方登入與第三方 API，提供連線與模型測試。

- **提示詞模板庫**：可匯入 Markdown、分類、編輯與開關，支援追加或替換既有指令。

- **本地會話管理**：搜尋、依專案分組及同步狀態；永久刪除是高風險操作。

- **Skills／MCP 可視化**：匯入已有配置、逐項啟停、從 ZIP 安裝 Skill 並檢查更新。

- **TOML 與備份**：查看 live 設定、編輯 Provider 配置；README 說明重要寫入前自動備份。

- **用量檢視**：按日期與模型呈現本地 Token 趨勢，子 Agent 計入所屬主會話。

## 怎麼用

### 安裝與啟動

```bash
git clone https://github.com/yynxxxxx/Codex-X.git
cd Codex-X
pnpm install
pnpm dev
# 建置桌面端（需 Tauri 平台建置相依）
pnpm --dir apps/desktop tauri build
```

### 建議使用流程

1. 一般使用者可從官方 GitHub Releases 選對應平台安裝包；上述指令為 README 的開發路徑加上取回原始碼步驟。

2. 預設讀取 ~/.codex/config.toml 與 ~/.codex/auth.json；自身資料庫為 ~/.codexx/codexx.db。

3. 如需隔離測試，可使用 CODEX_HOME 與 CODEXX_HOME 指向專用目錄；不要拿正式登入資料測試不可信任的 Provider。

4. 先檢查備份與設定差異，再啟用需要的模板或 MCP；會話永久刪除之前另外保存必要紀錄。

### 使用邊界

README 宣傳的「破甲」模板不能被視為安全或能力保證；此頁不提供越獄配方。匯入外部 Prompt／Skill 必須審查，不能因此跳過執行授權或沙箱；1M 上下文設定也須模型實際支援。

以上指令依官方文件整理；本次只做資料收錄與網站驗證，未安裝或執行此專案。

## 跟其他方案的關係

下表為依功能定位整理的編輯比較，非效能測試。

| 方案 | 主要用途 | 關係與邊界 |
| --- | --- | --- |
| Codex-X | 管理 Codex 設定、模板與會話 | 社群桌面管理層，不是模型或官方執行引擎 |
| Codex 桌面端／CLI | 執行 Coding Agent 任務 | 是 Codex-X 配置與管理的對象 |
| 手動編輯設定檔 | 直接掌控 TOML、JSON 與指令檔 | 依賴人工備份、差異檢查與切換紀律 |

## 相關概念

← [[Coding-Agent-CLI]] · [[MCP]] · [[prompt-security]]

## 來源

- [GitHub 專案](https://github.com/yynxxxxx/Codex-X)
- [官方補充資料](https://github.com/yynxxxxx/Codex-X/releases)
- 原始 README：`raw/2026-09-22-yynxxxxx-Codex-X.md`
- GitHub metadata 快照：`outputs/trending-2026-09-22/yynxxxxx-Codex-X.json`

---

| 欄位 | 資訊 |
| --- | --- |
| GitHub | https://github.com/yynxxxxx/Codex-X |
| Stars | ⭐3,685（2026-09-22 查詢） |
| License | MIT |
| Language | Rust（主要程式語言）；本文 zh-TW |
| 收錄日期 | 2026-09-22 |

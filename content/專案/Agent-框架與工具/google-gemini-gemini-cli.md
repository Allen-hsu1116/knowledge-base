---
title: Gemini CLI
slug: google-gemini-gemini-cli
created: '2026-10-25'
updated: '2026-10-25'
stars: 108057
language: zh-TW
topics:
- AI-Agent
- MCP
- Coding-Agent-CLI
---

# Gemini CLI

> ⭐108.1k · Google 開源終端 Coding Agent；須注意官方已公告部分使用者轉向 Antigravity CLI。

## 快速導航

- [[AI-Agent]]
- [[MCP]]
- [[Coding-Agent-CLI]]

## 是什麼

Gemini CLI 把 Gemini 模型接入終端機，提供程式碼理解、修改與自然語言除錯。它不只是聊天介面，也能使用工具、接入 MCP，以及在腳本中非互動執行。

本次 README 明確公告：免費層與 Google One 使用者已於 2026-06-18 轉向 Antigravity CLI，且此工具未針對最新 Gemini 模型與 Gemini 4 Argon 最佳化。收錄這個 repo 不代表推薦所有新使用者沿用舊路線；帳號資格與模型支援應以官方文件為準。

## 核心特色

- 程式碼理解與生成：查詢及修改大型程式庫，協助除錯。

- 多模態輸入：README 描述可從 PDF、圖片或草圖生成應用。

- MCP 擴充：透過 MCP servers 連接額外能力。

- 非互動輸出：支援文字、JSON 與 stream-json，方便腳本整合。

- 多種認證：Google OAuth、Gemini API Key 與 Vertex AI；使用資格不同。

## 怎麼用

### 安裝與準備

需要可執行 npm 的 Node.js 環境；以下為 README 安裝方式，不代表已在本機安裝。

```bash
npm install -g @google/gemini-cli
gemini
```

### 使用入口

```bash
gemini -p "Explain the architecture of this codebase" --output-format json
```

### 使用界線

- 先確認帳號是否應改用 Antigravity；不要把舊免費額度宣傳視為目前保證。
- API key 應由環境或安全儲存注入，不要提交到 Git。
- 使用會修改檔案或執行命令的工具前，先檢查工作目錄與權限。

## 跟其他方案的關係

| 方案 | 定位 | 選用界線 |
|---|---|---|
| Gemini CLI | 終端 Agent 與腳本自動化 | 目前 README 有產品轉移與模型最佳化限制 |
| Antigravity CLI | 官方推薦的新模型 coding 路線 | 依官方連結確認帳號與安裝條件 |
| MCP server | 提供工具能力 | 不是替代 Agent 的完整執行器 |

比較依本次 README 定位整理，不是模型品質或速度測試。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/google-gemini/gemini-cli)
- [README](https://github.com/google-gemini/gemini-cli/blob/main/README.md)
- 原始快照：`raw/2026-10-25-google-gemini-gemini-cli.md`
- Metadata：`raw/2026-10-25-google-gemini-gemini-cli.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/google-gemini/gemini-cli |
| Stars | 108,057（2026-10-25 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-25 |

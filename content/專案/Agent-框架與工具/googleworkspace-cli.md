---
title: Google Workspace CLI (gws)
slug: googleworkspace-cli
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Google Workspace CLI (gws)

> 一個 CLI 統管 Google Workspace 所有 API — Drive、Gmail、Calendar、Sheets、Docs、Chat、Admin 等。動態命令介面、40+ Agent Skills、所有回應結構化 JSON。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]
- 🛠️ **AI Skills** → [[AI-Skills]]

## 是什麼

`gws` 是一個 CLI 工具，讓人類和 AI Agent 都能用指令操作 Google Workspace 的所有 API。最大特色是**動態命令介面** — 不維護靜態指令列表，而是即時讀取 Google Discovery Service 建構命令。Google 新增 API 端點，`gws` 自動支援。> ⚠️ 這不是 Google 官方產品（非 Google 正式支援）

## 核心特色

- **動態命令介面** — 即時讀取 Google Discovery Service，自動生成所有 Workspace API 命令，Google 新增 API → `gws` 自動支援
- **40+ AI Agent Skills** — 內建 40+ 個 Agent Skills，讓 LLM 能管理 Drive、發送 Gmail、建立 Calendar 事件、操作 Sheets、發送 Chat 訊息、管理 Admin 設定
- **結構化 JSON 輸出** — 所有回應都是結構化 JSON，適合 Agent 解析和程式化處理
- **Schema 內省** — `gws schema drive.files.list` 查看任何 API 的 request/response schema
- **分頁串流** — `--page-all` 自動處理分頁，串流輸出所有結果
- **Dry Run 模式** — `--dry-run` 預覽即將執行的操作，避免誤操作

## 怎麼用

```bash
# Homebrew（推薦）
brew install googleworkspace-cli

# npm
npm install -g @googleworkspace/cli

# 設定認證
gws auth setup     # 引導式 Google Cloud 專案設定
gws auth login     # OAuth 登入

# Drive — 列出檔案
gws drive files list --params '{"pageSize": 10}'

# Sheets — 建立試算表
gws sheets spreadsheets create --json '{"properties": {"title": "Q1 Budget"}}'

# Gmail — 傳送郵件
gws gmail.users.messages.send --json '{"raw": "base64-encoded-email"}'

# Chat — 發送訊息（dry run 模式）
gws chat spaces.messages.create \
  --params '{"parent": "spaces/xyz"}' \
  --json '{"text": "Deploy complete."}' \
  --dry-run

# 分頁串流 — 列出所有檔案
gws drive files list --params '{"pageSize": 100}' --page-all | jq -r '.files[].name'

# 查看 API Schema
gws schema drive.files.list
```

### 認證方式

- **OAuth 2.0**：個人使用，引導式設定
- **Service Account**：CI/CD、自動化流程，無需互動式登入

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| Google Apps Script | 自動化平台 | Apps Script 是腳本平台，gws 是 CLI + Agent Skills |
| gcloud CLI | GCP 管理 | gcloud 管理 GCP 資源，gws 管理 Workspace 服務 |
| [[AI-Skills]] | 概念層 | gws 的 40+ Skills 是 AI Skills 格式在 Workspace 場景的實作 |
| [[MCP]] | 協議層 | gws Skills 可透過 MCP 介面整合到各種 Agent |

gws 是 [[AI-Agent]] 操作 Workspace 的工具層，40+ Agent Skills 可透過 [[MCP]] 介面整合，內建 Skills 對應 [[AI-Skills]] 格式。認證支援 OAuth 2.0（個人使用）和 Service Account（CI/CD、自動化流程）。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 來源

- raw/googleworkspace-cli.md

---

- **GitHub**: https://github.com/googleworkspace/cli
- **Stars**: ⭐25,672
- **License**: Apache 2.0
- **收錄日期**: 2026-05-03
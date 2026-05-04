# Google Workspace CLI

> 一個 CLI 統管 Google Workspace 所有 API — Drive、Gmail、Calendar、Sheets、Docs、Chat、Admin 等。動態命令介面、40+ Agent Skills、所有回應結構化 JSON。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [googleworkspace/cli](https://github.com/googleworkspace/cli) |
| **Stars** | ⭐25,672 |
| **Language** | Rust（預編譯二進位） |
| **建立日期** | 2026-03-02 |
| **收錄日期** | 2026-05-03 |
| **授權** | Apache 2.0 |

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（gws 是 Agent 操作 Workspace 的工具層）
- 🔌 **MCP** → [[MCP]]（gws 的 Agent Skills 可透過 MCP 介面整合）
- 🛠️ **AI Skills** → [[AI-Skills]]（gws 內建 40+ Agent Skills）

## 簡介

`gws` 是一個 CLI 工具，讓人類和 AI Agent 都能用指令操作 Google Workspace 的所有 API。最大特色是**動態命令介面** — 不維護靜態指令列表，而是即時讀取 Google Discovery Service 建構命令。Google 新增 API 端點，`gws` 自動支援。

> ⚠️ 這不是 Google 官方產品（非 Google 正式支援）

## 核心特色

### 動態命令介面

- 即時讀取 Google Discovery Service，自動生成所有 Workspace API 命令
- Google 新增 API → `gws` 自動支援，無需等更新
- 每個資源都有 `--help`、`--dry-run`、自動分頁

### 40+ AI Agent Skills

內建 40+ 個 Agent Skills，讓 LLM 能：
- 管理 Drive 檔案
- 發送 Gmail
- 建立 Calendar 事件
- 操作 Sheets 試算表
- 發送 Chat 訊息
- 管理 Admin 設定

### 結構化 JSON 輸出

所有回應都是結構化 JSON，適合 Agent 解析和程式化處理。

### Schema 內省

```bash
# 查看任何 API 的 request/response schema
gws schema drive.files.list
```

## 安裝

```bash
# Homebrew（推薦）
brew install googleworkspace-cli

# npm
npm install -g @googleworkspace/cli

# 或下載預編譯二進位
# https://github.com/googleworkspace/cli/releases

# 從原始碼建置
cargo install --git https://github.com/googleworkspace/cli --locked

# Nix
nix run github:googleworkspace/cli
```

## 使用範例

```bash
# 設定認證
gws auth setup     # 引導式 Google Cloud 專案設定
gws auth login     # OAuth 登入

# Drive
gws drive files list --params '{"pageSize": 10}'

# Sheets
gws sheets spreadsheets create --json '{"properties": {"title": "Q1 Budget"}}'

# Chat
gws chat spaces messages create \
  --params '{"parent": "spaces/xyz"}' \
  --json '{"text": "Deploy complete."}' \
  --dry-run

# 分頁串流
gws drive files list --params '{"pageSize": 100}' --page-all | jq -r '.files[].name'
```

## 認證方式

| 方式 | 適用場景 |
|------|----------|
| OAuth 2.0 | 個人使用、互動式登入 |
| Service Account | CI/CD、自動化流程 |
| `gws auth setup` | 引導式設定 |

## 技術棧

- **Rust**：核心 CLI，預編譯二進位
- **Node.js**：npm 安裝包裝器
- **Google Discovery Service**：動態命令生成
- **支援**：Node.js 18+、Nix flake

## 相關概念

- [[AI-Agent]] — Agent 操作 Workspace 的工具層
- [[MCP]] — MCP 介面整合
- [[AI-Skills]] — 40+ Agent Skills

---

- **GitHub**: https://github.com/googleworkspace/cli
- **Stars**: ⭐25,672
- **License**: Apache 2.0
- **收錄日期**: 2026-05-03
---
title: Cindy
slug: makecindy-cindy
created: '2026-10-25'
updated: '2026-10-25'
stars: 4106
language: zh-TW
topics:
- AI-Agent
- AI-Skills
- MCP
---

# Cindy

> ⭐4.1k · 整合 Claude Code／Codex、多模型與工具的桌面及行動 Agent 客戶端。

## 快速導航

- [[AI-Agent]]
- [[AI-Skills]]
- [[MCP]]

## 是什麼

Cindy 在使用者本機工作，將多種 harness、模型與工具整合到同一個工作空間。README 列出先支援 Claude Code 與 Codex，可在任務中切換 harness 與模型，同時保留工作區、記憶及技能。

這個 monorepo 開源的是 Electron 桌面端、Expo／React Native 行動端與共用套件，後端服務不在此 repo。Skip Sign-In 可使用本地 agents，但不提供伺服器端功能；本地執行不代表模型呼叫、登入服務或遙測完全離線。

## 核心特色

- 多 harness：既有 Claude Code／Codex 接入，原生 harness 尚在開發。

- 跨任務連續性：記憶、skills、工作區與工具可共享。

- 自動化入口：README 描述 IM 與排程工作，以及瀏覽器／電腦／手機操作。

- MCP 擴充：接入內部工具及業務系統。

- 多模型來源：官方服務、既有 coding plan、API keys 或本地模型。

- 開源範圍清楚：客戶端 Apache-2.0；插件市場部分能力仍在開發。

## 怎麼用

### 安裝與準備

需要 Node.js 22.x、pnpm 10.x 與 Git LFS；README 明示尚不支援 pnpm 11。

```bash
git clone https://github.com/makecindy/cindy.git
cd cindy
git lfs pull
pnpm install
```

### 使用入口

```bash
pnpm restart:desktop:remote --region=global
```

### 使用界線

- 上列啟動使用自己的 Cindy 雲端帳號；中國大陸帳號應按文件改選 cn。
- pnpm install 會取得平台相關工具二進位檔，安裝前應審查來源。
- 正式版有使用分析與登入心跳；README 宣稱不收聊天與檔案內容，這是上游聲明而非本次稽核結果。

## 跟其他方案的關係

| 方案 | 定位 | 選用界線 |
|---|---|---|
| Cindy | 整合多 harness 的桌面／行動客戶端 | 後端不在此 repo，部分功能依賴服務 |
| Claude Code／Codex | Cindy 接入的 Agent harness | 不是由此 repo 重新實作的模型 |
| MCP／Skills | 工具及作業知識的擴充介面 | 不取代客戶端、帳號或權限管理 |

避免把「客戶端開源」誤讀成完整服務都可自架，或把規劃中功能列為已交付。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[MCP]]

## 來源

- [GitHub](https://github.com/makecindy/cindy)
- [README](https://github.com/makecindy/cindy/blob/main/README.md)
- 原始快照：`raw/2026-10-25-makecindy-cindy.md`
- Metadata：`raw/2026-10-25-makecindy-cindy.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/makecindy/cindy |
| Stars | 4,106（2026-10-25 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-25 |

---
title: Plannotator
slug: backnotprop-plannotator
created: 2026-11-14
updated: 2026-11-14
stars: 10460
language: zh-TW
topics: ["Coding-Agent-CLI", "AI-Agent", "MCP"]
---

# Plannotator

> ⭐10.5k · 本地瀏覽器審閱工作台，把計畫、文件與程式碼批註回傳給 Agent。

## 快速導航

- [[Coding-Agent-CLI]]
- [[AI-Agent]]
- [[MCP]]

## 是什麼

Plannotator 在人與 Coding Agent 之間提供審閱介面，讓使用者對計畫、Markdown、HTML 產物及程式差異做批註，再把回饋送回原本的 Agent。它透過 hooks、插件及指令整合現有工具，而不是另一個自主寫程式模型。

Inbox 把多個 Agent 的問題、檔案與待審閱項目集中在本地視窗，回覆可回到提出問題的 session。README 同時說明 MCP 接入方式與多種 Coding Agent 整合；不同宿主的 hook 能力並不完全相同。

## 核心特色

- 多種類產物審閱：計畫、規格、Markdown 與 HTML 都能成為批註對象。

- 程式差異審查：支援本機變更及 GitHub PR／GitLab MR。

- 非同步 Inbox：集中待決事項，使用者稍後回覆而不必一直佔住 Agent session。

- MCP 與宿主整合：提供 inbox mcp 入口，另有 Claude Code、Pi、OpenCode 等插件。

- 本地優先但非完全離線：AI 功能、網址擷取、分享與更新檢查有各自的網路邊界。

## 怎麼用

### 安裝與啟動

以下指令是文件示範，本次收錄沒有執行安裝。

```bash
curl -fsSL https://plannotator.ai/install.sh -o /tmp/plannotator-install.sh
# 先檢視腳本；確認後只安裝 binary，不自動修改各 Agent 設定
bash /tmp/plannotator-install.sh --minimal
plannotator inbox
```

### 初次使用檢查

1. minimal 模式略過 Skills、hooks 與各宿主設定，完整整合需另外依官方文件設定。

2. 先用非敏感文件測試批註，再確認回饋能回到預期 session。

3. 開啟 Ask AI 前確認提供者與傳出的上下文；Workspaces 是獨立託管產品，不能套用本地儲存假設。

### 適用邊界

- 本地優先不等於沒有連外：介面仍會檢查 GitHub release，遠端 Git 檢查可另行關閉。

- 完整分享連結可讓持有者讀取內容；小型 Markdown fragment 並未加密。

## 跟其他方案的關係

以下為功能定位比較，並非效能測試。

| 方案 | 主要用途 | 關係與差異 |
|---|---|---|
| Coding Agent CLI | 執行開發與工具操作 | Plannotator 提供人類審閱層，不取代宿主。 |
| 一般 PR 網頁審查 | 檢閱遠端程式變更 | 此工具另涵蓋計畫與產物，並回送 Agent。 |

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub repository](https://github.com/backnotprop/plannotator)
- [README](https://github.com/backnotprop/plannotator/blob/main/README.md)
- 原始快照：`raw/2026-11-14-backnotprop-plannotator.md`
- Metadata：`raw/2026-11-14-backnotprop-plannotator.metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/backnotprop/plannotator |
| Stars | 10,460（2026-11-14 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-11-14 |

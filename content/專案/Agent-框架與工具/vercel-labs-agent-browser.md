---
title: "agent-browser"
slug: "vercel-labs-agent-browser"
created: "2026-11-06"
updated: "2026-11-06"
stars: 45886
language: "zh-TW"
topics: ["computer-use-agent", "AI-Agent", "MCP"]
---

# agent-browser

> ⭐45.9k · 以 Rust CLI、無障礙樹快照與元素 refs，讓 AI Agent 逐步操作瀏覽器。

## 快速導航

- [[computer-use-agent]]
- [[AI-Agent]]
- [[MCP]]

## 是什麼

agent-browser 是 Vercel Labs 的瀏覽器自動化工具，不是自行決定任務的聊天模型。Agent 從 shell 呼叫它開啟頁面、讀取 snapshot，再用 @e1 這類元素參照執行操作；瀏覽器會在命令之間保持開啟。

底層 CLI 把命令交給背景 daemon，以 Chrome DevTools Protocol 控制瀏覽器。每個 session 有獨立 daemon 與瀏覽器，適合把觀察、操作、驗證拆成可追蹤的小步驟；任務規劃仍由外部 Agent 負責。

## 核心特色

- **精簡可讀快照**：以 accessibility tree 呈現頁面，互動元素附 ref，降低直接處理完整 DOM 的負擔。

- **多種定位方式**：除 refs 外，支援 CSS、文字、XPath 與語意定位。

- **可檢查的動作失敗**：目標被遮擋、隱藏、停用或超出視窗時，點擊會失敗而非回報成功。

- **工作階段隔離**：--session 分開 daemon 與瀏覽器；可另外設定狀態持久化。

- **整合入口**：提供版本匹配的 skills，以及 stdio MCP server。

- **多種瀏覽器後端**：預設 Chrome for Testing，也可接既有 Chrome、其他引擎與雲端供應商。

## 怎麼用

### 安裝／準備

```bash
npm install -g agent-browser
agent-browser install
```

### 使用入口

```bash
agent-browser open example.com
agent-browser snapshot -i
# 以下 ref 必須來自當下快照
agent-browser click @e1
agent-browser get url
agent-browser close
```

### 前提與限制

- 頁面導向或 DOM 改變後先重新 snapshot，不能沿用失效的 refs。
- 遇到同意視窗等覆蓋物，先處理遮擋、重取快照，再重試。
- 此頁只整理官方文件，未安裝 CLI、未操作使用者登入狀態。

## 跟其他方案的關係

以下是依用途整理的選型比較，不代表本次執行了跨專案 benchmark。

| 方案 | 定位 | 選型界線 |
|---|---|---|
| agent-browser | 瀏覽器命令執行層 | 外部 Agent 負責規劃，每個動作後重新觀察 |
| [[vercel-labs-agent-desktop]] | 桌面應用操作 | 同樣使用快照與 refs，但操作範圍不同 |
| [[browser-use-browser-harness]] | 瀏覽器工作環境 | 偏向讓 Agent 累積 helper 與工作流程 |

## 相關概念

← [[computer-use-agent]] · [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub](https://github.com/vercel-labs/agent-browser)
- [官方 README](https://github.com/vercel-labs/agent-browser/blob/main/README.md)
- README 快照：`raw/2026-11-06-vercel-labs-agent-browser.md`
- Metadata 快照：`raw/2026-11-06-vercel-labs-agent-browser.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/vercel-labs/agent-browser |
| Stars | 45,886（2026-11-06 快照） |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-11-06 |

---
title: Claude Quickstarts
slug: anthropics-claude-quickstarts
created: 2026-11-09
updated: 2026-11-09
stars: 19424
language: zh-TW
topics: ["AI-Agent", "computer-use-agent"]
---

# Claude Quickstarts

> ⭐19.4k · Anthropic 官方 Claude 應用起始專案，涵蓋桌面／瀏覽器操作、長任務與 Managed Agents。

## 快速導航

- [[AI-Agent]] — 相關研究與應用脈絡
- [[computer-use-agent]] — 技術定位與整合邊界

## 是什麼

Claude Quickstarts 是 Anthropic 維護的應用範例集合，讓開發者從具體的專案結構、依賴與啟動流程開始，而非只閱讀單一 API 呼叫片段。各子目錄有自己的 README，需求與部署方式並不相同。

目前根 README 列出客服、金融分析、Computer Use、Browser Use、自主 Coding Agent 與多種 Managed Agents 範例。它是學習與客製化的起點，不是能一鍵安裝所有能力的統一框架；最小 toolset 範例明確不屬於 production code。

## 核心特色

- **應用場景導向**
  客服範例連結知識庫，金融分析範例結合對話與互動式視覺化。

- **電腦與瀏覽器雙路線**
  包含容器桌面、原生 macOS 教學、Playwright browser tool，以及 CDP／VNC 最小 driver。

- **跨 session Coding Agent**
  Initializer 建立功能清單，Coding Agent 逐項實作，透過 Git 與功能清單保存進度。

- **Managed Agents 整合**
  涵蓋 Chat SDK、CopilotKit／AG-UI、Slack、Linear、MCP、排程摘要與知識 Wiki。

- **可靠性與安全教材**
  macOS 範例討論影像縮放、快取、壓縮、批次工具呼叫與 trajectory；官方要求在 VM 中執行。

## 怎麼用

### 安裝或建置起點

以下是官方文件的操作路線，並非本次收錄已完成安裝的紀錄。

```bash
git clone https://github.com/anthropics/claude-quickstarts.git
cd claude-quickstarts/autonomous-coding
python3 -m venv .venv
source .venv/bin/activate
npm install -g @anthropic-ai/claude-code
python -m pip install -r requirements.txt
```

### 使用入口

```bash
export ANTHROPIC_API_KEY='YOUR_API_KEY'
python autonomous_agent_demo.py --project-dir ./my_project --max-iterations 3
```

### 前置條件與限制

- 以上選用 autonomous-coding，不代表其他子專案使用相同依賴或命令。需要有效 Claude API 憑證，註冊帳號不代表推論免費。

- 先閱讀 app_spec 與 security.py，再在隔離工作區測試；限制迭代次數不等於限制花費。不要讓桌面範例直接接觸日常敏感帳號。

- 根目錄授權為 MIT，但 autonomous-coding README 尾端標示 Internal Anthropic use，存在文件授權表述不一致；再散布或商用前應向上游確認。

## 跟其他方案的關係

以下按用途比較，不代表效能評測或功能等價。

| 方案 | 定位 | 選用與邊界 |
|---|---|---|
| Claude Quickstarts | 完整應用起點與分場景 README | 適合從可執行專案研究整合流程 |
| Claude Cookbooks | 常見任務的程式片段與指南 | 可搭配 [[anthropics-claude-cookbooks]] 補足局部技巧 |
| 通用 Agent 框架 | 跨應用抽象與可重用 runtime | Quickstarts 更聚焦 Claude 服務與示範案例 |

## 相關概念

← [[AI-Agent]] · [[computer-use-agent]]

## 來源

- [GitHub](https://github.com/anthropics/claude-quickstarts)
- [官方補充文件](https://github.com/anthropics/claude-quickstarts/tree/main/autonomous-coding)
- README 原始快照：`raw/2026-11-09-anthropics-claude-quickstarts.md`
- Metadata 快照：`raw/2026-11-09-anthropics-claude-quickstarts.metadata.json`
- Stars 為 2026-11-09 擷取值；功能以該日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [anthropics/claude-quickstarts](https://github.com/anthropics/claude-quickstarts) |
| Stars | 19,424 |
| License | MIT（細節與例外見本文） |
| Language | Python |
| 收錄日期 | 2026-11-09 |

---
title: MCP for Unity
slug: CoplayDev-unity-mcp
created: 2026-07-05
updated: 2026-07-05
stars: 11.6k
language: C#
topics: ["mcp", "unity", "game-development", "ai-integration", "model-context-protocol"]
---

# MCP for Unity

> ⭐11600 · 透過 MCP 協議讓 AI 助手直接操控 Unity Editor，47 個工具入口

## 快速導航


- 🛠 **MCP 協議** → [[MCP\|MCP]]
- 🧠 **AI Agent** → [[AI-Agent\|AI Agent]]
- 🎯 **遊戲開發** → 本頁
- 🔧 **Coding Agent** → [[Coding-Agent-CLI\|Coding Agent CLI]]

## 是什麼

MCP for Unity 是一個橋接 AI 助手和 Unity Editor 的 MCP Server。透過 [[MCP|Model Context Protocol]]，AI 助手（Claude、Codex、VS Code、Cursor、Gemini CLI 等）可以用自然語言操控 Unity：建立場景和 GameObject、編輯 C# 腳本、管理資產、執行測試、效能分析、Build 自動化。

由 CoplayDev 開發，Aura 贊助維護。提供 47 個 MCP 工具入口，支援任何 MCP client，完全免費且 MIT 授權。已發表 ACM 論文（SA Technical Communications '25），是 MCP 在 3D 創作領域的學術級實踐。

支援 Unity 2021.3 LTS 到 6.x 版本，Python 3.10+（透過 uv）。進階功能包括多 Unity 實例路由、工具群組（VFX/Animation/UI/Testing）、Roslyn 腳本驗證、遠端伺服器認證等。

## 核心特色

- **47 個 MCP 工具入口** — 場景管理、GameObject 操作、腳本編輯、資產管理、測試、效能分析、Build
- **任何 MCP client** — Claude Desktop & Code, Cursor, VS Code, Windsurf, Cline, Gemini CLI
- **自然語言操控** — 「在原點建立一個方塊並加上 Rigidbody」即可執行
- **多實例路由** — 同時操控多個 Unity Editor 實例
- **工具群組** — VFX / Animation / UI / Testing 等分組工具
- **Roslyn 腳本驗證** — 編譯前驗證 C# 腳本正確性
- **遠端伺服器 + 認證** — 支援遠端託管 MCP Server
- **學術等級** — 已發表 ACM 論文，有正式引用格式

## 怎麼用

### 安裝

```bash
# 1. Unity → Package Manager → Add from git URL:
# https://github.com/CoplayDev/unity-mcp.git?path=/MCPForUnity#main
# 或固定版本: #v10.0.0
# 或 OpenUPM: openupm add com.coplaydev.unity-mcp

# 2. Unity → Window → MCP for Unity → Configure All Detected Clients

# 3. 在你的 MCP client 中直接對話：
# "Create a cube at the origin and add a Rigidbody."
```

### 需求

- Unity 2021.3 LTS → 6.x
- Python 3.10+（透過 [uv](https://docs.astral.sh/uv/)）
- 任何 MCP client

## 跟其他方案的關係

| 方案 | 協議 | 目標引擎 | 工具數 | 開源 |
|------|------|----------|--------|------|
| **MCP for Unity** | MCP | Unity | 47 | ✅ MIT |
| Aura for Unity | 專有 | Unity/Unreal | — | 商業 |
| Godot AI | MCP | Godot | — | ✅ |
| [[ChromeDevTools-chrome-devtools-mcp\|Chrome DevTools MCP]] | MCP | Chrome DevTools | — | ✅ |

MCP for Unity 是 [[MCP]] 生態系中遊戲開發領域的代表性項目，與 [[ChromeDevTools-chrome-devtools-mcp|Chrome DevTools MCP]] 類似，都把特定 IDE/Editor 透過 MCP 暴露給 AI Agent。

← [[MCP|MCP]] · [[AI-Agent|AI Agent]]


## 相關概念


← [[MCP]] · [[AI-Agent]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: https://github.com/CoplayDev/unity-mcp
- 官網: https://www.coplay.dev
- Wiki: https://coplaydev.github.io/unity-mcp/
- raw/2026-07-05-CoplayDev-unity-mcp.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/CoplayDev/unity-mcp |
| Stars | ⭐11600|
| License | MIT |
| 收錄日期 | 2026-07-05 |

---



title: holaOS
slug: holaboss-ai-holaOS
created: 2026-05-06
stars: '⭐4757'



updated: 2026-05-06
language: zh-TW
topics: []
---

# holaOS

> 開放 Agent 電腦 — 把電腦重新想像成人與 AI Agent 並肩工作的共享環境，記憶、執行、目標都在同一個地方保持連貫。⭐4,757

## 快速導航
- 🤖 **Agent 工作流** → [[AI-Agent]]（holaOS 是 Agent 的完整作業環境）
- 🧠 **記憶與連續性** → [[mempalace]]（持久記憶 + 長期任務恢復）
- 🗄️ **Context Database** → [[Context-Database]]（Workspace Model 的概念基礎）
- 🦞 **OpenClaw** → [[openclaw]]（兩者都是 Agent 框架，但設計哲學不同）
- 🔄 **自演化 Agent** → [[lsdefine-GenericAgent]]（技能生長 vs 環境工程）

## 是什麼

holaOS 是一個開放的 Agent 電腦 — 不是另一個 Agent 框架，而是一個重新定義電腦的概念。在 holaOS 的世界裡，電腦是人類和 AI Agent 共享的工作環境：同一個瀏覽器、同一組檔案、同一套應用程式，Agent 就像一個持續學習的超級隊友。

核心洞察是「環境工程」（Environment Engineering）：環境定義系統。與其給 Agent 一堆分散的工具和 context，不如給它一個完整的、連貫的工作環境。

## 核心特色

- **環境工程**：記憶、執行、目標都在同一個地方保持連貫，Agent 不需要每次重新載入 context
- **Workspace Model**：Authored Surfaces（人類定義的結構）+ Runtime-owned State（Agent 管理的狀態）+ Workspace Contract（人和 Agent 之間的介面協議）
- **記憶與連續性**：Durable Memory（持久記憶）+ Continuity Artifacts（連續性產物）+ Long-horizon Resume（長期任務恢復）
- **Agent Harness**：運行時的穩定邊界，定義 Agent 能做什麼、不能做什麼，操作可檢查、可回滾
- **Electron 桌面應用**：跨平台桌面應用（macOS 已支援，Windows 和 Linux 開發中）
- **Node.js + TypeScript 技術棧**：基於 Node.js 24.14.1 和 Electron 建構
- **雙模式運行**：支援桌面圖形介面和 CLI 模式，適合不同使用場景

## 怎麼用

```bash
# 一鍵安裝
curl -fsSL https://raw.githubusercontent.com/holaboss-ai/holaOS-priv/main/scripts/install.sh | bash -s -- --launch

# 或手動安裝
git clone https://github.com/holaboss-ai/holaOS.git
cd holaOS && npm run desktop:install
cp desktop/.env.example desktop/.env
npm run desktop:prepare-runtime:local
npm run desktop:typecheck
npm run desktop:dev
```

**使用流程**：啟動桌面應用 → 選擇 AI 模型（支援多家 LLM Provider）→ 在共享環境中與 Agent 協作 → Agent 會記住上下文，持續在同一個工作空間運作。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[openclaw]] | Agent 框架 | OpenClaw 是框架+插件生態，holaOS 是 Agent 作業系統 |
| [[lsdefine-GenericAgent]] | 自演化 Agent | GenericAgent 走極簡+自演化，holaOS 走完整環境+持續運作 |
| [[mempalace]] | 記憶系統 | holaOS 記憶是環境內建的，MemPalace 提供獨立記憶系統 |
| OpenInterpreter | 開源 Code Interpreter | OpenInterpreter 互動式執行，holaOS 持續運作環境 |
| [[cubesandbox]] | 沙盒環境 | CubeSandbox 提供安全隔離，holaOS 提供完整作業環境 |

## 相關概念

← [[AI-Agent]] · [[mempalace]] · [[Context-Database]] · [[openclaw]]

## 來源

- raw/2026-05-06-holaboss-ai-holaOS.md

---

- **GitHub**: https://github.com/holaboss-ai/holaOS
- **Stars**: ⭐4,757
- **License**: MIT
- **收錄日期**: 2026-05-06
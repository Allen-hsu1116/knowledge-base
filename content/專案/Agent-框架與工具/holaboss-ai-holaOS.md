# holaOS

> 開放 Agent 電腦 — 把電腦重新想像成人與 AI Agent 並肩工作的共享環境，記憶、執行、目標都在同一個地方保持連貫。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [holaboss-ai/holaOS](https://github.com/holaboss-ai/holaOS) |
| Stars | ⭐4,757 |
| Language | TypeScript |
| 建立日期 | 2026-03-22 |
| 收錄日期 | 2026-05-06 |
| 授權 | MIT |

## 快速導航

- 🤖 **Agent 工作流** → [[AI-Agent]]（holaOS 是 Agent 的完整作業環境）
- 🧠 **記憶與連續性** → [[mempalace]]（持久記憶 + 長期任務恢復）
- 🗄️ **Context Database** → [[Context-Database]]（Workspace Model 的概念基礎）
- 🦞 **OpenClaw** → [[openclaw]]（兩者都是 Agent 框架，但設計哲學不同）
- 🔄 **自演化 Agent** → [[lsdefine-GenericAgent]]（技能生長 vs 環境工程）

## 是什麼

holaOS 是一個開放的 Agent 電腦 — 不是另一個 Agent 框架，而是一個**重新定義電腦的概念**。在 holaOS 的世界裡，電腦是人類和 AI Agent 共享的工作環境：同一個瀏覽器、同一組檔案、同一套應用程式，Agent 就像一個持續學習的超級隊友。

這個概念的核心洞察是「環境工程」（Environment Engineering）：**環境定義系統**。與其給 Agent 一堆分散的工具和 context，不如給它一個完整的、連貫的工作環境 — 記憶不重置、目標不丟失、狀態不斷裂。Agent 在這個環境中持續運作、持續演化、完全可檢查。

holaOS 跟 [[openclaw]] 的差異在於：OpenClaw 是「Agent 框架 + 插件生態」，holaOS 是「Agent 作業系統」— 一個讓 Agent 真正「住進去」的環境。

## 核心特色

### 環境工程 — Environment Engineering

holaOS 的核心論點：

> 與其在不同工具和 context 之間跳來跳去，不如讓一切都在同一個地方 — 記憶、執行、目標保持連貫，工作不會重置或丟失狀態。

這意味著：
- Agent 不需要每次重新載入 context
- 人類和 Agent 看到的是同一個桌面、同一個檔案
- Agent 的操作歷史完全可檢查
- 你可以透過 Role 和 Template 塑造 Agent 的工作方式

### Workspace Model

holaOS 的 Workspace 是一個有契約的單元：

- **Authored Surfaces**：人類定義的結構（配置、Template、Role）
- **Runtime-owned State**：Agent 運行時管理的狀態（記憶、執行記錄、輸出）
- **Workspace Contract**：人和 Agent 之間的介面協議

這跟 [[Context-Database]] 的檔案系統範式有概念上的相似：都是用「合約」定義什麼是人類管理的、什麼是 Agent 管理的。

### 記憶與連續性

holaOS 的記憶設計強調三件事：

1. **Durable Memory**：記憶持久存在，跨 session 不丟失
2. **Continuity Artifacts**：連續性產物 — Agent 留下的可追蹤痕跡
3. **Long-horizon Resume**：長期任務可以中斷後恢復

這跟 [[mempalace]] 的「不改寫原文、逐字儲存」和 [[hermes-agent]] 的「跨 session 學習閉環」是不同的記憶哲學：holaOS 的記憶是「環境的一部分」，不是獨立的記憶系統。

### Agent Harness

holaOS 的 Agent Harness 是運行時的穩定邊界：

- 定義 Agent 在環境中能做什麼、不能做什麼
- Executor（執行器）嵌入 Harness 中運行
- Harness 保證 Agent 的操作可檢查、可回滾

### 程式碼範例

```bash
# 一鍵安裝（macOS / Linux / WSL）
curl -fsSL https://raw.githubusercontent.com/holaboss-ai/holaOS-priv/main/scripts/install.sh | bash -s -- --launch

# 或手動安裝
git clone https://github.com/holaboss-ai/holaOS.git
cd holaOS
npm run desktop:install
cp desktop/.env.example desktop/.env
npm run desktop:prepare-runtime:local
npm run desktop:typecheck
npm run desktop:dev
```

也可以把安裝說明交給你的 coding agent（Codex / Claude Code / Cursor）：
> Run the holaOS install script from https://raw.githubusercontent.com/holaboss-ai/holaOS-priv/main/scripts/install.sh

### Build Your First App

holaOS 支援在 Workspace 之上建構應用程式，文件中有完整的 [Build Your First App](https://www.holaos.ai/docs/build/apps/first-app) 指南。

## 與其他方案的關係

[[openclaw]] 和 holaOS 都是 Agent 框架，但設計哲學不同：
- **OpenClaw**：Agent 框架 + 插件生態 + MCP 工具連接
- **holaOS**：Agent 作業系統 + 環境工程 + 共享桌面

[[lsdefine-GenericAgent]] 走的是「極簡 + 自演化」路線，holaOS 走的是「完整環境 + 持續運作」路線。兩者互補：GenericAgent 可以是 holaOS 環境中運行的一個 Agent。

[[mempalace]] 提供獨立的記憶系統，holaOS 的記憶是環境內建的。如果 holaOS 的記憶不夠用，可以整合 MemPalace 的 MCP Server。

## 技術棧

- **核心語言**：TypeScript
- **桌面框架**：Electron
- **運行時**：TypeScript runtime（Node.js 24.14.1）
- **跨平台**：macOS（完整支援）、Windows、Linux（開發中）
- **前端**：React（桌面 UI）
- **授權**：MIT

## 相關連結

- [GitHub](https://github.com/holaboss-ai/holaOS)
- [官網](https://www.holaos.ai)
- [文件](https://www.holaos.ai/docs/getting-started)
- [Discord](https://discord.com/invite/NSeHUCBj6)
- [X/Twitter](https://x.com/Holabossai)

← [[AI-Agent]] · [[mempalace]] · [[Context-Database]] · [[openclaw]]
---


title: Donchitos/Claude-Code-Game-Studios
slug: Donchitos-Claude-Code-Game-Studios
url: https://github.com/Donchitos/Claude-Code-Game-Studios
stars: 20021
created: 2026-05-26
language: Shell
topics:
  - Coding Agent
  - AI Skills
  - Game Development
  - Multi-Agent


updated: 2026-05-26
---

# Claude Code Game Studios ⭐20k

> 把一個 Claude Code 對話變成完整遊戲開發工作室 — 49 個 AI Agent、73 個工作流 Skill、一個協調團隊

## 快速導航

- **Repo**: <https://github.com/Donchitos/Claude-Code-Game-Studios>
- **Stars**: 20,021 | **License**: MIT | **Language**: Shell
- **核心數字**: 49 agents / 73 skills / 12 hooks / 11 rules / 41 templates
- **支援引擎**: Godot 4 / Unity / Unreal Engine 5

## 是什麼

Claude Code Game Studios 是一個 Claude Code 專用的遊戲開發工作室模板。它把單一 AI 對話 session 結構化為三層工作室階層——Director（總監）、Lead（部門主管）、Specialist（專家）——讓你用一個 Claude Code session 就能像真實工作室一樣分工協作。

**核心問題它要解決**：單人用 AI 開發遊戲時，沒有人幫你守門——不會阻止你寫死 magic number、跳過設計文件、寫 spaghetti code；沒有 QA 流程、沒有設計 review、沒有人問「這真的符合遊戲願景嗎？」這個專案把工作室的結構直接搬進你的 Claude Code session。

**重要：不是自動駕駛系統**。所有 Agent 遵循「先問 → 給選項 → 你決定 → 草稿 → 你批准」的協作協議，使用者永遠做最後決定。

## 核心特色

- **49 個專業 Agent**：三層階層架構（Director 3 / Lead 8 / Specialist 38），涵蓋設計、程式、美術、音效、敘事、QA、製作
- **73 個 Slash Skill**：完整工作流指令，從 `/start` 到 `/launch-checklist`，覆蓋發想→設計→開發→測試→上線全流程
- **12 個自動 Hook**：commit 驗證、push 保護、資產命名檢查、session 生命週期、agent 審計軌跡
- **11 條路徑規則**：依檔案路徑自動套用編碼標準（gameplay / core / ai / networking / ui 各有規範）
- **41 份文件模板**：GDD、UX spec、ADR、Sprint plan、HUD 設計、無障礙設計等
- **三大引擎支援**：Godot 4 / Unity / Unreal Engine 5 各有專屬 specialist agent
- **三種 Review 模式**：`full`（全部 director gate）/ `lean`（階段 gate）/ `solo`（無 gate）
- **協作而非自治**：Agent 不會自動寫任何東西，一切需使用者批准

## 怎麼用

```bash
# 1. Clone 為你的遊戲專案
git clone https://github.com/Donchitos/Claude-Code-Game-Studios.git my-game
cd my-game

# 2. 啟動 Claude Code
claude

# 3. 輸入 /start 開始引導式設定
# 系統會問你目前在哪個階段（沒想法 / 模糊概念 / 已有設計 / 現有專案），然後引導你到對應工作流
```

也可直接跳到特定指令：
- `/brainstorm` — 從零開始探索遊戲點子
- `/setup-engine godot 4.6` — 配置你的遊戲引擎
- `/project-stage-detect` — 分析現有專案狀態
- `/dev-story` — 開發特定 user story
- `/team-combat` — 協調多個 agent 做戰鬥系統

## 跟其他方案的關係

| 方案 | 差異 |
|------|------|
| **單一 Claude Code session** | 沒有結構、沒有品質門檻、沒有角色分工；Game Studios 加上三層 agent 階層 + 自動 hook + path-scoped rules |
| **Claude-Code-UX** | Claude-Code-UX 聚焦 UI/UX 工作流；Game Studios 是完整的遊戲開發全流程（設計→程式→美術→音效→QA→上架） |
| **multica-ai/multica** | Multica 是多 agent 協作框架；Game Studios 是專為遊戲開發設計的垂直方案，agent 角色直接對應真實工作室職位 |

## 相關概念

- ← [[AI-Agent]] — AI Agent 架構與多代理系統
- ← [[AI-Skills]] — AI Agent 技能系統與 Slash Commands
- ← [[Coding-Agent-CLI]] — 命令列 AI 編程代理

## 來源

- 完整 README：raw/2026-05-26-Donchitos-Claude-Code-Game-Studios.md
- GitHub: <https://github.com/Donchitos/Claude-Code-Game-Studios>

---
*Ingested: 2026-05-26 | Stars: 20,021 | License: MIT*
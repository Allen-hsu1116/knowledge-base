---
title: TeamAI CLI
slug: Tencent-teamai-cli
created: 2026-09-10
updated: 2026-09-10
stars: 2981
language: zh-TW
topics: [AI-Skills, harness-engineering, Coding-Agent-CLI, MCP]
---

# TeamAI CLI

> ⭐2.98k · 用 Git 統一分發團隊的 Skills、規則、MCP 與知識，讓不同 Coding Agent 共用工作方式。

## 快速導航

- [[AI-Skills]] — 團隊技能的分發與維護。
- [[harness-engineering]] — 把團隊慣例變成可版本控制的 Harness。
- [[Coding-Agent-CLI]] — 連接多種既有開發代理。
- [[MCP]] — 分發工具連線設定，支援程度依 Agent 而異。

## 是什麼

TeamAI 是 Tencent 開源的團隊 AI 資源管理 CLI，不是另一個基礎模型，也不是用來取代 Claude Code 或 Codex 的獨立 Coding Agent。它把 Skills、Rules、Docs、Agents、Hooks、MCP 等資源放進共同 Git repository，再同步到成員使用的 AI 工具。

產品分成 Team Execution、Team Context 與 Team Improvement 三層。Execution 負責一致的執行規範；後兩層仍標為 beta，處理團隊知識檢索、程式碼圖譜、經驗分享、使用摘要與健康度觀察。

適合已經採用多款 AI 開發工具、但規則分散且新人設定成本高的團隊。收錄理由是直接管理 Agent 的技能與上下文；不能把 README 的跨工具支援理解成每一款工具都有全部功能。

## 核心特色

- **Git 審核式分發**：一般資源經 `push → branch/MR → review/merge → pull` 發布。
- **跨 Agent 適配**：README 列出 Claude Code、Codex、Cursor、CodeBuddy、OpenCode 等，並提供逐功能支援矩陣。
- **角色與標籤訂閱**：Roles、Tags、Sources 控制成員要同步的技能範圍與外部來源。
- **知識召回預設關閉**：需明確啟用，檢索使用 BM25 與圖譜加權，並先做相關性檢查。
- **雙軌程式碼圖譜**：TypeScript／JavaScript、Python、Go 使用 tree-sitter AST；其他語言走 heuristic，AST 載入失敗也會降級並記錄缺口。
- **以摩擦訊號提示分享**：被使用者修正、拒絕工具或反覆失敗等訊號觸發分享建議，不把單純長對話等同有價值經驗。
- **維護與觀測**：提供 digest、session summary、dashboard 與知識庫維護命令；相關功能仍屬 beta。

## 怎麼用

### 安裝與初始化

下列是官方 README 指令；本次僅收錄文件，未安裝或修改本機 Agent 設定。
先建立團隊 Git repository，並依官方流程授予成員所需權限。

```bash
npm install -g teamai-cli
cd /path/to/my-project
teamai init https://github.com/yourorg/yourrepo
```

`/path/to/my-project` 與 repository URL 是待替換的示例。
預設為 project scope；`--scope user` 會影響使用者層級，採用前先備份既有設定。

### 日常檢查與可選召回

```bash
teamai status
teamai doctor
teamai recall status
# 明確決定使用團隊召回後才執行
teamai recall enable
teamai recall "port conflict"
```

支援 SessionStart hook 的適配器可在 session 開始時拉取更新；不要推定所有工具都具備相同 hook 行為。
官方明確提醒 `env/` 不可放秘密；同步來源、Hooks、MCP 與套件宣告都應先審查。
經驗分享可能直接推送 learning 文件，不能把所有資料路徑一概視為 MR 審核流程。

## 跟其他方案的關係

以下是依文件定位作的比較，不是效能評測。

| 方案 | 主要責任 | 與 TeamAI 的關係 |
|---|---|---|
| [[anthropics-claude-code\|Claude Code]] | 實際執行程式開發任務 | TeamAI 是資源與規則分發層，不取代執行引擎 |
| [[openai-codex\|Codex]] | Coding Agent 執行與工具操作 | 可接受團隊資源，需以支援矩陣確認能力 |
| 手動維護 Skills Git repo | 儲存與人工複製技能 | TeamAI 增加適配、訂閱、同步及 beta 知識管理 |
| [[vastsa-PI-Desktop\|PI-Desktop]] | 本機桌面 Agent 工作台 | 一個側重團隊分發，一個側重桌面執行與審閱 |

## 相關概念

← [[AI-Skills]] · [[harness-engineering]] · [[Coding-Agent-CLI]] · [[MCP]] · [[AI-Agent]]

## 來源

- [GitHub：Tencent/teamai-cli](https://github.com/Tencent/teamai-cli)
- [官方 README](https://github.com/Tencent/teamai-cli/blob/main/README.md)
- [LICENSE](https://github.com/Tencent/teamai-cli/blob/main/LICENSE)：正文明列 MIT；GitHub API 的 `NOASSERTION` 不作為最終授權判斷。
- 原始 README：`raw/2026-09-10-Tencent-teamai-cli.md`
- 原始 metadata：`raw/2026-09-10-Tencent-teamai-cli.metadata.json`
- 以上為 2026-09-10 文件快照，未進行候選工具的實機測試。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Tencent/teamai-cli |
| Stars | 2,981（2026-09-10 快照） |
| License | MIT（已核對 LICENSE 正文） |
| Language | TypeScript；本頁為 zh-TW |
| 收錄日期 | 2026-09-10 |

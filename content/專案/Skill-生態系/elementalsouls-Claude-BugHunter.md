---
title: "Claude-BugHunter"
slug: elementalsouls-Claude-BugHunter
created: 2026-11-16
updated: 2026-11-16
stars: 6450
language: zh-TW
topics: ["AI-Skills", "pentesting", "AI-Agent"]
---

# Claude-BugHunter

> ⭐6.5k · 面向授權漏洞研究的 Claude Code 技能包，整合方法論、驗證與報告流程。

## 快速導航

- [[AI-Skills]]
- [[pentesting]]
- [[AI-Agent]]

## 是什麼

Claude-BugHunter 是以 Agent Skills 格式整理的安全研究技能包。收錄時 README 宣稱包含 83 個 skills、15 個 slash commands 與 681 個已揭露報告模式；這些是專案自述的內容規模，不代表本次已逐項稽核或證實其成效。

專案聚焦獲得授權的外部攻擊面研究與 bug bounty，將思考方法、Web 應用檢查、企業邊界研究及成果交付分層。它明確不把內部 AD 接管、持久化、橫向移動與防護規避當作這個套件的範圍，使用者也必須遵守測試授權與範圍。

## 核心特色

- **方法論與紀律**：透過方法技能組織研究問題、工作順序及範圍約束。

- **技能知識層**：把公開揭露報告歸納為分類知識，README 註明部分模式可個別追溯引用。

- **驗證與分級**：提供 triage-validation 與 VRT 導向的嚴重度整理。

- **證據衛生**：重視個資遮罩與可交付報告，避免將未證實猜測當成漏洞。

- **多宿主可攜**：知識技能可移植到不同 Agent；slash commands 與 /hunt 引擎仍限 Claude Code。

- **安裝方式分離**：插件、獨立 cbh CLI 與 clone 內的 engagement scaffolder 不是同一個安裝成果。

## 怎麼用

以下是 README 提供的 Claude Code 插件安裝入口，應在 Claude Code 內使用。此處只記錄文件，沒有實際安裝、連接 Burp 或掃描任何目標。

```text
/plugin marketplace add elementalsouls/Claude-BugHunter
/plugin install claude-bughunter@elementalsouls
```

1. 先確認書面授權、資產清單、允許方法與測試時間，再決定是否採用任何技能。

2. 在本機靶場或明確授權測試環境閱讀技能與報告範本，先熟悉人工審核流程。

3. 分開核對插件、CLI 與 scaffolder 的需求；不要把安裝插件理解為附帶所有外部工具。

### 使用邊界

不要執行跨全部宿主的安裝腳本來處理單一 profile。README 的示例對話明確標示為示意，並非可採信的實測結果。

## 跟其他方案的關係

| 方案 | 定位 | 適合情境 |
|---|---|---|
| Claude-BugHunter | 授權安全研究的技能與流程集合 | 已有宿主 Agent，需補足領域方法與交付紀律 |
| Claude Code | 載入技能並操作工具的宿主 | 提供執行環境，技能包不取代它 |
| Burp MCP 整合 | 連接安全測試工具的選配能力 | 需另行設定工具與明確測試授權 |

安全研究技能不是授權，也不是漏洞正確性的保證；實際 findings 必須可重現並接受人工複核。

## 相關概念

← [[AI-Skills]] · [[pentesting]] · [[AI-Agent]]

## 來源

- [GitHub repository](https://github.com/elementalsouls/Claude-BugHunter)
- [官方 README](https://github.com/elementalsouls/Claude-BugHunter#readme)
- README 快照：`raw/2026-11-16-elementalsouls-Claude-BugHunter.md`
- API metadata：`raw/2026-11-16-elementalsouls-Claude-BugHunter.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [elementalsouls/Claude-BugHunter](https://github.com/elementalsouls/Claude-BugHunter) |
| Stars | 6,450（2026-11-16 擷取） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-16 |

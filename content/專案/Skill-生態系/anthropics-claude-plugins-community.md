---
title: Claude Plugins Community
slug: anthropics-claude-plugins-community
created: 2026-08-25
updated: 2026-08-25
stars: 1354
language: zh-TW
topics: [AI Skills, Claude Code, Plugin Marketplace, Prompt Security]
---

# Claude Plugins Community

> ⭐1.4k · Anthropic 維護的 Claude Cowork 與 Claude Code 社群插件市集唯讀鏡像，收錄通過自動安全掃描與發佈審核的插件。

## 快速導航

- 🛠 [[AI-Skills]] — 理解 Skill、Workflow 與 Plugin 的能力封裝層次
- 🔐 [[prompt-security]] — 查看第三方插件與提示詞供應鏈的安全風險
- 💻 [[Coding-Agent-CLI]] — 了解 Claude Code 等終端 Agent 的插件場景

## 是什麼

Claude Plugins Community 是 Anthropic 社群插件目錄的公開 GitHub 鏡像，服務對象是 Claude Cowork 與 Claude Code。真正可安裝插件的清單位於 `.claude-plugin/marketplace.json`，儲存庫本身不是接受 pull request 的主要投稿管道。

這個鏡像每晚從 Anthropic 內部審核管線同步。README 表示，每個列出的插件都先經由官方提交流程進件、通過自動安全掃描，並獲准發佈；這提供基本供應鏈閘門，但使用者仍應檢查插件要求的工具、指令與資料權限。

它跟 Anthropic 官方插件庫不同：Community 收錄外部作者提交的插件，官方庫則由 Anthropic 維護。專案的重點不是插件執行框架，而是可由 Claude 客戶端加入、更新與安裝的 marketplace catalog。

## 核心特色

- **官方社群目錄鏡像**：公開呈現 Claude 社群插件 marketplace catalog，方便 Claude Code 直接加入來源。
- **夜間同步**：資料由 Anthropic 內部審核管線定期同步，不依賴社群直接修改鏡像。
- **發佈前安全閘門**：README 明示插件已通過自動安全掃描並獲准發佈。
- **Cowork 與 Claude Code 共用生態**：Cowork 可從網頁插件目錄安裝，Claude Code 則使用 marketplace CLI。
- **唯讀治理模型**：直接送到 GitHub repo 的 pull request 會自動關閉，投稿必須走指定表單。
- **明確區分官方與社群**：搭配 `claude-plugins-official` 與 `knowledge-work-plugins`，形成不同維護責任的插件來源。

## 怎麼用

Claude Code 使用者先加入 marketplace，再以 `<plugin-name>@claude-community` 安裝目標插件：

```bash
claude plugin marketplace add anthropics/claude-plugins-community
claude plugin install <plugin-name>@claude-community
```

Claude Cowork 使用者則從官方插件頁面挑選與安裝：

```text
https://claude.com/plugins/
```

安裝第三方插件前，仍應閱讀插件內容、來源與權限需求，尤其要檢查 shell 指令、外部網路、秘密資料、MCP Server 與檔案系統範圍。通過市集掃描不等於適合每個環境，也不能取代最小權限與人工審查。

若要提交插件，不要直接對鏡像開 PR；應使用 README 指向的官方 submission 流程，等待內部安全掃描與發佈審核。

## 跟其他方案的關係

這個 repo 是「社群插件目錄」，不是一般 Skill 策展清單，也不是 Anthropic 官方插件原始碼集合。它的治理和安裝命名空間是主要差異。

| 方案 | 維護者 | 內容來源 | 主要用途 |
|------|--------|----------|----------|
| Claude Plugins Community | Anthropic 鏡像、社群作者 | 審核後的社群提交 | 安裝 Claude 社群插件 |
| [[anthropics-claude-plugins-official\|Claude Plugins Official]] | Anthropic | Anthropic 維護插件 | 安裝官方插件 |
| [[anthropics-knowledge-work-plugins\|Knowledge Work Plugins]] | Anthropic | 職能導向插件 | 知識工作流程 |
| [[VoltAgent-awesome-agent-skills\|Awesome Agent Skills]] | 社群策展 | 多平台官方與社群 Skills | 搜尋跨 Harness Skill |
| [[wshobson-agents\|wshobson/agents]] | 社群專案 | Plugin、Agent、Skill 套件 | 多 Harness 能力包 |

若需要 Claude 原生安裝與審核流程，Community marketplace 最直接；若要跨 Codex、Gemini CLI、Cursor 或 OpenCode 尋找可攜 Skill，通用策展庫通常更合適。

## 相關概念

← [[AI-Skills]] · [[prompt-security]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：https://github.com/anthropics/claude-plugins-community
- 原始 README 快照：`raw/2026-08-25-anthropics-claude-plugins-community.md`
- 插件提交入口：https://clau.de/plugin-directory-submission

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/anthropics/claude-plugins-community |
| Stars | ⭐1,354 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-08-25 |

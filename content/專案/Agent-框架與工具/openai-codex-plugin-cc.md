---
title: Codex Plugin for Claude Code
slug: openai-codex-plugin-cc
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Codex Plugin for Claude Code

> OpenAI Codex 的 Claude Code 插件 — 讓 Claude Code 能呼叫 Codex 做程式碼審查或委派任務，兩大 AI Agent 互補協作。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Codex 和 Claude Code 是兩種 AI coding agent，此插件讓它們協作）
- 🛠️ **AI Skills** → [[AI-Skills]]（此插件是 Claude Code 的 GitHub Plugin，屬於 Skill 生態系）
- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]（Claude Code 和 Codex 都是 coding agent CLI）

## 是什麼

codex-plugin-cc 是 OpenAI 官方的 Claude Code 插件，讓你在 Claude Code 裡直接呼叫 OpenAI Codex 來做程式碼審查、測試生成、重構等任務。核心設計是「互補協作」：Claude Code 擅長互動式開發（即時對話、快速迭代），Codex 擅長非同步深度任務（全 repo 級別的審查、大規模測試生成）。各取所長。

## 核心特色

- **雙 Agent 協作** — Claude Code 負責互動式開發（你說一句它改一步），Codex 負責非同步深度任務（你派一個任務它跑完回報）。兩個 Agent 不競爭，而是互補
- **三種 Codex 工具** — `review`（程式碼審查：掃描變更、找出問題、建議修正）、`implement`（實作：按描述寫程式碼）、`test`（測試生成：為指定程式碼寫測試）。三個工具涵蓋最常見的委派場景
- **簡單安裝** — 在 Claude Code 裡 `/install-github-plugin openai/codex-plugin-cc`，一行指令。安裝後 Codex 工具自動出現在 Claude Code 的工具列表中
- **結果回饋** — Codex 完成後結果直接回到 Claude Code 對話中。Claude Code 可以基於 Codex 的結果繼續對話（例如審查後讓 Claude Code 修正問題）
- **開源** — Apache-2.0 授權，可自由修改和擴展

## 怎麼實現的

插件的實作是 Claude Code GitHub Plugin 格式 + Codex API 呼叫：

1. **Plugin 註冊**：用 Claude Code 的 GitHub Plugin 格式定義三個工具（review、implement、test）。每個工具聲明輸入參數（如 review 需要檔案路徑或 diff range）和輸出格式
2. **Codex API 呼叫**：Claude Code 呼叫工具時，插件把參數包裝成 Codex API 請求（指定 repo、分支、任務描述），發送給 Codex 服務
3. **非同步執行**：Codex 在自己的沙箱環境中非同步執行任務（讀取 repo、分析程式碼、生成結果）。Claude Code 不阻塞，可以繼續做其他事
4. **結果回傳**：Codex 完成後，結果（審查報告、生成的程式碼、測試程式碼）透過 API 回傳給 Claude Code，顯示在對話中。Claude Code 可以選擇接受、修改或拒絕

## 怎麼用

```bash
# 在 Claude Code 中安裝
/install-github-plugin openai/codex-plugin-cc

# 安裝後可用三個 Codex 工具

# 程式碼審查
> Use codex to review the changes in src/api.ts
> Use codex to review PR #42
# → Codex 掃描變更，回傳審查報告（問題、建議、嚴重度）

# 實作委派
> Use codex to implement error handling for the login function
> Use codex to add logging to all API endpoints
# → Codex 在沙箱中寫程式碼，回傳實作結果

# 測試生成
> Use codex to write tests for the UserService class
> Use codex to generate integration tests for src/api/
# → Codex 分析程式碼，生成對應測試

# 結合使用
> Use codex to review src/api.ts   # 先審查
> Fix the issues codex found       # 然後讓 Claude Code 修正
> Use codex to write tests for the fixes  # 最後讓 Codex 寫測試
```

## 跟其他方案的關係

| 方案 | Claude Code 整合 | 非同步 | 任務類型 | 雙 Agent |
|------|-----------------|--------|---------|---------|
| **codex-plugin-cc** | ✅ 插件 | ✅ | review/implement/test | ✅ |
| **純 Claude Code** | — | ❌ | 互動式 | ❌ |
| **純 Codex CLI** | ❌ | ✅ | 全類型 | ❌ |

- **vs 純 Claude Code**：加了一個「非同步深度任務」的能力。Claude Code 本身是互動式的，遇到大型審查或測試生成會吃很多 context。交給 Codex 可以省 context
- **vs 純 Codex CLI**：Codex CLI 是獨立使用，此插件讓 Codex 成為 Claude Code 的一個工具。好處是在一個對話中無縫切換
- **Agent 協作趨勢**：跟 [[Panniantong-Agent-Reach|Agent Reach]]（裝工具讓 Agent 能存取平台）和 [[jackwener-OpenCLI|OpenCLI]]（CLI 化）方向不同，此插件是 Agent 之間的委派協作

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]]

## 來源

- raw/2026-05-05-openai-codex-plugin-cc.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [openai/codex-plugin-cc](https://github.com/openai/codex-plugin-cc) | ⭐17,527 | Apache-2.0 | 2026-05-05 |
# Codex Plugin for Claude Code

> OpenAI Codex 的 Claude Code 插件 — 讓 Claude Code 能呼叫 Codex 做程式碼審查或委派任務，兩大 AI Agent 互補協作。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Codex 和 Claude Code 是兩種 AI coding agent，此插件讓它們協作）
- 🛠️ **AI Skills** → [[AI-Skills]]（此插件是 Claude Code 的 GitHub Plugin，屬於 Skill 生態系）
- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]（Claude Code 和 Codex 都是 coding agent CLI）

## 是什麼

codex-plugin-cc 是 OpenAI 官方的 Claude Code 插件，讓你在 Claude Code 裡直接呼叫 OpenAI Codex 來做程式碼審查、測試生成、重構等任務。Codex 負責非同步的深度任務，Claude Code 負責互動式開發流程 — 各取所長。

## 核心特色

- **雙 Agent 協作**：Claude Code（互動式）+ Codex（非同步深度任務）
- **三種 Codex 工具**：review（審查）、implement（實作）、test（測試生成）
- **簡單安裝**：在 Claude Code 裡 `/install-github-plugin openai/codex-plugin-cc`
- **結果回饋**：Codex 完成後結果直接回到 Claude Code 對話中
- **開源**：Apache-2.0 授權

## 怎麼用

```
# 在 Claude Code 中安裝
/install-github-plugin openai/codex-plugin-cc

# 安裝後可用 Codex 工具
> Use codex to review the changes in src/api.ts
> Use codex to implement error handling for the login function
> Use codex to write tests for the UserService class
```

## 跟其他方案的關係

- **vs 純 Claude Code**：加了一個「非同步深度任務」的能力，Claude Code 不用自己做完所有事
- **vs 純 Codex CLI**：Codex CLI 是獨立使用，此插件讓 Codex 成為 Claude Code 的一個工具
- **Agent 協作趨勢**：跟 [[Panniantong-Agent-Reach]]（裝工具）和 [[jackwener-OpenCLI]]（CLI 化）方向不同，此插件是 Agent 之間的委派

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]]

## 來源

- raw/2026-05-05-openai-codex-plugin-cc.md

---

- **GitHub**: https://github.com/openai/codex-plugin-cc
- **Stars**: ⭐17,527
- **License**: Apache-2.0
- **收錄日期**: 2026-05-05
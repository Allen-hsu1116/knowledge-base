---
title: Destructive Command Guard (dcg)
slug: Dicklesworthstone-destructive_command_guard
created: 2026-07-16
updated: 2026-07-16
stars: 4.8k
language: Rust
topics: Agent-Safety, Prompt-Security, Hook, Coding-Agent, Claude-Code, Codex, Gemini-CLI
---

# Destructive Command Guard (dcg)

> ⭐4.8k · Dicklesworthstone · Rust · Custom (MIT-based) — AI Coding Agent 的安全守衛，在危險命令執行前攔截，支援 Claude Code、Codex、Gemini CLI、Cursor、Hermes Agent 等 10+ 平台。

## 快速導航

- 🔒 **Prompt Security** → [[prompt-security|Prompt Security]] — AI Agent 安全概念
- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]] — 終端 AI 編碼代理
- 🛡 **Claude Code** → [[anthropics-claude-code|Claude Code]] — Anthropic 官方編碼代理
- 🔧 **MCP** → [[MCP|MCP]] — Agent 工具連接協議

## 是什麼

Destructive Command Guard（簡稱 dcg）是一個高效能的 Hook 工具，專門為 AI Coding Agent 設計，用於在危險命令執行前將其攔截。它的核心目標是解決一個日益嚴重的問題：AI 編碼代理（如 Claude Code、Codex CLI、Gemini CLI 等）偶爾會執行災難性命令——例如 `git reset --hard`、`rm -rf ./src` 或 `DROP TABLE users`——在數秒內摧毀數小時的未提交工作。

dcg 以 Rust 實作，透過 SIMD 加速的模式匹配引擎實現次毫秒級延遲，幾乎不會影響 Agent 的工作流程。它採用模組化的「Pack」系統，將危險命令模式按類別組織，預設啟用核心的 git 和檔案系統保護 Pack，並可擴充至 50+ 安全 Pack 涵蓋資料庫、Kubernetes、Docker、AWS/GCP/Azure、Terraform 等領域。

dcg 支援超過 10 種 AI Coding Agent 平台，包括 Claude Code、Codex CLI、Gemini CLI、GitHub Copilot CLI、VS Code Copilot Chat、Cursor IDE、Hermes Agent、Grok (xAI)、Antigravity CLI、OpenCode 等。它能自動偵測當前調用它的 Agent 類型，並可根據 Agent 信任等級套用不同的安全策略。這使得 dcg 成為 AI Agent 生態中不可或缺的安全基礎設施。

## 核心特色

- **零配置保護**：安裝即生效，預設攔截危險 git 和檔案系統命令，無需任何設定檔
- **50+ 安全 Pack**：模組化 Pack 系統涵蓋資料庫（PostgreSQL、MySQL、Redis）、Kubernetes、Docker、AWS、GCP、Azure、Terraform 等場景
- **次毫秒級延遲**：SIMD 加速的模式匹配引擎，不影響 Agent 工作流程
- **10+ Agent 平台支援**：Claude Code、Codex CLI、Gemini CLI、Copilot CLI、Cursor、Hermes Agent、Grok 等全覆蓋，自動偵測 Agent 類型
- **智慧上下文偵測**：能區分 `grep "rm -rf"`（資料操作）和 `rm -rf /`（實際執行），避免誤攔
- **Heredoc/內聯腳本掃描**：能捕捉隱藏在 `python -c "os.remove(...)"` 或嵌入式 shell 腳本中的危險命令
- **多層逃生機制**：環境變數 bypass、一次性允許碼、永久白名單、移除 Hook 四種方式，靈活平衡安全與效率
- **Fail-Open 設計**：超時或解析錯誤時不會阻擋工作流程，確保不中斷開發

## 怎麼用

### 快速安裝

```bash
curl -fsSL "https://raw.githubusercontent.com/Dicklesworthstone/destructive_command_guard/main/install.sh?$(date +%s)" | bash -s -- --easy-mode
```

Windows（PowerShell）：

```powershell
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Dicklesworthstone/destructive_command_guard/main/install.ps1"))) -EasyMode -Verify
```

安裝腳本會自動偵測平台、下載對應二進位檔，並配置已安裝的 Agent Hook。

### 啟用更多保護

```toml
# ~/.config/dcg/config.toml
[packs]
enabled = [
    "database.postgresql",    # 攔截 DROP TABLE, TRUNCATE
    "kubernetes.kubectl",     # 攔截 kubectl delete namespace
    "cloud.aws",              # 攔截 aws ec2 terminate-instances
    "containers.docker",      # 攔截 docker system prune
]
```

### Agent 信任等級設定

```toml
# 信任 Claude Code 更多 — 更寬的白名單
[agents.claude-code]
trust_level = "high"
additional_allowlist = ["npm run build", "cargo test"]
disabled_packs = ["kubernetes"]

# 限制未知 Agent — 額外規則
[agents.unknown]
trust_level = "low"
extra_packs = ["strict_git", "database"]
disabled_allowlist = true
```

### 解釋為何被攔截

```bash
dcg explain "git reset --hard HEAD~5"
```

## 跟其他方案的關係

- **dcg vs [[NVIDIA-SkillSpector|SkillSpector]]**
SkillSpector 掃描 Skill 檔案中的安全漏洞（Prompt Injection、資料外洩），dcg 攔截 Agent 執行時的危險命令。兩者互補：靜態掃描 vs 動態攔截。
- **dcg vs [[mukul975-Anthropic-Cybersecurity-Skills|Cybersecurity Skills]]**
Cybersecurity Skills 是安全評估的 Agent Skill 集合，dcg 是跨 Agent 的命令守衛基礎設施。
- **dcg vs [[arthurpanhku-DocSentinel|DocSentinel]]**
DocSentinel 專注 SSDLC 安全評估流程，dcg 專注即時命令攔截，定位不同。

← [[prompt-security|Prompt Security]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[anthropics-claude-code|Claude Code]]

## 來源

- **GitHub**：https://github.com/Dicklesworthstone/destructive_command_guard
- **Raw README**：`raw/2026-07-16-Dicklesworthstone-destructive_command_guard.md`
- **語言**：Rust
- **License**：Custom (MIT-based with OpenAI/Anthropic rider)
- **作者**：Jeffrey Emanuel（原始概念 + Rust 擴展）、Darin Gordon（初始 Rust 移植）

---

| 項目 | 值 |
|------|-----|
| GitHub | Dicklesworthstone/destructive_command_guard |
| Stars | ⭐4.8k |
| License | Custom (MIT-based with AI rider) |
| Language | Rust |
| 收錄日期 | 2026-07-16 |
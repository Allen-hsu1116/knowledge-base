---
title: reverse-skill
slug: zhaoxuya520-reverse-skill
created: 2026-08-01
updated: 2026-08-01
stars: 10.8k
language: PowerShell
topics: cybersecurity, reverse-engineering, ai-skills, pentesting, ctf, llm-security
---

# reverse-skill

> ⭐10.8k · Cybersecurity Skills Router — 讓 AI Agent 遇到逆向工程、滲透測試、CTF 時不再瞎猜，自動路由到正確方法論和工具鏈

## 快速導航

- 🧠 **AI Skills 概念** → [[AI-Skills|AI Skills]]
- 🛡 **滲透測試概念** → [[pentesting|滲透測試]]
- 🧩 **Prompt 安全概念** → [[prompt-security|Prompt 安全與越獄]]

## 是什麼

reverse-skill 是一個專為 AI Agent 設計的資安技能路由包（Cybersecurity Skills Router）。當 Claude Code、Codex CLI、Cursor 等 AI Agent 遇到 APK 分析、二進位逆向、前端 JS 加密、CTF 挑戰或滲透測試目標時，這個套件會自動將任務路由到正確的方法論、檢查可用工具、並執行可重複的工作流程，而不是讓 AI 瞎猜指令。

它解決的核心問題是：AI Agent 不知道面對不同資安任務時該用 jadx、apktool、Frida、IDA 還是 BurpSuite。APK、ELF、JS、PCAP 和 CTF 各需要不同的 playbook，但工具、MCP 伺服器和腳本散落在各處，同樣的錯誤被重複犯下因為經驗沒有被重用。reverse-skill 把這些經驗整理成結構化的 Skill 路由系統，讓 AI Agent 可以像查字典一樣找到正確的做法。

整個系統遵循 `RULES.md → MASTER-ROUTING → case-init/scope.md → Scenario skill → tools/MCP/scripts → timeline + Evidence chain → report` 的流程，內建授權範圍門控（scope gate），確保 AI 在獲得適當授權前不會對目標採取行動。

## 核心特色

- **AI Agent 原生設計** — 有專門的 `README_AI.md` 讓 AI Agent 嚴格遵循，支援 Claude Code、Codex CLI、Cursor 等主流 Coding Agent
- **20+ 情境路由** — 涵蓋 APK 逆向、iOS 行動、二進位逆向（IDA/radare2/Ghidra）、.NET 逆向、前端 JS 反混淆、DSL VM、惡意軟體分析、滲透測試、攻擊鏈編排、CTF（40+ 子技能）、韌體/IoT、Patch diff、Pwn、EDR bypass、API/GraphQL、供應鏈安全、LLM/AI 安全等
- **Scope Gate 安全門控** — `RULES.md` 強制授權範圍檢查，AI 在 `scope.md` 確認授權和網路設定前不會對目標採取任何 ACT 動作
- **工具索引自動偵測** — `refresh-tool-index` 腳本掃描本地環境，自動生成 `tool-index.md` 列出已安裝的工具（jadx、Frida、nmap、BurpSuite 等），讓 AI 知道哪些工具可用
- **Evidence Chain 證據鏈** — 每個案例有 timeline、Evidence→Finding→Path 結構化記錄，確保調查過程可追溯、可重現
- **跨平台支援** — 提供 Windows (PowerShell)、Linux/macOS (Bash)、Kali Linux 三平台的工具索引和文檔
- **MCP 整合** — 支援透過 MCP 伺服器呼叫 burpsuite-mcp 等工具，與 AI Agent 的 MCP 生態系無縫接軌

## 怎麼用

### 前置需求

- **Java / JDK** — for jadx and apktool
- **Node.js 22.12+** — for JS toolchain and MCP servers
- **Python 3.x** — for Frida and helper scripts
- **AI Agent** — Claude Code, Codex CLI, Cursor 等

### 安裝

```bash
git clone https://github.com/zhaoxuya520/reverse-skill.git
```

### 初始化工具索引

```bash
# Linux / macOS
bash skills/scripts/refresh-tool-index.sh

# Windows
powershell -File skills/scripts/refresh-tool-index.ps1

# Kali Linux
bash kali/scripts/refresh-tool-index.sh
```

### AI Agent 使用

1. AI Agent 讀取 `README_AI.md` 並嚴格遵循指示
2. 遇到資安任務時，先查 `RULES.md` 全域路由規則
3. `MASTER-ROUTING.md` 提供快速路由階梯，決定進入哪個情境 Skill
4. `case-init` 建立案例目錄（scope / timeline / workitems）
5. 進入對應情境 Skill（如 `skills/apk-reverse/`），執行工具和腳本
6. 證據鏈記錄到 timeline，最終生成報告和 field-journal

## 跟其他方案的關係

| 方案 | 定位 | AI Agent 整合 | 情境覆蓋 | Scope Gate |
|------|------|--------------|---------|------------|
| **reverse-skill** | 資安 Skill 路由包 | ✅ 原生（README_AI.md） | 20+ 情境 | ✅ 強制 |
| [[mukul975-Anthropic-Cybersecurity-Skills\|Anthropic Cybersecurity Skills]] | 754 個網安 Skill | ✅ Claude Code | 5 框架對映 | ❌ |
| [[vxcontrol-pentagi\|PentAGI]] | 全自主 AI 滲透測試 | ✅ 多 Agent 委派 | 20+ 工具 | ✅ 沙箱 |
| [[usestrix-strix\|Strix]] | AI 駭客 Agent | ✅ LLM-Security | 動態 PoC | ✅ |
| [[shuvonsec-claude-bug-bounty\|BugHunter]] | Bug Bounty 獵蟲 | ✅ Claude Code | recon→report | ❌ |

reverse-skill 的獨特定位是「路由器」而非「執行者」——它不直接執行攻擊，而是告訴 AI Agent 該用什麼方法、什麼工具、按什麼順序做。這與 PentAGI（全自主執行）和 BugHunter（單一流程）形成互補：reverse-skill 可以作為上層路由，指揮這些工具按正確情境使用。

## 相關概念

← [[AI-Skills|AI Skills]] · [[pentesting|滲透測試]] · [[prompt-security|Prompt 安全與越獄]] · [[MCP]]

## 來源

- [GitHub: zhaoxuya520/reverse-skill](https://github.com/zhaoxuya520/reverse-skill)
- raw/2026-08-01-reverse-skill.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/zhaoxuya520/reverse-skill |
| **Stars** | ⭐10.8k |
| **License** | MIT (CTF-Sandbox-Orchestrator: GPLv3, Pentest Swarm AI: AGPL-3.0) |
| **Language** | PowerShell / Python / Bash |
| **收錄日期** | 2026-08-01 |
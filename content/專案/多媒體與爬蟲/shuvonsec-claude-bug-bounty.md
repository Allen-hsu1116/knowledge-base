---
title: BugHunter
slug: shuvonsec-claude-bug-bounty
created: 2026-06-13
updated: 2026-06-13
stars: 2757
language: Python
topics: [Bug Bounty, AI 獵蟲, 滲透測試, Claude Code, 免費離線]
---

# BugHunter

> ⭐2.8k · AI 驅動 Bug Bounty 獵蟲工具，recon → hunt → validate → report 全流程，免費也能跑

## 快速導航
[[pentesting|滲透測試]] · [[prompt-security|Prompt 安全]] · [[AI-Agent]] · [[Coding-Agent-CLI|Coding Agent CLI]]

## 是什麼

BugHunter（即 shuvonsec/claude-bug-bounty）是一個專業的 Bug Bounty 獵蟲工具包。它用 AI 驅動整個漏洞發現流程：從偵察（recon）、漏洞測試（hunt）、驗證（validate）到提交報告（report），全部在終端機完成。支援 HackerOne、Bugcrowd、Intigriti 和 Immunefi 四大平台。

最大特色是**不需要訂閱就能用**。除了作為 Claude Code plugin 外，BugHunter 也提供完全獨立的 CLI 模式（`bughunter` 指令），搭配免費 AI 供應商如 Ollama（100% 免費、離線）、Groq（免費 tier）、DeepSeek（極低成本）。它會自動偵測可用的 AI 供應商，按優先順序嘗試：Ollama → Groq → DeepSeek → Claude → OpenAI。

7-Question Gate 是 BugHunter 的核心驗證機制：在浪費時間寫報告之前，先用七個嚴格問題過濾掉弱發現。Session 記憶讓你隨時可以中斷再接續，上一個目標發現的模式會影響下一個目標的搜尋策略。

## 核心特色

- **全流程自動化**：recon → hunt → validate → report → autopilot 一鍵全跑
- **免費也能跑**：Ollama 離線模式 100% 免費，Groq 免費 tier 可用
- **7-Question Gate**：嚴格驗證機制，過濾掉弱發現才寫報告
- **Session 持久化**：中斷後可接續，跨目標模式記憶
- **Web3 支援**：智能合約 10 類審計 + Rug Pull 掃描
- **多平台報告**：自動生成 HackerOne / Bugcrowd / Intigriti / Immunefi 格式

## 怎麼用

**獨立模式安裝（免費，不需 Claude 訂閱）：**

```bash
git clone https://github.com/shuvonsec/claude-bug-bounty.git
cd claude-bug-bounty
./install.sh --agent standalone
```

**零成本完全離線設定：**

```bash
curl -fsSL https://ollama.ai/install.sh | sh
ollama pull qwen2.5:14b

./install.sh --agent standalone
bughunter setup       # 選 Ollama
bughunter recon target.com
```

**Claude Code 模式：**

```bash
git clone https://github.com/shuvonsec/claude-bug-bounty.git
cd claude-bug-bounty
chmod +x install_tools.sh && ./install_tools.sh
chmod +x install.sh && ./install.sh

# 在 Claude Code 中
/recon target.com
/hunt target.com
/validate
/report
/autopilot target.com
```

**核心指令：**

```bash
bughunter recon target.com        # 子域名枚舉 · 存活探測 · URL 爬取 · nuclei 掃描
bughunter hunt target.com         # 測試 IDOR · 認證繞過 · SSRF · XSS · SQLi
bughunter validate "my finding"   # 7-Question Gate
bughunter report                  # 生成提交報告
bughunter autopilot target.com    # 全自動循環
bughunter web3-audit contract.sol # 智能合約審計
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 免費模式 | AI 驅動 | Web3 | 自動報告 |
|------|-------|------|---------|---------|------|---------|
| **BugHunter** | ⭐2.8k | Bug Bounty 工具 | ✅ Ollama 離線 | ✅ | ✅ | ✅ H1/Bugcrowd/Intigriti/Immunefi |
| [[KeygraphHQ-shannon|Shannon]] | ⭐42.7k | 滲透測試 | 部分 | ❌ | ❌ | ❌ |
| [[BigBodyCobain-Shadowbroker|Shadowbroker]] | ⭐7.6k | OSINT | ✅ | ❌ | ❌ | ❌ |
| [[mukul975-Anthropic-Cybersecurity-Skills|Cybersecurity Skills]] | ⭐7.4k | 網安 Skills | ✅ | ✅ Claude | ❌ | ❌ |

## 相關概念
← [[pentesting|滲透測試]] · [[AI-Agent]] · [[Coding-Agent-CLI|Coding Agent CLI]]

## 來源

- GitHub: <https://github.com/shuvonsec/claude-bug-bounty>
- 原始 README: `raw/2026-06-13-shuvonsec-claude-bug-bounty.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [shuvonsec/claude-bug-bounty](https://github.com/shuvonsec/claude-bug-bounty) |
| Stars | ⭐2,757 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-13 |
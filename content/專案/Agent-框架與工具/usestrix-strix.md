---
title: Strix
slug: usestrix-strix
created: 2026-06-29
updated: 2026-06-29
stars: 26735
language: Python
topics:
  - ai-agent
  - cybersecurity
  - penetration-testing
  - llm-security
  - security-automation
  - bug-bounty
  - red-teaming
---

# Strix

> ⭐26.7k · 開源 AI 駭客 Agent，自動發現並修復你的應用漏洞，用真實 PoC 驗證而非誤報

## 快速導航

- 🔧 **Shannon** → [[KeygraphHQ-shannon|Shannon]]
- 🕷️ **Browser Use** → [[browser-use-browser-use|Browser Use]]
- 🛡️ **BugHunter** → [[shuvonsec-claude-bug-bounty|BugHunter]]
- 🤖 **AI Agent** → [[AI-Agent]]

## 是什麼

Strix 是一個開源的自主 AI Agent 安全測試平台，核心理念是「讓 AI Agent 像真正的駭客一樣行動」。它不只是做靜態程式碼掃描，而是實際動態執行你的程式碼、發現漏洞、並透過真實的概念驗證（PoC）來確認每個漏洞的可利用性。這意味著 Strix 回報的每一個漏洞都是經過實際驗證的，不會產生靜態分析工具常見的大量誤報。

Strix 專為開發者和安全團隊設計，目標是取代昂貴且耗時的人工滲透測試。它內建完整的駭客工具箱——HTTP Proxy、瀏覽器自動化、終端機環境、Python 執行環境、OSINT 偵察、程式碼分析——讓 AI Agent 能像真人安全研究員一樣操作。多個專業 Agent 可以組成團隊平行工作，互相協調、共享發現，大幅縮短安全測試的時間。

除了發現漏洞，Strix 還能自動產生修復建議和完整的合規報告，並可整合進 GitHub Actions CI/CD 管線，在程式碼合併前就攔截安全問題。它支援多種 LLM 後端（OpenAI、Anthropic、Google、本地模型等），使用者可以自由選擇 AI 模型。

## 核心特色

- **動態驗證非靜態掃描**：Strix 實際執行程式碼、發送請求、驗證漏洞可利用性，用真實 PoC 取代靜態分析的大量誤報
- **完整駭客工具箱**：內建 HTTP Proxy、多分頁瀏覽器自動化、互動式終端機、Python 執行環境、OSINT 偵察、靜/動態程式碼分析，Agent 不需要外部工具即可完成完整滲透測試流程
- **多 Agent 協作**：Graph of Agents 架構讓多個專業 Agent 平行攻擊不同資產和漏洞類型，互相協調共享發現，可大規模擴展測試覆蓋率
- **全方位漏洞偵測**：涵蓋存取控制（IDOR、權限提升）、注入攻擊（SQL/NoSQL/命令注入）、伺服器端（SSRF/XXE/反序列化）、客戶端（XSS/原型污染）、商業邏輯、認證、基礎設施等 7 大類漏洞
- **CI/CD 整合**：可加入 GitHub Actions，在每個 PR 自動掃描漏洞，阻止不安全程式碼進入生產環境
- **自動修復與報告**：發現漏洞後自動產生可合併的修復 PR 和合規報告，加速修復流程
- **多 LLM 支援**：透過 LiteLLM 支援 OpenAI、Anthropic、Google Vertex AI、Bedrock、Azure、Ollama 等所有主流模型，可 BYOK

## 怎麼用

```bash
# 安裝 Strix
curl -sSL https://strix.ai/install | bash

# 設定 LLM 提供者
export STRIX_LLM="openai/gpt-5.4"
export LLM_API_KEY="your-api-key"

# 掃描本地程式碼
strix --target ./app-directory

# 掃描 GitHub 倉庫
strix --target https://github.com/org/repo

# 黑盒 Web 應用測試
strix --target https://your-app.com

# 認證測試（灰盒）
strix --target https://your-app.com --instruction "Perform authenticated testing using credentials: user:pass"

# 非互動模式（適合 CI/CD）
strix -n --target https://your-app.com

# PR diff 範圍掃描
strix -n --target ./ --scan-mode quick --scope-mode diff --diff-base origin/main
```

GitHub Actions CI/CD 整合：

```yaml
name: strix-penetration-test
on:
  pull_request:
jobs:
  security-scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
        with:
          fetch-depth: 0
      - name: Install Strix
        run: curl -sSL https://strix.ai/install | bash
      - name: Run Strix
        env:
          STRIX_LLM: ${{ secrets.STRIX_LLM }}
          LLM_API_KEY: ${{ secrets.LLM_API_KEY }}
        run: strix -n -t ./ --scan-mode quick
```

## 跟其他方案的關係

| 方案 | Stars | 驗證方式 | 多 Agent | CI/CD | 特色 |
|------|-------|---------|---------|-------|------|
| **Strix** | ⭐26.7k | 動態 PoC | ✅ Graph of Agents | ✅ GitHub Actions | 開源、完整駭客工具箱 |
| [[KeygraphHQ-shannon\|Shannon]] | ⭐42.7k | 白箱分析 | 單 Agent | ❌ | 滲透測試、白箱安全 |
| [[shuvonsec-claude-bug-bounty\|BugHunter]] | ⭐2.8k | Claude Code 驅動 | 單 Agent | ❌ | 免費離線、Bug Bounty |
| [[browser-use-browser-use\|Browser Use]] | ⭐98k | 瀏覽器自動化 | 單 Agent | ❌ | 網頁互動、Rust 核心 |
| [[NVIDIA-SkillSpector\|SkillSpector]] | ⭐3.5k | 靜態掃描 | ❌ | ❌ | Skill 安全掃描 |

← [[KeygraphHQ-shannon|Shannon]] · [[shuvonsec-claude-bug-bounty|BugHunter]] · [[browser-use-browser-use|Browser Use]] · [[pentesting]]


## 相關概念

← [[KeygraphHQ-shannon]] · [[browser-use-browser-use]] · [[shuvonsec-claude-bug-bounty]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/usestrix/strix>
- 官網: <https://strix.ai>
- 文件: <https://docs.strix.ai>
- 原始 README: `raw/2026-06-29-usestrix-strix.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [usestrix/strix](https://github.com/usestrix/strix) |
| Stars | ⭐26,735 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-29 |
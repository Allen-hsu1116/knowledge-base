---
title: SkillSpector
slug: NVIDIA-SkillSpector
created: 2026-06-13
updated: 2026-06-13
stars: 3496
language: Python
---

# SkillSpector

> ⭐3.5k · AI Agent Skills 安全掃描器，64 種漏洞模式 x 16 大類，安裝 Skill 前先問它

快速導航：[[prompt-security|Prompt 安全]] · [[AI-Skills|AI Skills]] · [[cl4r1t4s|CL4R1T4S]] · [[pentesting|滲透測試]]

## 是什麼

SkillSpector 是 NVIDIA 出品的 AI Agent Skills 安全掃描器。隨著 AI coding agent（Claude Code、Codex CLI、Gemini CLI 等）大量使用第三方 skills，安全風險也隨之升高。研究顯示，**26.1% 的 skills 包含漏洞，5.2% 具有惡意意圖**。SkillSpector 幫你回答一個關鍵問題：「這個 skill 安全嗎？」

SkillSpector 採用兩階段分析架構：第一階段是快速靜態分析，掃描 64 種已知漏洞模式；第二階段是可選的 LLM 語義評估，利用 OpenAI/Anthropic/NVIDIA 等 LLM 進行深層語義理解，找出靜態分析無法捕捉的隱藏威脅。最終產出 0-100 的風險評分和分級建議。

它支援多種輸入格式（Git repo、URL、zip、目錄、單檔），並輸出多種格式（Terminal、JSON、Markdown、SARIF），方便整合進 CI/CD pipeline。SARIF 格式特別適合 IDE 和 GitHub Security 整合。

## 核心特色

- **64 種漏洞模式**：涵蓋 Prompt Injection、Data Exfiltration、Privilege Escalation、Supply Chain 等 16 大類
- **兩階段分析**：快速靜態掃描 + 可選 LLM 語義評估，兼顧速度與深度
- **即時漏洞查詢**：SC4 透過 OSV.dev 查詢即時 CVE 資料，自動離線降級
- **多格式輸出**：Terminal（預設）、JSON、Markdown、SARIF（CI/CD 整合）
- **風險評分**：0-100 評分 + CRITICAL/HIGH/MEDIUM/LOW 分級 + 明確建議
- **多 LLM 後端**：OpenAI、Anthropic、NVIDIA Build、本地 Ollama/vLLM 均可

## 怎麼用

**安裝：**

```bash
git clone https://github.com/NVIDIA/skillspector.git
cd skillspector

# 建立虛擬環境
uv venv .venv && source .venv/bin/activate
# 或: python3 -m venv .venv && source .venv/bin/activate

make install
```

**基本掃描：**

```bash
# 掃描本地目錄
skillspector scan ./my-skill/

# 掃描 Git repo
skillspector scan https://github.com/user/my-skill

# JSON 輸出（CI/CD）
skillspector scan ./my-skill/ --format json --output report.json

# SARIF 輸出（GitHub Security）
skillspector scan ./my-skill/ --format sarif --output report.sarif
```

**LLM 語義分析：**

```bash
export SKILLSPECTOR_PROVIDER=openai
export OPENAI_API_KEY=*** 
skillspector scan ./my-skill/

# 跳過 LLM 分析（更快，僅靜態）
skillspector scan ./my-skill/ --no-llm
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 漏洞模式 | LLM 評估 | SARIF |
|------|-------|------|---------|---------|-------|
| **SkillSpector** | ⭐3.5k | Skill 安全掃描 | 64 patterns | ✅ | ✅ |
| [[cl4r1t4s\|CL4R1T4S]] | — | Prompt 越獄研究 | Jailbreak 技術 | ❌ | ❌ |
| [[prompt-security\|Prompt 安全]] | — | 概念框架 | 安全風險分類 | — | — |
| [[mukul975-Anthropic-Cybersecurity-Skills\|Cybersecurity Skills]] | ⭐7.4k | Agent 網安 Skills | MITRE ATT&CK | ❌ | ❌ |

← [[prompt-security|Prompt 安全]] · [[AI-Skills|AI Skills]] · [[cl4r1t4s|CL4R1T4S]]

## 來源

- GitHub: <https://github.com/NVIDIA/SkillSpector>
- 原始 README: `raw/2026-06-13-NVIDIA-SkillSpector.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [NVIDIA/SkillSpector](https://github.com/NVIDIA/SkillSpector) |
| Stars | ⭐3,496 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-13 |
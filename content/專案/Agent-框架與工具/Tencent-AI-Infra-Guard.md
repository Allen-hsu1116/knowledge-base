---
title: AI-Infra-Guard
slug: Tencent-AI-Infra-Guard
created: 2026-08-21
updated: 2026-08-21
stars: 4967
language: Python
topics:
  - ai-security
  - ai-red-teaming
  - agent-security
  - prompt-injection
  - mcp-scan
  - skill-scanner
---

# AI-Infra-Guard

> ⭐5.0k · 騰訊朱雀實驗室開源的全棧 AI 紅隊平台，統一掃描 Agent、Skills、MCP、AI 基礎設施與 LLM 越獄風險。

## 快速導航

- 🛡️ **Prompt 安全與越獄** → [[prompt-security]]
- 🔌 **MCP** → [[MCP]]
- 🧰 **AI Skills** → [[AI-Skills]]
- 🧪 **滲透測試** → [[pentesting]]

## 是什麼

AI-Infra-Guard（A.I.G）是騰訊朱雀實驗室建立的 AI red teaming 平台，將傳統 AI 基礎設施漏洞掃描與新型 Agent 攻擊面放到同一個操作介面。它涵蓋 OpenClaw/Agent Scan、Skill Scan、MCP Scan、已知 CVE 掃描、越獄評估及模型/API relay 檢查。

平台可掃描運行中的 Ollama、vLLM、ComfyUI、n8n、Triton 等服務，也能以原始碼或遠端 URL 檢查 MCP Server 與 Agent Skill。README 表示漏洞庫涵蓋超過 100 種元件及 2,000+ CVE 規則。

它適合企業內網或個人安全自檢，但目前服務本身缺乏完整驗證機制，不應直接暴露於公開網路。掃描結果也應視為風險線索，而非取代人工審查與正式滲透測試。

## 核心特色

- **全棧攻擊面**：涵蓋 Agent、Skill、MCP、LLM jailbreak、模型 relay 與 AI infra。
- **Skill 九類風險**：檢查指令劫持、記憶污染、惡意程式、權限提升、持久化與依賴風險。
- **MCP 安全掃描**：偵測 tool poisoning、credential exfiltration、command injection 與動態工具風險。
- **CVE 規則庫**：辨識 AI 服務元件版本並比對 2,000+ 已知漏洞規則。
- **越獄評估**：支援單輪與 Many-Shot、PAIR、GOAT、ActorAttack 等多輪攻擊法。
- **多種入口**：Web UI、Docker、HTTP API、獨立 CLI 與可供 Agent 呼叫的 Skill。

## 怎麼用

以預建 Docker images 啟動完整 Web 平台：

```bash
git clone https://github.com/Tencent/AI-Infra-Guard.git
cd AI-Infra-Guard
docker compose -f docker-compose.images.yml up -d
```

啟動後開啟 `http://localhost:8088`。若只想在 CI 檢查 Agent Skill，可安裝獨立掃描器：

```bash
pip install aig-skill-scan
export LLM_API_KEY="your-api-key"
aig-skill-scan --repo /path/to/skill -m deepseek-v4-flash -o result.json
```

請只在授權範圍內掃描目標，並把平台部署在受控網路；正式導入前還需檢查模型 API 金鑰、掃描資料與報告的保存方式。

## 跟其他方案的關係

| 方案 | 定位 | 掃描範圍 | 適合情境 |
|------|------|----------|----------|
| AI-Infra-Guard | 全棧 AI 紅隊平台 | Agent、Skill、MCP、Infra、Jailbreak | 需要統一 Web/API 平台 |
| [[NVIDIA-SkillSpector\|SkillSpector]] | Skill 靜態安全掃描 | Prompt injection、外洩與程式風險 | 專注 Skill 供應鏈檢查 |
| [[promptfoo-promptfoo\|Promptfoo]] | LLM 評測與紅隊 | Prompt、模型與應用行為 | CI/CD 模型品質與安全測試 |
| [[Dicklesworthstone-destructive_command_guard\|dcg]] | 執行期命令守衛 | 危險 shell command | 在 Agent 執行邊界即時攔截 |

A.I.G 偏向主動發現與評估，dcg 偏向執行期阻擋；兩者可以互補。與 Promptfoo 相比，A.I.G 特別強調 MCP、Skill 與 AI 基礎設施元件的綜合攻擊面。

## 相關概念

← [[prompt-security]] · [[MCP]] · [[AI-Skills]] · [[pentesting]]

## 來源

- [GitHub：Tencent/AI-Infra-Guard](https://github.com/Tencent/AI-Infra-Guard)
- 原始 README 與 metadata：`raw/2026-08-21-Tencent-AI-Infra-Guard.md`
- [官方文件](https://tencent.github.io/AI-Infra-Guard/)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Tencent/AI-Infra-Guard |
| Stars | ⭐4,967 |
| License | Apache-2.0（含 NOTICE 與產品歸屬要求） |
| Language | Python |
| 收錄日期 | 2026-08-21 |

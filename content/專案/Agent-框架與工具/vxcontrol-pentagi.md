---
title: PentAGI
slug: vxcontrol-pentagi
created: 2026-07-10
updated: 2026-07-10
stars: 19.4k
language: Go
topics: ai-agents, ai-security-tool, autonomous-agents, penetration-testing, multi-agent-system, security-automation, self-hosted
---

# PentAGI

> ⭐19.4k · 全自主 AI Agent 滲透測試系統，在沙箱中自動規劃並執行複雜的資安測試任務

## 快速導航

- 🔒 **滲透測試** → [[pentesting]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🧠 **AI Skills** → [[AI-Skills]]

## 是什麼

PentAGI（Penetration testing Artificial General Intelligence）是一個開源的自动化安全測試平台，利用 AI Agent 技術來執行複雜的滲透測試任務。它不只是一個工具集合，而是一個完整的多 Agent 系統——AI 自主決定測試步驟、執行攻擊鏈、分析結果並生成詳細報告。

所有操作都在沙箱化的 Docker 環境中執行，確保完全隔離。系統內建 20+ 專業安全工具（nmap、metasploit、sqlmap 等），AI Agent 會根據任務需求自動選擇和組合這些工具。透過 Graphiti 知識圖譜和 Neo4j，PentAGI 能追蹤語意關聯，理解複雜的攻擊上下文。

PentAGI 支援 10+ 種 LLM 提供者（OpenAI、Anthropic、Gemini、Ollama、DeepSeek、GLM、Kimi、Qwen 等），可以完全自架部署。這讓資安團隊在保持資料主控權的同時，獲得 AI 驅動的自動化測試能力。

## 核心特色

- **全自主多 Agent 系統**：Orchestrator 協調全域流程，Researcher 分析目標，Developer 建構腳本和漏洞利用，Executor 在沙箱中執行——每個角色專注於自己的領域，透過委派系統協作完成複雜任務
- **沙箱隔離執行**：所有操作在隔離的 Docker 容器中執行，Smart Container Management 根據任務需求自動選擇適當的 Docker 映像檔，確保安全性和靈活性
- **知識圖譜整合**：Graphiti + Neo4j 提供語意關聯追蹤和上下文理解，Smart Memory System 長期儲存研究成果和成功方法，讓 AI 從過去經驗中學習
- **20+ 專業安全工具**：內建 nmap、metasploit、sqlmap 等業界標準工具，AI Agent 自動選擇和組合使用，無需手動切換
- **全方位監控**：Grafana/Prometheus 即時系統監控、Langfuse LLM 可觀測性、Jaeger 分散式追蹤、Loki 日誌聚合——完整的可觀測性技術棧
- **REST + GraphQL API**：Bearer Token 認證的完整 API，支援自動化和整合場景
- **自架部署**：Docker Compose 一鍵部署，PostgreSQL + pgvector 持久儲存，微服務架構支援水平擴展

## 怎麼用

### 快速部署

```bash
git clone https://github.com/vxcontrol/pentagi.git
cd pentagi
cp .env.example .env
# 在 .env 中設定 LLM 提供者
# 例如 OpenAI: OPENAI_API_KEY=sk-...
# 或 Ollama: OLLAMA_HOST=http://localhost:11434
docker compose up -d
```

### 使用流程

1. 開啟 Web UI（預設 http://localhost:8080）
2. 建立新的 Flow，設定目標和參數
3. AI Agent 自動規劃測試步驟並執行
4. 即時監控執行進度
5. 下載漏洞報告（Web / Markdown / PDF）

### LLM 提供者設定

支援 OpenAI、Anthropic、Google Gemini、AWS Bedrock、Ollama、DeepSeek、GLM、Kimi、Qwen，以及 OpenRouter、DeepInfra 等聚合器。透過 `.env` 配置即可切換。

## 跟其他方案的關係

| 方案 | 類型 | 自主程度 | 自架 | 語言 |
|------|------|----------|------|------|
| **PentAGI** | 多 Agent 滲透測試 | 全自主 | ✅ | Go |
| [[usestrix-strix\|Strix]] | AI 駭客 Agent | 半自主 | ✅ | Python |
| 傳統 Pentest 工具 | 手動工具集合 | 手動 | N/A | 多種 |

PentAGI 與 [[pentesting|滲透測試]] 概念直接相關，代表了 AI Agent 在資安領域的實際應用。與 [[usestrix-strix|Strix]] 相比，PentAGI 更強調多 Agent 委派和知識圖譜整合，而 Strix 著重於動態 PoC 驗證和 CI/CD 整合。兩者都是 [[AI-Agent|AI Agent]] 在安全領域的具體實踐。

← [[pentesting]] · [[AI-Agent]] · [[AI-Skills]]

## 來源

- GitHub: https://github.com/vxcontrol/pentagi
- Homepage: https://pentagi.com
- raw/2026-07-10-vxcontrol-pentagi.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/vxcontrol/pentagi |
| **Stars** | ⭐19,402 |
| **License** | MIT |
| **Language** | Go |
| **收錄日期** | 2026-07-10 |
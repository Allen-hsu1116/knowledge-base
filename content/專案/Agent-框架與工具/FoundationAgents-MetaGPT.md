---
title: MetaGPT
slug: FoundationAgents-MetaGPT
created: 2026-06-27
updated: 2026-06-27
stars: 69060
language: Python
topics:
  - llm
  - multi-agent
  - agent
  - metagpt
---

# MetaGPT

> ⭐69k · 多 Agent 框架，用自然語言編程的「第一家 AI 軟體公司」

快速導航：[[LangChain]] · [[CrewAI]] · [[AutoGen]] · [[LLM]]

## 是什麼

MetaGPT 是一個多 Agent 協作框架，核心哲學是 `Code = SOP(Team)`——將標準作業流程（SOP）應用於由 LLM 組成的團隊。它接受一行需求作為輸入，然後輸出用戶故事、競爭分析、需求文檔、資料結構、API 設計等完整的軟體工程產物。

框架內部模擬了一家軟體公司的組織架構，包含產品經理、架構師、專案經理、工程師等角色。每個角色由 LLM 驅動，按照預定義的 SOP 進行協作，從需求分析到架構設計再到代碼實現，形成完整的軟體開發流程。

MetaGPT 的商業化產品 MGX（MetaGPT X）於 2025 年 2 月發布，定位為「世界第一個 AI Agent 開發團隊」，並獲得 Product Hunt 當週第一名。其學術論文發表於 ICLR 2024，AFlow 論文更獲得 ICLR 2025 口頭報告（top 1.8%），在 LLM-based Agent 領域排名第二。

## 核心特色

- **軟體公司模擬**：內建產品經理、架構師、專案經理、工程師等角色，按 SOP 協作完成完整軟體開發流程
- **一行需求 → 完整專案**：輸入簡單需求，自動生成用戶故事、競爭分析、需求文檔、API、代碼
- **Data Interpreter**：內建數據分析角色，可自動撰寫代碼進行數據分析和視覺化
- **多種使用方式**：CLI 命令行、Python 庫嵌入、HuggingFace Space 線上試用
- **學術研究支撑**：ICLR 2024 發表，AFlow 獲 ICLR 2025 口頭報告，SPO/AOT 等後續研究
- **MGX 商業化**：MetaGPT X 產品提供自然語言編程的完整 AI 開發團隊體驗
- **多 LLM 支援**：OpenAI、Azure、Ollama、Groq 等多種 LLM 後端

## 怎麼用

```bash
# 安裝
pip install --upgrade metagpt

# 初始化配置
metagpt --init-config
# 編輯 ~/.metagpt/config2.yaml 設定 LLM API

# 用一行需求生成完整專案
metagpt "Create a 2048 game"
# 會在 ./workspace 目錄生成完整的專案結構
```

```python
# 作為 Python 庫使用
from metagpt.software_company import generate_repo
from metagpt.utils.project_repo import ProjectRepo

repo = generate_repo("Create a 2048 game")
print(repo)  # 輸出專案結構

# 使用 Data Interpreter
import asyncio
from metagpt.roles.di.data_interpreter import DataInterpreter

async def main():
    di = DataInterpreter()
    await di.run("Run data analysis on sklearn Iris dataset, include a plot")

asyncio.run(main())
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **MetaGPT** | ⭐69k | 多 Agent 框架 | 軟體公司角色模擬 | SOP 驅動協作 |
| [[CrewAI]] | ⭐51k | 多 Agent 框架 | 角色分工協作 | 輕量易用 |
| [[AutoGen]] | ⭐59k | 多 Agent 框架 | AgentChat | 微軟出品，維護模式 |
| [[LangChain]] | ⭐137k | LLM 框架 | 全面生態 | RAG + Agent |
| [[OpenHands-OpenHands|OpenHands]] | ⭐77.4k | Coding Agent | ACP 協議 | 全自動化工作流 |

← [[LangChain]] · [[CrewAI]] · [[AutoGen]] · [[LLM]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/FoundationAgents/MetaGPT>
- 原始 README: `raw/2026-06-27-FoundationAgents-MetaGPT.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [FoundationAgents/MetaGPT](https://github.com/FoundationAgents/MetaGPT) |
| Stars | ⭐69,060 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-27 |
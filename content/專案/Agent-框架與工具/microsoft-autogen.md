---
title: AutoGen
slug: microsoft-autogen
created: 2023-08-18
updated: 2026-06-17
stars: 59010
language: Python
topics: [agentic, agents, ai, autogen, framework, llm-agent, llm-framework, multi-agent]
---

# AutoGen

> ⭐59010 · 微軟開源的多 Agent 框架，支援自主 AI 應用開發（⚠️ 已進入維護模式，建議改用 Microsoft Agent Framework）

## 快速導航

[[AI-Agent|AI Agent]] · [[workflow-automation|Agent 工作流]] · [[LangChain|LangChain]]

## 是什麼

AutoGen 是微軟研究院開發的多 Agent AI 框架，讓開發者能建立多個 AI Agent 協作或自主運作的應用。它是最早開創多 Agent 編排模式的开源框架之一，啟發了整個社群對多 Agent 系統的探索。

框架採用分層設計：Core API 負責訊息傳遞和事件驅動的 Agent 運行時；AgentChat API 在 Core 之上提供更簡潔的高階介面，適合快速原型開發；Extensions API 則整合 OpenAI、Azure 等特定 LLM 客戶端和程式碼執行能力。此外還有 AutoGen Studio（無程式碼 GUI）和 AutoGen Bench（評測套件）兩個開發者工具。

⚠️ 重要提醒：AutoGen 已進入維護模式（Maintenance Mode），不會再收到新功能或增強。微軟建議新專案改用 Microsoft Agent Framework（MAF），現有用戶可參考官方遷移指南。

## 核心特色

- **多 Agent 編排**：支援兩 Agent 對話、群組對話、AgentTool 委派等多種編排模式
- **MCP Server 整合**：可直接連接 Playwright 等 MCP Server，讓 Agent 具備網頁瀏覽等工具能力
- **分層架構**：Core API（底層訊息傳遞）→ AgentChat API（高階對話）→ Extensions（第三方整合）
- **AutoGen Studio**：無程式碼 GUI，可視化建構和測試多 Agent 工作流
- **Magentic-One**：內建的最先進多 Agent 團隊，可處理網頁瀏覽、程式碼執行、檔案操作等複雜任務
- **跨語言支援**：Core API 同時支援 Python 和 .NET

## 怎麼用

```bash
# 安裝 AgentChat 和 OpenAI 擴展
pip install -U "autogen-agentchat" "autogen-ext[openai]"

# 安裝 AutoGen Studio（無程式碼 GUI）
pip install -U "autogenstudio"

# 啟動 AutoGen Studio
autogenstudio ui --port 8080 --appdir ./my-app
```

```python
# 基本範例：Hello World
import asyncio
from autogen_agentchat.agents import AssistantAgent
from autogen_ext.models.openai import OpenAIChatCompletionClient

async def main():
    model_client = OpenAIChatCompletionClient(model="gpt-4.1")
    agent = AssistantAgent("assistant", model_client=model_client)
    print(await agent.run(task="Say 'Hello World!'"))
    await model_client.close()

asyncio.run(main())
```

## 跟其他方案的關係

| 方案 | 類型 | 維護狀態 | 多 Agent | 視覺化 | 適用場景 |
|------|------|---------|---------|--------|----------|
| [[microsoft-autogen|AutoGen]] | 多 Agent 框架 | ⚠️ 維護模式 | ✅ 群組對話+委派 | ✅ Studio | 已有專案維護 |
| [[OpenHands-OpenHands|OpenHands]] | Agent 控制中心 | ✅ 活躍 | ✅ ACP 協議 | ✅ Canvas | 開發團隊管理 |
| [[langgenius-dify|Dify]] | LLM App 平台 | ✅ 活躍 | ✅ 內建 | ✅ 視覺化 | LLM 應用開發 |
| [[FlowiseAI-Flowise|Flowise]] | 視覺化 Agent 建構 | ✅ 活躍 | ⚠️ 有限 | ✅ 拖曳式 | 快速原型開發 |
| Microsoft Agent Framework | Agent 框架 | ✅ 新版 | ✅ 企業級 | ❌ | 新專案推薦 |

## 相關概念

← [[AI-Agent]] · [[workflow-automation]] · [[LangChain]]

## 來源

- GitHub：https://github.com/microsoft/autogen
- 官方文件：https://microsoft.github.io/autogen/
- 遷移指南：https://learn.microsoft.com/en-us/agent-framework/migration-guide/from-autogen/
- Raw 檔案：`knowledge-base/raw/2026-06-17-microsoft-autogen.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/microsoft/autogen |
| Stars | ⭐59010|
| License | CC-BY-4.0 (文件) / MIT (程式碼) |
| 收錄日期 | 2023-08-18 |

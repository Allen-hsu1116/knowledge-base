---
title: CrewAI
slug: CrewAI
created: 2026-05-10
updated: 2026-05-10
stars: 51,031
language: zh-TW
topics: [AI Agent, 多 Agent 協作]
---

# CrewAI

> ⭐51031 · 多 Agent 協作框架，讓 AI Agent 以角色扮演方式團隊合作。51K ⭐。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（CrewAI 是多 Agent 協作的代表框架）
- 🔄 **Agent 自演化** → [[EvoMap-evolver]]（CrewAI 的角色分工與自演化互補）

## 是什麼


CrewAI 是 Python 多 Agent 協作框架，讓多個 AI Agent 各自扮演不同角色，組成「Crew」團隊分工完成複雜任務。

它完全獨立於 LangChain，從底層重寫，提供高層簡潔性和低層精細控制。51K+ stars，是 2023-2024 年最受歡迎的 Agent 框架之一，擁有 100K+ 開發者認證體系。

## 核心特色

- **Crew**：多 Agent 組成的團隊，自主協作，可設定流程（sequential、hierarchical、custom）
- **Flows**：企業級事件驅動架構，精細控制任務流程，支援分支、並行、條件判斷
- **Agent 角色扮演**：每個 Agent 有角色（Role）、目標（Goal）、工具（Tools），可自定義 backstory
- **記憶系統**：短期記憶、長期記憶、實體記憶，讓 Agent 在多輪任務中保持上下文
- **Human Input**：支援人類在迴圈中即時介入和確認
- **100K+ 開發者認證**：社群課程和認證體系，活躍社群
- **AMP Suite**：企業版控制面板，監控、安全、整合、審計日誌
- **工具生態**：內建搜尋、瀏覽器、程式碼執行等工具，支援 MCP 整合

## 怎麼用

```bash
pip install crewai
# 或使用 crewai 命令列工具建立專案
crewai create crew my-project
```

```python
from crewai import Agent, Task, Crew, Process

researcher = Agent(
    role="Researcher",
    goal="Find information about {topic}",
    backstory="You are an expert researcher...",
    llm="gpt-4",
    tools=[search_tool, scrape_tool],
)

writer = Agent(
    role="Writer",
    goal="Write an article about {topic}",
    backstory="You are a skilled writer...",
    llm="gpt-4",
)

task1 = Task(description="Research topic X", agent=researcher)
task2 = Task(description="Write about X based on research", agent=writer)

crew = Crew(
    agents=[researcher, writer],
    tasks=[task1, task2],
    process=Process.sequential,  # 或 Process.hierarchical
)
result = crew.kickoff(inputs={"topic": "AI Agents"})
```

## 跟其他方案的關係

| 專案 | 定位 | Agent 數量 | 流程控制 | 記憶 |
|------|------|-----------|---------|------|
| CrewAI | 多 Agent 協作 | 多 | Flows 事件驅動 | ✅ 短期+長期 |
| [[LangChain]] | LLM 應用框架 | 單/多 | Chain/Agent 編排 | ✅ |
| [[AutoGPT]] | 自主 Agent | 單 | 自主規劃 | ✅ 向量DB |
| [[AI-Agent]] | 概念頁 | — | — | — |
| [[openclaw|OpenClaw]] | 個人助手 | 單+子Agent | Cron + Skills | ✅ MEMORY.md |

CrewAI 之後，Agent 框架從「讓 LLM 自己跑」演進到「讓多個 LLM 角色分工合作」——如 CrewAI 的角色分工、Flows 的流程控制。

## 相關概念

← [[AI-Agent]] · [[LLM]] · [[EvoMap-evolver]]

## 來源

- [GitHub：專案原始碼](https://github.com/crewAIInc/crewAI)
- raw/2026-05-10-crewai.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/crewAIInc/crewAI |
| Stars | ⭐51031|
| License | MIT |
| 收錄日期 | 2026-05-10 |

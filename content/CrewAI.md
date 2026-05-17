# CrewAI

> 多 Agent 協作框架，讓 AI Agent 以角色扮演方式團隊合作。51K ⭐。

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（CrewAI 是多 Agent 協作的代表框架）
- 🔄 **Agent 自演化** → [[EvoMap-evolver]]（CrewAI 的角色分工與自演化互補）

## 是什麼

CrewAI 是 Python 多 Agent 協作框架，讓多個 AI Agent 各自扮演不同角色，組成「Crew」團隊分工完成複雜任務。它完全獨立於 LangChain，從底層重寫，提供高層簡潔性和低層精細控制。

## 核心特色

- **Crew**：多 Agent 組成的團隊，自主協作
- **Flows**：企業級事件驅動架構，精細控制任務流程
- **Agent 角色扮演**：每個 Agent 有角色、目標、工具
- **100K+ 開發者認證**：社群課程和認證體系
- **AMP Suite**：企業版控制面板，監控、安全、整合

## 怎麼用

```bash
pip install crewai
```

```python
from crewai import Agent, Task, Crew

researcher = Agent(role="Researcher", goal="Find information", backstory="...", llm="gpt-4")
writer = Agent(role="Writer", goal="Write article", backstory="...", llm="gpt-4")

task1 = Task(description="Research topic X", agent=researcher)
task2 = Task(description="Write about X", agent=writer)

crew = Crew(agents=[researcher, writer], tasks=[task1, task2])
result = crew.kickoff()
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[LangChain]] | LLM 應用框架 | CrewAI 完全獨立，專注多 Agent 角色分工 |
| [[AutoGPT]] | 自主 Agent | AutoGPT 是單 Agent 自主，CrewAI 是多 Agent 協作 |
| [[AI-Agent]] | 概念頁 | CrewAI 是多 Agent 協作的代表性實作 |

## 相關概念
← [[AI-Agent]] · [[LLM]]

## 來源
- raw/2026-05-10-crewai.md

---

- **GitHub**: https://github.com/crewAIInc/crewAI
- **Stars**: ⭐51,031
- **License**: MIT
- **收錄日期**: 2026-05-10
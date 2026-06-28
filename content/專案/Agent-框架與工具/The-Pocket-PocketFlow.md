---
title: Pocket Flow
slug: The-Pocket-PocketFlow
created: 2026-06-28
updated: 2026-06-28
stars: 10882
language: Python
topics:
  - llm-framework
  - llm-agent
  - agentic-workflow
  - ai-framework
  - flow-engineering
  - retrieval-augmented-generation
  - workflow-orchestration
---

# Pocket Flow

> ⭐10.9k · 100 行的極簡 LLM 框架，零依賴零廠商綁定，讓 AI Agent 幫你建 Agent

## 快速導航
- 🧠 **LangChain** → [[LangChain]]
- 🤖 **CrewAI** → [[CrewAI]]
- 🔧 **AutoGen** → [[microsoft-autogen|AutoGen]]

## 是什麼

Pocket Flow 是一個只有 100 行程式碼的極簡 LLM 框架，核心理念是「你只需要 100 行就能做出 LLM 框架」。它不提供任何應用特定的封裝（如 QA、摘要工具）或廠商特定的封裝（如 OpenAI、Pinecone 整合），只保留 LLM 框架最核心的抽象——Graph（圖）。

與動輒數萬行的主流框架（LangChain 405K 行、CrewAI 18K 行、LangGraph 37K 行）相比，Pocket Flow 用 100 行捕捉了 LLM 框架的本質：將節點（Node）串成圖（Graph），透過行動（Action）決定下一步流向。從這個核心抽象出發，可以實作 Agent、多 Agent、Workflow、RAG 等所有常見設計模式。

Pocket Flow 特別強調「Agentic Coding」——讓 AI Agent（如 Cursor）來建構 Agent。因為框架本身極簡，AI Agent 能完全理解 100 行程式碼，進而在此基礎上建構複雜的 Agent 系統。框架已有多語言版本：TypeScript、Java、C++、Go、Rust、PHP。

## 核心特色

- **100 行核心**：整個框架只有 100 行 Python，零依賴、零廠商綁定，安裝只需 `pip install pocketflow` 或直接複製原始碼
- **Graph 核心抽象**：用節點（Node）和行動（Action）構建圖，從圖出發實作所有設計模式
- **零封裝**：不提供應用特定或廠商特定的封裝，使用者自行組合，最大化靈活性
- **Agentic Coding**：設計上讓 AI Agent 能完全理解框架程式碼，進而建構複雜 Agent 系統
- **多設計模式**：支援 Agent、Multi-Agent、Workflow、RAG、Map-Reduce 等常見模式
- **多語言版本**：TypeScript、Java、C++、Go、Rust、PHP 六種語言實作
- **極小安裝體積**：+56KB，對比 LangChain +166MB、CrewAI +173MB

## 怎麼用

```bash
# 安裝
pip install pocketflow

# 或直接複製 100 行原始碼
# https://github.com/The-Pocket/PocketFlow/blob/main/pocketflow/__init__.py
```

```python
from pocketflow import Node, Flow

class AnswerNode(Node):
    def prep(self, shared):
        return shared["question"]
    
    def exec(self, question):
        # 呼叫你的 LLM
        return llm(f"Answer: {question}")
    
    def post(self, shared, prep_res, exec_res):
        shared["answer"] = exec_res

class DecideAction(Node):
    def post(self, shared, prep_res, exec_res):
        # 根據結果決定下一步
        return "search" if needs_more else "answer"

# 用圖串起節點
flow = Flow(start=DecideAction())
# 參考文件：https://the-pocket.github.io/PocketFlow/
```

## 跟其他方案的關係

| 方案 | Stars | 行數 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **Pocket Flow** | ⭐10.9k | 100 | 零依賴 | Agentic Coding |
| [[LangChain]] | ⭐137k | 405K | 全面生態 | 大量封裝 |
| [[CrewAI]] | ⭐51k | 18K | 角色分工 | 易用 |
| [[microsoft-autogen\|AutoGen]] | ⭐59k | 7K | AgentChat | 微軟出品 |
| LangGraph | ⭐37k | 37K | Graph 狀態機 | 精細控制 |

← [[LangChain]] · [[CrewAI]] · [[microsoft-autogen|AutoGen]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/The-Pocket/PocketFlow>
- 原始 README: `raw/2026-06-28-The-Pocket-PocketFlow.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [The-Pocket/PocketFlow](https://github.com/The-Pocket/PocketFlow) |
| Stars | ⭐10,882 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-28 |
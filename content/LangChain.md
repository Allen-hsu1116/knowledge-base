# LangChain

> LLM 應用開發框架，串接各種組件和第三方整合，簡化 AI 應用開發。136K ⭐。

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（LangChain 是 Agent 開發的主流框架之一）
- 📚 **RAG** → [[rag]]（LangChain 內建 RAG 管線支援）
- 🧠 **LLM** → [[LLM]]（LangChain 是 LLM 應用的膠水層）

## 是什麼

LangChain 是 LLM 應用開發的事實標準框架，提供 Chain、Agent、RAG 等抽象層，讓開發者用統一介面串接 LLM、工具、資料來源和第三方服務。它降低了建構 LLM 應用的門檻，是 AI Agent 生態的基礎設施之一。

## 核心特色

- **Chain**：串接多個 LLM 呼叫和工具，形成處理管線
- **Agent**：讓 LLM 自主決定使用哪些工具（ReAct 模式）
- **RAG**：內建檢索增強生成管線
- **100+ 整合**：OpenAI、Anthropic、HuggingFace、各種向量資料庫等
- **LangGraph**：低階 Agent 工作流框架，支援循環和狀態機
- **LangSmith**：Agent 監控、除錯、評測平台

## 怎麼用

```bash
pip install langchain
```

```python
from langchain.chat_models import init_chat_model

model = init_chat_model("openai:gpt-5.4")
result = model.invoke("Hello, world!")
```

進階 Agent 工作流使用 LangGraph：
```bash
pip install langgraph
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[CrewAI]] | 多 Agent 協作 | CrewAI 完全獨立於 LangChain，專注角色分工 |
| [[AutoGPT]] | 自主 Agent | LangChain 更偏工具串接，AutoGPT 更偏自主規劃 |
| [[litellm]] | LLM Gateway | LangChain 可用 LiteLLM 統一呼叫多模型 |
| [[huggingface-transformers]] | 模型框架 | LangChain 底層可用 HuggingFace 模型 |
| [[Chroma]] / [[Qdrant]] / [[Milvus]] | 向量資料庫 | LangChain 內建這些向量資料庫的整合 |

## 相關概念
← [[AI-Agent]] · [[LLM]] · [[rag]]

## 來源
- raw/2026-05-10-langchain.md

---

- **GitHub**: https://github.com/langchain-ai/langchain
- **Stars**: ⭐136,262
- **License**: MIT
- **收錄日期**: 2026-05-10
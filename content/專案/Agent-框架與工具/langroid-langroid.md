---
title: Langroid
slug: langroid-langroid
created: 2026-08-16
updated: 2026-08-16
stars: 4099
language: Python
topics: [agents, ai, llm, llm-agent, llm-framework, multi-agent-systems, rag, function-calling, local-llm]
---

# Langroid

> ⭐4099 · 來自 CMU 和 UW-Madison 研究者的輕量級多 Agent Python 框架，Actor 模型啟發的 Agent 協作

## 快速導航


- 🤖 **Agent 框架** → [[CrewAI]] · [[microsoft-autogen]] · [[LangChain]]
- 🔍 **RAG** → [[rag]] · [[langgenius-dify]]

## 是什麼

Langroid 是一個直覺、輕量、可擴展且有原則的 Python 框架，用於輕鬆建構 LLM 驅動的應用。它由 CMU 和 UW-Madison 的研究者開發，採用多 Agent 範式——你設定 Agent，為它們配備可選元件（LLM、向量庫、工具/函數），分配任務，讓它們透過交換訊息協作解決問題。這個多 Agent 範式受到 Actor Framework 的啟發。

Langroid 是 LLM 應用開發的全新視角，開發者體驗經過深思熟慮的簡化。它不使用 Langchain 或任何其他 LLM 框架，與幾乎任何 LLM 搭配使用（包括透過 Ollama 的本地 LLM）。框架提供 ChatAgent、Task 抽象、DocChatAgent（RAG）、SQLChatAgent 等核心元件，以及 MCP 工具轉接器、多模態支援（PDF/圖片輸入）和 Claude Code 插件。

在生產環境中，Nullify 使用 Langroid 的多 Agent 編排框架進行安全軟體開發，在評估 CrewAI、AutoGen、LangChain、Langflow 後選擇了 Langroid，認為它在設定簡易度和靈活性方面遠超其他框架。

## 核心特色

- **Actor 模型啟發的多 Agent**：Agent 透過訊息交換協作，Task 抽象支援互動迴圈和子任務委派
- **不依賴 Langchain**：完全獨立的框架，與幾乎任何 LLM 搭配（OpenAI、Ollama、LiteLLM 等）
- **MCP 工具轉接器**：將 MCP 伺服器的工具轉換為 Langroid 的 ToolMessage 實例
- **本地 LLM 支援**：可用 Mistral-7b 等本地模型做多 Agent 資訊抽取
- **DocChatAgent (RAG)**：結構感知 Markdown 分塊，分塊以章節標題豐富化
- **豐富整合**：Crawl4AI、Firecrawl、Exa、Tavily、Markitdown、docling、pymupdf4llm、Pinecone、pgvector、Weaviate
- **HTML Logger**：互動式任務視覺化，自包含 HTML 日誌，可摺疊條目

## 怎麼用

```bash
# 安裝
pip install langroid

# 或用 uv
uv pip install langroid
```

```python
import langroid as lr
import langroid.language_models as lm

# 設定 LLM
llm_cfg = lm.OpenAIGPTConfig(
    chat_model=lm.OpenAIChatModel.GPT4o,
)

# 建立 Agent
agent_cfg = lr.ChatAgentConfig(llm=llm_cfg)
agent = lr.ChatAgent(agent_cfg)

# 包裝成 Task 並執行
task = lr.Task(agent, name="Bot", system_message="You are a helpful assistant")
task.run("Hello")

# 2-Agent 協作
teacher_task = lr.Task(
    lr.ChatAgent(agent_cfg), name="Teacher",
    system_message="Ask your student concise questions."
)
student_task = lr.Task(
    lr.ChatAgent(agent_cfg), name="Student",
    system_message="Concisely answer the teacher's questions.",
    single_round=True,
)
teacher_task.add_sub_task(student_task)
teacher_task.run()
```

## 跟其他方案的關係

- **LangChain**：最流行的 LLM 框架；Langroid 不依賴它且更輕量
- **CrewAI**：多 Agent 框架；Langroid 的 Actor 模型更靈活
- **AutoGen**：微軟多 Agent 框架；Langroid 設定更簡單
- **Langflow**：視覺化 LLM 應用；Langroid 是純程式碼框架

| 能力 | Langroid | LangChain | CrewAI | AutoGen |
|---|:---:|:---:|:---:|:---:|
| Actor 模型 | ✓ | — | — | — |
| 不依賴其他框架 | ✓ | — | ✓ | — |
| 本地 LLM | ✓ | ✓ | ✓ | ✓ |
| MCP 整合 | ✓ | ✓ | ✓ | ✓ |
| DocChatAgent (RAG) | ✓ | ✓ | — | — |
| Task 子任務委派 | ✓ | — | ✓ | ✓ |

## 相關概念


← [[CrewAI]] · [[microsoft-autogen]] · [[LangChain]] · [[rag]] · [[AI-Agent]] · [[MCP]]

## 來源

- GitHub: <https://github.com/langroid/langroid>
- 文件: <https://langroid.github.io/langroid/>
- 原始 README: `raw/2026-08-16-langroid-langroid.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/langroid/langroid |
| Stars | ⭐4099|
| License | MIT |
| 收錄日期 | 2026-08-16 |

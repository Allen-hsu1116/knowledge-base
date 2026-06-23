---
title: Langfuse
slug: langfuse-langfuse
created: 2023-05-18
updated: 2026-06-17
stars: 29216
language: TypeScript
topics: [evaluation, langchain, llm, llm-evaluation, llm-observability, llmops, monitoring, observability, prompt-engineering, prompt-management, self-hosted]
---

# Langfuse

> ⭐29.2k · 開源 LLM 工程平台，提供追蹤、評測、Prompt 管理、Playground，Y Combinator W23

## 快速導航
[[Prompt-Engineering|Prompt Engineering]] · [[LLM|LLM 基礎]] · [[promptfoo-promptfoo|Prompt 測試]]

## 是什麼

Langfuse 是一個開源的 LLM 工程平台，幫助團隊協作開發、監控、評測和除錯 AI 應用。它可以在幾分鐘內自架完成，且經過大量生產環境驗證。底層使用 ClickHouse 開源資料庫，確保高效能的查詢和儲存。

Langfuse 的核心是「可觀測性」（Observability）。你在應用中埋入 SDK 或整合後，所有 LLM 呼叫、檢索動作、Agent 行為都會被記錄成 Trace。你可以檢視每一筆對話的完整呼叫鏈，找出效能瓶頸和品質問題。除了追蹤，Langfuse 還提供 Prompt 版本管理、LLM-as-a-judge 評測、人類標注、資料集基準測試和 Playground 等功能，形成完整的 LLMOps 開發迴圈。

Langfuse 由 Y Combinator W23 孵化，團隊持續活躍開發，整合了 OpenAI、LangChain、LlamaIndex、LiteLLM、AutoGen、CrewAI、Flowise、Dify 等主流框架，幾乎能接上你正在用的任何 LLM 工具鏈。

## 核心特色

- **LLM 追蹤觀測**：完整記錄 LLM 呼叫鏈，包括輸入輸出、延遲、Token 用量、成本
- **Prompt 管理**：集中管理 Prompt 版本，支援服務端和客戶端快取，迭代不影響延遲
- **多元評測**：LLM-as-a-judge、程式碼評估器、使用者回饋、人工標注、自訂 Pipeline
- **資料集與實驗**：建立測試集和基準，持續比較模型和 Prompt 的表現
- **LLM Playground**：即時測試 Prompt 和模型配置，縮短反饋迴圈
- **豐富整合**：Python/JS SDK、OpenAI drop-in、LangChain、LlamaIndex、Vercel AI SDK 等 20+ 框架

## 怎麼用

```bash
# 安裝
pip install langfuse openai

# 自架（Docker Compose）
git clone --depth=1 https://github.com/langfuse/langfuse.git
cd langfuse
docker compose up
# 開啟 http://localhost:3000

# 或使用 Langfuse Cloud（免費方案）
# https://cloud.langfuse.com
```

```python
# Python SDK 基本用法
from langfuse import observe
from langfuse.openai import openai  # OpenAI drop-in 整合

@observe()
def story():
    return openai.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content": "What is Langfuse?"}],
    )

result = story()
```

## 跟其他方案的關係

| 方案 | 類型 | 自架 | 評測 | Prompt 管理 | 追蹤 | 適用場景 |
|------|------|------|------|-------------|------|----------|
| [[langfuse-langfuse|Langfuse]] | LLM 觀測平台 | ✅ MIT | ✅ 多元 | ✅ 版本控管 | ✅ 完整 | LLM 開發全流程 |
| [[promptfoo-promptfoo|Promptfoo]] | Prompt 測試 | ✅ 開源 | ✅ 紅隊測試 | ⚠️ 基本 | ❌ | Prompt 品質測試 |
| Helicone | LLM 觀測 | ⚠️ 雲端為主 | ⚠️ 基本 | ❌ | ✅ | API 監控 |
| Arize Phoenix | ML 觀測 | ✅ 開源 | ✅ | ⚠️ | ✅ | ML+LLM 觀測 |
| Weight & Biases | ML 實驗追蹤 | ❌ 僅雲端 | ✅ | ⚠️ | ✅ | 企業 ML 平台 |

## 相關概念
← [[Prompt-Engineering|Prompt Engineering]] · [[LLM|LLM 基礎]] · [[promptfoo-promptfoo|Prompt 測試]]

## 來源

- GitHub：https://github.com/langfuse/langfuse
- 官方文件：https://langfuse.com/docs
- Demo：https://langfuse.com/demo
- Raw 檔案：`knowledge-base/raw/2026-06-17-langfuse-langfuse.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [langfuse/langfuse](https://github.com/langfuse/langfuse) |
| Stars | ⭐29,216 |
| License | MIT (EE 目錄另授權) |
| Language | TypeScript |
| 收錄日期 | 2026-06-17 |
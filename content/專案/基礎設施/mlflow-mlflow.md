---
title: MLflow
slug: mlflow-mlflow
created: 2026-08-16
updated: 2026-08-26
stars: 27529
language: Python
topics: [agentops, agents, ai, ai-governance, apache-spark, evaluation, langchain, llm-evaluation, llmops, machine-learning, ml, mlflow, mlops, model-management, observability, open-source, openai, prompt-engineering]
---

# MLflow

> ⭐27529 · 開源 AI 工程平台，為 Agent、LLM 和 ML 模型提供除錯、評估、監控和優化的完整工具鏈，月下載量超過 6000 萬

## 快速導航


- 📊 **LLM 評測與監控** → [[langfuse-langfuse]] · [[observability]]
- 🚪 **AI Gateway** → [[diegosouzapw-OmniRoute]] · [[AI-Gateway]]
- 🤖 **Agent 框架** → [[LangChain]] · [[CrewAI]]

## 是什麼

MLflow 是最大的開源 AI 工程平台，為 Agent、LLM 和 ML 模型提供完整的生命週期管理。它讓各種規模的團隊能夠除錯、評估、監控和優化生產級 AI 應用，同時控制成本和管理模型與資料的存取權限。每月超過 6000 萬次下載，數千個組織每天依賴 MLflow 將 AI 部署到生產環境。

對於 LLM 和 Agent 應用，MLflow 提供四大核心能力。第一是可觀測性（Observability）：基於 OpenTelemetry 的完整追蹤，支援任何 LLM 提供者和 Agent 框架，監控生產品質、成本和安全。第二是評估（Evaluation）：系統化評估、追蹤品質指標變化、在回歸進入生產前捕捉問題，提供 50+ 內建指標和 LLM 評審。第三是 Prompt 管理與優化：版本控制、測試和部署 prompt，支援自動化 prompt 優化演算法。第四是 AI Gateway：統一 API 閘道器管理所有 LLM 提供者，處理路由、速率限制、故障轉移和成本控制。

除了 LLM/Agent 功能，MLflow 也提供傳統 ML 的完整工具鏈：實驗追蹤、模型評估、模型註冊表和多平台部署（Docker、Kubernetes、Azure ML、AWS SageMaker）。支援 Python、TypeScript/JavaScript、Java 等多語言，並原生整合 OpenTelemetry 和 MCP。

## 核心特色

- **LLM Tracing/可觀測性**：基於 OpenTelemetry 的完整追蹤，60+ 框架一行自動追蹤（LangChain、LangGraph、CrewAI、AutoGen、LlamaIndex 等）
- **系統化評估**：50+ 內建指標和 LLM 評審，追蹤品質指標變化，捕捉回歸
- **Prompt 管理與優化**：Prompt 版本控制、測試、部署，內建自動化 prompt 優化演算法
- **AI Gateway**：統一 API 閘道器，OpenAI 相容介面，管理路由、速率限制、故障轉移、成本控制和 A/B 測試
- **模型註冊表**：協同管理 ML 模型完整生命週期
- **多平台部署**：Docker、Kubernetes、Azure ML、AWS SageMaker
- **多語言支援**：Python、TypeScript/JavaScript、Java

## 怎麼用

```bash
# 最快開始——CLI 一鍵設定 tracing
uvx mlflow@latest agent setup

# 啟動 MLflow Server
uvx mlflow server
```

```python
import mlflow

mlflow.set_tracking_uri("http://localhost:5000")
mlflow.openai.autolog()

from openai import OpenAI
client = OpenAI()
client.responses.create(
    model="gpt-5.4-mini",
    input="Hello!",
)
# 在 http://localhost:5000 查看 traces 和指標
```

## 跟其他方案的關係

- **Langfuse**：專注 LLM 可觀測性的開源平台；MLflow 範圍更廣，涵蓋傳統 ML + LLM + Agent
- **Weights & Biases**：商業 MLOps 平台；MLflow 完全開源且自架
- **Promptfoo**：專注 prompt 評測和紅隊測試；MLflow 提供更完整的生產級 prompt 管理和優化
- **OmniRoute/各 AI Gateway**：MLflow AI Gateway 是內建的統一閘道器，與評估/追蹤無縫整合
- **[[marin-community-marin\|Marin]]**：Marin 管理可重現的基礎模型研發與叢集實驗，MLflow 偏向跨專案 tracking、evaluation、registry 與應用觀測，可互補使用

| 能力 | MLflow | Langfuse | W&B | Promptfoo |
|---|:---:|:---:|:---:|:---:|
| LLM Tracing | ✓ | ✓ | ✓ | — |
| 傳統 ML 追蹤 | ✓ | — | ✓ | — |
| Prompt 優化 | ✓ | — | — | — |
| AI Gateway | ✓ | — | — | — |
| 模型註冊表 | ✓ | — | ✓ | — |
| 完全開源自架 | ✓ | ✓ | — | ✓ |
| 60+ 框架整合 | ✓ | ✓ | ✓ | ✓ |

## 相關概念


← [[langfuse-langfuse]] · [[diegosouzapw-OmniRoute]] · [[promptfoo-promptfoo]] · [[AI-Gateway]] · [[observability]] · [[microsoft-autogen]] · [[marin-community-marin]]

## 來源

- GitHub: <https://github.com/mlflow/mlflow>
- 官網: <https://mlflow.org/>
- 文件: <https://mlflow.org/docs/latest/genai>
- 原始 README: `raw/2026-08-16-mlflow-mlflow.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/mlflow/mlflow |
| Stars | ⭐27529|
| License | Apache-2.0 |
| 收錄日期 | 2026-08-16 |

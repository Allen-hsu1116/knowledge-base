---
title: LiteLLM
slug: litellm
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# LiteLLM

> 開源 AI Gateway，用 OpenAI 格式統一呼叫 100+ LLM Provider，8ms P95 latency，自架、企業就緒。（詳細參考頁）

## 快速導航

- 🔄 **Agent 工作流** → [[AI-Agent]]（多模型切換的基礎設施）
- 🧠 **多後端架構** → [[project-golem]]（Golem 的多後端概念類似）
- 🛠 **多模型支援** → [[hermes-agent]]（Hermes 用 OpenRouter，LiteLLM 是底層 Gateway）

## 是什麼

LiteLLM 是一個開源 AI Gateway 和 Python SDK，解決 LLM 應用的「API 層」問題：不同 provider 有不同的 SDK、認證、格式和錯誤類型。LiteLLM 用 OpenAI 格式統一所有這些差異，讓你一行程式碼就能切換 100+ LLM provider，不需要學每個 provider 的 SDK。8ms P95 latency at 1k RPS，Y Combinator 公司（BerriAI）出品。

## 核心特色

- **統一介面**：用 OpenAI 格式呼叫 100+ LLM（OpenAI、Anthropic、Gemini、Bedrock、Azure、VertexAI、Cohere、Sagemaker、HuggingFace、VLLM、NVIDIA NIM 等）
- **8ms P95 延遲**：生產等級效能，1k RPS 下僅 8ms 額外延遲
- **Virtual Keys**：API 金鑰管理、成本追蹤、限流、團隊權限
- **Load Balancing**：多模型負載均衡和自動 fallback，提供者故障自動切換
- **Cost Tracking**：每個請求的 token 成本追蹤，跨 provider 統一計價
- **Guardrails**：安全護欄，內容過濾、PII 偵測
- **Admin Dashboard**：Web 管理介面，監控用量、成本、延遲
- **Fallback 機制**：provider 掛了自動切換，確保服務不中斷
- **Streaming 支援**：統一的串流介面，所有 provider 一致行為

## 怎麼用

```python
# Python SDK — 最簡單的使用方式
from litellm import completion

# 用 OpenAI 格式呼叫任何 provider
response = completion(model="gpt-4", messages=[{"role": "user", "content": "Hello!"}])

# 切換到 Anthropic，只改 model 名稱
response = completion(model="claude-3-opus", messages=[{"role": "user", "content": "Hello!"}])

# 切換到本地 Ollama
response = completion(model="ollama/llama3", messages=[...])

# 切換到 Azure OpenAI
response = completion(model="azure/my-deployment", messages=[...])
```

部署 Proxy Server：
```bash
# Docker 部署
docker run -p 4000:4000 ghcr.io/berriai/litellm:main-latest

# 或 pip 安裝
pip install litellm[proxy]
litellm --port 4000
```

配置 YAML：
```yaml
model_list:
  - model_name: my-model
    litellm_params:
      model: gpt-4
      api_key: os.environ/OPENAI_API_KEY
  - model_name: my-model
    litellm_params:
      model: claude-3-opus
      api_key: os.environ/ANTHROPIC_API_KEY
```

## 跟其他方案的關係

| 專案 | 關係 |
|------|------|
| [[project-golem]] | Golem 支援 Gemini/Ollama/LM Studio，LiteLLM 可以作為統一 API 層 |
| [[hermes-agent]] | Hermes 用 OpenRouter，LiteLLM 是更底層的 Gateway |
| [[AI-Agent]] | 多模型切換是 Agent 工作流的基礎設施需求 |
| [[Ollama]] | LiteLLM 可統一管理 Ollama 本地模型和雲端 API |
| [[vLLM]] | LiteLLM 可作為 vLLM 前面的 API Gateway，做負載均衡和金鑰管理 |
| [[sgl-project-sglang\|SGLang]] | LiteLLM 也可作為 SGLang 前面的統一 API 層 |
| [[NVIDIA-TensorRT-LLM]] | LiteLLM 可管理 TensorRT-LLM 服務的模型路由 |

## 相關概念
← [[AI-Agent]] · [[project-golem]] · [[hermes-agent]]

## 來源
- raw/2026-05-03-litellm.md

---

GitHub: [BerriAI/litellm](https://github.com/BerriAI/litellm) · Stars: ⭐20k+ · License: MIT · 收錄日期: 2026-05-03
# LiteLLM

> 開源 AI Gateway，用 OpenAI 格式統一呼叫 100+ LLM Provider，8ms P95 latency，自架、企業就緒。（詳細參考頁）

## 快速導航
- 🔄 **Agent 工作流** → [[AI-Agent]]（多模型切換的基礎設施）
- 🧠 **多後端架構** → [[project-golem]]（Golem 的多後端概念類似）
- 🛠 **多模型支援** → [[hermes-agent]]（Hermes 用 OpenRouter，LiteLLM 是底層 Gateway）

## 核心內容

### 定位
LiteLLM 解決的是 LLM 應用的「API 層」問題：不同 provider 有不同的 SDK、認證、格式和錯誤類型。LiteLLM 用 OpenAI 格式統一所有這些差異。

### 統一介面
- 用 OpenAI 格式呼叫 100+ LLM：OpenAI、Anthropic、Gemini、Bedrock、Azure、VertexAI、Cohere、Sagemaker、HuggingFace、VLLM、NVIDIA NIM 等
- 不需要學每個 provider 的 SDK，一行程式碼切換 provider
- Python SDK 直接整合或部署 AI Gateway 作為中央服務

### 生產就緒功能
- **Virtual Keys**：API 金鑰管理
- **Spend Tracking**：成本追蹤，知道每個模型花了多少
- **Guardrails**：安全護欄，防止不當輸出
- **Load Balancing**：多模型負載均衡和 fallback
- **Admin Dashboard**：管理介面
- **8ms P95 latency at 1k RPS**：生產等級效能

### 使用方式
```python
# Python SDK
from litellm import completion
response = completion(model="gpt-4", messages=[...])

# 切換到 Anthropic，只改 model 名稱
response = completion(model="claude-3-opus", messages=[...])
```

或部署 Proxy Server：
```bash
docker run -p 4000:4000 ghcr.io/berriai/litellm:main-latest
```

### 與其他專案的關係
| 專案 | 關係 |
|------|------|
| [[project-golem]] | Golem 支援 Gemini/Ollama/LM Studio，LiteLLM 可以作為統一 API 層 |
| [[hermes-agent]] | Hermes 用 OpenRouter，LiteLLM 是更底層的 Gateway |
| [[AI-Agent]] | 多模型切換是 Agent 工作流的基礎設施需求 |
| [[Ollama]] | LiteLLM 可統一管理 Ollama 本地模型和雲端 API |
| [[vLLM]] | LiteLLM 可作為 vLLM 前面的 API Gateway |
| [[sgl-project-sglang|SGLang]] | LiteLLM 也可作為 SGLang 前面的統一 API 層 |
| [[NVIDIA-TensorRT-LLM]] | LiteLLM 可管理 TensorRT-LLM 服務的模型路由 |

### 授權
MIT License（開源部分），有 Enterprise Tier

### 專案資訊

- **GitHub**: [BerriAI/litellm](https://github.com/BerriAI/litellm)
- ⭐ 20k+ stars
- Y Combinator 公司（BerriAI）
- Python SDK + Proxy Server

## 相關概念
← [[AI-Agent]] · [[project-golem]] · [[hermes-agent]]

## 來源
- raw/2026-05-03-litellm.md
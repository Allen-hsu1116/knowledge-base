---
title: LMCache
slug: LMCache-LMCache
created: 2026-06-13
updated: 2026-06-13
stars: 8600
language: Python
topics: [KV Cache 加速, 跨實例共享, TTFT 降低, vLLM]
---

# LMCache

> ⭐8.6k · LLM KV Cache 加速層，跨 vLLM 實例共享 KV cache，大幅降低 TTFT

## 快速導航
[[模型推論與部署]] · [[kv-cache|KV Cache]] · [[llm-internals|LLM 底層技術]] · [[vLLM]]

## 是什麼

LMCache 是一個高效能的 KV cache 加速層，專為 LLM 推論引擎設計。它的核心思想很簡單但影響深遠：當多個請求共享相同的 prefix（比如系統提示詞、長上下文文件），已經計算好的 KV cache 不需要重算，直接從快取中取用即可。這樣可以大幅降低 Time-To-First-Token（TTFT），讓使用者感受到明顯的回應加速。

在實際部署場景中，LMCache 支援兩種主要架構：本地快取（單一 vLLM 實例內的 KV 重用）和分散式快取（多個 vLLM 實例透過 LMCache server 共享 KV cache）。後者特別適合多模型服務、A/B 測試或負載均衡場景——第一個實例算完的 KV cache，第二個實例可以直接拿來用，省去重複計算的 GPU 時間和延遲。

LMCache 同時支援 NVIDIA CUDA、AMD ROCm 和純 CPU 推論，並且已經與 vLLM 深度整合。透過 Docker 部署只需要幾行指令，即可讓現有的 vLLM 服務獲得 KV cache 加速能力。

## 核心特色

- **跨實例 KV 共享**：多個 vLLM 實例透過 LMCache server 共享 prefix KV cache，避免重複計算
- **本地 + 分散式雙架構**：支援單機快取和跨機器分散式快取，彈性適配不同部署規模
- **多硬體後端**：同時支援 CUDA、AMD ROCm 和 CPU 推論
- **Docker 一鍵部署**：預建 Docker 映像，搭配 vLLM 只需幾行 docker run 指令
- **TTFT 大幅降低**：長上下文場景下，第二輪 QA 的 TTFT 可降至接近零
- **vLLM 深度整合**：透過 `--lmcache-config-file` 參數直接啟用，無需修改應用程式碼

## 怎麼用

**安裝：**

```bash
pip install -e .
```

**快速啟動（單實例 + 本地快取）：**

```bash
docker pull apostacyh/vllm:lmcache-0.1.0

model=mistralai/Mistral-7B-Instruct-v0.2
sudo docker run --runtime nvidia --gpus '"device=0"' \
    -v ~/.cache/huggingface:/root/.cache/huggingface \
    -p 8000:8000 \
    --env "HF_TOKEN=your_token" \
    --ipc=host --network=host \
    apostacyh/vllm:lmcache-0.1.0 \
    --model $model --gpu-memory-utilization 0.6 --port 8000 \
    --lmcache-config-file /lmcache/LMCache/examples/example-local.yaml
```

**多實例共享 KV cache：**

```bash
# 啟動 LMCache server
docker run --name lmcache-server --network host -d \
    apostacyh/lmcache-server:0.1.0 0.0.0.0 65432

# 啟動兩個 vLLM 實例（port 8000 和 8001）
# 兩者都指向同一個 LMCache server
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | KV 共享 | 分散式 | vLLM 整合 |
|------|-------|------|---------|--------|-----------|
| **LMCache** | ⭐8.6k | KV Cache 層 | ✅ 跨實例 | ✅ | ✅ 原生 |
| [[vLLM|vLLM]] | ⭐82k | 推論引擎 | ❌ 單實例 | ❌ | — |
| [[sgl-project-sglang|SGLang]] | ⭐27k | 推論引擎 | 部分 prefix | ❌ | — |
| [[NVIDIA-TensorRT-LLM|TensorRT-LLM]] | ⭐13k | 推論引擎 | KV reuse | 部分 | — |

## 相關概念
← [[模型推論與部署]] · [[kv-cache|KV Cache]] · [[llm-internals|LLM 底層技術]]

## 來源

- GitHub: <https://github.com/LMCache/LMCache>
- 原始 README: `raw/2026-06-13-LMCache-LMCache.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [LMCache/LMCache](https://github.com/LMCache/LMCache) |
| Stars | ⭐8,600 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-13 |
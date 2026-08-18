---
title: oMLX
slug: jundot-omlx
created: 2026-08-18
updated: 2026-08-18
stars: 18991
language: Python
topics: [apple-silicon, inference-server, llm, macos, mlx, openai-api, kv-cache, continuous-batching]
---

# oMLX

> ⭐19k · 為 Apple Silicon 最佳化的本地 LLM 推論伺服器，以連續批次、RAM＋SSD 分層 KV Cache 與 macOS 選單列管理兼顧吞吐量和易用性

## 快速導航

- 🧠 **模型推論** → [[模型推論與部署]] · [[LLM]]
- 💾 **快取最佳化** → [[kv-cache]] · [[Token-Optimization]]
- 🏠 **本地與自架** → [[self-hosted]] · [[Ollama]]

## 是什麼

oMLX 是專門為 Apple Silicon Mac 設計的 LLM 推論伺服器。它以 Apple MLX 生態為底層，能在同一個服務中執行文字 LLM、視覺語言模型、OCR、Embedding 與 Reranker，並提供 OpenAI 與 Anthropic 相容 API，讓既有客戶端不用大幅改寫即可連接本地模型。

它把伺服器級能力包進日常 Mac 使用體驗：原生 SwiftUI 選單列 App 可啟停、監控與更新服務，Web 管理台則負責模型下載、載入、效能測試和逐模型設定。核心差異在於 block-based KV Cache 同時使用 RAM 熱層與 SSD 冷層；冷層可跨請求甚至跨重啟重用相同前綴，減少長對話和 Coding Agent 重複 prefill 的成本。

專案也加入連續批次、多模型 LRU 淘汰、TTL、自訂記憶體上限和實驗性多 Mac 推論。它適合希望在 M 系列 Mac 上自架 OpenAI-compatible endpoint，又需要比單次 CLI 推論更完整的併發、快取與營運介面的人。

## 核心特色

- **RAM＋SSD 分層 KV Cache**：熱門 block 留在記憶體，冷 block 以 safetensors 卸載到 SSD；相同 prefix 可直接恢復，服務重啟後仍能重用
- **Continuous Batching**：透過 mlx-lm `BatchGenerator` 合併並行請求，最大併發數可從 CLI 或管理台調整
- **多模型服務**：同一 server 可載入 LLM、VLM、OCR、Embedding 和 Reranker，並以 LRU、pinning、TTL 管理有限統一記憶體
- **雙 API 相容**：提供 OpenAI Chat/Completions/Embeddings/Rerank 與 Anthropic Messages endpoint，也支援串流、vision、tool calling 和 structured output
- **macOS 原生管理**：SwiftUI 選單列 App、背景服務、自動更新、持久統計和完整離線 Web Dashboard，不依賴 Electron
- **Coding Agent 整合**：管理台可設定 OpenClaw、OpenCode、Codex、Hermes Agent、Copilot 和 Pi；context scaling 與 SSE keep-alive 針對長時間編碼任務最佳化
- **模型下載與設定**：直接搜尋 Hugging Face MLX 模型，每個模型可設定 alias、取樣參數、chat template、TTL 與可曝光的 profile
- **記憶體保護**：ProcessMemoryEnforcer 預設保留 8GB 系統空間，避免載入多模型造成整台 Mac OOM
- **實驗性多 Mac 推論**：可依不等量記憶體切分模型，透過 Ring 或 Thunderbolt RDMA/JACCL 傳遞 activation

## 怎麼用

macOS 15+、Apple Silicon 和 Python 3.11–3.13 可用 Homebrew 安裝；若只想圖形化操作，也可以從 Releases 下載 `.dmg`。

```bash
# 安裝並啟動背景服務
brew tap jundot/omlx https://github.com/jundot/omlx
brew install jundot/omlx/omlx
omlx start

# 或以前景模式指定模型目錄
omlx serve --model-dir ~/models
```

啟動後，管理台位於 `http://localhost:8000/admin`，OpenAI-compatible base URL 是 `http://localhost:8000/v1`。模型放在 `~/models/<model-name>/` 子目錄後會被自動探索。

```bash
# 開啟 SSD 冷層快取並調整 RAM 熱層比例
omlx serve \
  --model-dir ~/models \
  --paged-ssd-cache-dir ~/.omlx/cache \
  --hot-cache-max-size 20% \
  --max-concurrent-requests 16
```

若從原始碼安裝並要使用 GLM-5.2、MiniMax M3 或 Qwen3.5 的原生 custom kernels，需要完整 Xcode Metal toolchain；官方 DMG 已包含預編譯 kernels。

## 跟其他方案的關係

oMLX 不取代所有推論引擎，而是把 vLLM 類型的伺服器能力帶到 Apple Silicon，並補上 Mac 原生營運介面。它與 Ollama 的本地模型體驗重疊，但更強調多請求 batching、分層 KV Cache、逐模型生命週期和雙 API 相容。

| 方案 | 主要硬體 | 服務重點 | KV Cache | 管理介面 | 適合場景 |
|---|---|---|---|---|---|
| oMLX | Apple Silicon | 多模型推論伺服器 | RAM＋SSD 分層、跨重啟 | macOS App＋Web | Mac 上的 Agent 與本地 API |
| [[Ollama]] | CPU/GPU/Apple Silicon | 一鍵下載與執行 | 引擎內部管理 | CLI＋生態前端 | 個人快速啟動模型 |
| [[vLLM]] | NVIDIA/AMD 等伺服器 GPU | 高吞吐生產推論 | PagedAttention | API 為主 | 資料中心規模部署 |
| [[llama-cpp]] | CPU/GPU/邊緣裝置 | 跨平台低階推論 | 多種量化與快取 | CLI/API | 廣泛硬體與低資源環境 |
| [[unslothai-unsloth\|Unsloth]] | GPU/Apple Silicon | 模型訓練、微調與本地執行 | 非主要定位 | Desktop/Notebook/API | 訓練到匯出的完整工作流 |

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[kv-cache]] · [[self-hosted]] · [[Token-Optimization]]

## 來源

- GitHub: <https://github.com/jundot/omlx>
- 官網與文件: <https://omlx.ai>
- 原始 README 與 metadata: `raw/2026-08-18-jundot-omlx.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | jundot/omlx |
| Stars | ⭐19k |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-08-18 |

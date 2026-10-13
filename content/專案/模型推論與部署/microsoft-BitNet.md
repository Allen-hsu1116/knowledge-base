---
title: BitNet（bitnet.cpp）
slug: microsoft-BitNet
created: 2026-10-13
updated: 2026-10-13
stars: 40911
language: zh-TW
topics: [模型推論與部署, 邊緣 AI, 三元權重, 低位元推論]
---

# BitNet（bitnet.cpp）

> ⭐40.9k · Microsoft 的 1-bit LLM 官方推論框架，以專用 kernels 執行 BitNet b1.58 等三元權重模型。

## 快速導航

- 🧠 [[模型推論與部署]] — 模型格式、kernels 與部署效能。
- 📱 [[embedded-AI]] — 在本地 CPU 與資源受限環境執行模型。
- 🔧 [[llama-cpp]] — bitnet.cpp 所依據的推論框架。

## 是什麼

BitNet 儲存庫提供的 bitnet.cpp，是針對 1-bit／1.58-bit LLM 設計的官方推論框架。它建立在 llama.cpp 之上，以專門的運算 kernels 支援 BitNet b1.58 等三元權重模型，重點是降低本地推論的運算與能源成本，而不是提供另一套 Agent 工作流。

「1.58-bit」指三元權重的表示概念，不代表所有張量、檔案或執行期記憶體都只使用同樣的位元數。README 對 embedding 模型明列 I2_S 使用每個權重 2 bits；實際成本還包含其他張量與執行期資料。官方所稱 lossless 也應理解為支援模型與對應表示的推論路徑，不能推廣成任意全精度模型轉換後都毫無品質損失。

專案已有 CPU 與 GPU 路徑，README 仍將 NPU 列為未來支援。官方模型包含 BitNet-b1.58-2B-4T，以及 0.6B／270M embedding 模型；支援的 CPU 架構與 kernel 組合並不相同，部署前必須逐一核對支援矩陣。

## 核心特色

- **三元模型專用 kernels**：提供 I2_S、TL1、TL2 等路徑；不是所有模型與 CPU 都能任選全部 kernels。
- **本地 CPU 推論**：支援矩陣涵蓋 x86 與 ARM 的多個 LLM，README 也提供 Apple M2 示範。
- **官方 GPU 路徑**：另有 `gpu/README.md` 說明；CPU 的建置指令不能視為 GPU 安裝流程。
- **Embedding 模型**：提供 BitNet-embedding-0.6B 與 270M；本次 README 支援矩陣列出的 embedding kernel 是 x86 I2_S，ARM 尚未列為支援。
- **對話與 benchmark 工具**：`run_inference.py` 支援 conversation mode，另有端到端 benchmark 腳本。
- **格式轉換工具**：提供相容 BitNet `.safetensors` checkpoint 的 GGUF 轉換流程，不應誤認為任意模型的通用無損壓縮器。

## 怎麼用

### 1. 準備環境與安裝

官方要求 Python ≥3.10、CMake ≥3.22、Clang ≥18，並推薦 Conda。以下依 README 摘錄；本次收錄未在本機安裝模型或驗證推論效能。

```bash
git clone --recursive https://github.com/microsoft/BitNet.git
cd BitNet
conda create -n bitnet-cpp python=3.10
conda activate bitnet-cpp
pip install -r requirements.txt
```

Windows 需先準備 Visual Studio 2022 的 C++、CMake、Clang 工具，並使用對應的 Developer Command Prompt／PowerShell。

### 2. 下載相容權重並建置

```bash
huggingface-cli download microsoft/BitNet-b1.58-2B-4T-gguf --local-dir models/BitNet-b1.58-2B-4T
python setup_env.py -md models/BitNet-b1.58-2B-4T -q i2_s
```

### 3. 執行對話與效能測試

```bash
python run_inference.py -m models/BitNet-b1.58-2B-4T/ggml-model-i2_s.gguf -p "You are a helpful assistant" -cnv
python utils/e2e_benchmark.py -m models/BitNet-b1.58-2B-4T/ggml-model-i2_s.gguf -n 200 -p 256 -t 4
```

`-cnv` 啟用對話模式時，`-p` 會作為 system prompt。Benchmark 應固定模型、硬體、執行緒、prompt 與輸出長度再比較。

### 4. 評估限制

README 的加速與節能數字是官方特定測試條件下的結果，不是本次實測，也不是每部筆電的保證。Dummy model benchmark 只能研究效能，不能證明模型的語言能力；權重授權也應另外查看模型頁，不能直接套用程式碼的 MIT 授權。

## 跟其他方案的關係

| 方案 | 定位 | 與 bitnet.cpp 的關係 |
|------|------|---------------------|
| bitnet.cpp | 三元／1.58-bit 模型的專用推論 | 適合已有相容權重、希望利用專用 kernels 的情境 |
| [[llama-cpp\|llama.cpp]] | 通用本地 LLM 推論框架 | 官方 README 明列為本專案的基礎；不表示兩者所有格式與功能完全互通 |
| Microsoft T-MAC | 一般低位元模型的查表式運算方案 | bitnet.cpp kernels 借鑑其 Lookup Table 方法；官方建議非三元低位元模型可考慮 T-MAC |

## 相關概念

← [[模型推論與部署]] · [[embedded-AI]] · [[llama-cpp]]

## 來源

- [GitHub：microsoft/BitNet](https://github.com/microsoft/BitNet)
- [官方 README](https://github.com/microsoft/BitNet/blob/main/README.md)：定位、支援矩陣、安裝與工具使用。
- [GPU 文件入口](https://github.com/microsoft/BitNet/blob/main/gpu/README.md)：GPU 路徑的後續閱讀。
- 原始 README 快照：`raw/2026-10-13-microsoft-BitNet.md`。
- GitHub metadata 快照：`raw/2026-10-13-microsoft-BitNet.metadata.json`。

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/microsoft/BitNet |
| Stars | 40,911（2026-10-13 快照） |
| License | MIT（儲存庫程式碼；模型權重另查） |
| Language | C++（主要程式語言）；本頁 zh-TW |
| 收錄日期 | 2026-10-13 |

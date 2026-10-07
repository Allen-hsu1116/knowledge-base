---
title: DeepGEMM
slug: deepseek-ai-DeepGEMM
created: 2026-10-07
updated: 2026-10-07
stars: 8701
language: Cuda
topics: [gpu-kernels, gemm, llm-inference, mixture-of-experts]
---

# DeepGEMM

> ⭐8.7k · CUDA · 整合低精度 GEMM、MoE 與 indexer 等 LLM 運算原語的 GPU kernel 函式庫。

## 快速導航

- [[llm-internals]] — 從計算與記憶體存取理解底層加速。
- [[模型推論與部署]] — 區分算子最佳化與模型 serving 系統。

## 是什麼

DeepGEMM 是 DeepSeek 開源的高效能 tensor core kernel 函式庫。當次 README 已不只介紹早期 FP8 GEMM，而是涵蓋 FP8、FP4、BF16 矩陣運算、通訊與計算重疊的 Mega MoE、lightning indexer 的 MQA scoring，以及 HyperConnection 等運算原語。

它借鑑 CUTLASS 與 CuTe 的部分概念，但刻意減少對重型模板與代數的依賴，聚焦較精簡的 CUDA kernel 實作。這是供模型開發者或推論系統整合的底層函式庫，不會單獨提供模型下載、聊天 API、請求排程或完整部署管理。

專案宣稱部分矩陣形狀的效能可比擬或超過高度調校的函式庫；這屬上游主張，不代表所有硬體和負載都更快。是否適合實際服務，仍須納入量化、layout 轉換、首次 JIT、通訊與端到端延遲一起測量。

## 核心特色

- **多精度 GEMM**：針對現代 LLM 的 FP8、FP4 與 BF16 計算提供最佳化原語。
- **執行期 JIT**：README 說明 kernels 由 DeepJIT 在執行期編譯；仍須準備相容編譯工具鏈。
- **MoE grouped GEMM**：提供 contiguous 與 masked 形式，對應不同 expert token 分布與執行階段。
- **Mega MoE 融合**：將 dispatch、兩段 linear、SwiGLU 與 combine 融合，重疊 NVLink 通訊及 tensor core 計算。
- **Indexer scoring**：提供 prefill 的 non-paged 與 decode 的 paged MQA kernel 版本。
- **可調校及觀測**：提供 SM 使用量、PDL、deterministic algorithms 與 JIT 除錯／快取等控制。

## 怎麼用

### 先確認硬體與工具鏈

當次 README 的基本需求為 NVIDIA SM90 或 SM100 GPU、Python 3.8+、CUDA Toolkit 12.9+、PyTorch 2.3+、CUTLASS 4.0+，以及支援 C++20 `<format>` 的編譯器與標準函式庫。

Mega MoE 範例的 symmetric memory buffer 另要求 PyTorch 2.9+；不能只確認基本 PyTorch 版本便假設所有功能皆可用。

### 安裝

以下沿用官方 recursive clone 與安裝腳本流程；執行前先審閱安裝腳本與相依套件。

```bash
git clone --recursive git@github.com:deepseek-ai/DeepGEMM.git
cd DeepGEMM
./install.sh
```

上述 SSH clone 需要 GitHub SSH 存取設定；有需要時可自行改採官方 repo 的 HTTPS clone URL。

```python
import deep_gemm
```

這個 import 只示範套件入口，不構成 GEMM 正確性或效能測試。完整張量準備與測試案例請參考官方 tests。

### 整合時的注意事項

- SM90 的 GEMM memory layout 支援與 SM100 不同；不能直接假設所有 transpose 組合通用。
- scaling factor 的排列有 TMA 對齊要求；SM90 使用 FP32，SM100 使用 packed UE8M0。
- 輸入 transpose 與 FP8 casting 通常要由呼叫端另外處理，或融合進前置 kernel。
- masked grouped GEMM 適用於 CPU 不知道各 expert token 數的部分 decode 情境。
- Mega MoE 需要多程序啟動與 symmetric memory，並非單純替換一個矩陣乘法就完成整合。
- 本頁未執行 GPU benchmark；安裝段落是官方流程摘要，不是本機驗證結果。

## 跟其他方案的關係

| 方案 | 層級 | 與 DeepGEMM 的關係 |
|------|------|--------------------|
| CUTLASS／CuTe | CUDA kernel 開發元件 | DeepGEMM 借鑑其概念，並針對 LLM 運算提供較聚焦實作 |
| TileLang 等 kernel DSL | 算子開發與編譯工具 | 著重描述及產生 kernel；DeepGEMM 提供具體最佳化 kernel API |
| vLLM／SGLang 等 serving 引擎 | 模型執行與請求服務 | 層級互補，不代表任一版本會自動使用全部 DeepGEMM 功能 |
| 通用 PyTorch 運算 | 模型開發與張量 API | DeepGEMM 的專用形狀、低精度與 layout 契約需要額外整合 |

## 相關概念

← [[llm-internals]] · [[模型推論與部署]]

## 來源

- [GitHub：deepseek-ai/DeepGEMM](https://github.com/deepseek-ai/DeepGEMM)
- [官方 README](https://github.com/deepseek-ai/DeepGEMM/blob/main/README.md)
- [官方測試與使用範例](https://github.com/deepseek-ai/DeepGEMM/tree/main/tests)
- 原始快照：`raw/2026-10-07-deepseek-ai-DeepGEMM.md`
- Stars、語言與授權來自收錄當日 GitHub API；不將上游 benchmark 當成本機結果。

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/deepseek-ai/DeepGEMM |
| Stars | 8,701（2026-10-07 快照） |
| License | MIT |
| Language | Cuda（GitHub API 分類） |
| 收錄日期 | 2026-10-07 |

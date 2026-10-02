---
title: TileLang
slug: tile-ai-tilelang
created: '2026-10-02'
updated: '2026-10-02'
stars: 8113
language: zh-TW
topics:
- llm-internals
- 模型推論與部署
---

# TileLang

> ⭐8.1k · 以 Python 風格 DSL 與 TVM 編譯基礎建構高效能 GPU／CPU／NPU kernels。

## 快速導航

- [[llm-internals]] — 相關原理與使用邊界。
- [[模型推論與部署]] — 相鄰技術與應用脈絡。

## 是什麼

TileLang 是面向運算 kernel 的領域專用語言，使用 Python 風格語法與 TVM 基礎編譯設施表達矩陣乘法、反量化 GEMM、FlashAttention 與 LinearAttention。它解決的是底層運算實作和最佳化，不是聊天介面或完整的 LLM serving 平台。

開發者以 tile 為單位描述資料搬運、共享記憶體、流水線與矩陣運算，編譯器再針對後端轉換。README 將 CUDA 列為主要後端，ROCm、Metal、Ascend 950 列為支援後端，LLVM CPU、CuTe DSL、WebGPU 則仍屬實驗性；不能將所有後端視為具有相同成熟度。

## 核心特色

- **Pythonic kernel DSL**：以 T.Kernel、T.copy、T.gemm 等原語描述 tiled 計算。

- **JIT 特化**：@tilelang.jit 依輸入形狀及編譯期參數產生 kernel。

- **資料搬運流水線**：T.Pipelined 表達 global-to-shared 的分段搬運。

- **多後端**：支援 CUDA、ROCm、Metal 與 Ascend，並區分實驗性和外部生態適配器。

- **LLM 算子範例**：包含 FlashAttention、DeepSeek MLA、量化及 block-sparse attention。

- **除錯與調校**：提供 layout 視覺化、IR pass 工具及 autotuning 範例。

## 怎麼用

### 安裝

以下為文件指令，並非本次任務的執行紀錄。

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install tilelang
python -c "import tilelang; print(tilelang.__version__)"
```

### 使用流程

1. 依目標 GPU 安裝相容的 PyTorch 與 runtime；ROCm 需要主機 ROCm 環境。

2. 從官方 quickstart 的 GEMM + ReLU 範例開始，先與 PyTorch 參考結果比對。

3. 數值正確後再調 block 大小、pipeline 與 layout，並在實際硬體量測。

4. Ascend 950 需要 USE_ASCEND=ON 原始碼建置、CANN 與 torch_npu；一般 pip 指令不涵蓋所有後端。

### 限制與注意事項

- README 的 benchmark 是上游報告，不代表在本機或所有形狀都會得到同樣加速。

- LICENSE 有 MIT 主文與 2024-12-01 至 2025-03-14 的 Microsoft 合作註記，應閱讀原文而非僅採 GitHub 自動判定。

## 跟其他方案的關係

以下為依功能定位整理的比較，不是效能排名。

| 方案 | 定位 | 適用差異 |
|---|---|---|
| TileLang | 撰寫與編譯 tile-level kernels | 適合自訂算子與硬體調校 |
| 直接編寫底層 GPU 程式 | 自行控制硬體細節 | 需要承擔更多實作與維護工作 |
| LLM serving 引擎 | 管理模型請求、批次及快取 | 與算子編譯層互補，不是同層替代品 |

## 相關概念

← [[llm-internals]] · [[模型推論與部署]]

## 來源

- GitHub：https://github.com/tile-ai/tilelang
- 原始 README 快照：`raw/2026-10-02-tile-ai-tilelang.md`
- Stars 與程式語言為 2026-10-02 GitHub API 快照；功能描述以當日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/tile-ai/tilelang |
| Stars | 8,113 |
| License | MIT 文字，含歷史 Microsoft 合作條款註記；GitHub 標為 Other |
| Language | Python |
| 收錄日期 | 2026-10-02 |

---
title: "ggml"
slug: ggml-org-ggml
created: 2026-11-16
updated: 2026-11-16
stars: 15908
language: zh-TW
topics: ["模型推論與部署", "llm-internals"]
---

# ggml

> ⭐15.9k · 低依賴、可攜的 C/C++ 張量運算函式庫，提供量化與多硬體後端。

## 快速導航

- [[模型推論與部署]]
- [[llm-internals]]

## 是什麼

ggml 是面向機器學習的底層張量函式庫，目標是在最少設定下提供簡單、可攜且有效率的運算能力。它不是下載模型就能聊天的完整應用；使用者需要自行整合計算圖、模型資料與上層推論流程。

README 列出 CPU、GPU、NPU 與瀏覽器等後端，以及多種處理器架構和低位元量化格式。理解其定位時，應把張量執行層與模型檔案格式、模型推論應用分開；例如 llama.cpp 位於更上層，而 GGUF 是相關的模型儲存格式。

## 核心特色

- **C/C++ 實作**：核心以低依賴設計降低整合成本；特定硬體後端仍可能需要對應工具鏈。

- **跨架構支援**：README 列出 x86、ARM、RISC-V、LoongArch、PowerPC、s390x 及 WebAssembly。

- **SIMD 最佳化**：針對 x86、ARM 與 RISC-V 提供最佳化核心。

- **多後端運算**：涵蓋 CPU、GPU、NPU 與瀏覽器環境；應依目標硬體確認建置選項。

- **量化格式**：支援 2 至 8 位元整數量化，以及 MXFP4、NVFP4 微縮放格式。

- **記憶體配置策略**：README 宣稱執行期間零記憶體配置，整合時仍須規劃初始化與緩衝區生命週期。

## 怎麼用

需要 Git、CMake 與 C/C++ 編譯工具鏈。以下為 README 的原始碼建置流程，不會下載模型或啟動聊天服務。

```bash
git clone https://github.com/ggml-org/ggml
cd ggml
mkdir build && cd build
cmake ..
cmake --build . --config Release -j 8
```

1. 先閱讀 examples/simple 的矩陣乘法示範，理解張量與運算流程。

2. 再依目標後端調整建置參數；不要把所有硬體支援理解為預設全部啟用。

3. 需要模型檔案格式時，另外閱讀 docs/gguf.md；建置成功不等於特定模型可執行。

### 使用邊界

這次僅收錄文件，未在本機編譯或測量效能。核心與 CMake 變更的貢獻入口依 README 指向 llama.cpp。

## 跟其他方案的關係

| 方案 | 定位 | 適合情境 |
|---|---|---|
| ggml | 底層張量與運算核心 | 自行整合或研究低階推論執行 |
| llama.cpp | 較上層的 LLM 推論專案 | 想直接執行支援的語言模型 |
| GGUF | 模型儲存格式，不是執行引擎 | 保存模型張量與相關 metadata |

以上比較是架構定位，不是效能排名；量化精度、硬體後端與模型支援需要分別驗證。

## 相關概念

← [[模型推論與部署]] · [[llm-internals]]

## 來源

- [GitHub repository](https://github.com/ggml-org/ggml)
- [官方 README](https://github.com/ggml-org/ggml#readme)
- README 快照：`raw/2026-11-16-ggml-org-ggml.md`
- API metadata：`raw/2026-11-16-ggml-org-ggml.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [ggml-org/ggml](https://github.com/ggml-org/ggml) |
| Stars | 15,908（2026-11-16 擷取） |
| License | MIT |
| Language | C++ |
| 收錄日期 | 2026-11-16 |

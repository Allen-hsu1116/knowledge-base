---
title: "stable-diffusion.cpp"
slug: leejet-stable-diffusion.cpp
created: 2026-09-25
updated: 2026-09-25
stars: 7244
language: zh-TW
topics: ["diffusion-model", "模型推論與部署"]
---

# stable-diffusion.cpp

> ⭐7.2k · 基於 ggml 的 C/C++ 圖像、編輯與影片擴散模型推論引擎。

## 快速導航

- [[diffusion-model]] — 技術與使用情境。
- [[模型推論與部署]] — 延伸閱讀與實務取捨。

## 是什麼

stable-diffusion.cpp 將擴散模型推論實作在 C/C++ 與 ggml 上，提供 CLI、可供整合的核心及相關 UI 生態。雖然名稱源於 Stable Diffusion，目前 README 也列出 Flux、Qwen Image、Wan 與 LTX 等模型家族。

它處理的是圖像與影片生成，不是通用聊天 LLM 伺服器。定位上更接近可嵌入、可本地執行的推論後端；使用者仍需自行取得相容權重，並遵守各模型授權。

專案處於活躍開發，官方明示 API 與命令列選項可能經常變動。支援某個模型家族不代表每種量化、GPU backend 或編輯功能都可互換，部署前應查閱個別模型文件。

## 核心特色

- **C/C++ 與 ggml**
  採用與 llama.cpp 類似的底層路線，但主要推論任務不同。

- **跨硬體後端**
  README 列出 CPU、CUDA、Vulkan、Metal、OpenCL 與 SYCL；實際限制依後端而異。

- **多種權重格式**
  可讀取 PyTorch checkpoint、Safetensors、GGUF，並提供格式轉換模式。

- **生成控制**
  支援 LoRA、部分模型的 ControlNet／IP-Adapter，以及負面提示詞與多種採樣器。

- **記憶體調整**
  提供 Flash Attention、VAE tiling 與效能指南，需配合模型及硬體測試。

## 怎麼用

### 安裝與準備

```bash
git clone --recursive https://github.com/leejet/stable-diffusion.cpp
cd stable-diffusion.cpp
mkdir build && cd build
cmake ..
cmake --build . --config Release
```

1. 上方為官方 CPU-only 編譯路徑，需先具備 Git、CMake 與 C/C++ 工具鏈。
2. 從 releases 下載預編譯版本也是選項；CUDA／Metal 等加速需改用 build guide 的對應設定。
3. 下載符合授權的模型，將下方模型路徑替換為真實檔案，再執行生成。

### 最小操作入口

```bash
./bin/sd-cli -m /path/to/v1-5-pruned-emaonly.safetensors -p "a lovely cat"
```

### 限制與驗證

安裝引擎不會自動下載模型。RAM／VRAM、解析度、採樣步數、backend 與精度都影響結果；本頁未進行生成或效能跑分。

上述指令整理自官方文件，作為讀者操作入口；本次收錄只驗證文件與知識庫建置，未安裝候選專案。

## 跟其他方案的關係

以下是用途定位比較，不是效能排行榜。

| 方案 | 主要角色 | 適用情境 |
|---|---|---|
| stable-diffusion.cpp | C/C++ 擴散模型推論 | 本地 CLI 與嵌入式後端 |
| llama.cpp | 以語言模型推論為主要使用情境 | 文字／對話模型本地化 |
| ComfyUI | 節點式生成工作流 | 視覺化編排與擴充節點 |

## 相關概念

← [[diffusion-model]] · [[模型推論與部署]]

## 來源

- [GitHub](https://github.com/leejet/stable-diffusion.cpp)
- [README](https://github.com/leejet/stable-diffusion.cpp/blob/master/README.md)
- 原始快照：`raw/2026-09-25-leejet-stable-diffusion.cpp.md`
- Metadata：`outputs/2026-09-25-leejet-stable-diffusion.cpp-metadata.json`
- [官方建置指南](https://github.com/leejet/stable-diffusion.cpp/blob/master/docs/build.md)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [leejet/stable-diffusion.cpp](https://github.com/leejet/stable-diffusion.cpp) |
| Stars | 7,244（2026-09-25 快照） |
| License | MIT |
| Language | C++（GitHub 主語言；本文為繁體中文） |
| 收錄日期 | 2026-09-25 |

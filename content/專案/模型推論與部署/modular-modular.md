---
title: Modular Platform
slug: modular-modular
created: 2026-08-21
updated: 2026-08-21
stars: 27948
language: Mojo
topics:
  - ai
  - machine-learning
  - max
  - mojo
  - programming-language
---

# Modular Platform

> ⭐27.9k · 把 Mojo 語言、MAX 推論框架、加速核心與 OpenAI 相容服務整合成同一套 AI 開發與部署平台。

## 快速導航

- 🚀 **模型推論與部署** → [[模型推論與部署]]
- 🧠 **大語言模型** → [[LLM]]
- ⚡ **效能最佳化** → [[Token-Optimization]]

## 是什麼

Modular Platform 是 Modular 建立的統一 AI 開發與部署平台，這個 monorepo 收錄 Mojo 標準函式庫、MAX Framework、加速器 kernels、模型 pipelines、推論伺服器與範例。它希望降低 AI 軟體在語言、框架、硬體後端與部署服務之間的碎片化。

其中 Mojo 是面向高效能運算的程式語言，MAX 則提供模型圖、加速核心與推論服務。兩者可一起使用，也能分開切入：應用開發者可以先使用 MAX 的 Python API，效能工程師則可深入 Mojo 與 kernels。

專案的 MAX Serve 提供 OpenAI 相容端點，讓既有 LLM 客戶端較容易遷移；不過各目錄的授權並不完全相同，導入前仍須分別確認 Apache 2.0 with LLVM Exceptions 與 Modular Community License 的適用範圍。

## 核心特色

- **統一平台**：同一 repo 涵蓋語言、標準函式庫、加速核心、模型 pipeline 與服務層。
- **Mojo 語言**：以 Python 友善語法結合系統程式設計能力，服務高效能 AI 工作負載。
- **MAX Framework**：提供 Python-based graph、模型架構與硬體加速執行能力。
- **OpenAI 相容服務**：MAX inference server 可用熟悉的 API 介面提供模型推論。
- **可貢獻元件**：社群可參與 Mojo stdlib、MAX kernels、模型架構、範例與文件。
- **跨層最佳化**：從語言與 compiler 到 kernel、graph、serving 都可在同一技術棧協同調校。

## 怎麼用

先安裝 Modular CLI，再依官方 quickstart 建立環境。以下是常見起點；實際版本與模型名稱請以官方文件為準。

```bash
curl -s https://get.modular.com | sh -
modular auth
magic shell
```

若要研究原始碼與範例，可直接 clone monorepo：

```bash
git clone https://github.com/modular/modular.git
cd modular
find max/examples mojo/examples -maxdepth 2 -type f
```

MAX 與 Mojo 的入門路徑不同：推論部署優先閱讀 MAX quickstart，語言開發則從 Mojo quickstart 與 `mojo/examples` 開始。

## 跟其他方案的關係

| 方案 | 定位 | 主要優勢 | 適合情境 |
|------|------|----------|----------|
| Modular Platform | 語言到 serving 的整合 AI 平台 | Mojo、MAX、kernels 與服務協同 | 想跨層最佳化 AI 工作負載 |
| [[vLLM]] | 高吞吐 LLM 推論引擎 | 成熟的 batching 與 serving 生態 | 以 Transformer 線上服務為主 |
| [[llama-cpp\|llama.cpp]] | 輕量本地推論 | CPU、量化與廣泛裝置支援 | 個人電腦與邊緣部署 |
| [[jundot-omlx\|oMLX]] | Apple Silicon 推論服務 | MLX、macOS 與分層 KV Cache | Mac 本地多模型服務 |

Modular 與 PyTorch、JAX 並非單純一對一替代；它更強調從編譯器與語言一路延伸到部署。對既有服務而言，OpenAI 相容端點可降低整合成本，但模型覆蓋、硬體支援和授權仍需實測。

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[Token-Optimization]]

## 來源

- [GitHub：modular/modular](https://github.com/modular/modular)
- 原始 README 與 metadata：`raw/2026-08-21-modular-modular.md`
- [MAX 文件](https://max.modular.com/)
- [Mojo 文件](https://mojolang.org/docs/)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/modular/modular |
| Stars | ⭐27,948 |
| License | Apache-2.0 with LLVM Exceptions；MAX 另受 Modular Community License 約束 |
| Language | Mojo |
| 收錄日期 | 2026-08-21 |

---
title: "OpenVINO"
slug: "openvinotoolkit-openvino"
created: "2026-11-19"
updated: "2026-11-19"
stars: 11327
language: "zh-TW"
topics: ["模型推論與部署", "embedded-AI"]
---

# OpenVINO

> ⭐11.3k · 用於模型最佳化與跨 CPU、Intel GPU／NPU 推論部署的工具套件。

## 快速導航

- 🧠 [[模型推論與部署]] — 核心使用情境。
- 🛠 [[embedded-AI]] — 相關工程與整合考量。

## 是什麼

OpenVINO 是深度學習推論最佳化與部署工具套件，應用涵蓋電腦視覺、語音、生成式 AI 與語言模型。它可接收多種框架的模型，轉換後部署，降低執行端對原始訓練框架的依賴。

硬體支援涵蓋 x86／ARM CPU、Intel 整合或獨立 GPU，以及 Intel NPU，但各裝置、作業系統與模型算子仍有相容性條件。LLM 部署可結合 GenAI、Optimum Intel 與 model server 等生態元件，不能把核心套件安裝成功等同完整聊天服務已可用。

## 核心特色

- **多框架輸入**：README 列出 PyTorch、TensorFlow、ONNX、Keras 與 JAX／Flax 等。

- **模型轉換與編譯**：透過 `convert_model` 與 `compile_model` 對目標裝置建立推論程式。

- **多裝置推論**：支援 CPU、Intel GPU 與 NPU，實際能力需查相容性表。

- **多語言 API**：提供 Python、C++、C 與 NodeJS 等介面。

- **生成式 AI 生態**：搭配 GenAI、Tokenizers 與 NNCF 等工具支援管線與最佳化。

- **既有框架整合**：README 提供 ONNX Runtime execution provider 與 vLLM OpenVINO backend 連結。

## 怎麼用

### 安裝與啟動

以下為官方 README 流程或加上隔離環境的改寫；本次收錄並未執行安裝。

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -U openvino
.venv/bin/python -c "import openvino as ov; print(ov.__version__)"
```

### 使用前確認

- 安裝前先查 system requirements 與 supported devices；本頁命令只是安裝與匯入驗證。

- 正式推論另需下載或轉換模型、準備相容輸入，再指定 CPU／GPU／NPU 編譯。

- 量化模型需評估精度與延遲；本次未執行硬體 benchmark，不宣稱特定倍速。

- LLM 使用方式請接續官方 GenAI 指南與 notebooks，而不是直接將一般模型範例當成聊天 API。

## 跟其他方案的關係

以下是依工具職責整理的選型比較，不是效能測試排名。

| 方案 | 主要角色 | 選用考量 |
|---|---|---|
| OpenVINO | 硬體導向模型轉換與推論 runtime | Intel GPU／NPU 或支援的 CPU 部署 |
| ONNX Runtime | 可選 execution provider 的推論介面 | 可使用 OpenVINO provider，兩者可互補 |
| vLLM OpenVINO backend | 將 serving 層接到 OpenVINO | 需要 LLM 服務介面時再評估版本相容性 |

## 相關概念

← [[模型推論與部署]] · [[embedded-AI]]

## 來源

- [GitHub](https://github.com/openvinotoolkit/openvino)
- [官方 README](https://github.com/openvinotoolkit/openvino/blob/master/README.md)
- 原始快照：`raw/2026-11-19-openvinotoolkit-openvino.md`

資料為 2026-11-19 抓取的預設分支快照；Stars 與文件內容會持續變動。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/openvinotoolkit/openvino |
| Stars | 11,327 |
| License | Apache-2.0 |
| Language | C++（原始碼）；zh-TW（本文） |
| 收錄日期 | 2026-11-19 |

---
title: ONNX Runtime
slug: microsoft-onnxruntime
created: 2026-08-22
updated: 2026-08-22
stars: 21451
language: C++
topics: [onnx, inference, training, hardware-acceleration, cross-platform]
---

# ONNX Runtime

> ⭐21.5k · Microsoft 維護的跨平台機器學習推論與訓練加速器，透過 ONNX 將不同框架模型部署到多種硬體後端。

## 快速導航

- 🚀 [[模型推論與部署]] — 把訓練完成的模型轉成高效、可攜的執行服務
- 🧠 [[LLM]] — Transformer 與其他深度學習模型可透過 ONNX 圖執行
- 📱 [[embedded-AI]] — 同一模型可針對 CPU、GPU、行動與邊緣加速器部署

## 是什麼

ONNX Runtime（ORT）是跨平台的機器學習執行引擎，支援推論與訓練加速。模型可由 PyTorch、TensorFlow/Keras、scikit-learn、LightGBM、XGBoost 等工具匯出或轉換成 ONNX，再交給 ORT 做圖最佳化與硬體後端執行。

它的核心價值是將「訓練框架」與「部署執行環境」解耦。團隊可以使用熟悉的框架開發模型，再以統一的 ONNX graph 部署到不同作業系統、CPU、GPU 或專用加速器，降低為每個平台重寫推論程式的成本。

ORT 也提供訓練加速能力，可在多節點 NVIDIA GPU 上加速 Transformer 訓練。對多數產品而言，更常見用途仍是將已完成的模型整合進伺服器、桌面、行動或瀏覽器應用。

## 核心特色

- **跨框架模型入口** — 接受 PyTorch、TensorFlow/Keras 與多種傳統 ML 工具產生的 ONNX 模型。
- **Execution Provider 架構** — 依硬體選用 CPU、CUDA、TensorRT、DirectML、CoreML、QNN 等執行後端。
- **Graph 最佳化** — 在執行前進行運算融合、常數折疊與圖轉換，減少延遲與成本。
- **跨平台部署** — 支援多種作業系統、驅動與裝置類型，讓同一模型資產重用。
- **推論與訓練** — 除了低延遲推論，也可用少量程式變更加速部分 PyTorch 分散式訓練。
- **多語言 API** — 可在 C/C++、Python、C#、Java、JavaScript 等應用中整合。

## 怎麼用

以 Python 安裝 CPU 版 runtime：

```bash
python3 -m pip install onnxruntime
```

若使用 NVIDIA CUDA，依官方相容性矩陣選擇 GPU 套件：

```bash
python3 -m pip install onnxruntime-gpu
```

載入 ONNX 模型並執行：

```python
import onnxruntime as ort
session = ort.InferenceSession("model.onnx")
outputs = session.run(None, {session.get_inputs()[0].name: input_array})
```

部署前應確認模型 opset、Execution Provider、驅動與 ORT release 的相容性，並以實際工作負載量測 latency、throughput 與記憶體。

## 跟其他方案的關係

| 方案 | 主要抽象 | 硬體範圍 | 適合場景 |
|------|----------|----------|----------|
| **ONNX Runtime** | ONNX graph + Execution Provider | CPU、GPU、NPU、行動與 Web | 跨框架、跨平台部署 |
| [[NVIDIA-TensorRT-LLM\|TensorRT-LLM]] | NVIDIA LLM 專用 runtime | NVIDIA GPU | 追求大型語言模型極致吞吐 |
| [[vLLM]] | LLM serving engine | 主要為 GPU | OpenAI 相容高吞吐文字生成 |
| [[llama-cpp\|llama.cpp]] | GGUF 本地推論 | CPU、GPU、Apple Silicon | 消費級硬體與離線 LLM |
| [[pytorch-pytorch\|PyTorch]] | 動態訓練／推論框架 | 多種加速器 | 模型研究、訓練與原型開發 |

ORT 不是模型伺服器本身，而是可嵌入產品的執行引擎；vLLM、TensorRT-LLM 更偏向 LLM serving，PyTorch 則更偏向開發與訓練。

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[embedded-AI]]

## 來源

- GitHub：https://github.com/microsoft/onnxruntime
- Raw 檔案：raw/2026-08-22-microsoft-onnxruntime.md
- 官方文件：https://onnxruntime.ai/docs/

---

| 項目 | 值 |
|------|----|
| **GitHub** | https://github.com/microsoft/onnxruntime |
| **Stars** | ⭐21,451 |
| **License** | MIT |
| **Language** | C++ |
| **收錄日期** | 2026-08-22 |

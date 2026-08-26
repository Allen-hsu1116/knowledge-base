---
title: PyTorch
slug: pytorch-pytorch
created: 2026-07-03
updated: 2026-08-26
stars: 101233
language: Python
topics:
  - autograd
  - deep-learning
  - gpu
  - machine-learning
  - neural-network
  - numpy
  - python
  - tensor
  - pytorch
---

# PyTorch

> ⭐101233 · Python 動態神經網路框架，GPU 加速的張量計算與自動微分，深度學習的基石

## 快速導航


- 🧠 **模型生態** → [[huggingface-transformers|Hugging Face Transformers]] · [[llama-cpp|llama.cpp]]
- 📖 **學習資源** → [[microsoft-AI-For-Beginners|AI for Beginners]] · [[rasbt-LLMs-from-scratch|LLMs from Scratch]]
- ⚡ **推論部署** → [[vLLM]] · [[Ollama]]

## 是什麼

PyTorch 是 Meta（Facebook）開源的 Python 深度學習框架，以動態計算圖（define-by-run）為核心設計。不同於 TensorFlow 早期的靜態計算圖，PyTorch 讓你用標準 Python 控制流寫神經網路——if、for、while 都可以直接用，除錯時可以隨時 print 張量內容，開發體驗大幅提升。

PyTorch 的核心是張量（Tensor）計算和自動微分（autograd）。張量支援 GPU/TPU 加速，autograd 自動追蹤所有運算建立計算圖，反向傳播時計算梯度。這使得從研究原型到生產部署的流程非常順暢——同一份程式碼可以先在筆電上跑 CPU，再切換到 GPU 叢集訓練。

在 LLM 時代，PyTorch 的地位更加關鍵。Hugging Face Transformers、vLLM、SGLang、PyTorch Lightning 等主流 LLM 工具鏈全部建立在 PyTorch 之上。Flash Attention、KV Cache 等推論加速技術也是在 PyTorch 的張量操作基礎上實現的。可以說，沒有 PyTorch 就沒有今天的 LLM 生態。

## 核心特色

- **動態計算圖**：define-by-run，用標準 Python 控制流寫神經網路，除錯直覺
- **自動微分 (autograd)**：自動追蹤運算建計算圖，反向傳播自動算梯度
- **GPU/TPU 加速**：張量運算無縫切換 CPU/GPU/TPU，支援分散式訓練
- **豐富生態系**：TorchVision（電腦視覺）、TorchText（NLP）、TorchAudio（音訊）、TorchServe（部署）
- **C++ 前端 (LibTorch)**：生產環境可用 C++ 部署，不需 Python runtime
- **分散式訓練**：DDP、FSDP、RPC，支援多 GPU 多節點訓練
- **JIT 編譯 (TorchScript)**：可將模型編譯為靜態圖，優化推論效能
- **量化與剪枝**：內建量化（quantization）和模型壓縮工具，邊緣部署友善

## 怎麼用

安裝：

```bash
# 使用 pip（CUDA 11.8）
pip install torch torchvision torchaudio

# 使用 pip（CPU only）
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# 使用 conda
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia

# 使用 uv
uv pip install torch torchvision torchaudio
```

基本範例：

```python
import torch
import torch.nn as nn

# 建立簡單的線性模型
model = nn.Sequential(
    nn.Linear(784, 256),
    nn.ReLU(),
    nn.Linear(256, 10)
)

# 搬到 GPU
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model = model.to(device)

# 訓練迴圈
optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)
for epoch in range(10):
    for batch_x, batch_y in dataloader:
        batch_x, batch_y = batch_x.to(device), batch_y.to(device)
        loss = nn.functional.cross_entropy(model(batch_x), batch_y)
        loss.backward()
        optimizer.step()
        optimizer.zero_grad()
```

## 跟其他方案的關係


- **[[huggingface-transformers|Hugging Face Transformers]]** → 建立在 PyTorch 之上的模型庫，PyTorch 是其預設後端
- **[[vLLM]]** → PyTorch 基礎上的 LLM 推論引擎，利用 PyTorch 的 CUDA 操作實現 PagedAttention
- **TensorFlow** → Google 的競爭框架，靜態圖設計，PyTorch 在研究界更受歡迎
- **JAX** → Google 的新一代框架，函數式編程風格，PyTorch 更易上手
- **[[marin-community-marin\|Marin]]** → 以 JAX／Levanter 等元件建立可重現的基礎模型研發與叢集訓練流程，和 PyTorch 的通用 framework 定位不同
- **[[microsoft-AI-For-Beginners|AI for Beginners]]** → 微軟 AI 課程同時教 PyTorch 和 TensorFlow

← [[huggingface-transformers|Hugging Face Transformers]] · [[vLLM]] · [[rasbt-LLMs-from-scratch|LLMs from Scratch]]

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[huggingface-transformers]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[vLLM]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[huggingface-transformers]] · [[llama-cpp]] · [[microsoft-AI-For-Beginners]] · [[rasbt-LLMs-from-scratch]] · [[marin-community-marin]]

## 來源

- GitHub: <https://github.com/pytorch/pytorch>
- 官網: <https://pytorch.org>
- 文件: <https://pytorch.org/docs>
- 原始 README: `raw/2026-07-03-pytorch-pytorch.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/pytorch/pytorch |
| Stars | ⭐101233|
| License | BSD-style (開源) |
| 收錄日期 | 2026-07-03 |

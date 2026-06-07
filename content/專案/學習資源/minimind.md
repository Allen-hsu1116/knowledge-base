# MiniMind

> 從零開始訓練 64M 參數的小型 LLM，單卡 3090 兩小時即可復現，完整覆蓋 Pretrain → SFT → RLHF 全流程。

## 快速導航
- 🧠 **LLM 底層技術** → [[llm-internals]]（了解 Transformer 推論加速）
- 🧠 **LLM 概念** → [[LLM]]（大型語言模型總覽）
- 🛠 **模型推論與部署** → [[模型推論與部署]]（推論加速與部署）
- 📖 **LLMs from Scratch** → [[rasbt-LLMs-from-scratch]]（另一個從零學 LLM 的資源）

## 是什麼

MiniMind 是一個教學導向的開源 LLM 專案，目標是讓任何人在單卡 GPU 上從零訓練一個 64M 參數的語言模型。主線結構對齊 Qwen3/Qwen3-MoE，提供 Dense（64M）和 MoE（198M-A64M）兩種架構。所有核心算法用純 PyTorch 原生實現，不依賴 transformers/trl/peft 等高層封裝。

## 核心特色

- **極低成本復現**：單卡 3090、2 小時、不到 3 元人民幣即可完成 SFT 訓練
- **完整訓練鏈路**：Pretrain → SFT → LoRA → DPO → RLAIF（PPO/GRPO/CISPO）→ Tool Use → Agentic RL → 模型蒸餾，全流程開源
- **純 PyTorch 實現**：核心模組從零手寫，適合理解 LLM 內部機制
- **兼容主流生態**：支援 llama.cpp、vllm、ollama、Hugging Face Transformers、Llama-Factory
- **多模態擴展**：衍生 MiniMind-V（視覺）、MiniMind-O（Omni）、MiniMind-dLM（擴散語言模型）、MiniMind-Linear（線性注意力）

## 怎麼用

```bash
# 克隆與安裝
git clone --depth 1 https://github.com/jingyaogong/minimind
cd minimind && pip install -r requirements.txt

# 下載模型
modelscope download --model gongjy/minimind-3 --local_dir ./minimind-3

# 預訓練
cd trainer && python train_pretrain.py

# SFT
cd trainer && python train_full_sft.py

# 評估
python eval_llm.py --load_from ./minimind-3

# OpenAI API 兼容服務
python serve_openai_api.py

# WebUI
cd scripts && streamlit run web_demo.py
```

支援單機多卡（DDP/DeepSpeed）、wandb/SwanLab 可視化、檢查點續訓。

## 跟其他方案的關係

| 專案 | 定位 | 參數量 | 特色 |
|------|------|--------|------|
| **MiniMind** | 教學導向，從零訓練 | 64M (Dense) / 198M (MoE) | 完整鏈路、純 PyTorch、極低成本 |
| [[rasbt-LLMs-from-scratch|LLMs from Scratch]] | 教學導向，書籍+程式碼 | 各種規模 | 理論完整、適合深度學習 |
| [[huggingface-transformers|Hugging Face Transformers]] | 生產框架 | 任意 | 高層封裝、生態最豐富 |
| [[llama-cpp|llama.cpp]] | 推論引擎 | 任意 | C++ 實現、本地部署首選 |

MiniMind 和 LLMs from Scratch 都主打「從零理解 LLM」，但 MiniMind 更強調「完整訓練流程的實際操作」，而 LLMs from Scratch 更偏理論教學。MiniMind 也兼容 Hugging Face Transformers 格式，可以無縫接軌到主流生態。

## 相關概念
← [[LLM]] · [[llm-internals]] · [[模型推論與部署]] · [[rasbt-LLMs-from-scratch]]

## 來源
- raw/2026-05-14-minimind.md

---

- **GitHub**: https://github.com/jingyaogong/minimind
- **Stars**: ⭐49,797
- **License**: Apache 2.0
- **收錄日期**: 2026-05-14
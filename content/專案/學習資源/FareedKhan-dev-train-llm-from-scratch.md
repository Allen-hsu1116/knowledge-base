---
title: Train LLM From Scratch
slug: FareedKhan-dev-train-llm-from-scratch
created: 2026-05-31
updated: 2026-05-31
stars: 2258
language: Jupyter Notebook
---

# Train LLM From Scratch

> ⭐2.3k · 從下載資料到生成文字，一步步用 PyTorch 從零訓練自己的 LLM

快速導航：[[rasbt-LLMs-from-scratch|LLMs from Scratch]] · [[llm-internals|LLM 底層技術]] · [[huggingface-transformers|Hugging Face Transformers]] · [[minimind|MiniMind]]

## 是什麼

Train LLM From Scratch 是一個實作導向的開源專案，教你如何從頭開始用 PyTorch 訓練一個語言模型。整個過程基於經典論文「Attention is All You Need」，從下載資料集（The Pile，825GB 多樣化文字語料）、資料預處理、建構 Transformer 架構，到實際訓練和文字生成，每個步驟都有完整程式碼和詳細解說。

這不是一個抽象的教學——它提供可執行的腳本，讓你在單一 GPU 上就能訓練 13M 到 2B 參數的模型。專案還附帶詳細的 GPU 記憶體需求對照表，幫助你根據手上的硬體規劃模型規模。作者逐步拆解 Transformer 的每個元件：Multi-Head Attention、MLP、Positional Encoding，讓你真正理解「為什麼」而不只是「怎麼做」。

與 karpathy 的 llm.c 或 nanoGPT 不同，這個專案更偏向完整教學流程——從資料取得到模型生成全部走一遍，適合想要從零到一理解整個 LLM 訓練流程的初學者。程式碼結構清晰，每個模組獨立檔案，方便分別閱讀和修改實驗。

## 核心特色

- **從零建構 Transformer**：用 PyTorch 從頭實作 Multi-Head Attention、MLP、Transformer Block，不是呼叫高階 API，每行程式碼都看得懂
- **含完整資料流程**：提供下載腳本（The Pile 資料集）、預處理腳本（tokenization → HDF5）、訓練腳本和生成腳本，一條龍流程
- **彈性模型規模**：從 13M 到 2B+ 參數，透過修改 config.py 調整 vocab_size、context_length、n_embed、n_head、n_blocks 等超參數
- **GPU 記憶體對照表**：詳細列出從 RTX 3050 到 A100 各 GPU 的記憶體限制和可訓練的最大模型規模，幫你規劃硬體需求
- **步驟化程式碼解說**：README 內嵌每個模組的逐步教學，從 importing libraries 到 generating text 共 13 個章節
- **MIT 開源授權**：完全免費，可自由修改和商用

## 怎麼用

安裝依賴並下載資料：

```bash
git clone https://github.com/FareedKhan-dev/train-llm-from-scratch.git
cd train-llm-from-scratch
pip install -r requirements.txt
```

下載訓練資料（The Pile 資料集）：

```bash
python scripts/data_download.py
```

預處理資料（tokenization → HDF5）：

```bash
python scripts/data_preprocess.py
```

修改 `config/config.py` 調整模型參數：

```python
VOCAB_SIZE = 50304       # 詞彙表大小
CONTEXT_LENGTH = 128     # 最大序列長度
N_EMBED = 128            # 嵌入維度
N_HEAD = 8               # 注意力頭數
N_BLOCKS = 1            # Transformer 層數
```

開始訓練：

```bash
python scripts/train_transformer.py
```

生成文字：

```bash
python scripts/generate_text.py
```

## 跟其他方案的關係

| 方案 | Stars | 語言 | 特色1 | 特色2 | 授權 |
|------|-------|------|-------|-------|------|
| **Train LLM From Scratch** | ⭐2.3k | PyTorch | 完整從零到一流程 | 詳細 GPU 對照表 | MIT |
| [[rasbt-LLMs-from-scratch\|LLMs from Scratch]] | ⭐93.8k | PyTorch | 書本式教學 | 涵蓋 GPT 系列 |Apache-2.0 |
| [[codecrafters-io-build-your-own-x\|Build Your Own X]] | ⭐504.3k | 多語言 | 廣泛的 DIY 專案 | 社群貢獻 | 多種 |
| nanoGPT | ⭐12k+ | PyTorch | 最簡 GPT 訓練 | Karpathy 出品 | MIT |
| llm.c | ⭐25k+ | C/CUDA | 極致效能 | 去除 PyTorch 依賴 | MIT |

← [[rasbt-LLMs-from-scratch|LLMs from Scratch]] · [[llm-internals|LLM 底層技術]] · [[huggingface-transformers|Hugging Face Transformers]]

## 來源

- GitHub: <https://github.com/FareedKhan-dev/train-llm-from-scratch>
- 原始 README: `raw/2026-05-31-FareedKhan-dev-train-llm-from-scratch.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [FareedKhan-dev/train-llm-from-scratch](https://github.com/FareedKhan-dev/train-llm-from-scratch) |
| Stars | ⭐2,258 |
| License | MIT |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-05-31 |
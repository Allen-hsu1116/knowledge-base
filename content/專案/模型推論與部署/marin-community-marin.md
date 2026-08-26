---
title: Marin
slug: marin-community-marin
created: 2026-08-26
updated: 2026-08-26
stars: 2107
language: Python
topics: [foundation-models, llm-training, pretraining, posttraining, evaluation, scaling-laws, mixture-of-experts]
---

# Marin

> ⭐2.1k · 開放式基礎模型研發平台，把資料整理、預訓練、後訓練、評估、擴展實驗與失敗紀錄放進可重現的研究流程。

## 快速導航

- 🧠 [[LLM]] — Marin 研究與訓練的核心對象是大型語言與其他基礎模型
- 🚀 [[模型推論與部署]] — 完整模型生命週期從訓練 artifacts 延伸到評估與服務
- 🧰 [[AI-Skills]] — repo 以 Agent Skills 保存新增資料集與擴展實驗的方法

## 是什麼

Marin 同時是一個研究計畫、軟體平台與開放社群，目標是讓基礎模型的研發過程可觀察、可重現、可分叉。它涵蓋資料策展、轉換、過濾、tokenization、pretraining、posttraining 與 evaluation，不只釋出模型 checkpoints，也公開建模過程所需的程式、基礎設施與實驗知識。

專案的核心價值是 open development：從原始資料到最終模型的步驟、實驗、決策與失敗都持續記錄。這種做法把「模型是怎麼做出來的」視為主要產物，而不只是最後一次成功 run 的權重與 benchmark 數字。

Marin 的工作流將 experiment 表達為彼此有依賴關係的 steps，像 Makefile 一樣依拓撲順序執行。相同抽象可從 CPU 上的 TinyStories 教學模型延伸到資料混合、大型 GPU／TPU pod、scaling-law sweep 與超大型 MoE 研究；也已被用於 audio-text、DNA 與 protein model 專案。

## 核心特色

- **端到端模型研發** — 整合資料處理、tokenization、預訓練、後訓練與評估生命週期。
- **Open development** — 公開實驗決策、失敗紀錄、process knowledge 與可重現 artifacts。
- **依賴圖實驗系統** — 將 pipeline 拆成 lazy steps，再依拓撲順序由 StepRunner 執行。
- **從教學到大規模叢集** — 支援 CPU 小模型、GPU pods、Google TPU Research Cloud 與 multislice TPU。
- **Scaling-law 研究** — Delphi suite 從小型 runs 建立 scaling recipe，預測更大 compute budget 的模型行為。
- **大型 MoE 計畫** — 研究 500B+ total parameters、5e24 model-FLOPs 的 mixture-of-experts 模型。
- **研究方法即 Skill** — `.agents/skills/` 與 `.claude/skills/` 保存新增資料集、scaling heuristic 等可載入流程。

## 怎麼用

先依官方安裝文件準備 Python 與對應的運算環境，再 clone 專案並安裝：

```bash
git clone https://github.com/marin-community/marin.git
cd marin
pip install -e .
```

官方 first experiment 以 TinyStories 示範「先 tokenization、再訓練」的 step dependency。核心程式結構如下：

```python
from marin.execution.lazy import lower
from marin.execution.step_runner import StepRunner
from marin.experiment.data import tokenized
from marin.experiment.train import train_lm

training_data = tokenized(
    name="tokenized/tinystories",
    source="roneneldan/TinyStories",
    tokenizer=marin_tokenizer,
)
model = train_lm(
    name="checkpoints/marin-nano-tinystories",
    model=llama_nano,
    datasets={training_data: 1.0},
    num_train_steps=100,
)
StepRunner().run([lower(model)])
```

正式使用前應閱讀最新版 installation 與 first-experiment 文件；大型訓練還需要雲端權限、accelerator 配額、物件儲存、W&B 等觀測設定，不能把教學用 CPU config 直接視為 production recipe。

## 跟其他方案的關係

| 方案 | 核心定位 | 生命週期範圍 | 主要特色 | 適合情境 |
|------|----------|--------------|----------|----------|
| **Marin** | 開放基礎模型研發平台 | 資料→預訓練→後訓練→評估 | process knowledge、step DAG、scaling | 可重現的大型研究計畫 |
| [[pytorch-pytorch\|PyTorch]] | 通用深度學習框架 | tensor、autograd、訓練與部署 primitives | 生態廣、硬體支援成熟 | 建構各類模型與研究程式 |
| [[huggingface-transformers\|Transformers]] | 預訓練模型與訓練 API 生態 | 模型定義、微調、推論 | 大型 Model Hub 與 Trainer | 使用或微調既有模型 |
| [[hiyouga-LlamaFactory\|LlamaFactory]] | LLM 微調平台 | SFT、LoRA、DPO、PPO 與推論 | 100+ 模型、Web UI | 下游微調與對齊 |
| [[mlflow-mlflow\|MLflow]] | AI 工程追蹤與治理平台 | tracing、eval、prompt、registry | OpenTelemetry、模型註冊 | 觀測與管理實驗／應用 |

Marin 不是單純的訓練函式庫或模型下載器；它把研究計畫的資料、execution graph、叢集執行、方法論和紀錄視為一體。底層可使用 Levanter、JAX 等訓練元件，並可搭配 MLflow／W&B 類觀測工具，但它更聚焦「如何公開且可重現地研發基礎模型」。

## 相關概念

← [[LLM]] · [[模型推論與部署]] · [[AI-Skills]]

## 來源

- GitHub：https://github.com/marin-community/marin
- 官方網站：https://marin.community
- 官方文件：https://marin.readthedocs.io/en/latest/
- Raw 檔案：raw/2026-08-26-marin-community-marin.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/marin-community/marin |
| Stars | ⭐2107 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-08-26 |

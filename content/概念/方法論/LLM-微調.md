---
title: LLM 微調
slug: LLM-微調
language: zh-TW
---

# LLM 微調

> LLM 微調是透過 SFT、DPO、PPO、LoRA/QLoRA 等方法在大語言模型上進行領域適應和指令微調，讓通用模型貼合特定任務需求。

## 核心內容

LLM 微調是指在預訓練大語言模型的基礎上，以特定領域資料或指令範例進一步訓練模型，使其在目標任務上表現更佳。主要方法分為幾類：SFT（Supervised Fine-Tuning，監督式微調）以標註的指令-回應對訓練模型遵循指令；DPO（Direct Preference Optimization）直接以偏好資料優化模型，不需複雜的獎勵模型；PPO（Proximal Policy Optimization）透過 RLHF 流程以獎勵模型引導模型行為。

在資源效率方面，LoRA（Low-Rank Adaptation）與 QLoRA（Quantized LoRA）透過低秩矩陣適應大幅減少可訓練參數量，使微調可在消費級 GPU 上完成。QLoRA 更進一步以量化降低記憶體佔用，讓 70B 模型的微調成為可能。

LlamaFactory 等框架讓微調流程零代碼化，透過 Web UI 即可設定訓練參數、選擇方法、監控訓練過程，大幅降低微調門檻。

## 關鍵要素

- **SFT（監督式微調）**：以標註資料訓練模型遵循指令，微調的基礎方法
- **DPO（直接偏好優化）**：以偏好資料直接優化，簡化 RLHF 流程
- **PPO（近端策略優化）**：透過獎勵模型引導，傳統 RLHF 的核心演算法
- **LoRA / QLoRA**：低秩適應大幅減少訓練參數，QLoRA 以量化進一步降低資源需求
- **零代碼框架**：LlamaFactory 等 Web UI 工具讓微調門檻降至最低

## 相關概念

- [[LLM]] — 微調的對象是預訓練 LLM，微調讓通用模型適應特定領域
- [[模型推論與部署]] — 微調完成後的模型需要推論與部署基礎設施支援

## 來源
- 知識庫內 LLM 微調相關原始資料與專案頁面
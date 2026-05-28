# heretic

- **Repo**: [p-e-w/heretic](https://github.com/p-e-w/heretic)
- **Stars**: 22,010 ⭐
- **Language**: Python
- **Created**: 2025-09-21

> 全自動移除語言模型審查機制（safety alignment）的工具，結合 directional ablation 與 Optuna TPE 優化器，在最小化 KL divergence 的同時消除拒答行為。

## 核心特點

- **全自動化**：一行指令即可完成解審查，無需手動調參
- **品質保留**：透過共最小化拒答數與 KL divergence，最大限度地保留原始模型能力
- **廣泛支援**：支援大多數 dense 模型、多模態模型、MoE 架構及 Qwen3.5 等混合模型
- **低顯存方案**：支援 bitsandbytes 4-bit 量化和 LoRA
- **內建評估**：內建拒答率和 KL divergence 評估功能
- **社群驅動**：已有超過 3000 個社群發布的 Heretic 模型

## 相關概念

- [[LLM]]
- [[llm-internals]]
- [[Prompt-Engineering]]
- [[模型推論與部署]]
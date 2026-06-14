---
title: Heretic
slug: p-e-w-heretic
created: 2025-09-21
updated: 2026-05-28
stars: 22010
language: Python
---

# Heretic

> ⭐22k · 全自動移除語言模型審查機制的工具，結合 directional ablation 與 Optuna TPE 優化器

快速導航：[[LLM]] · [[llm-internals|LLM 內部機制]] · [[Prompt-Engineering]] · [[模型推論與部署]]

## 是什麼

Heretic 是一個全自動化的語言模型「解審查」（censorship removal / safety alignment removal）工具。它結合了 directional ablation（又稱「abliteration」）技術與 Optuna TPE 參數優化器，在最小化 KL divergence 的同時消除模型的拒答行為，讓模型恢復到未經安全對齊的原始能力狀態。

## 核心特色

- 🤖 **全自動化**：一行指令即可完成解審查，無需手動調參
- 🎯 **品質保留**：透過共最小化拒答數與 KL divergence，最大限度地保留原始模型能力
- 🌐 **廣泛支援**：支援大多數 dense 模型、多模態模型、MoE 架構及 Qwen3.5 等混合模型
- 💾 **低顯存方案**：支援 bitsandbytes 4-bit 量化和 LoRA，降低硬體門檻
- 📊 **內建評估**：內建拒答率和 KL divergence 評估功能
- 👥 **社群驅動**：已有超過 3000 個社群發布的 Heretic 模型

## 怎麼用

```bash
# 安裝
pip install -U heretic-llm

# 基本用法：對模型執行解審查
heretic --model path/to/your/model

# 使用 4-bit 量化（低顯存）
heretic --model path/to/your/model --quantization 4bit

# 使用 LoRA
heretic --model path/to/your/model --lora

# 評估模型
heretic-eval --model path/to/your/model
```

支援多數主流開源模型，包括 Llama、Qwen、Mistral 及其變體。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 全自動 | KL 最佳化 | 量化支援 | 社群模型 |
|------|-------|------|--------|----------|---------|---------|
| **Heretic** | ⭐22k | 解審查工具 | ✅ | ✅ | ✅ 4-bit/LoRA | ✅ 3000+ |
| 手動 abliteration | — | 學術方法 | ❌ | ❌ | ❌ | ❌ |
| Direct fine-tuning | — | 微調 | ❌ | ❌ | ✅ | ✅ |

← [[LLM]] · [[llm-internals|LLM 內部機制]] · [[Prompt-Engineering]] · [[模型推論與部署]]

## 來源

- GitHub: <https://github.com/p-e-w/heretic>
- 原始 README: `raw/2026-05-28-p-e-w-heretic.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [p-e-w/heretic](https://github.com/p-e-w/heretic) |
| Stars | ⭐22,010 |
| License | — |
| Language | Python |
| 收錄日期 | 2026-05-28 |
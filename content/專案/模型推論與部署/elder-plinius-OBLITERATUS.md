---
title: OBLITERATUS
slug: elder-plinius-OBLITERATUS
created: 2026-08-22
updated: 2026-08-22
stars: 7788
language: Python
topics: [llm-safety, abliteration, mechanistic-interpretability, red-teaming, model-editing]
---

# OBLITERATUS

> ⭐7788 · 研究與移除 LLM 拒答行為的開源 abliteration 工具箱，結合拒答方向抽取、權重投影、steering vectors 與安全能力評估。

## 快速導航


- 🛡 [[prompt-security]] — 從權重與 activation 層面研究 guardrail 的脆弱性
- 🧠 [[llm-internals]] — 透過層、attention head、FFN 與 residual stream 分析模型內部
- 🚀 [[模型推論與部署]] — 修改後模型需要量化、硬體配置、驗證與安全部署

## 是什麼

OBLITERATUS 是一套 alignment research 工具，研究大型語言模型如何在 activation space 與權重中編碼拒答行為。它以 harmful／harmless prompt 對收集隱藏狀態，使用 mean difference、SVD、whitened SVD 等方法抽取 refusal directions，再透過權重投影或 inference-time steering 降低拒答。

專案把流程拆成 SUMMON、PROBE、DISTILL、EXCISE、VERIFY、REBIRTH 六階段，並提供 analysis-informed pipeline。後者先判斷 alignment imprint、concept cone、跨層方向與自我修復風險，再自動選擇方向數、層與投影強度。

這類工具會移除模型既有安全護欄，因此不等同於一般模型微調。它適合機制可解釋性、alignment robustness 與紅隊研究；輸出模型必須在隔離環境中重新評估，並由使用者承擔部署與內容風險。

## 核心特色

- **多種拒答方向抽取** — 支援 mean difference、SVD、whitened SVD、linear probes 與迭代 refinement。
- **永久與可逆介入** — 可直接投影權重，也可使用 inference-time steering vectors，移除 hook 後恢復原模型。
- **15 組分析模組** — 涵蓋 cross-layer alignment、logit lens、causal tracing、residual decomposition 與跨模型 transfer。
- **分析驅動自動設定** — 根據 guardrail 幾何與 entanglement 自動選 layer、方向數與補償 pass。
- **完整評估** — 比較 refusal rate、perplexity、coherence、KL divergence、CKA 與 effective rank。
- **多種介面** — 提供 Hugging Face Space、Colab、Gradio UI、CLI、Python API 與 YAML 實驗設定。
- **大型模型執行支援** — 包含多 GPU sharding、量化、GPU calculator 與遠端 SSH 執行。

## 怎麼用

從原始碼安裝 CLI 與本地 UI：

```bash
git clone https://github.com/elder-plinius/OBLITERATUS.git
cd OBLITERATUS
python3 -m pip install -e ".[spaces]"
obliteratus ui
```

執行最基本的研究管線：

```bash
obliteratus obliterate meta-llama/Llama-3.1-8B-Instruct --method advanced
```

在正式實驗前，先用小模型與隔離環境驗證；記錄原始 checkpoint、prompt set、拒答率、perplexity 與能力基準。不要把移除安全護欄的模型直接暴露到公開服務或高權限 Agent 工具鏈。

## 跟其他方案的關係

| 方案 | 主要用途 | 介入方式 | 安全定位 |
|------|----------|----------|----------|
| **OBLITERATUS** | 拒答幾何分析與移除 | 權重投影 + steering | alignment／紅隊研究 |
| [[p-e-w-heretic\|Heretic]] | 自動化 censorship removal | 最佳化 abliteration | 本地模型實驗 |
| TransformerLens | Transformer 機制分析 | hooks、activation cache | 通用可解釋性研究 |
| RepE | representation engineering | steering vectors | 行為方向控制 |
| [[promptfoo-promptfoo\|Promptfoo]] | LLM 評測與紅隊 | 黑箱 prompt／response 測試 | 部署前安全驗證 |
| [[Tencent-AI-Infra-Guard\|AI-Infra-Guard]] | AI 全棧安全掃描 | Agent／Skill／MCP／模型評估 | 防禦與治理 |

OBLITERATUS 專注模型內部的 weight-level refusal removal；Promptfoo 與 AI-Infra-Guard 偏向外部安全評測。兩類工具可互補：先在受控環境進行模型介入，再用獨立基準驗證能力損失與風險上升。

## 相關概念


← [[prompt-security]] · [[llm-internals]] · [[模型推論與部署]]

## 來源

- GitHub：https://github.com/elder-plinius/OBLITERATUS
- Raw 檔案：raw/2026-08-22-elder-plinius-OBLITERATUS.md
- 研究基礎包含 Arditi et al. (2024) 與 representation engineering 相關工作

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/elder-plinius/OBLITERATUS |
| Stars | ⭐7788|
| License | GNU AGPLv3 |
| 收錄日期 | 2026-08-22 |

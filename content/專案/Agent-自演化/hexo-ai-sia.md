---
title: SIA (Self-Improving AI)
slug: hexo-ai-sia
created: 2026-03-25
updated: 2026-06-14
stars: 1655
language: Python
---

# SIA (Self-Improving AI)

> ⭐1.7k · 自我改進 AI 框架，讓 AI Agent 同時改進 Harness 和模型權重，LawBench 70.1%、MLE-Bench #1。

快速導航：[[agent-harness-optimization|Agent Harness 優化]] · [[self-correction|Self-Correction]] · [[harness-engineering|Harness Engineering]] · [[affaan-m-ECC|ECC]]

## 是什麼

SIA（Self-Improving AI）是 Hexo AI 推出的自我改進框架，核心論文出自 Hebbar 等人 2026 年的《SIA: Self Improving AI with Harness & Weight Updates》。它實現了一個自我改進迴圈，讓 AI Agent 能同時改進自己的 Harness（工具、知識、提示詞）和模型權重（fine-tuning），在基準測試上持續提升表現。

SIA 的架構圍繞三個角色設計：**Meta-Agent** 讀取任務描述，生成初始的 Target Agent；**Target Agent** 嘗試完成任務，記錄所有行動和結果；**Feedback Agent** 審查 Target Agent 的表現日誌，找出改進點，更新 Target Agent 的 Harness 或建議權重更新。這個迭代過程讓系統能自主地精煉和提升能力。

基準測試結果令人印象深刻：在 LawBench（中文法律判決預測，191 個罪名類別）上達到 70.1% Top-1 準確率，遠超先前 SOTA 的 45%；在 OpenAI MLE-Bench Hard（真實 Kaggle ML 競賽）排名第一；在 GPU Kernel 優化上實現 14x 加速；在單細胞 RNA 去噪上提升 502%。這些結果展示了 SIA 自我改進迴圈在不同領域的通用性。

SIA 的重要觀點是區分「訓練模型」和「建構 Harness」。Agency（代理能力）來自模型訓練，而非外部程式碼編排。但一個完整的 Agent 產品需要兩者：模型是駕駛者，Harness 是車輛。SIA 同時改進這兩個層面。

## 核心特色

- **雙層自我改進**：同時更新 Harness（工具、知識、提示詞）和模型權重（fine-tuning），不是只改提示詞或只改模型
- **三 Agent 架構**：Meta-Agent 生成初始 Agent → Target Agent 執行任務 → Feedback Agent 分析改進，迭代循環
- **多基準測試驗證**：LawBench 70.1%（先前 SOTA 45%）、MLE-Bench Hard #1、TriMul CUDA 14x 加速、scRNA-seq 去噪 502% 提升
- **多提供商支援**：支援 Claude Agent SDK（Anthropic 模型）和 OpenHands（Gemini、OpenAI、Anthropic 等多模型）
- **內建任務**：隨附 gpqa、lawbench、longcot-chess、spaceship-titanic 四個任務，開箱即用
- **視覺化工具**：`sia web` 提供執行視覺化面板，追蹤每一代的改進軌跡

## 怎麼用

```bash
# 安裝（Claude Agent 版本）
python3 -m venv .venv && source .venv/bin/activate
pip install 'sia-agent[claude]'
export ANTHROPIC_API_KEY="your-key"

# 安裝（OpenHands 多提供商版本）
pip install 'sia-agent[openhands]'
export GEMINI_API_KEY="your-key"

# 執行自我改進迴圈
sia run --task gpqa --max_gen 5 --run_id 1

# 啟動視覺化面板
sia web

# 產出物在 runs/run_{run_id}/gen_{n}/ 目錄
# target_agent.py — 該代的 Agent 程式碼
# agent_execution.json — 執行日誌
```

## 跟其他方案的關係

| 特色 | SIA | [[affaan-m-ECC|ECC]] | [[hexo-ai-sia|Learn Claude Code]] | [[lsdefine-GenericAgent|GenericAgent]] |
|------|-----|-----|-----------------|-------------|
| 改進層面 | Harness + 權重 | Harness | Harness | Harness |
| 自我改進 | ✅ 迭代迴圈 | 部分 | ✅ | ✅ 自演化 |
| Fine-Tuning | ✅ | ❌ | ❌ | ❌ |
| 基準測試 | ✅ 4+ | ❌ | 部分 | ❌ |
| 多提供商 | ✅ | ❌ | Claude only | 部分 |
| 論文支援 | ✅ arXiv | ❌ | ✅ | ❌ |

← [[agent-harness-optimization|Agent Harness 優化]] · [[self-correction|Self-Correction]]

## 來源

- GitHub: [hexo-ai/sia](https://github.com/hexo-ai/sia)
- 論文: [arXiv 2605.27276](https://arxiv.org/abs/2605.27276)
- 原始資料: `raw/2026-06-14/hexo-ai-sia.json`

---

| 項目 | 值 |
|------|-----|
| GitHub | [hexo-ai/sia](https://github.com/hexo-ai/sia) |
| Stars | ⭐1,655 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-14 |
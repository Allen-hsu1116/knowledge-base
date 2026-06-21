---
title: SkillOpt
slug: microsoft-SkillOpt
created: 2026-05-28
updated: 2026-05-28
stars: 1415
language: Python
---

# SkillOpt

> ⭐1.4k · 用訓練神經網路的方式優化 LLM Agent 技能文件，產出可部署的 best_skill.md

## 快速導航
[[AI-Skills]] · [[AI-Agent]] · [[CLAUDE-md]] · [[openclaw|OpenClaw]] · [[affaan-m-everything-claude-code]]

## 是什麼

SkillOpt 是 Microsoft 出品的**文字空間優化器**，用類似訓練神經網路的流程（epoch、batch size、learning rate、validation gate）來優化 LLM Agent 的自然語言技能文件，但**不修改模型權重**。

核心創新：在自然語言空間中做梯度下降式的優化 — 透過生成軌跡、評估結果、編輯技能文件、驗證閘門來迭代改進 Agent 的指令/技能。

## 核心特色

- 🧠 **文字空間優化**：用 epoch、batch、learning rate 的概念優化 prompt/skill，但不碰模型權重
- ✅ **驗證閘門**：只有驗證分數提升時才更新技能文件（類似 early stopping）
- 📄 **best_skill.md 輸出**：產出人類可讀、可直接部署的技能文件
- 🔄 **自動恢復**：重新執行指令會從上次完成的步驟繼續
- 📊 **WebUI 監控**：Gradio 儀表板即時監控訓練過程
- 🏗️ **多 Benchmark 支援**：SearchQA、ALFWorld、DocVQA、LiveMathematicianBench、SpreadsheetBench、OfficeQA

## 怎麼用

```bash
# 安裝
git clone https://github.com/microsoft/SkillOpt.git && cd SkillOpt
pip install -e .

# 訓練（以 SearchQA 為例）
python scripts/train.py \
    --config configs/searchqa/default.yaml \
    --split_dir /path/to/searchqa_split \
    --azure_openai_endpoint https://your-resource.openai.azure.com/ \
    --optimizer_model gpt-5.5 \
    --target_model gpt-5.5

# 僅評估
python scripts/eval_only.py \
    --config configs/searchqa/default.yaml \
    --skill outputs/my_run/best_skill.md \
    --split valid_unseen \
    --split_dir /path/to/searchqa_split

# WebUI 監控
pip install -e ".[webui]" && python -m skillopt_webui.app
```

支援 Azure OpenAI、OpenAI、Anthropic Claude、Qwen (local vLLM)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 優化目標 | 產出 | 驗證機制 |
|------|-------|------|---------|------|---------|
| **SkillOpt** | ⭐1.4k | 文字空間優化器 | Skill 文件 | best_skill.md | Validation gate |
| [[CLAUDE-md]] | — | 規範文件 | AGENTS.md | CLAUDE.md | 無 |
| [[openclaw|OpenClaw]] | — | Skill 庫 | Skill 定義 | SKILL.md | 無 |
| [[obra-superpowers|Superpowers]] | ⭐189.5k | Skill 庫 | 方法論 | 技能文件 | 無 |
| [[affaan-m-everything-claude-code]] | ⭐172k | Skill/規則 | Prompt | 規則集 | 社群驗證 |

## 相關概念

← [[AI-Skills]] · [[AI-Agent]] · [[CLAUDE-md]] · [[openclaw|OpenClaw]] · [[affaan-m-everything-claude-code]] · [[Prompt-Engineering]]

## 來源

- GitHub: <https://github.com/microsoft/SkillOpt>
- 論文: <https://arxiv.org/abs/2605.23904>
- 原始 README: `raw/2026-05-28-microsoft-SkillOpt.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [microsoft/SkillOpt](https://github.com/microsoft/SkillOpt) |
| Stars | ⭐1,415 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-05-28 |
---
title: LLM Course
slug: mlabonne-llm-course
created: 2023-06-17
updated: 2026-06-17
stars: 80186
language: Jupyter Notebook
topics: [course, large-language-models, llm, machine-learning, roadmap]
---

# LLM Course

> ⭐80.2k · 從基礎到進階的 LLM 完整學習路線圖，附帶可執行的 Colab 筆記本

## 快速導航
[[LLM|LLM 基礎]] · [[Prompt-Engineering|Prompt Engineering]] · [[rasbt-LLMs-from-scratch|從零打造 LLM]]

## 是什麼

LLM Course 是由 Maxime Labonne（Meta/France AI Research）建立的開源學習資源，提供從零到一的 LLM 學習路線圖。它不是一本書或一系列影片，而是一套結構化的學習路徑，搭配可直接在 Google Colab 執行的互動筆記本，涵蓋 LLM 的三大面向：基礎知識、科學研究、工程實踐。

課程分為三大部分：「LLM Fundamentals」介紹數學、Python 和神經網路基礎（選修）；「The LLM Scientist」專注於用最新技術打造最好的 LLM，包括架構理解、預訓練、微調、量化、合併和對齊；「The LLM Engineer」則聚焦於基於 LLM 的應用開發和部署。

這門課的特別之處在於每個主題都配有自製的 Colab 筆記本，從 LLM AutoEval、LazyMergekit、AutoQuant 到 abliteration 等實用工具一應俱全。作者還基於此課程合著了《LLM Engineer's Handbook》一書（Packt 出版），但課程本身永遠免費。

## 核心特色

- **三段式學習路徑**：Fundamentals（選修）→ Scientist（打造 LLM）→ Engineer（部署 LLM 應用）
- **互動筆記本**：每個主題都有 Google Colab 筆記本，可直接在瀏覽器執行
- **實用工具集**：LLM AutoEval、LazyMergekit、LazyAxolotl、AutoQuant、Model Family Tree 等
- **微調全攻略**：QLoRA、ORPO、DPO、Axolotl 等主流微調方法一網打盡
- **量化與合併**：GPTQ、GGUF、EXL2、AWQ、MergeKit、MoE 合併實作
- **持續更新**：隨 LLM 領域發展持續新增內容，如 abliteration、dedup 等最新技術

## 怎麼用

```bash
# 課程是完全免費的 GitHub 開源專案，不需要安裝
# 直接瀏覽：https://github.com/mlabonne/llm-course

# 每個筆記本都有 Colab 連結，點擊即可在瀏覽器中執行
# 例如：Fine-tune Llama 3.1 with Unsloth
# https://colab.research.google.com/drive/164cg_O7SV7G8kZr_JXqLd6VC7pd86-1Z

# 相關工具也可以獨立安裝
pip install mergekit  # 模型合併
pip install auto-gptq  # GPTQ 量化
pip install unsloth  # 高效微調
```

## 跟其他方案的關係

| 方案 | 類型 | 涵蓋範圍 | 實作方式 | 適合對象 |
|------|------|---------|---------|----------|
| [[mlabonne-llm-course|LLM Course]] | 學習路線圖 | LLM 全流程 | Colab 筆記本 | 從初學到進階 |
| [[dair-ai-Prompt-Engineering-Guide|PE Guide]] | 學習資源 | Prompt Engineering | 文章+程式碼 | PE 專門學習 |
| [[rasbt-LLMs-from-scratch|LLMs from Scratch]] | 學習資源 | 從零實作 LLM | 程式碼+書籍 | 深入理解原理 |
| [[shareAI-lab-learn-claude-code|Learn Claude Code]] | 教學 | Agent Harness | 實作指南 | Agent 開發者 |
| Fast.ai Practical DL | 課程 | 深度學習基礎 | 影片+筆記本 | DL 入門 |

## 相關概念
← [[LLM|LLM 基礎]] · [[Prompt-Engineering|Prompt Engineering]] · [[rasbt-LLMs-from-scratch|從零打造 LLM]]

## 來源

- GitHub：https://github.com/mlabonne/llm-course
- 作者部落格：https://mlabonne.github.io/blog
- DeepWiki：https://deepwiki.com/mlabonne/llm-course/
- 相關書籍：[LLM Engineer's Handbook](https://packt.link/a/9781836200079)
- Raw 檔案：`knowledge-base/raw/2026-06-17-mlabonne-llm-course.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [mlabonne/llm-course](https://github.com/mlabonne/llm-course) |
| Stars | ⭐80,186 |
| License | Apache-2.0 |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-06-17 |
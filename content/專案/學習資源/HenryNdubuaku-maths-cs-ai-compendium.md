---
title: Maths, CS & AI Compendium
slug: HenryNdubuaku-maths-cs-ai-compendium
created: 2026-07-15
updated: 2026-07-15
stars: 5.2k
language: TypeScript
topics: ["AI-Tutoring", "LLM", "Deep-Learning", "Computer-Vision", "NLP", "Reinforcement-Learning", "MCP", "Machine-Learning"]
---

# Maths, CS & AI Compendium

> ⭐5200 · Apache-2.0 — 開源非傳統教科書，從基礎到進階涵蓋數學、計算機科學與 AI，18 章完整內容 + MCP Server 知識庫。

## 快速導航


- 📖 **AI Tutoring** → [[AI-Tutoring|AI Tutoring]] — AI 技術實現個人化教學
- 🧠 **LLM** → [[LLM|LLM]] — 大語言模型基礎
- 🔧 **MCP** → [[MCP|MCP]] — 內建 MCP Server 讓 AI 助手使用本書為知識庫
- 📚 **LLM 知識庫** → [[llm-knowledge-base|LLM 知識庫]] — 知識庫方法論

## 是什麼

Maths, CS & AI Compendium 是一本開源、非傳統的教科書，涵蓋數學、計算機科學與人工智慧，從最基礎的概念一路講到前沿研究主題。作者 Henry Ndubuaku 在 AI/ML 領域工作多年，將筆記整理成直覺優先、不跳步、不假設讀者已經懂一半的教材。這些筆記曾幫助朋友準備 DeepMind、OpenAI、Nvidia 面試並成功入職，作者本人也進入了 Y Combinator。

全書共 18 章，從向量、矩陣、微積分、統計、機率等數學基礎，到機器學習、計算語言學（含 NLP、Transformer、LLM 架構）、電腦視覺、語音處理、多模態學習、自主系統、圖神經網路、GPU 程式設計、AI 推論部署、ML 系統設計。每章都有完整的 Markdown 內容，可在 GitHub 上直接閱讀或線上版瀏覽。

專案還內建一個 MCP Server，讓任何 AI 助手（Claude Code、Cursor、VS Code 等）可以將本書作為知識庫使用。這意味著讀者可以在學習過程中直接向 AI 提問，AI 會從書中內容回答，實現「書 + AI 導師」的學習體驗。

## 核心特色

- **18 章完整覆蓋**：從線性代數到 ML 系統設計，數學 → ML → AI → 部署全鏈路
- **直覺優先寫法**：不跳步、不假設先備知識、不用密集符號嚇人，每個概念都從「為什麼」開始
- **MCP Server 整合**：內建 MCP Server，AI 助手可直接查詢書中內容作為知識庫
- **實戰導向**：作者將筆記用於準備 DeepMind/OpenAI/Nvidia 面試，全部成功入職
- **多領域交叉**：涵蓋 NLP、電腦視覺、語音、多模態、GNN、GPU 程式設計、AI 推論等
- **開源免費**：Apache-2.0 授權，線上版可直接閱讀

## 怎麼用

### 線上閱讀

直接前往 [henryndubuaku.github.io/maths-cs-ai-compendium](https://henryndubuaku.github.io/maths-cs-ai-compendium/) 線上版。

### 本地克隆 + MCP Server

```bash
git clone https://github.com/HenryNdubuaku/maths-cs-ai-compendium.git
cd maths-cs-ai-compendium

# MCP Server 需要本地 clone 才能運作
# 在 Claude Code 或 Cursor 中設定 MCP Server 指向此目錄
```

### 章節大綱

| # | 章節 | 內容 |
|---|------|------|
| 01 | Vectors | 向量空間、範數、內積/外積、基底、對偶 |
| 02 | Matrices | 矩陣性質、線性變換、LU/QR/SVD 分解 |
| 03 | Calculus | 微分、積分、多變數微積分、Taylor 近似、梯度下降 |
| 06 | Machine Learning | 經典 ML、深度學習、強化學習、分散式訓練 |
| 07 | Computational Linguistics | NLP、RNN、CNN、Attention、Transformer、LLM 架構 |
| 17 | AI Inference | 量化、高效架構、serving、邊緣推論、推測解碼 |

## 跟其他方案的關係

| 資源 | 範圍 | MCP | 風格 | 特色 |
|------|------|-----|------|------|
| **Maths/CS/AI Compendium** | 18 章全棧 | ✅ | 直覺優先 | 面試實戰驗證，含 GPU/SIMD |
| [[mlabonne-llm-course\|LLM Course]] | LLM 專精 | ❌ | 路線圖式 | 微調、量化、Colab 筆記本 |
| [[microsoft-AI-For-Beginners\|AI for Beginners]] | 12 週入門 | ❌ | 課程式 | CV+NLP+GAN，50+ 語言 |
| [[rasbt-LLMs-from-scratch\|LLMs from Scratch]] | LLM 底層 | ❌ | 手做式 | 從零建構 LLM |
| [[harvard-edge-cs249r_book\|CS249r]] | ML Systems | ❌ | 學術式 | Harvard 課程，硬體 Kits |

Compendium 的獨特定位是「全棧 + 直覺 + MCP」——其他資源專注 LLM 或入門，Compendium 從數學基礎到 GPU 程式設計全覆蓋，而且內建 MCP Server 讓 AI 助手直接當知識庫用。


## 相關概念

← [[AI-Tutoring]] · [[llm-knowledge-base]] · [[MCP]]

## 來源

- **GitHub**：https://github.com/HenryNdubuaku/maths-cs-ai-compendium
- **線上版**：https://henryndubuaku.github.io/maths-cs-ai-compendium/
- **Raw README**：`raw/2026-07-15-HenryNdubuaku-maths-cs-ai-compendium.md`
- **語言**：TypeScript（線上版）+ Markdown（內容）
- **License**：Apache-2.0

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/HenryNdubuaku/maths-cs-ai-compendium |
| Stars | ⭐5200|
| License | Apache-2.0 |
| 收錄日期 | 2026-07-15 |

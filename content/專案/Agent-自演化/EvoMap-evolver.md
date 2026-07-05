---
title: Evolver
slug: EvoMap-evolver
created: 2026-05-06
stars: '⭐7241'
updated: 2026-05-06
language: zh-TW
topics: [AI Agent, GEP 協議, 自演化引擎]
---

# Evolver

> ⭐7241 · GEP 驅動的 Agent 自演化引擎：把 ad hoc prompt 調參變成可審計、可重用的演化資產。Gene + Capsule + Event 三位一體。⭐7,241

## 快速導航
- 🤖 **Agent 演化** → [[AI-Agent]]（Evolver 是 Agent 自演化的協議引擎）
- 🧠 **記憶與技能** → [[AI-Skills]]（Skill 文件 vs Gene，兩種經驗編碼方式）
- ⚡ **Token 優化** → [[Token-Optimization]]（Gene 壓縮經驗，減少推理 token）
- 🔄 **另一種演化路線** → [[lsdefine-GenericAgent]]（技能結晶 vs 基因演化）
- 🛠 **Agent 框架整合** → [[openclaw]]（Evolver 可作為 OpenClaw 的演化插件）

## 是什麼

Evolver 是一個 GEP（Gene Evolution Protocol）驅動的自演化引擎，專為 AI Agent 設計。它解決的核心問題是：**Agent 的經驗不應該只是隨手的 prompt 調參，而應該是可審計、可重用的演化資產。**

傳統做法是工程師手動調 prompt、寫 skill 文件、記筆記。Evolver 把這些經驗編碼成三種結構化資產：
- **Gene**：緊湊的策略編碼（不是冗長的 skill 文件）
- **Capsule**：有界的演化包裹（bounded evolution package）
- **EvolutionEvent**：每次演化的審計記錄

論文（arXiv:2604.15097）在 4,590 次對照實驗、45 個科學程式解題場景中證明：文件導向的 Skill 包提供不穩定、稀疏的控制信號，而緊湊的 Gene 表示提供最強的整體效能，在結構擾動下保持穩健。在 CritPt 基準上，Gene 演化的系統將基礎模型從 9.1% 提升到 18.57%。

## 核心特色

- **GEP 協議 — Gene Evolution Protocol**：Gene 的設計原則是「緊湊胜過詳細」：一段 50 字的 Gene 可能比 500 字的 Skill 文件更有效，因為它提供的是方向性控制信號，而非冗長的執行細節
- **Gene vs Skill 文件 — 為什麼 Gene 更好**：論文核心發現——文件導向 Skill 控制信號不穩定、稀疏，而緊湊 Gene 提供強、穩定的控制信號，且在結構擾動下穩健
- **審計追蹤 — 可問責的演化**：每次 Evolver 運行都會寫入 EvolutionEvent 到 `./memory/`，記錄選了哪個 Gene / Capsule、為什麼選它、生成了什麼 GEP prompt、結果如何，讓 Agent 的「演化歷史」像 git log 一樣可追溯
- **離線優先**：Evolver 完全離線運作。連接 EvoMap Hub 只解�鎖網路功能：技能共享、Worker Pool、演化排行榜
- **Agent 框架整合**：支援 Cursor、Claude Code、OpenClaw 整合

## 怎麼用

```bash
# 安裝
npm install -g @evomap/evolver

# 在任何 git repo 中運行
evolver

# 審閱模式 — 暫停等人工確認
evolver --review

# 持續循環 — 背景守護進程
evolver --loop
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[lsdefine-GenericAgent]] | 自演化 Agent（技能結晶路線） | GenericAgent 走技能結晶，Evolver 走基因演化，是 Agent 自演化的兩大流派 |
| [[openclaw]] | Agent 框架 + 插件生態 | Evolver 可作為 OpenClaw 的演化插件 |
| [[AI-Skills]] | 結構化 Skill 格式 | Skill 文件 vs Gene，兩種經驗編碼方式 |

## 相關概念

← [[AI-Agent]] · [[lsdefine-GenericAgent]] · [[AI-Skills]] · [[openclaw]]

## 來源

- raw/2026-05-06-EvoMap-evolver.md

---

- **GitHub**: https://github.com/EvoMap/evolver
- **Stars**: ⭐7,241
- **License**: GPL-3.0（過渡至 source-available）
- **收錄日期**: 2026-05-06

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/EvoMap/evolver |
| **Stars** | ⭐'⭐7241' |
| **收錄日期** | 2026-05-06 |

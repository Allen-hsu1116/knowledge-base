---
title: HarnessX
slug: HarnessX
created: 2026-06-20
updated: 2026-06-20
stars: —（研究論文）
language: English
topics:
  - AI Agent
  - Agent Harness
  - Harness Evolution
  - Reinforcement Learning
  - Agent Foundry
---

# HarnessX

> 研究論文 · Agent Harness Foundry · 用組合代數和演化引擎打造可適應、可進化的 Agent 運行時

## 快速導航

- 🤖 [[AI-Agent]] — Agent 概念總覽
- 🔧 [[harness-engineering]] — Harness 工程方法論
- 🧩 [[AI-Skills]] — Skill 機制
- 📝 [[CLAUDE-md]] — Harness 配置範例

## 是什麼

HarnessX 是一篇 2026 年 6 月發表的 arXiv 論文，提出了一個**Agent Harness 鑄造廠（Foundry）**框架。它解決的核心問題是：AI Agent 的運行時 harness（prompt、工具、記憶、控制流）目前全靠手工打造且靜態不變，每換一個模型或任務就要重新搭鷹架，而且執行過程中產生的豐富軌跡很少被蒸餾回系統性改進。

HarnessX 的三大支柱：
1. **可組合（Composable）** — 透過替換代數（substitution algebra）組裝有型別的 harness 原語
2. **可適應（Adaptive）** — AEGIS 演化引擎，一個基於軌跡驅動的多 Agent 演化系統，建立在符號適應與強化學習的操作鏡像之上
3. **可進化（Evolvable）** — 將執行軌跡轉化為 harness 更新和模型訓練信號，閉合 harness-model 迴圈

## 核心特色

- **替換代數（Substitution Algebra）** — 將 harness 組件抽象為型別化原語，透過代數組合生成完整 harness，而非手工拼裝
- **AEGIS 演化引擎** — 多 Agent 系統，從執行軌跡中自動發現並應用 harness 改進，理論基礎是符號適應 ↔ RL 的操作鏡像
- **Harness-Model 閉迴圈** — 執行軌跡不只改善 harness，也產生模型訓練信號，讓 harness 和模型共同進化
- **五基準測試驗證** — ALFWorld、GAIA、WebShop、τ³-Bench、SWE-bench Verified
- **平均 +14.5% 提升**（最高 +44.0%），且基線越低的地方提升越大

## 怎麼用

論文承諾完整程式碼將在未來開源。目前可用方式：

1. **閱讀論文** — [arXiv:2606.14249](https://arxiv.org/abs/2606.14249)
2. **概念應用** — HarnessX 的「harness 原語組合」和「軌跡驅動演化」概念可手動應用於現有 Agent 框架
3. **AEGIS 模式** — 可參考其「符號適應 ↔ RL 操作鏡像」設計自己的 harness 演化系統

### 基準測試結果

```
Benchmark          Average Gain    Max Gain
ALFWorld           —               —
GAIA               —               —
WebShop            —               —
τ³-Bench           —               —
SWE-bench Verified —               —
───────────────────────────────────────
Overall            +14.5%          +44.0%
```

> 趨勢：基線越低的任務，HarnessX 帶來的提升越大——表示 harness 優化是模型scaling之外的互補槓桿。

## 跟其他方案的關係

| 方案 | 類型 | 核心差異 |
|------|------|----------|
| **HarnessX** | 論文/框架 | 自動演化 harness，閉合 harness-model 迴圈 |
| [[affaan-m-ECC\|ECC]] | 開源工具 | Token 優化、harness 工程，但無自動演化 |
| [[revfactory-harness\|Harness 團隊架構工廠]] | 開源工具 | 團隊級 harness 配置，靜態組合 |
| [[earendil-works-pi\|Pi Agent Harness]] | 開源工具 | Agent runtime，聚焦 Skill 載入 |
| DSPy | 開源框架 | 程式化 prompt 優化，可視為 harness 演化的簡化版 |
| [[microsoft-SkillOpt\|SkillOpt]] | 開源工具 | Prompt/Skill 優化，單維度 |

**關鍵洞見**：HarnessX 證明了 Agent 進步不只能靠模型 scaling，**組合和演化運行時介面**同樣是可操作的互補槓桿。

## 相關概念

← [[AI-Agent]] · [[harness-engineering]] · [[AI-Skills]] · [[CLAUDE-md]]

## 來源

- 📄 論文：[arXiv:2606.14249](https://arxiv.org/abs/2606.14249)
- 📁 raw：`raw/2026-06-20-harnessx.md`

---

| 項目 | 值 |
|------|-----|
| 類型 | 研究論文 |
| 發布者 | arXiv (cs.AI) |
| 年份 | 2026 |
| 作者 | Tingyang Chen, Shuo Lu, Kang Zhao 等 14 人 |
| 收錄日期 | 2026-06-20 |
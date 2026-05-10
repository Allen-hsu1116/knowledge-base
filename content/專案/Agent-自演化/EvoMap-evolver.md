# Evolver

> GEP 驅動的 Agent 自演化引擎：把 ad hoc prompt 調參變成可審計、可重用的演化資產。Gene + Capsule + Event 三位一體。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [EvoMap/evolver](https://github.com/EvoMap/evolver) |
| Stars | ⭐7,241 |
| Language | JavaScript / TypeScript |
| 建立日期 | 2026-02-01 |
| 收錄日期 | 2026-05-06 |
| 授權 | GPL-3.0（過渡至 source-available） |

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

### GEP 協議 — Gene Evolution Protocol

GEP 是 Evolver 的核心協議，定義了 Agent 經驗的標準化編碼格式：

```
[Agent 執行任務] → [掃描日誌] → [選擇 Gene/Capsule]
                → [生成 GEP prompt] → [寫入 EvolutionEvent]
```

Gene 的設計原則是「緊湊胜過詳細」：一段 50 字的 Gene 可能比 500 字的 Skill 文件更有效，因為它提供的是方向性控制信號，而非冗長的執行細節。

### Gene vs Skill 文件 — 為什麼 Gene 更好

論文的核心發現：

| 方式 | 控制信號 | 結構擾動下的穩健性 | 經驗累積效果 |
|------|----------|-------------------|-------------|
| 文件導向 Skill | 不穩定、稀疏 | 低 | 有限 |
| 緊湊 Gene | 強、穩定 | 高 | 顯著 |

在 CritPt Physics Solver 上，Gene 演化系統從 0.00% 爬到 18.57%，且出現「token 先升後降」的特徵 — 代表推理過程被壓縮進可重用的 Gene。

### 審計追蹤 — 可問責的演化

每次 Evolver 運行都會寫入一個 EvolutionEvent 到 `./memory/`，記錄：
- 選了哪個 Gene / Capsule
- 為什麼選它（匹配邏輯）
- 生成了什麼 GEP prompt
- 結果如何

這讓 Agent 的「演化歷史」像 git log 一樣可追溯。

### 安裝與使用

```bash
# 安裝
npm install -g @evomap/evolver

# 驗證
evolver --help

# 在任何 git repo 中運行（必須在 git 目錄中）
evolver

# 審閱模式 — 暫停等人工確認
evolver --review

# 持續循環 — 背景守護進程
evolver --loop
```

### Agent 框架整合

Evolver 可以掛進主流 Agent 框架：

```bash
# Cursor 整合
evolver setup-hooks --platform=cursor

# Claude Code 整合
evolver setup-hook

# OpenClaw 整合（透過 SKILL.md proxy mailbox API）
# 見 SKILL.md
```

第一次成功運行的流程：
1. 印出 banner，顯示偵測到的策略預設（如 balanced）
2. 掃描 `./memory/`（不存在會自動建立）的日誌和信號
3. 從內建資產池選擇匹配的 Gene / Capsule
4. 印出 GEP prompt 到 stdout — 這就是演化產物
5. 寫入 EvolutionEvent 到 `./memory/` 做審計

### 離線優先

Evolver 完全離線運作。連接 EvoMap Hub 只解鎖網路功能：技能共享、Worker Pool、演化排行榜。

## 與其他方案的關係

[[lsdefine-GenericAgent]] 走的是「技能結晶」路線：每次任務完成後，把整個執行路徑存成一個可重用的 Skill。Evolver 走的是「基因演化」路線：把經驗壓縮成緊湊的 Gene，透過 GEP 協議迭代演化。

兩者代表 Agent 自演化的兩大流派：
- **結晶派**：保留完整執行路徑，下次直接重播 → 簡單直接，但可能過度具體
- **演化派**：壓縮成抽象策略 Gene，迭代改良 → 緊湊穩健，但需要更多迭代

跟我們知識庫的關係：Evolver 的 Gene 概念跟我們的 wiki 概念頁類似 — 都是從原始素材中提煉出緊湊的結構化知識。差異在於 Evolver 是 Agent 自己演化的，我們是人+AI 協作編譯的。

## 技術棧

- **核心語言**：JavaScript / TypeScript（Node.js >= 18）
- **依賴**：Git（必須，用於 rollback 和 blast radius 計算）
- **套件**：npm `@evomap/evolver`
- **協議**：GEP（Gene Evolution Protocol）

## 相關連結

- [GitHub](https://github.com/EvoMap/evolver)
- [論文 (arXiv:2604.15097)](https://arxiv.org/abs/2604.15097)
- [EvoMap.ai](https://evomap.ai)
- [文件](https://evomap.ai/wiki)
- [CritPt 評估報告](https://evomap.ai/blog/openclaw-critpt-report)

← [[AI-Agent]] · [[lsdefine-GenericAgent]] · [[AI-Skills]] · [[openclaw]]
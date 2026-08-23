---
title: Codex Complexity Optimizer
slug: Kappaemme-git-codex-complexity-optimizer
created: 2026-05-18
stars: 648
updated: 2026-06-14
language: zh-TW
topics: [AI Skills, 演算法複雜度, 效能優化]
---

# Codex Complexity Optimizer

> ⭐648 · Codex Skill，分析程式碼庫的演算法複雜度和效能熱點，產生安全的優化報告。

## 快速導航


- 🛠️ **Agent Skills 生態系** → [[AI-Skills]]
- 🧠 **AI Skills** → [[AI-Skills]]
- ⚡ **Token Optimization** → [[Token-Optimization]]

## 是什麼


Codex Complexity Optimizer 是一個安裝到 Codex Agent 的 Skill，用於分析程式碼庫的演算法複雜度和效能瓶頸，產出包含檔案/行號、當前複雜度、建議修改、修改後預期複雜度、風險等級、所需測試的完整報告。

預設只產報告不修改檔案（安全第一）。

## 核心特色

- **安全報告模式**：預設只分析不修改，需明確要求才會實作優化，避免意外破壞
- **精細報告**：包含檔案/行號、當前複雜度、建議修改、預期改善（Big-O 降級）、風險等級、所需測試
- **可控風險**：可以先看報告再決定是否實作最低風險的優化，逐步改善
- **一鍵安裝**：npm 全域安裝即可自動部署到 Codex Skills 目錄（`\${CODEX_HOME:-~/.codex}/skills/complexity-optimizer`）
- **npx 支援**：不需要全域安裝，用 `npx` 也能直接執行

## 怎麼用

```bash
# 安裝（全域）
npm install -g codex-complexity-optimizer

# 或用 npx 直接執行
npx codex-complexity-optimizer
```

在 Codex 中使用：

```
# 產生分析報告（只讀，不修改檔案）
Use $complexity-optimizer to analyze this codebase and give me a report.

# 實作最低風險的優化
Use $complexity-optimizer to implement the lowest-risk optimization from the report and run the relevant tests.

# 針對特定目錄分析
Use $complexity-optimizer to analyze src/utils/ and identify O(n²) loops.
```

### 報告輸出範例

報告包含以下欄位：
- **File/Line** — 問題所在的檔案和行號
- **Current Complexity** — 當前時間/空間複雜度（如 O(n²)）
- **Recommended Change** — 具體修改建議
- **Expected Complexity** — 修改後預期複雜度（如 O(n log n)）
- **Risk Level** — 實作風險（低/中/高）
- **Tests Needed** — 建議配套的測試

## 跟其他方案的關係

| 方案 | 定位 | 與此專案的關係 |
|------|------|--------------|
| [[codeburn|CodeBurn]] | 程式碼優化 Skill | CodeBurn 偏 AI 輔助程式碼優化，此專案偏演算法複雜度分析 |
| [[mattpocock-skills|Matt Pocock Skills]] | 工程實踐 Skills | Matt Pocock 的 `/improve-codebase-architecture` 偏架構層面，此專案偏演算法層面 |
| [[AI-Skills]] | 概念層 | Codex Complexity Optimizer 是 AI Skills 格式的一個實作 |
| [[rtk-ai-rtk|RTK]] | Token 優化 | RTK 優化 token 消耗，此專案優化程式碼複雜度，互補關係 |

## 相關概念


← [[AI-Skills]] · [[AI-Skills]] · [[Token-Optimization]]

## 來源

- GitHub：https://github.com/Kappaemme-git/codex-complexity-optimizer
- Raw 檔案：`raw/2026-05-18-codex-complexity-optimizer.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Kappaemme-git/codex-complexity-optimizer |
| Stars | ⭐648|
| License | MIT |
| 收錄日期 | 2026-05-18 |

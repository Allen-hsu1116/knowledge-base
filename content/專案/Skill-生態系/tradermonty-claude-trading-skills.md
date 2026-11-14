---
title: Claude Trading Skills
slug: tradermonty-claude-trading-skills
created: 2026-11-14
updated: 2026-11-14
stars: 4173
language: zh-TW
topics: ["AI-Skills", "agent-trading", "stock-tracking"]
---

# Claude Trading Skills

> ⭐4.2k · 以 Skills、工作流與人工決策關卡組織市場研究、風控及交易日誌。

## 快速導航

- [[AI-Skills]]
- [[agent-trading]]
- [[stock-tracking]]

## 是什麼

Claude Trading Skills 面向時間有限的個人投資人，以長期投資、ETF 與股息資產為核心，再於適合的市場條件下加入有紀律的波段操作。它把市場檢視、風險管理、交易計畫與事後回顧整理為可重用技能。

專案明確不提供訊號服務、不保證獲利，也不是自動下單平台。skills-index.yaml 是技能資訊的權威索引，workflows 目錄中的 YAML 則定義技能順序、決策關卡與產物，適合把研究流程標準化而非把買賣責任交給 AI。

## 核心特色

- 流程 manifest：涵蓋日常市場檢查、週度投組回顧、機會篩選與績效檢討。

- 無付費資料 API 起步：市場廣度、趨勢參與、部位計算、日誌及檢討技能可先手動運作。

- 風險先行：風控、部位計算與交易前紀律關卡先於實際決策。

- 多種交付形式：原始技能資料夾、Web 用 .skill 套件與文件網站。

- 資料依賴透明：進階篩選或投組流程可能需要 FMP、Alpaca 等整合。

## 怎麼用

### 安裝與啟動

以下指令是文件示範，本次收錄沒有執行安裝。

```bash
git clone https://github.com/tradermonty/claude-trading-skills.git
cd claude-trading-skills
# 先檢視技能內容，再複製到此專案的 Claude Code 技能目錄
mkdir -p .claude/skills
cp -R skills/position-sizer .claude/skills/
```

### 初次使用檢查

1. 先閱讀所選 SKILL.md 與 integrations 欄位，不必一次安裝整個技能集合。

2. 沒有付費 API 時從公開 CSV、圖表截圖與本地日誌開始；沒有 API key 不等於不需要資料。

3. 核對市場、幣別、資料時間與風險假設；不能直接假定所有美股流程適用台股。

### 適用邊界

- 回測、篩選結果與 AI 分析均不保證未來報酬；仍須人工核對資料。

- 本次未安裝技能、連接券商或執行交易，只收錄可追溯的文件。

## 跟其他方案的關係

以下為功能定位比較，並非效能測試。

| 方案 | 主要用途 | 關係與差異 |
|---|---|---|
| 一般投資聊天 | 自由問答 | 此專案提供可重用流程、輸入規格與日誌。 |
| 自動交易執行系統 | 直接送出訂單 | 此專案以研究和人工決策關卡為核心。 |

## 相關概念

← [[AI-Skills]] · [[agent-trading]] · [[stock-tracking]]

## 來源

- [GitHub repository](https://github.com/tradermonty/claude-trading-skills)
- [README](https://github.com/tradermonty/claude-trading-skills/blob/main/README.md)
- 原始快照：`raw/2026-11-14-tradermonty-claude-trading-skills.md`
- Metadata：`raw/2026-11-14-tradermonty-claude-trading-skills.metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/tradermonty/claude-trading-skills |
| Stars | 4,173（2026-11-14 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-14 |

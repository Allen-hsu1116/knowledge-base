---
title: GenericAgent
created: 2026-05-06
---

# GenericAgent

> 極簡自演化 Agent：3K 行程式碼起家，每次解題自動結晶成技能，越用越強。9 個原子工具 + 100 行 Agent Loop。⭐9,199

## 快速導航
- 🤖 **Agent 自演化** → [[AI-Agent]]（GenericAgent 是自演化 Agent 的極簡實作）
- 🧠 **記憶系統** → [[mempalace]]（分層記憶 vs 宮殿索引，互補架構）
- 🛠 **Agent Skills** → [[AI-Skills]]（技能結晶 vs 結構化 Skill 格式）
- ⚡ **Token 優化** → [[Token-Optimization]]（分層記憶載入降低 token 消耗）
- 🔄 **Agent 演化引擎** → [[EvoMap-evolver]]（GEP 協議 vs 技能結晶，兩種演化路線）

## 是什麼

GenericAgent 是一個極簡的自主 Agent 框架，核心只有約 3,000 行 Python 程式碼。它的設計哲學跟大多數 Agent 框架完全相反：**不要預載技能 — 讓技能自己長出來。**

每次 GenericAgent 完成一個新任務，它會自動把執行路徑「結晶」成一個可重用的技能。你用得越久，技能越多 — 形成一棵完全屬於你的技能樹，從 3K 行的種子程式碼長出來。

最硬核的證明：這個 repo 裡的一切 — 從安裝 Git、git init 到每一個 commit message — 都是 GenericAgent 自主完成的，作者從未開過終端機。

## 核心特色

- **自演化技能樹**：探索 → 結晶 → 回憶，每次完成新任務自動結晶成技能，之後類似任務直接調用
- **分層記憶系統**：L0 Meta Rules → L1 Long-term → L2 Short-term → L3 Working → L4 Session Archive，按時間粒度分層管理 token 效率
- **極簡架構 + 系統級控制**：~3K 行核心、9 個原子工具、真實瀏覽器注入（保留登入 session）
- **跨模型相容**：Claude、Gemini、Kimi、MiniMax 等主流模型
- **Token 效率**：論文宣稱比其他框架省 6x token

## 怎麼用

```bash
git clone https://github.com/lsdefine/GenericAgent.git
cd GenericAgent && pip install requests streamlit pywebview

# 設定 API Key
cp mykey_template.py mykey.py
# 編輯 mykey.py

# 啟動桌面 UI
python launch.pyw
```

## 跟其他方案的關係

| 面向 | GenericAgent | OpenClaw | Claude Code |
|------|-------------|----------|-------------|
| 程式碼量 | ~3K 行 | ~530K 行 | 大型閉源 |
| 自演化 | 技能自動生長 | 插件生態系 | session 間無狀態 |
| 瀏覽器控制 | 真實瀏覽器 | 沙箱/headless | 透過 MCP |

## 相關概念

← [[AI-Agent]] · [[mempalace]] · [[EvoMap-evolver]] · [[AI-Skills]]

## 來源

- raw/2026-05-06-lsdefine-GenericAgent.md

---

- **GitHub**: https://github.com/lsdefine/GenericAgent
- **Stars**: ⭐9,199
- **License**: MIT
- **收錄日期**: 2026-05-06
# GenericAgent

> 極簡自演化 Agent：3K 行程式碼起家，每次解題自動結晶成技能，越用越強。9 個原子工具 + 100 行 Agent Loop，賦予 LLM 系統級控制力。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [lsdefine/GenericAgent](https://github.com/lsdefine/GenericAgent) |
| Stars | ⭐9,199 |
| Language | Python |
| 建立日期 | 2026-01-16 |
| 收錄日期 | 2026-05-06 |
| 授權 | MIT |

## 快速導航

- 🤖 **Agent 自演化** → [[AI-Agent]]（GenericAgent 是自演化 Agent 的極簡實作）
- 🧠 **記憶系統** → [[mempalace]]（分層記憶 vs 宮殿索引，互補架構）
- 🛠 **Agent Skills** → [[AI-Skills]]（技能結晶 vs 結構化 Skill 格式）
- ⚡ **Token 優化** → [[Token-Optimization]]（分層記憶載入降低 token 消耗）
- 🔄 **Agent 演化引擎** → [[EvoMap-evolver]]（GEP 協議 vs 技能結晶，兩種演化路線）

## 是什麼

GenericAgent 是一個極簡的自主 Agent 框架，核心只有約 3,000 行 Python 程式碼。它的設計哲學跟大多數 Agent 框架完全相反：**不要預載技能 — 讓技能自己長出來。**

每次 GenericAgent 完成一個新任務，它會自動把執行路徑「結晶」成一個可重用的技能。你用得越久，技能越多 — 形成一棵完全屬於你的技能樹，從 3K 行的種子程式碼長出來。這跟 [[affaan-m-everything-claude-code]] 的「預載技能庫」和 [[sickn33-antigravity-awesome-skills]] 的「共享技能包」形成鮮明對比：GenericAgent 不需要別人幫你寫 Skill，你自己用過的經驗就是最好的 Skill。

最硬核的證明：**這個 repo 裡的一切 — 從安裝 Git、`git init` 到每一個 commit message — 都是 GenericAgent 自主完成的，作者從未開過終端機。**

## 核心特色

### 自演化技能樹

GenericAgent 的核心循環是「探索 → 結晶 → 回憶」：

```
[新任務] → [自主探索]（安裝依賴、寫腳本、除錯驗證）
         → [結晶成技能]（寫入記憶層）
         → [下次類似任務直接調用]
```

實際例子：
| 你說什麼 | 第一次做 | 之後 |
|----------|----------|------|
| 「讀我的 WeChat 訊息」 | 安裝依賴 → 反向工程 DB → 寫讀取腳本 → 存技能 | 一行調用 |
| 「監控股票並提醒」 | 安裝 mootdx → 建選股流程 → 設 cron → 存技能 | 一行啟動 |
| 「用 Gmail 發檔案」 | 設 OAuth → 寫發送腳本 → 存技能 | 直接用 |

### 分層記憶系統

GenericAgent 用五層記憶架構管理 token 效率：

- **L0 Meta Rules** — 核心行為規則和系統約束（永不變）
- **L1 Long-term Memory** — 跨 session 持久化的技能
- **L2 Short-term Context** — 當前任務的上下文
- **L3 Working Memory** — 活躍執行狀態
- **L4 Session Archive** — 已完成 session 的快照

這跟 [[mempalace]] 的 Wings → Rooms → Drawers 是不同的記憶組織方式：GenericAgent 按時間粒度分層，MemPalace 按語意空間分區。兩者可以互補。

### 極簡架構 + 系統級控制

- **~3K 行核心程式碼**，Agent Loop 只有 ~100 行
- **9 個原子工具**：browser、terminal、filesystem、keyboard/mouse、screen vision、ADB（手機）
- **真實瀏覽器注入**（保留登入 session），不是 headless 模擬
- **跨模型相容**：Claude、Gemini、Kimi、MiniMax 等主流模型
- **Token 效率**：論文宣稱比其他框架省 6x token

### 程式碼範例

```python
# 安裝與啟動
git clone https://github.com/lsdefine/GenericAgent.git
cd GenericAgent
pip install requests streamlit pywebview

# 設定 API Key
cp mykey_template.py mykey.py
# 編輯 mykey.py 填入你的 LLM API Key

# 啟動桌面 UI
python launch.pyw

# 或用 uv
uv pip install -e ".[ui]"
python launch.pyw
```

也支援 Telegram/QQ/飛書/企業微信/釘釘作為前端：
```python
# mykey.py
tg_bot_token = 'YOUR_BOT_TOKEN'
tg_allowed_users = [YOUR_USER_ID]

python frontends/tgapp.py
```

## 與其他方案的比較

| 面向 | GenericAgent | OpenClaw | Claude Code |
|------|-------------|----------|-------------|
| 程式碼量 | ~3K 行 | ~530K 行 | 大型閉源 |
| 部署 | pip install + API Key | 多服務編排 | CLI + 訂閱 |
| 瀏覽器控制 | 真實瀏覽器（session 保留） | 沙箱/headless | 透過 MCP |
| OS 控制 | 滑鼠/鍵盤/視覺/ADB | 多 agent 委派 | 檔案+終端 |
| 自演化 | 技能自動生長 | 插件生態系 | session 間無狀態 |

## 與我們知識庫的關係

GenericAgent 的自演化理念跟我們知識庫的 raw → wiki 編譯循環有深層相似性：兩者都是「做過的事情變成可重用的結構化資產」。差異在於：
- 我們的知識庫：人找素材，AI 編譯成概念筆記
- GenericAgent：Agent 自己探索，自動結晶成技能

[[EvoMap-evolver]] 提供了另一種自演化路線：用 GEP 協議把經驗編碼成 Gene，而非技能文件。兩者一個走「技能結晶」，一個走「基因演化」，是 Agent 自演化的兩大流派。

## 技術棧

- **核心語言**：Python（~3K 行）
- **前端**：Streamlit、Qt、Telegram Bot、QQ Bot
- **瀏覽器控制**：pywebview（真實瀏覽器注入）
- **手機控制**：ADB
- **LLM 相容**：Claude、Gemini、Kimi、MiniMax 等

## 相關連結

- [GitHub](https://github.com/lsdefine/GenericAgent)
- [技術報告 (arXiv)](https://arxiv.org/abs/2604.17091)
- [入門指南](https://github.com/lsdefine/GenericAgent/blob/main/GETTING_STARTED.md)

← [[AI-Agent]] · [[mempalace]] · [[EvoMap-evolver]] · [[AI-Skills]]
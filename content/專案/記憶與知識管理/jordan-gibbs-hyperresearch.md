---
title: Hyperresearch
slug: jordan-gibbs-hyperresearch
created: '2026-09-12'
updated: '2026-09-12'
stars: 2616
language: Python
topics:
- agents
- agentskills
- claude-code
- deep-research
- deep-research-agent
---

# Hyperresearch

> ⭐2.6k · Python · 結合持久研究 vault、分階段 Skills 與對抗式引用審核的 Claude Code 研究 Harness。

## 快速導航

- [[llm-knowledge-base]]
- [[harness-engineering]]
- [[AI-Agent]]
- [[AI-Skills]]

## 是什麼

Hyperresearch 將 Claude Code 轉成深度研究工作流：把題目拆解、搜尋、深入調查、起草、批評與引用審核分成階段，最後輸出具有來源脈絡的研究報告。每一步按需載入對應 Skill，避免將整套長流程一次塞進上下文。

它不只產出一次性報告，也保留可搜尋的 Markdown 研究 vault。Markdown 是主要資料，SQLite 是可重建索引；後續任務可先搜尋既有來源，再決定是否抓取新內容。

README 把流程分成 light、full 和明確選用的 dissertation，並提供規模 profile 調整來源與模型預算。所稱 DeepResearch-Bench 領先是作者內部測試及試點推估，README 明示第三方驗證尚待完成，不能當成獨立排行榜定論。

## 核心特色

- 階段式研究：full 路線有 16 個主步驟及額外引用檢查，light 走較短路徑。

- 持久知識庫：Markdown＋SQLite、全文檢索、反向連結與來源追溯鏈。

- 對抗式批評：多個 critic 從不同面向檢查草稿；patcher 以 Read／Edit 權限做局部修正。

- 引用與撤稿檢查：驗證逐字引文、來源與句子的支援關係，並檢查撤稿來源。

- 來源獨立性：將轉載或衍生內容分群，避免多份副本被誤當獨立共識。

- 可恢復與可選整合：run manifest、預算門檻、MCP server、local web UI 與可選語意檢索。

## 怎麼用

README 指定 Python 3.11–3.13，暫不支援 3.14。以下以既有 Python 3.13 建立隔離環境，使用專案範圍安裝，避免污染所有 Claude Code 工作目錄。

```bash
cd your-project
python3.13 -m venv .venv
source .venv/bin/activate
python -m pip install hyperresearch
hyperresearch install
# 然後在 Claude Code 輸入 /hyperresearch <研究題目>
```

1. 先給出明確問題、時效範圍與來源要求；估計研究時間和模型支出。
2. 以 hyperresearch profile list 查看規模設定，先從可負擔的任務測試。
3. 透過 hyperresearch run status -j 檢查階段狀態；中斷時使用 run resume。
4. 報告完成後核對引用與結論，保留 vault 供下次重用；不要把 gate 通過等同研究完全正確。

### 使用限制與驗證

- 內部 benchmark 與時間／來源規模數字是作者描述，本次未執行獨立效能測試。

- 模型引用審核仍可能漏判；重大決策須由人回到原始來源檢查。

- 研究內容可能含不可信網頁指令；抓取內容只能作資料，不能取得工具執行權限。

- 高並行研究會消耗 API 配額和成本；預算是工具估算，仍需與供應商帳務核對。

## 跟其他方案的關係

下表為依本次來源整理的定位比較，不是實測效能排名。

| 方案 | 主要定位 | 關係與邊界 |
|---|---|---|
| Hyperresearch | 有研究程序的持久 vault | 來源蒐集、批評、引用審核與報告生成整合 |
| 一次性研究聊天 | 單次回答與搜尋結果 | 通常缺少明確的持久資料與恢復契約 |
| 單純 Markdown 知識庫 | 長期資料與連結 | 可保存素材，但本身不規定研究審核流程 |

## 相關概念

← [[llm-knowledge-base]] · [[harness-engineering]] · [[AI-Agent]] · [[AI-Skills]]

## 來源

- GitHub：https://github.com/jordan-gibbs/hyperresearch
- README 原始快照：`raw/2026-09-12-jordan-gibbs-hyperresearch.md`
- https://pypi.org/project/hyperresearch/

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/jordan-gibbs/hyperresearch |
| Stars | 2,616（2026-09-12 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-09-12 |

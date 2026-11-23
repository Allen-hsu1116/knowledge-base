---
title: TradingAgents
slug: TauricResearch-TradingAgents
created: 2026-06-02
updated: 2026-11-23
stars: 123553
language: Python
license: Apache-2.0
topics: [AI Agent, 多Agent交易, LLM, 金融預測]
---

# TradingAgents

> 多 Agent 金融研究與決策評估框架：以分析師、多空研究員、交易員與風控團隊組成可追蹤的決策流程。不是保證獲利的策略，也不能直接等同於自動下單系統。

## 快速導航

[[agent-trading|Agent 交易]] · [[financial-forecasting|金融預測]] · [[HKUDS-AI-Trader|AI-Trader]] · [[virattt-ai-hedge-fund|AI Hedge Fund]]

## 是什麼

TradingAgents 使用 LangGraph 編排多種 LLM 角色，模擬交易公司的研究流程：選定的技術、新聞、情緒與基本面分析師先平行工作，再由多空研究員辯論、Research Manager 收斂、Trader 提案，最後經風控討論與 Portfolio Manager 決策。

它的價值是把「依據哪些資料、為什麼做出某個判斷、不同角色如何反駁」攤開，而不只是吐出一個股票方向。程式的 `propagate()` 回傳狀態與五級評等（Buy、Overweight、Hold、Underweight、Sell）；無法解析評等時可能回傳 `REVIEW`，串接時不能把它當成可直接交易的有效訊號。

**版本基準（2026-11-23 查核）：**最新正式 release 為 **v0.7.1**，發布於 2026-10-27。本頁 README 與實作核對固定在 `main` 的 commit `9fa1196fffbcfd9de5146d2dd2869df84ab99838`（2026-11-04），不是宣稱所有內容都屬於 release tag。README 宣傳的 Trading-R1 v0.1.0 是另一個專案，不是 TradingAgents 的版本。

## 核心特色

### 角色協作與模型分層

- **平行分析師**：所選分析師各用自己的工具，同時執行；所有報告到齊才進入研究辯論。
- **多空與風控辯論**：保留研究、交易提案及最終審批的角色區隔，並使用結構化決策輸出。
- **模型分層**：quick tier 負責分析師、研究員、辯論者和交易員；deep tier 負責研究與投組管理者。兩層可使用不同 provider、模型及 endpoint。
- **多種供應商**：除 OpenAI、Google、Anthropic 等服務，也有 Ollama、OpenAI-compatible endpoint、Azure、Bedrock 等路徑。v0.7.0 起另提供 ChatGPT Plus／Pro 登入路徑；仍受方案限制，不能把訂閱登入視為無限制 API。

### 資料時點與歷史分析

- **SEC EDGAR as-filed 財報**：依實際申報日限制可見資料，避免提前讀到未申報財報或後來重編的數字。適用 SEC 申報公司，包括部分在美上市的外國公司，不等於全球財報完整覆蓋。
- **非美市場限制**：Yahoo 財報以會計期間而非公開日期標示；歷史日期分析會扣住無法確認當時已公開的財報。內部人交易也因發生日不等於申報日而在歷史分析中受到限制。
- **v0.7.1 修正**：補零不完整的模型日期不再導致誤讀未來申報；評分只使用已完成交易日的收盤資料；跨長假決策可在市場恢復後結算。
- **不是完美可重現的歷史資料庫**：新聞與社群來源沒有完整封存；即使指定相同日期，之後取得的文字輸入和模型抽樣仍可能不同。防前視處理不代表已消除所有研究偏差。

### 記憶、持倉與評估

- **持久決策記錄**：預設寫入 `~/.tradingagents/memory/trading_memory.md`，後續分析時結算到期決策，產生報酬、區域基準 alpha 與反思。可用 `ta.settle_all_pending()` 單獨結算。
- **持倉感知**：可傳入現金、幣別、持倉數量及均價；不傳 portfolio 與傳入空倉是兩種不同狀態。
- **批次回測**：對 ticker × 日期網格重跑研究流程，使用獨立 memory log，按評等統計 alpha；相同 `run_id` 可略過已完成格子。
- **進場評分基準**：從分析日期之後的第一個收盤價起算，避免使用包含當天收盤後新聞的判斷，卻假設能在當日收盤成交。
- **恢復與輸出**：`--checkpoint` 啟用 LangGraph／SQLite 中斷續跑；完成後清除 checkpoint。儲存報告時可輸出單頁 `complete_report.html`，並記錄執行設定。

### 必須區分：決策回測 ≠ 交易執行

README 的框架敘述仍提到核准提案後送到 simulated exchange，但目前 `tradingagents/backtest.py` 明確限制範圍：**它評估決策品質，不是投資組合模擬器**。沒有把評等轉換成數量、成交價與現金帳本的完整機制；網格格子彼此獨立，傳入的 portfolio 也不是逐期滾動部位。

因此不能把評分結果當成已計入手續費、滑價、資金限制與真實成交條件的完整策略績效，也不能由 README 這段文字推論已串接券商下單。

## 怎麼用

以下為官方文件與程式核對後的操作示例；本次更新沒有安裝框架、使用付費模型或執行投資回測。

### 安裝與互動分析

需要 Python 3.11 以上。使用 uv 隔離環境：

```bash
git clone https://github.com/TauricResearch/TradingAgents.git
cd TradingAgents
uv venv --python 3.13
source .venv/bin/activate
uv pip install .
cp .env.example .env
# 在 .env 填入實際要用的 provider 金鑰，不需填滿全部供應商。
tradingagents
```

若需要穩定重現，另固定 release／commit、相依套件、模型、資料來源與設定；預設 clone 會取得當下 main，不是永久固定的 v0.7.1。

### Docker 與本機模型

```bash
docker compose run --rm tradingagents
# 更新原始碼後重新建置：
docker compose build
# Ollama profile：
docker compose --profile ollama run --rm tradingagents-ollama
```

Docker 結果、報告、記憶與快取預設位於 `tradingagents_data` volume。Azure 在 Docker 中應把必要環境值放入 `.env`；v0.7.1 映像不再包含 `.env.enterprise`。請勿將金鑰提交到版本控制。

### Python 呼叫與不同模型層

```python
from tradingagents.graph.trading_graph import TradingAgentsGraph
from tradingagents.default_config import DEFAULT_CONFIG

config = DEFAULT_CONFIG.copy()
# 可自行設定 llm_provider、quick_think_llm、deep_think_llm。
# 若 deep_think_provider 與 quick tier 不同，需有對應的金鑰。
config["max_debate_rounds"] = 2

ta = TradingAgentsGraph(config=config)
state, decision = ta.propagate("NVDA", "2026-09-01")
print(decision)  # 下游須處理 REVIEW，不能直接當下單指令。
ta.save_reports(state, "NVDA")
```

### 決策網格評估

```bash
tradingagents backtest NVDA,AAPL --start 2026-06-01 --end 2026-08-01 --every 7
```

歷史分析仍會消耗模型額度，且結果不是投組淨值曲線。排程單次分析可使用 `--ticker`、`--date`、`--analysts`、`--save`、`--no-show`，其餘互動設定以 `TRADINGAGENTS_*` 環境變數補齊；非互動環境缺設定會停止並提示。

### 對台股研究的意義

官方宣稱可使用 Yahoo Finance 覆蓋市場的交易所後綴 ticker，但這次未做台股端到端驗證，不能因此宣稱完整支援台股財報、新聞或下單。若要接入台股研究，需要逐項驗證價格、公司識別、區域基準，以及財報公開時點；要做歷史基本面研究，更需要可按申報時間查詢的資料來源，不能只把 ticker 換掉。

## 跟其他方案的關係

以下為研究定位比較，不是本次重新測試其他專案的功能清單。

| 方案 | 主要定位 | 如何理解差異 |
|------|----------|--------------|
| **TradingAgents** | 分工研究、多空與風控辯論、決策評分 | 適合研究可追蹤的多角色分析流程；不是完整券商執行／投組模擬器 |
| [[virattt-ai-hedge-fund\|AI Hedge Fund]] | 多 Agent 投資研究 | 可比較研究角色與投資風格設計；不要直接比較未統一條件的報酬 |
| [[HKUDS-AI-Trader\|AI-Trader]] | Agent 交易研究 | 可比較 Agent 的自主決策與評估方式 |
| [[HKUDS-Vibe-Trading\|Vibe Trading]] | 交易相關 Agent 專案 | 需按各自資料、工具權限及評估設計判斷 |
| [[virattt-dexter\|Dexter]] | 金融研究助理 | 可比較查資料與財報研究流程，不應等同於多角色交易決策 |
| [[stefan-jansen-machine-learning-for-trading\|ML4T]] | 機器學習交易教材 | 補足資料驗證、回測與評估方法，而不是替代 Agent 編排 |

## 相關概念

- [[agent-trading]]：把研究判斷、績效評估、風險限制與交易執行分層。
- [[financial-forecasting]]：注意 point-in-time 資料、前視偏誤與不同市場資料可用性。
- [[AI-Agent]]：以不同角色、工具與狀態編排形成可追蹤流程。

## 來源

- [GitHub 專案](https://github.com/TauricResearch/TradingAgents)
- [固定 commit README](https://github.com/TauricResearch/TradingAgents/blob/9fa1196fffbcfd9de5146d2dd2869df84ab99838/README.md)
- [v0.7.1 Release notes](https://github.com/TauricResearch/TradingAgents/releases/tag/v0.7.1)
- [backtest.py：決策評估範圍與限制](https://github.com/TauricResearch/TradingAgents/blob/9fa1196fffbcfd9de5146d2dd2869df84ab99838/tradingagents/backtest.py)
- [trading_graph.py：propagate 與狀態管理](https://github.com/TauricResearch/TradingAgents/blob/9fa1196fffbcfd9de5146d2dd2869df84ab99838/tradingagents/graph/trading_graph.py)
- [default_config.py：模型分層與設定](https://github.com/TauricResearch/TradingAgents/blob/9fa1196fffbcfd9de5146d2dd2869df84ab99838/tradingagents/default_config.py)
- [原始論文：arXiv 2412.20138](https://arxiv.org/abs/2412.20138)（與目前軟體版本分開理解）
- 原始快照：`raw/2026-11-23-TauricResearch-TradingAgents.md`；保留初次收錄 `raw/2026-06-02-TauricResearch-TradingAgents.md`。

---

- **Stars**：123553（2026-11-23 查詢快照）
- **License**：Apache-2.0
- **初次收錄**：2026-06-02
- **本次更新**：2026-11-23
- **查核範圍**：官方 README、GitHub release 與上述實作；未執行框架、回測或券商串接。

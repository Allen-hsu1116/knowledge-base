---
title: Rockyzsu stock：Python 股市資料與量化交易實作集
slug: Rockyzsu-stock
date: 2026-09-07
created: 2026-09-07
updated: 2026-09-07
stars: 8439
language: zh-TW
topics: [stock-tracking, agent-trading, 量化交易, Python, 學習資源]
---

# Rockyzsu stock

> ⭐8,439 · 以中國 A 股、基金與可轉債為重心的 Python 股市工具與策略實作集合，涵蓋資料採集、監控、分析及交易介接。

## 快速導航

- [[stock-tracking|股市追蹤]] — 行情、基金份額、公告與市場事件的資料管線。
- [[agent-trading|Agent 交易]] — 對照傳統腳本式交易與 LLM Agent 交易的差異；本專案本身未證實採用 LLM Agent 架構。

## 是什麼

Rockyzsu/stock 將作者的股市研究、資料處理與量化交易經驗整理成 Python 程式碼。GitHub 描述為「30天掌握量化交易（持續更新）」，但目前 README 主要是模組、腳本與設定方式的目錄，不足以證實存在一套完整且按日安排的 30 天課程。

它比較像可供閱讀與改造的實務工具箱，而非具有一致 CLI、圖形介面或一鍵部署流程的成品。範圍以 A 股、基金、ETF／LOF、可轉債為主，也有港股、富途介接與機器學習相關目錄；不能直接視為台股專用工具。

README 仍保留 **2022-12-08 重構公告**，明確提醒目錄可能與說明不符。GitHub 的最近推送時間則為 2026-04-17；兩個時間代表不同訊息，不能把近期推送解讀成所有教學都已更新。

## 核心特色

- **多來源資料採集**：README 列出匯率、巨潮公告與 PDF、可轉債行業分布、基金資料及漲停監控等腳本，主要置於 `datahub/` 等模組。
- **基金與可轉債研究**：涵蓋 ETF／LOF 場內份額變化、基金溢折價、ARK ETF 持倉寫入 MongoDB，以及集思錄相關資料取得。
- **選股與技術分析**：包括漲停強度、IPO 發行速度與指數關係、K 線形態、因子選股等不同案例；README 說明 K 線辨識使用 TA-Lib，但沒有提供統一策略績效證據。
- **資料庫與環境設定**：以 `configure/config.json` 管理 MySQL／MongoDB 等連線設定，`configure/setting.py` 映射不同執行環境；不使用某資料庫的案例不一定需要設定它。
- **交易介接實作**：README 將 `trader/` 標示為交易部分、`ptrade/` 為實盤自動交易程式，並提供富途接口範例。這些是需要個別檢查的整合素材，不代表已通過實盤安全或獲利驗證。

## 怎麼用

建議先依需求閱讀單一模組：資料取得看 `datahub/`，基金研究看 `fund/`，分析看 `analysis/`，K 線形態看 `k-line/`。再確認該腳本的資料來源、外部套件、憑證、儲存位置及是否可能送出交易指令。

上游使用教程要求將 `configure/sample_config.json` 改名為 `configure/config.json`，按實際需要修改資料庫使用者、密碼、主機與連接埠。README 示範的選擇介面如下，僅節錄文件用法：

```python
# configure/setting.py 中的介面；不是獨立可執行的快速開始程式
config(self, db_type='mysql', local='ubuntu')
get_engine(self, db, type_='ubuntu')
get_mysql_conn(self, db, type_='ubuntu')
mongo(self, location_type='ubuntu', async_type=False)
```

根目錄 `requirements.txt` 包含 `easytrader`、`pandas`、`tushare`、`akshare`、`easyquotation`、`sqlalchemy`、`pymongo`、`pymysql` 等依賴，但**未鎖定版本且有重複項目**。本次沒有可據以確認的統一 Python 版本或完整安裝成功紀錄；不能保證直接安裝該檔案就能執行每個案例，TA-Lib 等個別依賴也需自行核對。

先使用隔離環境與唯讀資料練習，確認輸入資料、日期範圍和輸出，再考慮回測或模擬交易。設定檔可能包含明文憑證，不應提交或分享真實密碼；這是使用建議，不是專案已具備的安全保證。實盤路徑應另行驗證券商權限、訂單限額、重複送單與異常停止机制。

**本次收錄未安裝依賴、修改設定、執行爬蟲、連接資料庫或啟動交易。** README 的券商開戶、費率及永久使用宣傳屬上游商業資訊，未獨立驗證現行條件，不作為本頁推薦或保證。

## 跟其他方案的關係

| 方案／定位 | 差異與互補 |
|---|---|
| [[stefan-jansen-machine-learning-for-trading\|Machine Learning for Trading]] | 已收錄頁定位為書籍配套的系統化 ML 交易教材；本專案較偏市場資料、日常監控與個別策略腳本，適合依案例拆讀。 |
| 統一回測框架 | 本專案根目錄雖有 `backtest/`，僅憑目錄不足以認定具備一致的回測、成本建模與績效報告介面；需要逐例檢查。 |
| [[agent-trading\|LLM Agent 交易]] | 本專案的 README 以 Python 腳本和券商介接為主，沒有證據顯示具備多 Agent 推理、LLM 決策或 MCP 工具層，不能因「自動交易」就歸為 AI Agent。 |
| [[stock-tracking\|股市追蹤系統]] | 資料採集、持倉與份額監控可作為研究管線素材；整合為可靠服務仍需處理來源變更、排程、資料品質與故障監控。 |

## 相關概念

← [[stock-tracking|股市追蹤]] · [[agent-trading|Agent 交易（架構對照）]]

其他相關主題包括量化交易、資料採集、策略回測、基金份額與可轉債分析；本次不建立新概念頁。自動化執行不等於策略有效，回測結果也不保證未來報酬。

## 來源

- 原始專案：https://github.com/Rockyzsu/stock
- README（注意大小寫與分支）：https://github.com/Rockyzsu/stock/blob/master/README.MD
- 依賴清單：https://github.com/Rockyzsu/stock/blob/master/requirements.txt
- 授權原文：https://github.com/Rockyzsu/stock/blob/master/LICENSE
- 原始快照：`raw/2026-09-07-Rockyzsu-stock.md`，保存完整 README、GitHub metadata、根目錄、requirements.txt 與 LICENSE 原文。

**來源限制**：README 自述正在重構，本頁的功能整理依據 README，根目錄快照僅用來核對模組存在；未逐支驗證腳本或外部行情／券商接口，不能推定所有歷史功能目前仍可使用。

---

- **GitHub**：https://github.com/Rockyzsu/stock
- **Stars**：⭐8439（2026-09-07 擷取）
- **License**：BSD-3-Clause（GitHub metadata 與 LICENSE 原文交叉核對）
- **主要程式語言**：Python
- **預設分支**：master
- **最近推送時間**：2026-04-17T11:46:56Z
- **收錄日期**：2026-09-07
- **驗證範圍**：唯讀取得來源，未執行專案；不構成投資建議。

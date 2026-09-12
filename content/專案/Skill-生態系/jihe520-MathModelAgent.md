---
title: MathModelAgent
slug: jihe520-MathModelAgent
created: '2026-09-12'
updated: '2026-09-12'
stars: 4858
language: Python
topics:
- agent
- llm
- mathmodel
- skills
---

# MathModelAgent

> ⭐4.9k · Python · 將數學建模、程式計算與 Typst 論文製作串成 Skills 的領域工作流。

## 快速導航

- [[AI-Agent]]
- [[AI-Skills]]
- [[data-analysis]]

## 是什麼

MathModelAgent 將問題分析、數學建模、程式計算、繪圖與論文排版串接為一套流程。專案現在強調直接使用既有 Coding Agent Harness 與 Skills，而不再自行維護 Harness 層。

README 同時保留早期多 Agent Web／Docker 系統與新 Skills 方案，兩者不應混為同一部署路徑。新使用者可選擇內建 Claude Code 與 Skills 的桌面版本，或把 Skills 安裝到已有的工作環境。

論文可直接提交、獲獎與大幅縮短工作時間屬於作者願景或宣傳，不是已驗證結果。README 自身標示仍在實驗階段；任何數學假設、數值、文獻引用和競賽合規都需要人工審核。

## 核心特色

- 階段式 Skills：分析、建模、編碼、繪圖、寫作與驗收可串接，也可獨立使用。

- Typst 模板：README 列出 17 套中英文賽事論文模板，可依比賽格式選用。

- 建模知識：提供模型選擇決策樹、規範與常見錯誤模式作為工作流參考。

- 自動驗收流程：包含文字洩漏、數值一致性、Typst 編譯與 PDF 視覺檢查；不等於保證論文正確。

- 桌面入口：提供 Apple Silicon／Intel macOS 與 Windows 安裝檔，可設定模型 API Key。

## 怎麼用

已有相容 Harness 與 Node.js 時，可依 README 安裝 Skills。先審閱第三方 Skills；保留工具審批，不照抄 README 的跳過權限旗標。

```bash
npx skills add jihe520/MathModelAgent --all
# 在 Claude Code 對話中執行：
# /1start-mathmodel 完成這個數學建模任務
```

1. 提供題目、授權使用的資料與論文格式要求。
2. 使用 /doctor 檢查環境，確認 Typst 與執行工具的依賴狀態。
3. 讓流程產出程式、計算結果與排版檔，再人工重跑關鍵數值。
4. 需要桌面版時，僅由官方 Releases 取得；不必為新 Skills 路線額外部署舊 Redis／WebUI。

### 使用限制與驗證

- [⚠️ 文件內部矛盾] 功能清單宣稱 RAG、HIL、Tavily 和多層容錯，但後期計畫的 TODO 註明多項尚未完成，故不列為已完成能力。

- 授權檔規定個人免費、不得商用、禁止閉源分發；不能因 README 寫『開源免費』就當成 MIT 類授權。

- AI 產出的論文仍需遵守賽事 AI 使用規則與揭露要求，不能以自動驗收替代學術責任。

## 跟其他方案的關係

下表為依本次來源整理的定位比較，不是實測效能排名。

| 方案 | 主要定位 | 關係與邊界 |
|---|---|---|
| MathModelAgent Skills | 數學建模領域流程 | 把方法、模板與驗收附加到既有 Harness |
| 通用 Coding Agent | 模型與工具執行環境 | 負責執行 Skills，不自帶所有建模規範 |
| 舊版 Web／Docker 路線 | 專案早期獨立應用 | README 仍保留教學，不能視為新 Skills 必要條件 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[data-analysis]]

## 來源

- GitHub：https://github.com/jihe520/MathModelAgent
- README 原始快照：`raw/2026-09-12-jihe520-MathModelAgent.md`
- https://github.com/jihe520/MathModelAgent/blob/main/docs/md/License.md
- https://github.com/jihe520/MathModelAgent/releases

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/jihe520/MathModelAgent |
| Stars | 4,858（2026-09-12 快照） |
| License | 自訂非商業授權；禁止閉源分發，商用須聯絡作者 |
| Language | Python |
| 收錄日期 | 2026-09-12 |

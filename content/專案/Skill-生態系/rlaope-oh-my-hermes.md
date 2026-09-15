---
title: oh-my-hermes
slug: rlaope-oh-my-hermes
created: 2026-09-15
updated: 2026-09-15
stars: 2040
language: zh-TW
topics: [AI-Agent, AI-Skills, harness-engineering, memory]
---

# oh-my-hermes

> ⭐2.0k · 在 Hermes Agent 上增加模型路由、專家 Skills、驗證流程與審核式長期記憶的社群插件。

## 快速導航

- 🤖 [[AI-Agent]] — 工具執行、任務規劃與記憶。
- 🛠 [[AI-Skills]] — 以專家操作手冊補充原生能力。

## 是什麼

oh-my-hermes，簡稱 OMH，是建立在 Hermes Agent 之上的社群工作流插件。
它保留 Hermes 作為自然語言互動介面，把需求轉為能力分類、模型路由、執行流程與可稽核的驗證狀態。
README 明確區分這個上層 operating layer 與底下的 Hermes-native skills，不把兩者視為替代關係。

專案把能力分成 coding intelligence、長期記憶與模型最佳化工作流。
它不只是收集 prompts，也包含模型／effort 鏈、平行 worktree、專家 Skills 載入和 UI 狀態呈現。
這些功能是來源文件描述，並非本次已安裝或確認適合現有 Hermes profile 的實測結論。

## 核心特色

- **可解釋的任務路由**：根據複雜度與需求訊號選擇工作類別，顯示影響分類的因素。
- **模型與 effort 鏈**：依 executor 管理工作類別的模型序列，對無法提供模型的供應商保留明確失敗界線。
- **模型家族提示校準**：為不同模型家族提供不同校準區塊，而非假定同一提示適用所有模型。
- **隔離工作單位**：ulw-work 對不共享檔案的工作建立個別 worktree，固定起始 SHA。
- **完成與驗證分離**：區分程序結束、schema 有效、觀察到驗證，以及可整合狀態。
- **專家 Skills**：README 列出涵蓋前後端、Rust、除錯、資安、效能與驗證等專業工作。
- **審核式記憶**：候選記憶需經接受、拒絕或延後決策，保存來源、複查期限與生命週期。
- **誠實的執行介面**：未定價成本顯示 unknown，僅回報完成而無驗證者不標成 verified。

## 怎麼用

### 安裝前置條件

先準備可正常使用的 Hermes Agent；宿主安裝與設定以 Hermes 官方文件為準。
OMH 是第三方插件，不是 Nous Research 官方核心功能的同義名稱。
正式導入前應備份目前 profile、設定、Skills 與插件清單，審查安裝內容並確認變更範圍。

### 套件安裝與初始化

README 提供 Homebrew 路徑；以下僅為文件指令，本次沒有執行。

```bash
brew install rlaope/tap/omh
omh setup
omh doctor
```

setup 涉及模型供應商、模型鏈與 Hermes 註冊，不能把安裝 CLI 等同於完成所有設定。
多 profile 環境更應先核對插件對目標 profile 的處理，不可讓安裝器意外寫入其他 profile。

### 模型調整與維護

```bash
omh model
omh update
```

omh model 提供工作類別的模型與 effort 選擇。
README 表示 omh update 會辨識原本套件管理器，更新 CLI 並刷新受管理的 Skills、plugin bundle 與既有註冊。
這是有副作用的維護操作，不应在無備份、無審閱時自動執行。

### 適合的試用順序

1. 先使用非敏感、可還原的測試專案確認 setup 與 doctor。
2. 用小型程式任務觀察路由原因、模型成本與工具輸出。
3. 再測平行 worktree 的變更整合與實際測試結果。
4. 最後檢查記憶審核、召回內容與 token 預算，避免把模型推測固化成記憶。

### 證據與安全界線

README 的成本、速度與解題數字屬專案自行報告的測試，不代表本機任務必然有相同收益。
worktree 分離處理檔案衝突，不等於 OS 安全沙箱。
README 描述 OMH 記憶使用獨立檔案儲存，不讀取或修補 Hermes 原生記憶；本次未以程式碼稽核驗證此承諾。

## 跟其他方案的關係

以下比較責任邊界，不把提示詞能力當作執行成功證明。

| 方案 | 負責範圍 | 與 OMH 的關係 |
|---|---|---|
| Hermes Agent | 宿主 Agent 與原生執行介面 | OMH 的依附平台，不是被它取代的產品 |
| 單獨的 AI Skills | 領域操作知識與工作規範 | OMH 在其上增加路由、流程與驗證狀態 |
| Codex／Claude Code | 程式任務執行工具 | README 描述可經 Maestro 委派並顯示獨立 lane |
| [[max-sixty-worktrunk\|Worktrunk]] | Git worktree 工作流程管理 | 可比較工作目錄隔離，不能等同模型路由或記憶系統 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]]

## 來源

- [GitHub：rlaope/oh-my-hermes](https://github.com/rlaope/oh-my-hermes)
- [專案安裝文件](https://github.com/rlaope/oh-my-hermes/blob/main/docs/INSTALLATION.md)
- [Hermes Agent 官方文件](https://hermes-agent.nousresearch.com/docs)
- README 原始快照：`raw/2026-09-15-rlaope-oh-my-hermes.md`
- GitHub metadata：`outputs/2026-09-15-rlaope-oh-my-hermes.json`
- 本頁依 2026-09-15 README 與 metadata 整理；未安裝插件或變更 Hermes 設定。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/rlaope/oh-my-hermes |
| Stars | 2,040（2026-09-15） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-09-15 |

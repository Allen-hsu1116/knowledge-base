---
title: DevOps Exercises
slug: bregman-arie-devops-exercises
created: '2026-11-01'
updated: '2026-11-01'
stars: 85989
language: zh-TW
topics:
- self-education
- self-hosted
---

# DevOps Exercises

> ⭐86.0k · DevOps／SRE 問答與練習題庫，作為自架 AI 系統的基礎知識配套，而非 LLM 專案。

## 快速導航

- [[self-education]] — 相關方法與背景。
- [[self-hosted]] — 相關方法與背景。

## 是什麼

DevOps Exercises 是 bregman-arie 維護的技術問答與練習集合。README 記載 2,624 道問題與練習，涵蓋 Linux、網路、Git、容器、Kubernetes、雲端、資料庫與可觀測性等主題。內容以 Markdown 與主題目錄組織，不是一套需要啟動的服務。

它適合用來檢查工程基礎缺口與規劃實作練習。作者明確提醒：多數題目不代表真實面試，也不必為了從事 DevOps 而學完所有技術。本庫將其列為學習資源；與 LLM 的關聯是部署、維運與故障排查的前置能力，不是模型訓練或 Agent 框架。

## 核心特色

- **跨主題題庫**：從作業系統與網路到雲端、CI/CD 及分散式系統。

- **主題目錄導航**：Linux、Kubernetes、Terraform 等可分別閱讀，不必線性讀完整個 README。

- **問答配合練習**：用問題檢查理解，再以實驗確認假設；不是單純工具連結清單。

- **維運面向完整**：包含 observability、Prometheus、Grafana、安全與混沌工程入口。

- **社群貢獻流程**：README 提供 CONTRIBUTING.md 與 FAQ，方便理解投稿與使用邊界。

## 怎麼用

### 環境與安裝

只閱讀不需安裝執行環境；下載離線副本需要 Git。以下是取得教材的方式，不是安裝 DevOps 服務。

```bash
git clone https://github.com/bregman-arie/devops-exercises.git
cd devops-exercises
# 用編輯器開啟 README.md，再選 topics/ 下的主題
```

### 建議操作流程

1. 先選一個目前需要的主題，例如 Linux、DNS 或容器。
2. 先自行回答，再用官方文件與隔離實驗環境驗證。
3. 將錯誤假設、指令結果與版本差異記入自己的學習筆記。

### 限制與注意

- 工程建議：有破壞性、網路或雲端費用影響的練習應在測試環境執行。
- 題庫不是正式認證，也不是保證正確或最新的生產環境 runbook。
- GitHub 授權辨識為 Other；LICENSE 原文含非商用及不授予改作權條款，不應誤標 MIT。

## 跟其他方案的關係

以下按定位比較，不代表本次已做效能測試或功能驗收。

| 方案 | 定位 | 關係與邊界 |
|---|---|---|
| DevOps Exercises | 跨領域問答與練習 | 用於診斷知識缺口 |
| 官方產品文件 | 版本精確的功能與限制 | 以官方文件核對題庫內容 |
| LLM／Agent 教材 | 模型、提示詞與工具調用 | 本題庫補足系統維運基礎，不取代 AI 教學 |

## 相關概念

← [[self-education]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/bregman-arie/devops-exercises)
- [README](https://github.com/bregman-arie/devops-exercises/blob/master/README.md)
- [LICENSE](https://github.com/bregman-arie/devops-exercises/blob/master/LICENSE)
- 原始 README 快照：`raw/2026-11-01-bregman-arie-devops-exercises.md`
- GitHub metadata 快照：`outputs/trending-2026-11-01/bregman-arie-devops-exercises.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/bregman-arie/devops-exercises |
| Stars | 85,989（2026-11-01 擷取） |
| License | Creative Commons 條款（署名、非商用、禁止改作；詳見 LICENSE） |
| Language | Python（儲存庫主要語言） |
| 收錄日期 | 2026-11-01 |

---
title: "OpenSRE"
slug: Tracer-Cloud-opensre
created: 2026-11-20
updated: 2026-11-20
stars: 13125
language: zh-TW
topics: ["AI-Agent", "Coding-Agent-CLI"]
---

# OpenSRE

> ⭐13.1k · 以工具呼叫調查 CI/CD 失敗原因並提出可審查修補的 Agent。

## 快速導航

- [[AI-Agent]]
- [[Coding-Agent-CLI]]

## 是什麼

OpenSRE 是針對 CI/CD 可靠性與故障調查的 CLI Agent。它讀取失敗檢查、CI 日誌、近期提交及觀測資料，測試假設並區分 pipeline 問題與程式問題，目標不只是再跑一次 CI。

官方提供互動 REPL、非互動 CLI 與程序內 Python API，並支援自架及不同模型來源。不過 README 明確表示目前為 Public Alpha；首次啟動會走帳號與 hosted model 流程，因此不能把自架能力等同於預設無帳號或完全離線。

## 核心特色

- 證據導向調查：收集 CI、commits、logs、metrics 與 traces 後生成帶證據回覆。

- 修補流程：可把修正推至 PR branch 供人審查，需妥善限制寫入權限。

- 多執行介面：TTY REPL、opensre ask 與 embedded Python session。

- 多服務整合：涵蓋 GitHub、觀測平台、雲端、資料庫及通訊服務。

- 隱私控制：可選識別資訊遮罩，產品分析與 Sentry 為 opt-out。

## 怎麼用

### 安裝與起步

```bash
curl -fsSL https://install.opensre.com -o /tmp/opensre-install.sh
# 先閱讀並確認安裝腳本，再執行
bash /tmp/opensre-install.sh -gh
export OPENSRE_NO_TELEMETRY=1
opensre
```

此處把 README 的 curl pipe 拆成下載與執行，便於先審查腳本。安裝程式取得 main 最新 build；首次啟動需登入，headless 使用可參考 opensre ask。

### 使用與驗證邊界

先以測試 repo 與唯讀整合驗證，確認日誌外送範圍再授予 PR 或 remediation 權限。README 的效果敘述不是對所有故障的準確率保證。

本頁是官方文件閱讀與收錄結果，未在本機安裝或實測此專案。

## 跟其他方案的關係

下表比較工作層次，不是效能排名或替代方案的實測結論。

| 方案 | 定位 | 選擇時的界線 |
|---|---|---|
| OpenSRE | CI/CD 故障調查與修補 | Public Alpha，需管控權限 |
| 一般 Coding Agent | 通用程式開發 | 需另提供 CI 與觀測上下文 |
| 傳統監控告警 | 偵測異常並通知 | 不等於自動根因驗證 |

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub 與 README](https://github.com/Tracer-Cloud/opensre)
- [官方使用文件](https://www.opensre.com/docs/getting-started/quickstart)
- 原始快照：`raw/2026-11-20-Tracer-Cloud-opensre.md`
- API metadata：`raw/2026-11-20-Tracer-Cloud-opensre.metadata.json`
- [授權條款](https://github.com/Tracer-Cloud/opensre/blob/main/LICENSE)

Stars 是收錄當日快照；安裝方式與功能以官方最新文件為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Tracer-Cloud/opensre |
| Stars | 13,125 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-11-20 |

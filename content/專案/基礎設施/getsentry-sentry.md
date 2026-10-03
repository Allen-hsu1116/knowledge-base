---
title: Sentry
slug: getsentry-sentry
created: 2026-10-03
updated: 2026-10-03
stars: 45032
language: Python
topics:
  - observability
  - error-monitoring
  - self-hosted
---

# Sentry

> ⭐45.0k · 以錯誤事件與效能追蹤協助開發者定位問題的除錯平台，也能作為 AI 應用的觀測配套。

## 快速導航

- [[observability]]：從錯誤、日誌與 trace 理解應用行為。
- [[self-hosted]]：自有部署與資料治理的取捨。

## 是什麼

Sentry 是開發者導向的除錯平台，目標是協助偵測、追蹤及修復應用問題。這個 repository 是平台本體，不是單一語言的事件上報 SDK；README 另列 Python、JavaScript、Go、Rust、Java 等官方 SDK，應依被監控應用的語言選擇。

對 LLM 應用而言，它是觀測與故障診斷的配套，而不是模型、推論引擎或 Agent 編排框架。Python SDK 的官方 README 明列 OpenAI 整合，因此可從既有應用監控延伸到模型呼叫；但不能僅憑平台 README 就宣稱完整支援所有 Agent 指標或 LLM 評測流程。

部署時應區分 Sentry 雲端服務、平台開發環境與獨立的 self-hosted 發行方式。self-hosted README 將其定位為低流量部署與概念驗證的封裝；正式環境仍需自行評估資源、保留策略與維運能力。

## 核心特色

- **跨語言 SDK**：官方列出多種後端、前端、行動與遊戲引擎 SDK。
  平台與 SDK 分開維護，不應把平台授權直接套用到所有 SDK。
- **錯誤事件收集**：Python SDK 可擷取訊息與例外，讓應用錯誤進入集中式診斷流程。
  是否自動捕捉取決於整合方式與執行框架。
- **效能追蹤**：SDK 提供 trace 取樣設定，可在監控資訊與資料量之間取捨。
  示範的全量取樣並非所有生產環境的建議值。
- **AI 應用整合入口**：Python SDK 文件列出 OpenAI 整合。
  詳細蒐集欄位與支援範圍應依所用 SDK 版本確認。
- **雲端與自架選項**：平台 README 連結官方文件，另有 self-hosted 專案處理部署封裝。
  自架不等於免維運，也不自動保證所有第三方整合不外連。

## 怎麼用

以下是把既有 Python 應用接到 Sentry 的方式，**不是安裝整個 Sentry 伺服器**。
先建立 Sentry project 並取得自己的 DSN，再在專用虛擬環境中安裝 SDK：

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade sentry-sdk
```

最小配置可從官方 SDK 的範例縮減，DSN 以環境變數提供：

```python
import os
import sentry_sdk

sentry_sdk.init(
    dsn=os.environ["SENTRY_DSN"],
    traces_sample_rate=0.1,
)
sentry_sdk.capture_message("Sentry integration smoke test")
```

- `0.1` 是本文示意取樣率，不是官方建議的固定標準。
- 上述呼叫會向配置的 Sentry 端點送資料；接入前應先審核事件內容與權限。
- LLM prompt、回應、HTTP body 與使用者資訊可能含敏感資料，應先規劃過濾與保留規則。
- 自架請從官方 self-hosted 文件開始，不要把平台原始碼 clone 當成完整部署程序。
- 本頁為文件整理，未在本機安裝 SDK 或對真實 Sentry 專案送出測試事件。

## 跟其他方案的關係

以下比較是用途與責任邊界的整理，不是效能評比。

| 方案 | 主要角色 | 與 Sentry 的關係 |
|---|---|---|
| 一般文字日誌 | 保存離散事件 | 可提供線索，但不等同整套錯誤事件與 trace 工作流 |
| OpenTelemetry | 遙測標準與工具生態 | 與事件診斷平台屬不同層次，整合方式需查官方文件 |
| LLM 專用觀測／評測平台 | 模型呼叫、資料集與品質流程 | 不應假定 Sentry 的一般除錯功能涵蓋所有評測需求 |
| Self-Hosted Sentry | Sentry 部署封裝 | 部署同一產品的另一條路，而不是另一款監控工具 |

## 相關概念

← [[observability]] · [[self-hosted]]

## 來源

- GitHub：[getsentry/sentry](https://github.com/getsentry/sentry)
- 官方 Python SDK：[README](https://github.com/getsentry/sentry-python)
- 自架入口：[getsentry/self-hosted](https://github.com/getsentry/self-hosted)
- 平台授權：[LICENSE.md](https://github.com/getsentry/sentry/blob/master/LICENSE.md)
- 原始快照：`raw/2026-10-03-getsentry-sentry.md`（完整 README、LICENSE 與補充 SDK／自架 README）。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/getsentry/sentry |
| Stars | 45,032（2026-10-03 查詢） |
| License | FSL-1.1-Apache-2.0；依平台 LICENSE.md，不等同 SDK 的 MIT |
| Language | Python（GitHub primary language） |
| 收錄日期 | 2026-10-03 |

授權補充：平台使用 Functional Source License；不可僅因原始碼公開，就描述成無限制的 MIT／Apache 當期授權。

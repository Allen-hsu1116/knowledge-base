---
title: "Treg"
slug: "superdesigndev-treg"
created: "2026-09-23"
updated: "2026-09-23"
stars: 2222
language: "Python"
topics: ["agents", "api-keys", "cli", "credentials", "developer-tools", "dsh-plugin", "mcp", "proxy", "python", "registry", "secrets"]
---

# Treg

> ⭐2.2k · Python · Agent 工具 registry 與憑證代理，以單一入口搜尋、計費及呼叫多供應商工具。

## 快速導航

- [[AI-Agent]]
- [[MCP]]
- [[AI-Skills]]
- [[AI-Gateway]]

## 是什麼

Treg 自稱「OpenRouter for Tools」，聚合的對象是外部工具端點，而非語言模型。它以單一 registry URL 與使用者 token 提供工具搜尋、價格查詢和呼叫，同時支援團隊自有 API key、CLI 及 SKILL.md bundle；README 宣稱目錄超過 3,000 端點、60 家供應商，未逐一驗證。

HTTP proxy 以轉送原始上游請求為主，將憑證在伺服器端注入而非重建每家供應商的資料模型。團隊自有憑證優先於 Treg 帳戶；使用 Treg 代持帳戶才消耗團隊預付餘額。自有 key 不收 Treg 的計量費，不代表上游服務免費，也不能把 HTTP 代理的保密邊界套用到預設 local CLI 模式。

## 核心特色

- 工具目錄搜尋：按任務找端點，再檢查參數、價格與回應。

- 憑證優先序：團隊工具、已存 secret、公開路由，再到 Treg 代持帳戶。

- 忠實轉送：保留上游 API 語意，伺服器端注入 HTTP 認證。

- CLI 與 Skill bundle：將操作配方、工具與秘密集中管理。

- MCP 介面：v2 curated connector 區分讀寫工具，既有介面保留團隊工具。

- 多租戶與審計：org token、角色、工具權限及呼叫紀錄。

## 怎麼用

### 安裝

以下是供讀者參考的官方安裝方式；本次收錄不執行安裝。

```bash
python3 -m venv .venv
. .venv/bin/activate
python -m pip install tools-registry
```

### 最小流程

```bash
treg login
treg catalog search "backlinks for a domain"
treg catalog get hunter.people.email.find
treg balance
# 先確認價格、上游條款及權限，再執行任何付費或寫入呼叫
```

### 前提與限制

- 基礎套件只有 CLI；自架 registry 需 tools-registry[server] 或從 repo 以 uv sync 安裝。

- treg run 預設為 --local；如需 vendor key 不到呼叫端，使用並確認 --server 路徑。

- treg upload 會掃描並上傳 .env／Skills 等，先用 treg scan 檢視，不可直接用於敏感工作目錄。

- 自架正式環境須持久保存 TREG_SECRET_KEY 與資料庫，不能依賴開發預設的臨時加密 key。

- 托管 CLI 的匿名 telemetry 可用 TREG_TELEMETRY=0 或 DO_NOT_TRACK=1 關閉。

- 本頁未安裝 CLI、登入、上傳憑證或呼叫付費服務。

## 跟其他方案的關係

以下是依 README 定位整理的編輯比較，不是效能測試。

| 方案 | 主要責任 | 與本專案關係 |
|---|---|---|
| 模型 Gateway | 路由與統一模型 API | Treg 主要管理工具呼叫與憑證，不是模型服務路由器。 |
| MCP 協定 | Agent 與工具的連接介面 | Treg 是實作工具目錄、代理和帳務的平台，可提供 MCP 介面。 |
| 直接呼叫供應商 | 應用自行管理 key 與帳單 | Treg 增加共享入口與計量，但也引入需信任的憑證中介。 |

README 將限制描述為競爭性託管服務，但 LICENSE 正文明顯更廣：未經書面許可，不可用原版或修改版向第三方提供 hosted、managed 或 embedded service，包括商業分發產品中的元件。應以 LICENSE 為準，不能將內部商用許可推論為可對外提供服務。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[AI-Skills]] · [[AI-Gateway]]

## 來源

- [GitHub repository](https://github.com/superdesigndev/treg)
- [官方 README](https://github.com/superdesigndev/treg/blob/main/README.md)
- [LICENSE](https://github.com/superdesigndev/treg/blob/main/LICENSE)
- 原始快照：`raw/2026-09-23-superdesigndev-treg.md`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/superdesigndev/treg |
| Stars | 2,222（2026-09-23 擷取） |
| License | Apache 2.0＋附加商業限制（非純 Apache-2.0） |
| Language | Python |
| 收錄日期 | 2026-09-23 |

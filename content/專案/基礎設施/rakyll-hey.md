---
title: hey
slug: rakyll-hey
created: '2026-09-30'
updated: '2026-09-30'
stars: 20477
language: zh-TW
topics:
- observability
- self-hosted
---

# hey

> ⭐20.5k · 以可調併發與請求速率對 HTTP 端點施加負載的 Go 命令列工具。

## 快速導航

- [[observability]] — 延伸閱讀
- [[self-hosted]] — 延伸閱讀

## 是什麼

hey 是小型 HTTP 負載產生器，依指定請求量或持續時間執行測試，再輸出統計。它曾名為 boom，後來為避免與原有工具混淆而更名。

它不是 LLM 專用 benchmark，也不是可觀測性平台。對 AI 系統的價值在於測試 API／反向代理等 HTTP 層，但一般回應時間不能直接當成首 token 延遲或生成 tokens/s。

收錄來自 GitHub Trending 的一般基礎設施候選，保留其真正用途，不將熱門度當成 AI 關聯證據。實際負載測試僅應針對自有或明確授權的端點。

## 核心特色

### 1. 可控併發

用 -c 指定 concurrent workers，-n 指定總請求。

### 2. 持續時間

-z 啟用限時測試，指定後 -n 會被忽略。

### 3. 每 worker 限速

-q 是每個 worker 的 QPS，不是全域速率。

### 4. HTTP 選項

可設定方法、標頭、body、timeout 與 HTTP/2。

### 5. 統計匯出

預設摘要之外，可用 -o csv 輸出請求指標。

## 怎麼用

### 安裝

```bash
brew install hey
# 僅示範自有本機測試服務；請先自行啟動服務
hey -n 20 -c 2 -q 1 http://127.0.0.1:8080/
```

### 建議流程

1. 先選定已授權、非生產的測試端點。
2. 以低併發、低速率檢查是否出現錯誤或資源瓶頸。
3. 固定請求 body 與服務設定，再逐步增加負載。
4. 同時觀察伺服器 CPU、記憶體、日誌及錯誤率。

### 限制與注意

- 請求總數不能小於併發數；避免沿用高併發預設而誤壓服務。
- LLM 串流須另量測 TTFT、每 token 延遲與輸出長度。
- 此頁指令為使用示例，本次沒有向任何服務施加負載。

## 跟其他方案的關係

以下是用途對照，不是本次實測的效能排名。

| 方案 | 主要定位 | 選用考量 |
|---|---|---|
| hey | 單端點 HTTP 負載與摘要 | 輕量命令列測試 |
| ApacheBench | HTTP benchmark 類別工具 | README 將 hey 定位為替代方案 |
| [[observability\|可觀測性]] | 持續收集日誌、指標與追蹤 | 與負載產生器互補，不是替代 |

## 相關概念

← [[observability]] · [[self-hosted]]

## 來源

- [GitHub：rakyll/hey](https://github.com/rakyll/hey)
- README 快照：`raw/2026-09-30-rakyll-hey.md`
- Metadata 快照：`raw/2026-09-30-rakyll-hey.metadata.json`
- 文件與星數擷取日期：2026-09-30；上游功能與套件版本可能持續變動。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | [rakyll/hey](https://github.com/rakyll/hey) |
| Stars | 20,477 |
| License | Apache-2.0 |
| Language | Go |
| 收錄日期 | 2026-09-30 |

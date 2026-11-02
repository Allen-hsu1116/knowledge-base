---
title: "Public APIs"
slug: "public-apis-public-apis"
created: "2026-11-02"
updated: "2026-11-02"
stars: 494614
language: "Python"
topics: ["AI-Agent", "MCP"]
---

# Public APIs

> ⭐494.6k · 社群維護的公開 API 目錄，供應用與 Agent 工具整合時尋找資料來源。

## 快速導航

- [[AI-Agent]] — 延伸概念與相關實作。
- [[MCP]] — 使用情境與設計取捨。

## 是什麼

Public APIs 是按領域整理的公開 API 清單，而不是 LLM、模型服務或 Agent 執行框架。README 提供大量第三方服務入口，讓開發者先找到可用資料來源，再回到供應商文件確認介面。

對 AI 工作流的價值在於工具發現：例如天氣、金融或地理資料可成為 Agent 的外部工具。目錄不替服務提供可用性保證，也不代表所有 API 永遠免費、無須金鑰或允許任意商用。

## 核心特色

- **領域分類**：依需求瀏覽不同資料與服務類型。

- **整合資訊**：一般目錄列出驗證方式、HTTPS 與 CORS 等欄位。

- **社群維護**：透過協作維護連結與服務描述。

- **可追溯來源**：條目連向供應商，便於查詢實際限制。

## 怎麼用

### 安裝或取得專案

以下為文件化操作範例；本次收錄沒有在主機安裝或執行此專案。

```bash
git clone https://github.com/public-apis/public-apis.git
cd public-apis
# 以 Markdown 閱讀器開啟 README.md；這是目錄，不是服務安裝包
```

### 使用流程

1. 先選定領域，再核對服務文件、認證與費用。
2. 實作具型別與權限限制的 API adapter，再接入 Agent 或 MCP。
3. 把金鑰留在環境變數或祕密管理服務，不放進提示詞與版本庫。

### 限制與注意

- 本次為 Trending 延伸資源收錄，並非純 LLM 專案。
- MIT 適用於 repo；第三方 API 條款與資料授權須各別查核。

## 跟其他方案的關係

以下是定位比較，不是相同環境的效能測試。

| 方案 | 定位 | 選用注意 |
|---|---|---|
| Public APIs | 發現第三方 API | 不負責代管或執行 API |
| MCP server | 將工具暴露給模型客戶端 | 目錄連結不能直接當 MCP server |
| 供應商官方文件 | 最終介面與使用條款 | 正式整合前必讀 |

## 相關概念

← [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub：public-apis/public-apis](https://github.com/public-apis/public-apis)
- 原始 README：`raw/2026-11-02-public-apis-public-apis.md`
- Metadata：`raw/2026-11-02-public-apis-public-apis.metadata.json`
- 本頁依收錄當日 README 與 GitHub metadata 整理。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [public-apis/public-apis](https://github.com/public-apis/public-apis) |
| Stars | 494,614（2026-11-02 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-02 |

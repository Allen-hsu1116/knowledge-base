---
title: "e2e（TesterArmy）"
slug: "tester-army-e2e"
created: "2026-10-05"
updated: "2026-10-05"
stars: 3118
language: "TypeScript"
topics: ["e2e", "e2e-testing", "end-to-end-testing", "mobile", "mobile-testing", "playwright", "web"]
---

# e2e（TesterArmy）

> ⭐3.1k · TypeScript · 結合自然語言 Agent 操作、明確斷言與動作重播的 Web／行動端測試框架。

## 快速導航

- [[computer-use-agent]]
- [[Coding-Agent-CLI]]

## 是什麼

e2e 讓測試作者先描述自然語言目標，再由 Agent 操作 Web 或 mobile app，並在同一測試中使用 locator 與 assertion 驗證結果。核心仍是可驗證的端到端測試，而不是只看 Agent 宣告任務完成。

被後續斷言驗證的 Agent 步驟會記錄操作，之後在應用未變更時可重播而不再呼叫模型。沒有 Agent 步驟的測試不需要模型；模型來源可使用自有訂閱、API key 或本地模型，但實際支援須依初始化選項核對。

## 核心特色

- 自然語言操作：agent.act 描述目標，agent.assert 可執行語意判斷。

- 明確結果驗證：可搭配 getByRole 與 expect 檢查 UI 狀態，避免只有語意成功訊息。

- 驗證後重播：後续斷言通過的操作可重用，降低重複模型呼叫。

- 跨平台引擎：Web 經 Playwright 支援 Chromium／Firefox／WebKit，mobile 經 agent-device。

- 工具整合：提供 GitHub PR reporter、hosted browser／simulator adapter，文件隨套件附帶。

## 怎麼用

README 建議以互動式初始化安裝所需依賴並建立設定及範例測試；在獨立測試專案操作。

```bash
npx e2e init
# 選擇 web 或 mobile 引擎，以及模型供應者
npx e2e telemetry disable
```

### 使用流程

1. 先在 staging／測試帳號執行，讓自然語言步驟只操作可還原的資料。

2. 把關鍵業務結果寫成明確斷言；例如付費方案變更應驗證 status，而不是僅讓 Agent 自述完成。

3. Web／mobile 與雲端 adapter 需要不同環境，初始化後依官方 quickstart 完成設定。

### 限制與採用提醒

目前仍朝 1.0 開發，minor release 可能改動 API／config。CLI 預設送匿名使用遙測；可停用，不應將測試資料或憑證暴露给不適當的模型供應者。

以上指令為官方文件範例整理，本次僅完成資料收錄，未執行安裝或產品效能測試。

## 跟其他方案的關係

以下是功能定位比較，不是相同條件的 benchmark。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| 直接使用 Playwright | 精確 locator 與程式化 UI 操作 | e2e 的 Web 引擎建立於 Playwright 之上，另加 Agent 步驟與重播 |
| 純自然語言測試 | 以 Agent 判斷作為主要回饋 | e2e 可混合語意斷言與明確 locator/assertion |
| 一般 Coding Agent | 修改程式碼、規劃與工具使用 | e2e 專注驗證 app 行為，可成為 Coding Agent 的測試工具 |

## 相關概念

← [[computer-use-agent]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/tester-army/e2e)
- [官方 README](https://github.com/tester-army/e2e/blob/main/README.md)
- 原始快照：`raw/2026-10-05-tester-army-e2e.md`
- Metadata：`raw/2026-10-05-tester-army-e2e-metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/tester-army/e2e |
| Stars | 3,118（2026-10-05 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-05 |

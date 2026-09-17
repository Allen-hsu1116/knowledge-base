---
title: "Cline"
slug: "cline-cline"
created: "2026-09-17"
updated: "2026-09-17"
stars: 68375
language: "TypeScript"
topics: ["AI-Agent", "Coding-Agent-CLI"]
---

# Cline

> ⭐68.4k · TypeScript · 同一個 Agent 引擎連接 IDE、CLI、桌面與 SDK 的開源程式開發助手。

## 快速導航

- [[AI-Agent]]
- [[Coding-Agent-CLI]]

## 是什麼

Cline 是能閱讀專案、修改多個檔案、執行終端命令與使用外部工具的 coding agent。它不是只產生程式片段的聊天框，而是把規劃、執行與檢查串成工作流程，讓開發者透過差異檢視和核准掌握變更。

目前 README 將產品分成 CLI、桌面程式、VS Code extension、JetBrains plugin 與 SDK；不同入口共用 Agent 核心。需要注意開源範圍：README 明確指出 JetBrains plugin 本身目前未開源，不能把整個產品家族一概視為相同授權範圍。

對知識庫而言，值得追蹤的是同一個執行引擎如何支援互動開發、無介面 CI 與自訂 Agent。下方整理來自官方文件，不代表本次已安裝或實測其開發能力。

## 核心特色

- **跨檔案修改與檢查**：讀取專案結構，觀察 linter、編譯器錯誤；IDE 提供 diff 與 checkpoint。

- **Plan / Act 分工**：先討論策略再執行；檔案修改與命令可由人核准，也提供 auto-approve 選項。

- **多模型來源**：支援雲端供應商、OpenAI-compatible endpoint，以及 Ollama、LM Studio。

- **規則、Skills 與 MCP**：以 .clinerules 記錄團隊規範，按需載入技能，並透過 MCP 接外部系統。

- **SDK 與多 Agent**：@cline/sdk 可註冊工具與 lifecycle hook；CLI 支援 team 與排程工作。

## 怎麼用

需先準備 Node.js/npm，再依選用供應商完成模型設定；不要把正式環境密鑰寫入專案規則。

```bash
npm i -g cline
cline
```

### 建議操作流程

1. 在測試專案中啟動，先要求說明程式結構與修改計畫。
2. 保留命令與檔案變更核准，檢視 diff 後再執行測試。
3. 需要程式化整合時，另安裝 npm install @cline/sdk；不必為 CLI 使用而安裝 SDK。

### 使用限制與驗證邊界

auto-approve 不等於沙箱隔離；執行安裝、部署或資料庫操作前仍要限制權限與備份。模型成本與效果取決於供應商及任務，README 的功能宣稱不是本次效能測試。

本次僅完成來源擷取與文件整理，未安裝、啟動或評測此專案。

## 跟其他方案的關係

| 方案 | 主要定位 | 適用與限制 |
|---|---|---|
| Cline | 從計畫到工具執行的完整開發迴圈 | 適合需要檢視變更、執行測試的專案 |
| 純聊天式程式助手 | 提供解釋與程式片段 | 較少環境權限，但需要人工搬移和執行 |
| 自行組裝 Agent | 自訂工具和流程 | 彈性高，也需要自行維護核准與狀態管理 |

以上是功能定位比較，而非實測排名。Cline 的 SDK 可作為自行組裝的基底，兩者並非互斥。

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：https://github.com/cline/cline
- README 快照：`raw/2026-09-17-cline-cline.md`
- Metadata 快照：`raw/2026-09-17-cline-cline-metadata.json`
- https://docs.cline.bot/
- https://github.com/cline/cline/blob/main/apps/cli/README.md

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/cline/cline |
| Stars | ⭐68,375（2026-09-17 擷取） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-17 |

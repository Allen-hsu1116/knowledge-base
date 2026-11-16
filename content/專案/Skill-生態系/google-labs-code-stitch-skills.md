---
title: "Stitch Design Skills"
slug: google-labs-code-stitch-skills
created: 2026-11-16
updated: 2026-11-16
stars: 9301
language: zh-TW
topics: ["AI-Skills", "MCP", "frontend-design", "AI-Agent"]
---

# Stitch Design Skills

> ⭐9.3k · 把 Google Stitch 的設計、前端建置與設計系統操作封裝成 Agent Skills。

## 快速導航

- [[AI-Skills]]
- [[MCP]]
- [[frontend-design]]
- [[AI-Agent]]

## 是什麼

Stitch Design Skills 是 Google Labs Code 提供的技能與插件集合，遵循 Agent Skills 開放標準。它將建立畫面、設計系統管理、前端程式碼轉設計以及設計轉元件等流程交給既有 Coding Agent 執行，而不是另一個獨立 Agent 執行環境。

專案依職責分為 stitch-design、stitch-build、stitch-utilities。技能指令需要搭配已設定的 Stitch MCP server 與憑證，僅安裝技能不代表遠端服務已可用；選擇性安裝也必須確認技能之間的相依性。

## 核心特色

- **設計操作**：從文字或圖片生成畫面、編輯既有畫面及產生設計變體。

- **程式碼轉設計**：透過 HTML 擷取、設計系統整理與上傳串起既有前端到 Stitch 的工作流。

- **設計系統文件**：抽取或管理 DESIGN.md，將主題與設計 token 帶到後續產物。

- **前端建置**：提供 React 元件、React Native、React＋Vite dashboard 與 shadcn/ui 相關技能。

- **多頁與展示**：包含 stitch-loop 多頁網站流程，以及以 Remotion 製作導覽影片的技能。

- **多宿主支援**：提供 Codex、Claude Code、Cursor 等安裝方式；OpenCode 需手動調整。

## 怎麼用

先完成官方 Stitch MCP 設定與憑證配置。以下安裝指令僅供文件參考，本次沒有安裝插件或變更 Agent 設定。

```bash
# 選擇性安裝技能
npx skills add google-labs-code/stitch-skills

# 或：在目前專案安裝 Claude Code 插件
npx plugins add google-labs-code/stitch-skills --scope project --target claude-code
```

1. 依需求選擇 design、build 或 utilities；檢查技能引用的其他技能是否同時存在。

2. 先用測試專案生成單一畫面，確認 MCP 權限、輸出內容與素材流向。

3. OpenCode 使用者需手動複製技能並設定 MCP，必要時將 skill name 及目錄改成一致的 kebab-case。

### 使用邊界

程式碼、HTML 與圖片上傳涉及資料外傳；應先確認素材使用權、機密內容與服務存取範圍。產生元件仍要自行測試。

## 跟其他方案的關係

| 方案 | 定位 | 適合情境 |
|---|---|---|
| Stitch Design Skills | 設計與建置的可重用工作流 | 已有 Coding Agent 與 Stitch MCP |
| Stitch MCP | Agent 與 Stitch 工具連線 | 提供工具存取，不等同完整工作流指令 |
| 一般設計提示詞 | 一次性的需求描述 | 快速探索，但相依流程與驗證需自行補齊 |

Skills 與 MCP 是互補層：前者描述流程，後者提供工具連線；都不能取代人工設計與產品驗收。

## 相關概念

← [[AI-Skills]] · [[MCP]] · [[frontend-design]] · [[AI-Agent]]

## 來源

- [GitHub repository](https://github.com/google-labs-code/stitch-skills)
- [官方 README](https://github.com/google-labs-code/stitch-skills#readme)
- README 快照：`raw/2026-11-16-google-labs-code-stitch-skills.md`
- API metadata：`raw/2026-11-16-google-labs-code-stitch-skills.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [google-labs-code/stitch-skills](https://github.com/google-labs-code/stitch-skills) |
| Stars | 9,301（2026-11-16 擷取） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-11-16 |

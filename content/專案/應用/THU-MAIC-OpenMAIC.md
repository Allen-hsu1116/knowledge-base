---
title: "OpenMAIC"
slug: THU-MAIC-OpenMAIC
created: 2026-09-11
updated: 2026-09-11
stars: 35313
language: zh-TW
topics: ["AI-Tutoring", "AI-Agent"]
---

# OpenMAIC

> ⭐35.3k · 多 Agent 互動教室，將主題與教材轉成可討論、可修改的完整課程

## 快速導航

- [[AI-Tutoring]] — 相關方法與技術背景
- [[AI-Agent]] — 相關方法與技術背景

## 是什麼

OpenMAIC（Open Multi-Agent Interactive Classroom）是將主題、文件與學習材料轉成互動教室的 AI 應用。它不只產生課文，而是組合投影片、測驗、互動 HTML 模擬與專題式學習活動，讓 AI 老師及同學參與講解、白板繪圖與討論。

README 記載 v1.0.0 於 2026-08-27 發布，在原有一鍵產生課程之外加入 Pro Agent 工作台。使用者可透過對話規劃課綱、建立與修改頁面，並以伺服器持久化的 session 支援取消、恢復與中途引導；前端使用 Next.js、React 與 TypeScript。

這是 AI 教學應用而非通用多 Agent 框架。它可接不同模型與媒體供應商，也提供標準 Skill 套件串接其他工作台；課程生成能力不等於學習成效已獲獨立驗證。

## 核心特色

- **多角色教室**：AI 老師與同學能以語音、白板及即時討論參與教學。

- **多種教學場景**：投影片、測驗、互動模擬與 PBL，可從主題或材料生成。

- **可持續的課程 Agent**：Pro 工作台可規劃、建立與修訂整份課程，server-backed session 支援恢復。

- **教材與技能**：支援文件、音訊、影片材料；README 列出 20 個內建課程技能及 PPTX 匯入。

- **供應商可替換**：支援雲端 API、Ollama、Lemonade 等路徑；語音與影像服務另行配置。

- **可攜式成果**：提供可編輯 PPTX 與互動 HTML 等匯出，不只留在聊天紀錄。

## 怎麼用

官方要求 Node.js ≥22.19 與 pnpm ≥10；下列是官方開發啟動流程，僅整理指令，未在本機安裝候選工具。

```bash
git clone https://github.com/THU-MAIC/OpenMAIC.git
cd OpenMAIC
pnpm install
cp .env.example .env.local
# 在 .env.local 設定至少一個模型供應商
pnpm dev
```

### 建議操作順序

1. 開啟 http://localhost:3000，先用單一主題測試課程生成。
2. 加入自己的教材，檢查課綱、題目與引用是否符合來源，再調整頁面。
3. 需要恢復長任務時，再依官方 Agent workbench/runtime 文件設定持久化後端。
4. 公開或多人部署應設定 ACCESS_CODE，並檢查 API 金鑰、教材與媒體服務的資料流向。

### 限制與注意事項

自架介面不代表全程離線；是否外送教材取決於模型、文件解析、搜尋和媒體供應商。生成內容仍需教師或學習者校驗。

## 跟其他方案的關係

以下是依上游功能整理的定位比較，不是同機效能或教學成效測試。

| 方案 | 重點 | 選用考量 |
|---|---|---|
| OpenMAIC | 互動課程與 AI 教室 | 適合將教材做成可講授、可討論的成品 |
| 一般 LLM 聊天介面 | 一問一答解釋 | 需要自行安排課綱、互動場景與成果匯出 |
| 通用多 Agent 框架 | 角色與工具編排元件 | 彈性較大，但需自行建立教學介面與課程流程 |

## 相關概念

← [[AI-Tutoring]] · [[AI-Agent]]

## 來源

- [GitHub：THU-MAIC/OpenMAIC](https://github.com/THU-MAIC/OpenMAIC)
- [官方 README](https://github.com/THU-MAIC/OpenMAIC/blob/main/README.md)
- 原始快照：`raw/2026-09-11-THU-MAIC-OpenMAIC.md`
- Metadata 快照：`raw/2026-09-11-THU-MAIC-OpenMAIC-metadata.json`
- [授權檔案](https://github.com/THU-MAIC/OpenMAIC/blob/main/LICENSE)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [THU-MAIC/OpenMAIC](https://github.com/THU-MAIC/OpenMAIC) |
| Stars | 35,313（2026-09-11 快照） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-09-11 |

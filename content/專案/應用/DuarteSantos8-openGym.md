---
title: openGym
slug: DuarteSantos8-openGym
created: 2026-10-06
updated: 2026-10-06
stars: 4225
language: zh-TW
topics: ["self-hosted", "privacy", "MCP"]
---

# openGym

> ⭐4.2k · 自架健身與體重紀錄工具，預設不依賴 LLM，另提供 opt-in AI coach 與唯讀本地 MCP。

## 快速導航

- [[self-hosted]] — Docker、React 前端與 JSON 資料保存。
- [[privacy]] — 訓練與健康資料的主權、備份及外傳邊界。
- [[MCP]] — 可選的本地唯讀訓練紀錄介面。

## 是什麼

openGym 是可自行架設的訓練與體重追蹤應用：安排每週課表、記錄組數與重量、查看進度，再透過手機 PWA 與多裝置同步使用。預設安裝不呼叫 AI 服務；開發者採用 Claude Code 寫程式，不等於使用者必須購買 LLM 服務。

架構由 React 19／Vite 前端、Node HTTP API 與 nginx 組成，使用者資料以 JSON 存在主機 `./data`。每個 profile 有伺服器 revision，多裝置更新衝突時回傳目前文件，再由客戶端合併重試。

AI coach 是選用功能，可使用自備的 Anthropic、OpenAI、Gemini 或 OpenAI-compatible endpoint，包括 Ollama；課表變更由使用者核准。另一個選用 MCP server 用於讀取訓練紀錄，README 明確說明它不含在 Docker build 中，不能把預設部署寫成已啟用 AI。

## 核心特色

### 1. 課表與動作管理

- README 列出 1,324 個動作、身體部位搜尋及器材過濾。
- 支援 supersets、暖身組、drop sets、計時動作及有氧紀錄。

### 2. 訓練引導與進展

- 自動帶入前次重量、組間休息計時與 PR 偵測。
- 可依課表或動作套用不同 progression 規則；預估 1RM 與恢復圖只是軟體估算，不等同醫療診斷。

### 3. 帳號與離線同步

- Passkey 登入、跨裝置 profile、離線提示與衝突合併。
- 可由 instance 管理者選擇開啟密碼登入與邀請制。

### 4. 資料可攜

- 匯入 FitNotes、Strong、Hevy 與 Apple Health 體重資料。
- 可匯出 JSON、分享課表檔或列印成 PDF。

### 5. 可選 AI 與唯讀 MCP

- AI coach 預設關閉；提供者、金鑰與資料傳送範圍需自行評估。
- 本地 MCP 不保證連接它的雲端模型也不外傳資料，兩層需分開看待。

## 怎麼用

需要 Docker 與 Compose，官方 quick start 如下；本次收錄未啟動容器。

```bash
git clone https://github.com/DuarteSantos8/openGym
cd openGym
cp .env.example .env
docker compose pull
docker compose up -d
```

- 開啟 `http://localhost:8080` 建立 profile；首次啟動會下載約 140 MB 動作媒體。
- 手機透過網域使用 passkeys 時需要 HTTPS，並設定相符的 `RP_ID` 與 `ORIGIN`。
- 備份整個 `./data`，包含 profile、訓練狀態與 session 簽章 secret；備份檔也應視為敏感資料。
- 不要在未評估資料外傳前啟用 coach；MCP 請另外遵循 `mcp/README.md`。

### 授權邊界

程式碼採 AGPL-3.0；動作 metadata／文字與媒體授權不同。README 特別指出圖片與動畫的權利歸屬有爭議，不能視為 AGPL 或 MIT 素材任意再散布。

## 跟其他方案的關係

依 README 列出的模式比較，避免把不同部署方式混為同一能力。

| 模式 | 資料與執行方式 | AI 是否必要 |
|---|---|---|
| 自架 Web／PWA | 自有 API 保存資料，跨裝置同步 | 否 |
| 原生手機模式 | Capacitor，資料留在手機、可無伺服器 | 否 |
| AI coach | 自有 server 對接選定模型 provider | 選用，變更需核准 |
| MCP server | 獨立、本地、唯讀查詢訓練資料 | 助理整合選用，不含於 Docker build |

## 相關概念

← [[self-hosted]] · [[privacy]] · [[MCP]]

## 來源

- [GitHub](https://github.com/DuarteSantos8/openGym)
- [官方 README](https://github.com/DuarteSantos8/openGym/blob/main/README.md)
- README 原始快照：`raw/2026-10-06-DuarteSantos8-openGym.md`
- GitHub metadata：`raw/2026-10-06-DuarteSantos8-openGym.metadata.json`

---

| 欄位 | 值 |
|---|---|
| GitHub | [DuarteSantos8/openGym](https://github.com/DuarteSantos8/openGym) |
| Stars | 4,225（2026-10-06 快照） |
| License | AGPL-3.0 |
| Language | JavaScript（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-10-06 |

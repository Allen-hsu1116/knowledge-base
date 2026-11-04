---
title: "閒魚智能監控系統"
slug: "Usagi-org-ai-goofish-monitor"
created: "2026-11-04"
updated: "2026-11-04"
stars: 16374
language: "Python"
topics: ["ai", "ai-assistant", "ai-tools", "automation", "gemini", "goofish", "open-source", "openai", "playwright", "tool", "xian-yu", "xianyu", "xianyu-bot"]
---

# 閒魚智能監控系統

> ⭐16.4k · Python · Playwright 搭配多模態 AI，定時監控閒魚商品並推送符合條件的結果。

## 快速導航

- [[網頁爬蟲]]
- [[workflow-automation]]

## 是什麼

ai-goofish-monitor 將閒魚商品監控整合成具備 Web 管理介面的應用。使用者可設定關鍵字、價格、地區及發布時間，透過 Playwright 取得商品資訊，再用 AI 輔助判讀需求是否符合。

它不是通用爬蟲框架，而是帶任務、帳號、提示詞、結果與通知管理的垂直應用。README 同時提供 AI 判斷與關鍵字判斷流程，並說明目前以 SQLite 作為線上主儲存，登入態與圖片等仍使用檔案目錄。

## 核心特色

- 自然語言任務：AI 模式可背景產生分析標準，使用進度視窗追蹤。

- 多任務條件：獨立設定關鍵字、價格、地區、上架時間與提示詞。

- 多模態分析：透過支援圖片輸入的 OpenAI 相容 API 分析商品。

- 定時與通知：支援 Cron、Telegram、Bark、ntfy 與 Webhook 等管道。

- 持久化管理：SQLite 儲存任務、結果與價格歷史；Docker 掛載保存資料。

## 怎麼用

先備妥 Docker 與可使用的模型 API；複製環境範本後先完成設定再啟動。

```bash
git clone https://github.com/Usagi-org/ai-goofish-monitor
cd ai-goofish-monitor
cp .env.example .env
# 編輯 .env：設定模型 API，並更換預設管理密碼
docker compose up -d
docker compose logs -f app
```

### 使用與驗證注意事項

- 必要模型設定為 OPENAI_API_KEY、OPENAI_BASE_URL、OPENAI_MODEL_NAME，模型須支援圖片。

- 開啟 http://127.0.0.1:8000，匯入自己帳號的登入態後建立任務；不要公開 cookie。

- 預設管理帳密 admin/admin123 必須更換；避免直接將管理介面暴露於網際網路。

- 商品資料可能送到模型服務商；遵守平台條款、合理頻率及資料使用權限。

- 本次僅收錄官方操作方式，未登入閒魚、啟動監控或發送通知。

## 跟其他方案的關係

以下是依官方定位整理的選型對照，不是效能實測結果。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| ai-goofish-monitor | 閒魚專用端到端應用 | 省去任務管理與通知介面的自行組裝。 |
| Playwright 腳本 | 瀏覽器操作與資料取得 | 提供底層能力，但任務、AI 判斷和持久化要自行實作。 |
| 關鍵字規則 | 確定性條件篩選 | 較易理解與稽核；多模態 AI 可補充但不保證判讀正確。 |

## 相關概念

← [[網頁爬蟲]] · [[workflow-automation]]

## 來源

- GitHub：https://github.com/Usagi-org/ai-goofish-monitor
- 官方 README：https://github.com/Usagi-org/ai-goofish-monitor/blob/master/README.md
- 原始快照：`raw/2026-11-04-Usagi-org-ai-goofish-monitor.md`
- API metadata：`raw/2026-11-04-Usagi-org-ai-goofish-monitor-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Usagi-org/ai-goofish-monitor |
| Stars | 16,374（2026-11-04 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-04 |

---
title: Uptime Kuma
slug: louislam-uptime-kuma
created: 2026-11-14
updated: 2026-11-14
stars: 93865
language: zh-TW
topics: ["self-hosted", "observability"]
---

# Uptime Kuma

> ⭐93.9k · 自架服務可用性監控、通知與狀態頁；不是 LLM 評測工具。

## 快速導航

- [[self-hosted]]
- [[observability]]

## 是什麼

Uptime Kuma 是容易上手的自架監控工具，透過 HTTP、TCP、DNS、Ping 等探測，追蹤服務是否能正常使用。它把監控狀態、歷史圖表與通知整合在同一個網頁介面。

它與 LLM 的關係在基礎設施層：可監看自架聊天介面或 API 端點是否存活，但 HTTP 成功不代表模型回答正確，也不提供 token 或推論品質評測。收錄來源是 GitHub Trending，不應把它誤標成 LLM 原生框架。

## 核心特色

- 多協議探測：支援 HTTP 關鍵字、JSON Query、WebSocket、DNS、Push 與 Docker 容器。

- 通知整合：README 列出 Telegram、Discord、Slack、SMTP 等通知渠道。

- 公開狀態頁：支援多個狀態頁及各自網域。

- 操作與安全：提供憑證資訊、代理設定、雙因素驗證與多語言介面。

## 怎麼用

### 安裝與啟動

以下指令是文件示範，本次收錄沒有執行安裝。

```bash
docker run -d --restart=always -p 127.0.0.1:3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:2
```

### 初次使用檢查

1. 先備妥 Docker，範例將管理介面限制在本機，開啟 http://localhost:3001 完成設定。

2. 新增一個 HTTP 監控與通知渠道，先以測試環境驗證告警可送達。

3. 資料卷須使用本地儲存，官方明確不支援 NFS；需要遠端存取時另設安全入口。

### 適用邊界

- 不要因為狀態頁顯示正常就判定所有業務功能或模型回答正常。

- 備份資料卷並規劃更新；本次僅收錄文件，未安裝服務或實測告警。

## 跟其他方案的關係

以下為功能定位比較，並非效能測試。

| 方案 | 主要用途 | 關係與差異 |
|---|---|---|
| 手動 curl／Ping | 臨時檢查連線 | Kuma 提供持續監控、歷史與通知。 |
| LLM trace／評測平台 | 追蹤提示詞與回答品質 | Kuma 關心端點可用性，兩者互補。 |

## 相關概念

← [[self-hosted]] · [[observability]]

## 來源

- [GitHub repository](https://github.com/louislam/uptime-kuma)
- [README](https://github.com/louislam/uptime-kuma/blob/master/README.md)
- 原始快照：`raw/2026-11-14-louislam-uptime-kuma.md`
- Metadata：`raw/2026-11-14-louislam-uptime-kuma.metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/louislam/uptime-kuma |
| Stars | 93,865（2026-11-14 快照） |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-11-14 |

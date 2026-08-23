---
title: TrendRadar
slug: sansan0-TrendRadar
created: 2025-04-28
updated: 2026-06-15
stars: 59429
language: Python
topics: [ai, mcp, rss, news, trending-topics, data-analysis, docker, llm]
---

# TrendRadar

> ⭐59429 · AI 驅動輿情監控與趨勢篩選工具，聚合多平台熱點 + RSS，支援 MCP 架構和 10+ 推送管道。

## 快速導航

[[MCP|MCP 協議]] · [[網頁爬蟲|網頁爬取]] · [[mvanhorn-last30days-skill|last30days]]

## 是什麼

TrendRadar 是一個 AI 驅動的輿情監控平台，幫助使用者告別無效刷屏，只看真正關心的新聞資訊。它聚合多平台熱點（微博、知乎、今日頭條、抖音等 20+ 平台）和 RSS 訂閱源，利用 AI 進行智慧篩選、翻譯、分析，並透過微信、飛書、釘釘、Telegram、Email、ntfy、Bark、Slack 等管道推送精簡簡報。

專案以輕量、易部署為目標，支援 GitHub Actions（零伺服器）、Docker、本地運行三種部署方式。30 秒即可完成設定。內建關鍵詞精準篩選，可根據使用者需求過濾噪音，只推送相關內容。MCP 介面讓 AI Agent 能直接進行自然語言對話分析、情感洞察與趨勢預測。

## 核心特色

- **多平台聚合**：支援微博、知乎、今日頭條、抖音、GitHub Trending 等 20+ 平台熱點即時抓取
- **RSS 訂閱**：整合任意 RSS 來源，補充平台覆蓋不足的資訊
- **AI 智慧篩選**：利用 LLM 進行關鍵詞精準匹配、去重、摘要和翻譯
- **10+ 推送管道**：企業微信、個人微信、飛書、釘釘、Telegram、Email、ntfy、Bark、Slack、Webhook
- **MCP 原生支援**：提供 MCP Server 介面，讓 AI Agent 直接進行輿情分析對話
- **三種部署**：GitHub Actions（免伺服器）、Docker（一鍵啟動）、本地 Python（開發除錯）
- **資料自主**：支援本地和雲端兩種資料儲存模式，資料不離手

## 怎麼用

```bash
# 方式一：GitHub Actions（最簡單，零伺服器）
# 1. Fork 專案
# 2. 設定 Secrets（API keys、推送管道 token）
# 3. 啟用 GitHub Actions workflow

# 方式二：Docker（推薦自架）
docker pull wantcat/trendradar
docker run -d \
  -e OPENAI_API_KEY=your_key \
  -e WECHAT_WEBHOOK=your_webhook \
  -p 8080:8080 \
  wantcat/trendradar

# 方式三：本地運行
git clone https://github.com/sansan0/TrendRadar.git
cd TrendRadar
pip install -r requirements.txt
python app.py

# MCP Client 配置
# 在 Claude Desktop 或其他 MCP Client 中：
```

```json
{
  "mcpServers": {
    "trendradar": {
      "command": "docker",
      "args": ["run", "wantcat/trendradar-mcp"]
    }
  }
}
```

## 跟其他方案的關係

| 方案 | 類型 | 熱點覆蓋 | AI 分析 | MCP |
|------|------|----------|---------|------|
| [[sansan0-TrendRadar|TrendRadar]] | 輿情監控 | 20+ 平台 + RSS | ✅ 篩選/翻譯/摘要 | ✅ |
| [[mvanhorn-last30days-skill|last30days]] | 社群搜尋 | 14 平台 | ✅ 評分/聚簇 | ✅ |
| [[D4Vinci-Scrapling|Scrapling]] | 爬蟲框架 | 自訂 | ❌ | ❌ |
| [[firecrawl-firecrawl|Firecrawl]] | 爬蟲 API | 自訂 | ✅ LLM-ready | ✅ |
| Feedly / Inoreader | RSS 閱讀器 | RSS only | 部分付費 | ❌ |

## 相關概念

← [[MCP]] · [[網頁爬蟲]]

## 來源

- GitHub：https://github.com/sansan0/TrendRadar
- 官網：https://sansan0.github.io/TrendRadar/
- Raw 檔案：`knowledge-base/raw/2026-06-15-sansan0-TrendRadar.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/sansan0/TrendRadar |
| Stars | ⭐59429|
| License | GPL-3.0 |
| 收錄日期 | 2025-04-28 |

---
title: last30days
slug: mvanhorn-last30days-skill
created: 2026-06-05
updated: 2026-06-05
stars: 27580
language: Python
topics: [AI Skills, 社群搜尋引擎, OSINT, Agent 整合]
---

# last30days

> ⭐28k · AI Agent 驅動的社群搜尋引擎，用 Reddit upvote、X like、Polymarket 真金白銀評分，一次搜遍 14 個平台

## 快速導航
[[AI-Agent|AI Agent]] · [[AI-Skills|AI Skills]] · [[網頁爬蟲|Web Crawling]]

## 是什麼

last30days 是一個 AI Agent Skill，把「搜尋」從編輯精選變成群眾評分。它同時搜尋 Reddit、X/Twitter、YouTube、TikTok、Hacker News、Polymarket、GitHub、Instagram Reels、Threads、Pinterest、Bluesky、Perplexity、Digg 和 Web 等十四個來源，用使用者真實互動（upvote、like、觀看量、真金白銀的交易量）來排序結果，最後由 AI Agent 整合成一份精簡報告。

這件事之所以關鍵，是因為沒有任何單一 AI 能存取所有平台：Google 碰不到 Reddit 評論和 X 貼文；ChatGPT 有 Reddit 卻搜不了 X 和 TikTok；Gemini 有 YouTube 但沒有 Reddit；Claude 原生連 Reddit 都沒有。每個平台都是封閉花園，有自己的 API、token 和認證機制。但只要你自己帶 API key 和瀏覽器 session，Agent 就能一次搜遍所有平台、跨平台評分、告訴你什麼才是真正重要的。

典型使用場景：開會前查某人最近 30 天真實動態、比對工具優劣（自動發現競品）、旅遊前查最新評價、了解國際局勢。Reddit 1500 upvotes 的討論串比沒人讀的部落格文章更有參考價值；Polymarket 用 \$66K 交易量支撐的 96% 機率比專家猜測更難反駁。

## 核心特色

- **智能預研究**：v3 引擎在搜尋前先理解主題——輸入 "OpenClaw" 自動解析出 @steipete、r/openclaw、r/ClaudeCode、正確的 YouTube 頻道和 TikTok hashtag，告別純關鍵字搜尋
- **跨來源聚簇合併**：同一事件出現在 Reddit、X、YouTube 時，自動合併為單一條目而非三個獨立項目，實體重疊偵測即使標題用不同措辭也能匹配
- **Best Takes 趣味評分**：除了相關性排序外，第二個評審模型專門為幽默、機智和病毒傳播力打分，每次報告結尾附上最精彩的社區金句
- **分享 HTML 報告**：`/last30days OpenClaw --emit=html` 產生自包含的深色模式 HTML，可直接丟進 Slack、Email、Notion，離線可用，無 JavaScript 依賴
- **14 個來源平行搜尋**：Reddit（免費 JSON）、X、YouTube 字幕、TikTok、HN、Polymarket、GitHub、Instagram Reels、Threads、Pinterest、Bluesky、Perplexity、Digg、Web——零配置即用 Reddit/HN/GitHub，30 秒設定嚮導解鎖其餘平台

## 怎麼用

```bash
# Claude Code 安裝（推薦 — 透過 marketplace 自動更新）
/plugin marketplace add mvanhorn/last30days-skill

# Codex / Cursor / Copilot / Gemini CLI 等 50+ Agent Skills 主機
npx skills add mvanhorn/last30days-skill -g

# OpenClaw 安裝
clawhub install last30days-official

# 基本搜尋
/last30days Peter Steinberger

# 比較工具（自動發現競品）
/last30days OpenClaw --competitors

# 輸出 HTML 分享報告
/last30days OpenAI --emit=html

# GitHub 人物模式
/last30days Peter Steinberger --github-user=steipete

# ELI5 簡化模式（搜尋後切換）
/last30days Arizona Basketball
eli5 on
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 來源數 | 群眾評分 | 跨平台合併 | Agent 整合 |
|------|-------|------|--------|---------|-----------|-----------|
| **last30days** | ⭐28k | Agent Skill 搜尋引擎 | 14 個 | ✅ upvote/like/真金 | ✅ 聚簇合併 | 50+ Agent 平台 |
| Perplexity | ⭐— | AI 搜尋引擎 | 1 個 | ❌ SEO 排序 | ❌ | 網頁/API |
| Google Search | — | 傳統搜尋 | 1 個 | ❌ 編輯/PageRank | ❌ | 無原生 |
| ChatGPT Search | — | AI 搜尋 | 1 個 | ❌ | ❌ | ChatGPT only |
| Tavily | ⭐— | Agent 搜尋 API | 1 個 | ❌ | ❌ | API only |
| [[upstash-context7|Context7]] | ⭐55k | LLM 文件查詢 | 文件為主 | ❌ | ❌ | MCP |

last30days 的差異化在於「群眾評分 + 跨平台搜尋 + Agent 原生整合」三合一。其他方案只看 SEO 或單一來源，last30days 用 real people 的 real engagement 當排序依據。

## 相關概念
← [[AI-Agent|AI Agent]] · [[AI-Skills|AI Skills]] · [[網頁爬蟲|Web Crawling]]

## 來源

- GitHub: <https://github.com/mvanhorn/last30days-skill>
- 原始 README: `raw/2026-06-05-mvanhorn-last30days-skill.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [mvanhorn/last30days-skill](https://github.com/mvanhorn/last30days-skill) |
| Stars | ⭐27,580 |
| License | — |
| Language | Python |
| 收錄日期 | 2026-06-05 |
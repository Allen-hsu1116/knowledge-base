---
title: 自架（Self-Hosted）
slug: self-hosted
created: 2026-06-05
updated: 2026-08-28
language: zh-TW
---

# 自架（Self-Hosted）

> 在自有基礎設施上部署和運行軟體，掌控資料隱私、客製化和成本。

## 核心內容

自架（Self-Hosting）是指在自己的伺服器或設備上部署和運行軟體，而不是使用第三方雲端服務。這個概念涵蓋從個人 NAS 上的媒體伺服器到企業機房裡的完整 AI 平台，核心精神是「軟體和資料都掌握在自己手裡」。

自架的動力來自三個面向：資料隱私（資料不出門，免於第三方存取和廣告追蹤）、客製自由（可修改配置、接API、換前端，不受 SaaS 供應商限制）、以及成本控制（無按量計費，硬體成本一次性投入）。對於 AI 工具來說，自架更意味著可以選擇任何開源模型，不受 API 供應商的審查和地區限制。

自架生態系近年蓬勃發展。Docker 和 Docker Compose 大幅降低了部署門檻，一條指令就能啟動複雜的服務棧。免費域名服務讓自架服務能被外部存取，SSL 自動化工具解決了 HTTPS 問題，而如 Cloudflare Tunnel 等方案則提供了免暴露公網 IP 的安全通道。從 LLM 平台（Open WebUI）、媒體伺服器（Jellyfin）、文件管理（Paperless-ngx）到 NVR 監控（Frigate），開源自架方案已覆蓋絕大部分日常需求。

自架並非沒有代價——需要持續的維護成本（更新、備份、安全修補）、硬體投入、以及一定的技術能力。但對重視隱私和掌控權的使用者來說，這是值得的投資。

## 關鍵要素

- **資料主權** — 資料完全留在自有環境，不經過第三方伺服器
- **客製自由** — 可自由修改配置、更換元件、串接 API，不受 SaaS 限制
- **成本可控** — 硬體一次性投入，無按量計費，長期成本可預測
- **Docker 部署** — 容器化讓複雜服務棧能以一條指令啟動
- **離線運行** — 不依賴外部雲端服務，適合斷網或隱私敏感環境
- **開源生態** — 大量開源專案提供自架方案，從 AI 到媒體到生產力工具

## 各框架的做法

- **FreeLLMAPI** → 在本機以 Docker、桌面 App 或 Node.js 執行多供應商 Gateway，供應商金鑰加密存於本地 SQLite
  👉 詳見 [[tashfeenahmed-freellmapi\|FreeLLMAPI]]
- **claude-obsidian** → 把知識留在使用者擁有的 Markdown vault，網路外連與遠端模型能力需明確同意
  👉 詳見 [[AgriciDaniel-claude-obsidian\|claude-obsidian]]
- **Open WebUI** → 自架 LLM 平台，Docker 一鍵部署，整合 Ollama 本地模型
  👉 詳見 [[open-webui-open-webui|Open WebUI]]
- **Jellyfin** → 開源媒體串流伺服器，自架電影、音樂、電視節目
  👉 詳見 [[jellyfin-jellyfin|Jellyfin]]
- **Paperless-ngx** → 自架文件管理系統，OCR 自動分類歸檔
  👉 詳見 [[paperless-ngx-paperless-ngx|Paperless-ngx]]
- **Plane** → 開源專案管理，Jira 替代品，Docker/K8s 自架
  👉 詳見 [[makeplane-plane|Plane]]
- **Frigate NVR** → 自架 NVR 監控系統，邊緣 AI 物件偵測
  👉 詳見 [[blakeblackshear-frigate|Frigate NVR]]
- **FreeDomain** → 免費域名資源，降低自架服務的基礎設施門檻
  👉 詳見 [[DigitalPlatDev-FreeDomain|FreeDomain]]
- **oMLX** → 在 Apple Silicon Mac 自架 OpenAI/Anthropic-compatible LLM endpoint，並以本機選單列與 Web 管理台營運
  👉 詳見 [[jundot-omlx|oMLX]]
- **Ghost** → 可用 Ghost CLI 自架專業出版、會員與 newsletter 平台，也可改用官方代管
  👉 詳見 [[TryGhost-Ghost|Ghost]]
- **Sub2API** → 以 Docker Compose 或 systemd 自架訂閱配額型 AI API Gateway
  👉 詳見 [[Wei-Shaw-sub2api|Sub2API]]
- **free-for.dev** → 提供代管免費層清單，可用來比較 SaaS 與自行架設的成本界線
  👉 詳見 [[ripienaar-free-for-dev|free-for.dev]]
- **Vaultwarden** → 以輕量 Rust 伺服器相容 Bitwarden clients，自行掌控密碼庫資料、更新與備份
  👉 詳見 [[dani-garcia-vaultwarden|Vaultwarden]]
- **Hister** → 在本機或自有伺服器保存瀏覽網頁與檔案全文索引，並提供 Web、CLI 與 MCP 搜尋
  👉 詳見 [[asciimoo-hister]]

- **Nitter** → 以 Nim、Valkey／Redis、Docker 與反向代理自架隱私 Twitter／X 前端；目前已封存
  👉 詳見 [[zedeus-nitter]]

## 相關概念

- [[self-hosted|自架 AI 平台]] — 專注於 AI 服務的自架
- [[open-source-business|開源商業模式]] — 開源專案的商業化策略
- [[privacy|隱私]] — 自架的核心驅動力
- [[free-domain|免費域名]] — 降低自架服務對外存取門檻
- [[media-streaming|媒體串流]] — 自架娛樂基礎設施
- [[TryGhost-Ghost|Ghost]] — 兼具自架控制權與官方 SaaS 的出版平台
- [[asciimoo-hister]] — 自架個人全文搜尋與瀏覽歷史索引

## 來源

- [[amadeusprotocol-node|Amadeus Protocol Node]] — 在 Linux 主機自行建置、調校並以 systemd 維運實驗性節點

- 自架專案頁面彙整
- Awesome Self-Hosted 列表
- Docker 部署實務
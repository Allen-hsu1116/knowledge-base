---
title: 隱私
slug: privacy
created: 2026-06-05
updated: 2026-08-24
language: zh-TW
---

# 隱私

> 保護個人資料和線上行為不被未授權存取的技術與原則。

## 核心內容

隱私是自架和開源運動的核心驅動力之一。在資料成為「新石油」的時代，商業服務透過追蹤使用者行為、收集個人資料、投放定向廣告來獲利。隱私技術和工具的目標是讓使用者重新掌控自己的資料和線上足跡。

隱私保護涵蓋多個層面：網路層面有 VPN 和 Tor 等匿名化技術；瀏覽器層面有反追蹤擴充和隱私瀏覽器；分析層面有無 Cookie 的隱私分析工具；通訊層面有端對端加密的訊息應用；資料層面有去識別化和差分隱私技術。開源社群在每個層面都提供了替代方案。

AI 時代帶來了新的隱私挑戰。LLM 的訓練資料可能包含敏感資訊，AI Agent 在執行任務時可能存取個人資料，而雲端 API 供應商可能記錄所有對話。自架 AI 平台（如 Open WebUI + Ollama）讓 AI 對話完全留在本地，是隱私導向使用者的解決方案。醫療 AI 工具透過 PII 去識別化確保臨床資料安全，文件解析工具透過本地處理避免敏感文件上傳雲端。

隱私與安全密切相關但不等同：安全是防止未授權存取，隱私是控制資訊的流通範圍。一個系統可能很安全（加密存儲）但缺乏隱私（收集過多資料）。

## 關鍵要素

- **資料主權** — 資料留在自有環境，不經過第三方伺服器
- **反追蹤** — 阻止瀏覽器指紋、Cookie、像素追蹤等監控技術
- **無 Cookie 分析** — 使用 GDPR 合規的隱私分析工具替代 Google Analytics
- **端對端加密** — 通訊和儲存過程中資料始終加密，服務提供商也無法讀取
- **本地 AI 處理** — LLM 推論在本地完成，對話記錄不上傳雲端
- **去識別化** — 移除或模糊化資料中的個人識別資訊（PII）

## 各框架的做法

- **Plausible Analytics** → 無 Cookie 的隱私網站分析，GDPR 合規，替代 Google Analytics
  👉 詳見 [[plausible-analytics|Plausible Analytics]]
- **Obscura** → Rust 實現的隱私瀏覽工具，反追蹤和反指紋
  👉 詳見 [[obscura|Obscura]]
- **CloakBrowser** → 反偵測隱私瀏覽器，適合自動化和安全研究
  👉 詳見 [[CloakHQ-CloakBrowser|CloakBrowser]]
- **OpenMed** → 醫療 AI 本地部署，PII 去識別化確保臨床資料安全
  👉 詳見 [[maziyarpanahi-openmed|OpenMed]]
- **PDFCraft** → 隱私優先的文件解析工具，本地處理敏感 PDF
  👉 詳見 [[pdfcraft|PDFCraft]]
- **LEANN** → 本地隱私優先的向量資料庫，97% 儲存節省
  👉 詳見 [[yichuan-w-LEANN|LEANN]]
- **OpenLogi** → 不需帳號或遙測，以本地 TOML 管理 Logitech 裝置設定
  👉 詳見 [[AprilNEA-OpenLogi|OpenLogi]]
- **Google Timeline Visualizer** → Timeline JSON 留在裝置端，只向底圖供應商請求可見區域 tiles
  👉 詳見 [[mahlernim-google-timeline-visualizer|Google Timeline Visualizer]]
- **Vaultwarden** → 把 Bitwarden 相容密碼庫部署在自有環境，以資料主權換取 HTTPS、更新與備份責任
  👉 詳見 [[dani-garcia-vaultwarden|Vaultwarden]]

## 相關概念

- [[self-hosted|自架]] — 自架是隱私保護的基礎手段
- [[self-hosted|自架 AI 平台]] — 本地 AI 處理保護對話隱私
- [[pentesting|滲透測試]] — 安全測試與隱私保護相輔相成
- [[free-software|免費軟體]] — 開源軟體的透明性有助於隱私審計
- [[prompt-security|Prompt 安全]] — AI 應用中的隱私和安全風險

## 來源

- 隱私保護工具專案頁面
- GDPR 合規與隱私分析趨勢
- AI 時代隱私挑戰研究
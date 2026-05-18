# CloakBrowser

> Stealth Chromium that passes every bot detection test — drop-in Playwright/Puppeteer replacement

**Repo:** <https://github.com/CloakHQ/CloakBrowser>
**Stars:** ⭐ 14,651
**Language:** Python (wrapper) / C++ (Chromium patches)
**Created:** 2026-02-22

## 一句話

CloakBrowser 是從 Chromium C++ 原始碼層級修改指紋的隱形瀏覽器，通過 reCAPTCHA v3、Cloudflare Turnstile 等 30+ 偵測服務，一行 `from cloakbrowser import launch` 就能取代 Playwright。

## 核心概念

傳統反偵測方案（playwright-stealth、undetected-chromedriver）在 JS/Config 層級修補，每次 Chrome 更新就破功。CloakBrowser 直接改 Chromium 原始碼，49 個 C++ patch 編進 binary 裡，偵測系統看到的是一個「真正的瀏覽器」。

### 關鍵數據

- **reCAPTCHA v3**：0.9 分（人類等級）
- **Cloudflare Turnstile**：PASS
- **FingerprintJS**：PASS
- **`humanize=True`**：模擬人類滑鼠曲線、鍵盤節奏、滾動行為

### 核心特色

- **49 個 C++ source-level patches**：canvas、WebGL、audio、fonts、GPU、screen、WebRTC、network timing、automation signals、CDP input
- **Drop-in 替換**：Python `from cloakbrowser import launch`，JS `import { launch } from 'cloakbrowser'`
- **原生 SOCKS5 代理**：支援 QUIC/HTTP3 隧道
- **Profile Manager**：自架版 Multilogin/GoLogin 替代方案
- **auto-download binary**：首次執行自動下載 Chromium 146

### 與其他方案比較

| | Playwright-stealth | undetected-chromedriver | CloakBrowser |
|---|---|---|---|
| Patch 層級 | JS injection | Config patches | **C++ source** |
| reCAPTCHA v3 | 0.3-0.5 | 0.3-0.7 | **0.9** |
| Chrome 更新後 | 常壞 | 常壞 | **存活** |

## 相關概念

- [[web-scraping]] — 隱形瀏覽器是進階爬蟲的基礎設施
- [[web-crawling]] — 搭配 Crawl4AI 等 framework 使用
- [[pentesting]] — 繞過 bot detection 是滲透測試的前置需求
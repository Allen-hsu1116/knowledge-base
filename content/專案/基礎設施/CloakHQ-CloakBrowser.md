---
title: CloakBrowser
slug: CloakHQ-CloakBrowser
created: 2026-02-22
updated: 2026-02-22
stars: 28078
language: zh-TW
topics: [隱私, 瀏覽器, 反偵測]
---

# CloakBrowser

> ⭐14,651 · Stealth Chromium that passes every bot detection test — drop-in Playwright/Puppeteer replacement

**Repo:** <https://github.com/CloakHQ/CloakBrowser>
**Stars:** ⭐ 14,651
**Language:** Python (wrapper) / C++ (Chromium patches)
**Created:** 2026-02-22

## 一句話

CloakBrowser 是從 Chromium C++ 原始碼層級修改指紋的隱形瀏覽器，通過 reCAPTCHA v3、Cloudflare Turnstile 等 30+ 偵測服務，一行 `from cloakbrowser import launch` 就能取代 Playwright。

## 快速導航

- ⚡ [[網頁爬蟲]] · [[pentesting]]

## 是什麼

CloakBrowser 是一個從 Chromium C++ 原始碼層級修改指紋的隱形瀏覽器，通過 reCAPTCHA v3（0.9 分）、Cloudflare Turnstile、FingerprintJS 等 30+ 偵測服務。它是 Playwright/Puppeteer 的 drop-in 替代品，安裝只需一行 `pip install cloakbrowser` 或 `npm install cloakbrowser`，自動下載客製化 Chromium binary，現有程式碼幾乎不用改。

傳統反偵測方案（playwright-stealth、undetected-chromedriver）在 JS/Config 層級修補，每次 Chrome 更新就破功。CloakBrowser 直接改 Chromium 原始碼，49+ 個 C++ patch 編進 binary 裡，偵測系統看到的是一個「真正的瀏覽器」。

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

## 怎麼用

```bash
# Python — 安裝
pip install cloakbrowser

# JavaScript — 安裝（Playwright）
npm install cloakbrowser playwright-core

# Docker 快速測試
docker run --rm cloakhq/cloakbrowser cloaktest
```

```python
# Python — 基本使用
from cloakbrowser import launch

browser = launch()
page = browser.new_page()
page.goto("https://protected-site.com")  # 不再被擋
browser.close()

# 搭配代理和 humanize
browser = launch(proxy="socks5://user:pass@host:1080", humanize=True)
```

```javascript
// JavaScript — 基本使用
import { launch } from 'cloakbrowser';
const browser = await launch();
const page = await browser.newPage();
await page.goto('https://protected-site.com');
await browser.close();
```

支援 `launch()`、`launch_context()`、`launch_persistent_context()`、`launch_async()` 等完整 API，兼容 Playwright 所有方法。

## 跟其他方案的關係

| 方案 | Patch 層級 | reCAPTCHA v3 | CF Turnstile | Chrome 更新後 | Playwright API | 授權 |
|------|-----------|-------------|-------------|-------------|---------------|------|
| **CloakBrowser** | **C++ source** | **0.9** | **PASS** | **存活** | **原生** | MIT |
| playwright-stealth | JS injection | 0.3-0.5 | Fail | 常壞 | 原生 | Apache |
| undetected-chromedriver | Config patches | 0.3-0.7 | 有時 | 常壞 | 否（Selenium） | GPL |
| Camoufox | C++ (Firefox) | 0.7-0.9 | PASS | 是 | 否 | MPL |

- CloakBrowser 是 [[網頁爬蟲]] 的基礎設施——當網站有嚴格反偵測時，它是進階爬蟲的必備工具
- 與 [[KeygraphHQ-shannon|Shannon]] 互補：繞過 bot detection 是 AI 滲透測試的前置需求
- 可搭配 Crawl4AI、browser-use、LangChain 等 AI agent framework 使用

## 相關概念

- [[網頁爬蟲]] — 隱形瀏覽器是進階爬蟲的基礎設施
- [[網頁爬蟲]] — 搭配 Crawl4AI 等 framework 使用
- [[KeygraphHQ-shannon]] — 繞過 bot detection 是滲透測試的前置需求

## 來源

- [原始資料](../raw/2026-05-18-CloakHQ-CloakBrowser.md)

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/CloakHQ/CloakBrowser |
| **收錄日期** | 2026-02-22 |

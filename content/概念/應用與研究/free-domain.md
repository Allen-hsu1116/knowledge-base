---
title: 免費域名
slug: free-domain
created: 2026-05-27
updated: 2026-05-27
language: zh-TW
---

# 免費域名

> 免費取得和管理網域名稱，降低自架服務的基礎設施門檻。

## 核心內容

免費域名服務讓開發者可以在零成本下取得網域名稱，為自架服務提供對外存取的入口。網域名稱是自架服務的基礎設施門檻之一——沒有域名，自架服務只能透過 IP 位址存取，既不直觀也不方便。免費域名服務消除了這個障礙，讓任何人都能用自己的域名運行自架服務。

傳統上，網域名稱需要每年付費向域名註冊商購買（如 .com 域名約每年 10-15 美元）。而免費域名服務透過社群贊助或公益計畫提供免費的子域名或頂級域名，讓學生、開發者和非營利組織能零成本建立線上服務。這對降低自架和開源部署的門檻具有重要意義。

免費域名通常搭配免費 DNS 託管服務（如 Cloudflare、Hurricane Electric）使用，提供域名解析、SSL 憑證自動化、DDNS 動態 IP 更新等功能。部分服務還提供 Cloudflare Tunnel 等通道方案，讓自架服務無需暴露公網 IP 即可被外部存取。

## 關鍵要素

- **零成本取得** — 免費註冊網域名稱，無年費負擔
- **DNS 託管** — 搭配免費 DNS 服務提供域名解析
- **SSL 自動化** — 透過 Let's Encrypt 等免費 CA 自動取得 HTTPS 憑證
- **子域名方案** — 提供免費子域名，適合個人專案和測試環境
- **DDNS 支援** — 動態 IP 更新，適合家用寬頻自架場景
- **Tunnel 通道** — 透過 Cloudflare Tunnel 等方案免暴露公網 IP

## 各框架的做法

- **FreeDomain** → 免費域名資源整理，提供免費域名註冊管道
  👉 詳見 [[DigitalPlatDev-FreeDomain|FreeDomain]]
- **Project N.O.M.A.D.** → 離線知識伺服器，可搭配免費域名對外提供服務
  👉 詳見 [[Crosstalk-Solutions-project-nomad|Project N.O.M.A.D.]]
- **Jellyfin** → 自架媒體伺服器，搭配免費域名可從外部串流
  👉 詳見 [[jellyfin-jellyfin|Jellyfin]]
- **Plane** → 自架專案管理，需要域名才能提供團隊外部存取
  👉 詳見 [[makeplane-plane|Plane]]

## 相關概念

- [[self-hosted|自架]] — 免費域名是自架服務的基礎設施門檻之一
- [[open-source-business|開源商業模式]] — 免費域名降低開源專案的部署成本
- [[privacy|隱私]] — 自有域名搭配 Tunnel 可隱藏伺服器真實 IP
- [[media-streaming|媒體串流]] — 媒體串流服務需要域名對外提供存取

## 來源

- FreeDomain 專案頁面
- 自架服務基礎設施整理
- 免費 DNS 和 SSL 生態系
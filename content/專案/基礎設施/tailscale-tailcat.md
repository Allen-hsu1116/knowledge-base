---
title: Tailcat
slug: tailscale-tailcat
created: 2026-11-14
updated: 2026-11-14
stars: 9458
language: zh-TW
topics: ["self-hosted", "privacy"]
---

# Tailcat

> ⭐9.5k · 以 Tailscale 資料平面建立端對端加密通道，不依賴其控制平面。

## 快速導航

- [[self-hosted]]
- [[privacy]]

## 是什麼

Tailcat 是把 Tailscale 開源元件重新組合成 netcat 類工具的 CLI 與 Go 函式庫。兩端使用帶外交換的 tailcat 位址建立連線，經 WireGuard 加密，並以 DERP 啟動連線與協助 NAT 穿透。

可行時它會升級成直接的點對點 UDP 連線，失敗時則透過 relay。它不需要 Tailscale 帳號或管理員權限，也不修改主機路由和 DNS；這是自架服務連線的配套，而不是 LLM 或 Agent 框架。

## 核心特色

- 使用者空間通道：不必先建置完整 tailnet 或修改系統路由。

- 加密與 NAT 穿透：WireGuard 端對端加密，DERP 提供啟動及最後備援。

- CLI 與 Go library：可用於 stdin/stdout 或整合到程式。

- 連接埠轉送：serve 與 forward 讓既有瀏覽器、資料庫用戶端使用通道。

- 瀏覽器實驗版本：WASM demo 能傳檔或文字，目前瀏覽器流量僅經 DERP。

## 怎麼用

### 安裝與啟動

以下指令是文件示範，本次收錄沒有執行安裝。

```bash
brew install tailcat
# 伺服端只開放指定服務
tailcat serve 8080
# 在另一台電腦，以伺服端輸出的實際位址替換占位字串
tailcat forward <tailcat-address> 18080:8080
```

### 初次使用檢查

1. 上述安裝方式適用 macOS；其他平台依 INSTALL.md 選擇對應套件。

2. 透過可信渠道交換位址，客戶端再存取 http://127.0.0.1:18080。

3. 只分享確實需要的連接埠，避免為方便使用 serve all 或 exit-node 擴大可達範圍。

### 適用邊界

- 端對端加密不代表應用層無須驗證，也不保證每次 NAT 穿透都能直連。

- 免費 DERP 有速率限制，可選擇自行架設；本次未測試跨網路效能。

## 跟其他方案的關係

以下為功能定位比較，並非效能測試。

| 方案 | 主要用途 | 關係與差異 |
|---|---|---|
| netcat | 串接位元組串流 | Tailcat 另提供加密與 NAT 穿透。 |
| 完整 Tailscale | 受控制平面管理的網路 | Tailcat 省去控制平面，連線資訊自行帶外交換。 |

## 相關概念

← [[self-hosted]] · [[privacy]]

## 來源

- [GitHub repository](https://github.com/tailscale/tailcat)
- [README](https://github.com/tailscale/tailcat/blob/main/README.md)
- 原始快照：`raw/2026-11-14-tailscale-tailcat.md`
- Metadata：`raw/2026-11-14-tailscale-tailcat.metadata.json`
- [安裝文件](https://github.com/tailscale/tailcat/blob/main/INSTALL.md)

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/tailscale/tailcat |
| Stars | 9,458（2026-11-14 快照） |
| License | BSD-3-Clause |
| Language | Go |
| 收錄日期 | 2026-11-14 |

---
title: Amadeus Protocol Node
slug: amadeusprotocol-node
created: 2026-08-20
updated: 2026-08-20
stars: 4551
language: zh-TW
topics: [區塊鏈節點, 分散式系統, 智慧合約, WebAssembly, Rust, 自架]
---

# Amadeus Protocol Node

> ⭐4.6k · 可自行編譯、啟動本地 testnet 並部署 WebAssembly 合約的 Amadeus Protocol 實驗性節點實作。

## 快速導航

- 🏠 [[self-hosted]] — 在自己的 Linux 主機建置與維運服務
- 🧪 [[sandbox]] — 在本地 testnet 隔離測試合約與交易
- ⚙️ [[workflow-automation]] — 將 build、更新與 systemd 啟動流程自動化

## 是什麼

Amadeus Protocol Node 是 Amadeus Protocol 的開源節點程式碼與建置流程。README 主要面向 Ubuntu 24.04／Linux Kernel 6.8 環境，示範如何使用 Podman 或 Docker 建立 builder，再產出並啟動節點二進位檔。

專案可在本機開啟帶 RPC API 的 testnet，透過 REPL 送出代幣轉帳，也能部署 AssemblyScript 編譯的 WebAssembly counter contract，再呼叫讀取與 increment 方法。

README 亦提供偏營運面的設定，包括 Linux UDP buffer、檔案描述符與程序限制，以及把 `amadeusd` 設為 systemd 自動重啟服務。整體仍被作者標示為實驗性研究專案，使用者必須自行承擔部署與資產風險。

## 核心特色

- **容器化建置**：可用 Podman 或 Docker 執行 `build.Dockerfile`，減少編譯環境差異。
- **本地 testnet**：支援在 localhost 啟動測試網路與 RPC API，方便隔離測試。
- **合約部署與呼叫**：範例展示部署 AssemblyScript WebAssembly 合約並呼叫其方法。
- **內建 REPL 操作**：可取得 trainer key，在測試網送出 transfer 與 contract call。
- **systemd 維運範例**：README 提供 service unit、自動更新、重新啟動與開機啟動設定。
- **網路效能調校**：列出 UDP buffer、backlog、nofile、nproc 與 memlock 等 Linux 參數。
- **Validator／computor 模式**：可透過環境變數選擇一般 computor 或 trainer validator 啟動方式。

## 怎麼用

README 的已測環境為 Ubuntu 24.04，先用 Podman 或 Docker 建置：

```bash
podman build --tag erlang_builder -f build.Dockerfile
./build.sh
```

接著可在隔離主機或測試 VM 啟動本地 testnet：

```bash
TESTNET=true \
WORKFOLDER=/tmp/testnet \
HTTP_IPV4=127.0.0.1 \
HTTP_PORT=80 \
./amadeusd
```

若要部署範例合約，可依 README 在節點 REPL 中載入 trainer key，再執行 `Testnet.deploy` 與 `Testnet.call`。不要在日常瀏覽器設定中長期使用 `--disable-web-security` 或忽略憑證；這些參數只應放在隔離的本地測試 profile。

## 跟其他方案的關係

這個 repository 是特定協議的節點，而不是通用區塊鏈開發框架：

| 方案 | 定位 | 合約執行 | 適合情境 |
|------|------|----------|----------|
| Amadeus Protocol Node | 實驗性網路節點 | WebAssembly 範例合約 | Amadeus 本地 testnet、節點研究 |
| Ethereum execution client | EVM 網路節點 | EVM bytecode | Ethereum 主網／測試網基礎設施 |
| Substrate | 模組化區塊鏈 SDK | WASM runtime | 建立客製化鏈與 runtime pallet |
| Tendermint／CometBFT | BFT 共識引擎 | 由應用層決定 | 建構 ABCI 型應用鏈 |

Amadeus Node 的 README 聚焦實際節點建置、測試與營運；若需要成熟生態、完整安全審計或通用 SDK，應再評估其他主流鏈框架與客戶端。

## 相關概念

← [[self-hosted]] · [[sandbox]] · [[workflow-automation]]

## 來源

- GitHub：https://github.com/amadeusprotocol/node
- Raw 檔案：raw/2026-08-20-amadeusprotocol-node.md
- README 僅提供實驗性研究用途與風險免責聲明

---

| 項目 | 值 |
|------|----|
| **GitHub** | https://github.com/amadeusprotocol/node |
| **Stars** | ⭐4,551 |
| **License** | Repository 未標示 |
| **Language** | Rust |
| **收錄日期** | 2026-08-20 |

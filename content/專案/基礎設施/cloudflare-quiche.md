---
title: "quiche"
slug: cloudflare-quiche
created: 2026-09-20
updated: 2026-09-20
stars: 12018
language: zh-TW
topics: ["self-hosted", "AI-Gateway"]
---

# quiche

> ⭐12.0k · Cloudflare 以 Rust 實作的 QUIC 與 HTTP/3 協定函式庫。

## 快速導航

- [[self-hosted]]
- [[AI-Gateway]]

## 是什麼

quiche 提供處理 QUIC 封包及連線狀態的低階 API，另有 HTTP/3 模組处理 HTTP 請求與回應。它刻意不替應用管理全部網路 I/O：socket、事件迴圈與計時器仍由整合者負責。

這是通用網路基礎設施，不是 LLM 工具，也不是現成 AI Gateway。若自架推論入口考慮 HTTP/3，它可作為協定層的研究材料，但不能由協定支援推論出模型延遲或服務吞吐量一定改善。

## 核心特色

- **QUIC 連線 API**：connect、accept、recv 與 send 分離連線建立及封包處理。
- **HTTP/3 模組**：在 QUIC 上層提供 HTTP 請求及回應處理介面。
- **I/O 自主控制**：應用可接入自己的 socket 與事件迴圈，但也須自行處理逾時。
- **Rust 與 C/C++ 整合**：提供薄 C API；使用時必須開啟 ffi feature。
- **傳送 pacing 提示**：SendInfo 的 at 欄位可讓應用安排送包時機。

## 怎麼用

### 安裝與取得

README 要求 Rust 1.88 以上與 CMake；BoringSSL 會於建置時處理，Windows 另需 NASM。以下為官方原始碼建置／示例流程。

```bash
git clone https://github.com/cloudflare/quiche
cd quiche
cargo build --examples
cargo test
cargo run --bin quiche-client -- https://cloudflare-quic.com/
```

### 建議操作流程

1. 先跑測試與範例，確認編譯環境能建立 BoringSSL。
2. 整合時設定 ALPN、資料流數量與流量控制；部分預設值為零，不能直接照搬。
3. 事件迴圈應處理 timeout/on_timeout，並將 send 產生的封包送回網路。

### 使用限制與核查邊界

- **生產限制**：官方明確表示 client/server 範例不是 production-ready，測試憑證亦不得用於正式環境。
- **責任邊界**：應用仍需負責 I/O、計時器、部署與監控；本次僅核查文件，未實際編譯 Rust。

## 跟其他方案的關係

以下是用途與分層比較，不是實测效能排行。

| 方案 | 主要角色 | 選擇重點 |
|---|---|---|
| quiche 函式庫 | QUIC／HTTP/3 實作 | 適合嵌入自有網路應用 |
| quiche-apps | client/server 示範 | 供學習與測試，不是正式伺服器產品 |
| AI Gateway | 模型路由與供應商整合 | 位於應用層；不應與傳輸協定混為一談 |

## 相關概念

← [[self-hosted]] · [[AI-Gateway]]

## 來源

- [GitHub](https://github.com/cloudflare/quiche)
- README 快照：`raw/2026-09-20-cloudflare-quiche.md`
- Metadata 快照：`raw/2026-09-20-cloudflare-quiche.metadata.json`
- [quiche API 文件](https://docs.quic.tech/quiche/)

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/cloudflare/quiche |
| Stars | 12,018（2026-09-20 快照） |
| License | BSD-2-Clause |
| Language | Rust |
| 收錄日期 | 2026-09-20 |

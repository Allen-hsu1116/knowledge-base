---
title: gRPC
slug: grpc-grpc
created: 2026-07-11
updated: 2026-07-11
stars: 45136
language: C++
topics: ["rpc", "grpc", "protocol-buffers", "http2"]
---

# gRPC

> ⭐45136 · Google 出品的高效能 RPC 框架，基於 HTTP/2 和 Protocol Buffers

## 快速導航


- 🏗 **[[hashicorp-terraform|Terraform]]** — Terraform 管理基礎設施、gRPC 處理微服務間通訊
- 🔄 **[[workflow-automation|工作流自動化]]** — gRPC 是微服務工作流自動化的通訊骨幹

## 是什麼

gRPC 是 Google 開發並開源的遠端程序呼叫（Remote Procedure Call, RPC）框架。它讓客戶端和伺服器應用程式能夠透明地互相通訊，簡化分散式連接系統的建構。gRPC 基於 HTTP/2 協定和 Protocol Buffers 序列化格式，設計目標是低延遲、高吞吐的服務間通訊。

gRPC 使用 Protocol Buffers（protobuf）作為預設的介面定義語言（IDL）。你先在 `.proto` 檔案中定義服務介面和訊息格式，然後用 `protoc` 編譯器生成各語言的客戶端和伺服器 stub。這種「合約優先」的設計確保了型別安全和跨語言一致性。

gRPC 的 C++ 核心庫之上提供了 10+ 種語言的綁定，包括 Go、Java、Python、Node.js、Ruby、PHP、C# 等。這讓不同語言寫的微服務可以無縫互通。

## 核心特色

- **Protocol Buffers**：用 protobuf 作為 IDL 和序列化格式，高效且型別安全
- **HTTP/2 基礎**：利用 HTTP/2 的多工、串流和頭部壓縮，低延遲高效率
- **雙向串流**：支援客戶端串流、伺服器串流和雙向串流
- **跨平台多語言**：C++ 核心 + 10+ 語言綁定，跨語言互通
- **高效能**：設計給低延遲、高吞吐的場景，比 REST/JSON 更快
- **可插拔架構**：支援可插拔的認證、追蹤、負載平衡和健康檢查
- **強型別合約**：合約優先 API 設計，protobuf 自動生成 stub

## 怎麼用

```bash
# Python
pip install grpcio grpcio-tools

# Node.js
npm install @grpc/grpc-js @grpc/proto-loader

# Go
go get google.golang.org/grpc

# Ruby
gem install grpc

# PHP
pecl install grpc
```

定義服務（hello.proto）：

```protobuf
syntax = "proto3";

service Greeter {
  rpc SayHello (HelloRequest) returns (HelloReply) {}
}

message HelloRequest {
  string name = 1;
}

message HelloReply {
  string message = 1;
}
```

生成程式碼：

```bash
# Python
python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. hello.proto

# Go
protoc --go_out=. --go-grpc_out=. hello.proto
```

## 跟其他方案的關係

| 框架 | 協定 | 序列化 | 串流 | 語言支援 | 適合場景 |
|------|------|--------|------|----------|----------|
| gRPC | HTTP/2 | protobuf | ✅ 雙向 | 10+ | 微服務間通訊 |
| REST | HTTP/1.1 | JSON | ❌ | 任何 | 公開 API |
| GraphQL | HTTP | JSON | ❌ | 任何 | API 聚合 |
| Thrift | TCP | Thrift | ✅ | 多 | 遺留系統 |
| WebSocket | TCP | 自訂 | ✅ 雙向 | JS 為主 | 即時通訊 |

gRPC 在微服務架構中負責服務間通訊，[[hashicorp-terraform|Terraform]] 管理這些服務的基礎設施，兩者互補。

## 相關概念


← [[hashicorp-terraform]] · [[workflow-automation]]

## 來源

- [GitHub: grpc/grpc](https://github.com/grpc/grpc)
- raw/2026-07-11-grpc-grpc.md
- [gRPC 官網](https://grpc.io/)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/grpc/grpc |
| Stars | ⭐45136|
| License | Apache-2.0 |
| 收錄日期 | 2026-07-11 |

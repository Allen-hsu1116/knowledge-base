---
title: Protocol Buffers
slug: protocolbuffers-protobuf
created: 2026-08-22
updated: 2026-08-22
stars: 71770
language: C++
topics: [serialization, protocol-buffers, protoc, rpc, cross-language]
---

# Protocol Buffers

> ⭐71770 · Google 推出的跨語言、跨平台結構化資料序列化格式，以 `.proto` schema 與程式碼生成建立穩定的資料交換契約。

## 快速導航


- 🧠 [[data-analysis]] — 結構化資料需要明確 schema 與可演化的交換格式
- 🛠 [[workflow-automation]] — 程式碼生成可納入建置與 CI 工作流
- 🚀 [[模型推論與部署]] — 推論服務與微服務常需要高效率的二進位協議

## 是什麼

Protocol Buffers（protobuf）是 Google 設計的語言中立、平台中立序列化機制。開發者先在 `.proto` 檔描述 message 與欄位，再由 `protoc` 編譯器產生各語言的資料類型與編解碼程式，讓不同服務共享同一份資料契約。

它主要解決 JSON 等文字格式在資料大小、解析成本與契約一致性上的限制。protobuf 將資料編碼成緊湊二進位格式，同時保留欄位編號與演化規則，適合 RPC、事件傳輸、儲存格式，以及需要跨語言互通的後端系統。

這個 repository 包含 C++ 編寫的編譯器、核心 runtime，以及 Java、Python、Objective-C、C#、Ruby、PHP 等語言支援。官方建議一般使用者鎖定正式 release；直接跟隨 main branch 可能遇到原始碼不相容或未充分測試的變更。

## 核心特色

- **Schema-first 契約** — `.proto` 明確描述 message、欄位型別與編號，降低跨團隊介面漂移。
- **跨語言程式碼生成** — `protoc` 為多種語言產生型別安全的模型與序列化程式碼。
- **緊湊二進位格式** — 相較文字格式通常具有較小 payload 與較低解析成本。
- **向前／向後相容** — 透過穩定欄位編號、unknown fields 與新增欄位規則支援 schema 演化。
- **完整 runtime 生態** — 官方或獨立 repository 提供 C++、Java、Python、Go、C#、Ruby、PHP、Dart、JavaScript 等支援。
- **建置系統整合** — 支援 Bazel Bzlmod 與傳統 WORKSPACE，也可使用 release 提供的預編譯 `protoc`。

## 怎麼用

先安裝正式版 `protoc`；macOS 可透過 Homebrew 快速安裝：

```bash
brew install protobuf
protoc --version
```

建立 `person.proto`：

```proto
syntax = "proto3";
package demo;
message Person {
  string name = 1;
  int32 id = 2;
}
```

以 Python 為例，安裝 runtime 並產生程式碼：

```bash
python3 -m pip install protobuf
protoc --python_out=. person.proto
```

從原始碼透過 Bazel 使用時，應把 `<VERSION>` 換成鎖定的 release：

```starlark
bazel_dep(name = "protobuf", version = "<VERSION>")
```

## 跟其他方案的關係

| 方案 | 表示方式 | 契約與演化 | 適合場景 |
|------|----------|------------|----------|
| **Protocol Buffers** | 緊湊二進位 | `.proto` schema、欄位編號 | RPC、微服務、跨語言 API |
| JSON | 文字 | 通常另搭 JSON Schema | 公開 Web API、除錯與人工閱讀 |
| Apache Avro | 二進位 | schema 隨資料或 registry 管理 | Kafka、資料管線、分析平台 |
| FlatBuffers | 可直接存取的二進位 buffer | schema + codegen | 遊戲、行動裝置、極低延遲讀取 |
| [[grpc-grpc\|gRPC]] | RPC 框架，預設使用 protobuf | service + message 定義 | HTTP/2 串流與跨語言服務呼叫 |

protobuf 是資料格式與工具鏈；gRPC 則是 RPC 框架。兩者常一起使用，但 protobuf 也能獨立用於檔案、訊息佇列與資料庫欄位。

## 相關概念


← [[data-analysis]] · [[workflow-automation]] · [[模型推論與部署]]

## 來源

- GitHub：https://github.com/protocolbuffers/protobuf
- Raw 檔案：raw/2026-08-22-protocolbuffers-protobuf.md
- 官方文件：https://protobuf.dev

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/protocolbuffers/protobuf |
| Stars | ⭐71770|
| License | BSD 3-Clause（repository metadata 顯示 Other） |
| 收錄日期 | 2026-08-22 |

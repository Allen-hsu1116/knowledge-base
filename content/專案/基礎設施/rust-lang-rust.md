---
title: "Rust"
slug: rust-lang-rust
created: 2026-10-15
updated: 2026-10-18
stars: 120035
language: zh-TW
topics: ["Coding-Agent-CLI", "self-hosted"]
---

# Rust

> ⭐120.0k · 以型別系統與 ownership 支援可靠、高效率軟體的語言及編譯器；非 LLM 框架。

## 快速導航

- [[Coding-Agent-CLI]] — 相關概念與配套背景
- [[self-hosted]] — 相關概念與配套背景

## 是什麼

rust-lang/rust 是 Rust 語言的主要原始碼倉庫，包含編譯器、標準函式庫與文件。它是通用軟體工具鏈，不是模型權重、推論伺服器或 AI Agent。

官方定位強調效能、記憶體效率與可靠性，透過型別系統及 ownership 模型，在編譯期找出許多記憶體與執行緒安全問題。這不代表所有 Rust 程式都沒有漏洞，外部相依與 unsafe 邊界仍需審查。

對 LLM 生態而言，它可以是 CLI、服務或工具執行層的實作基礎。本頁將其收在基礎設施，這是知識庫的用途分類，不是官方宣稱提供 AI 功能。

## 核心特色

### 1. 編譯器與標準庫

主倉庫集中語言實作與標準函式庫，適合追蹤工具鏈演進。

### 2. 效能與記憶體效率

官方將重要服務與嵌入式裝置列為適用情境；本頁未做效能實測。

### 3. 型別與 ownership

以編譯期檢查降低記憶體、執行緒相關錯誤。

### 4. 開發工具生態

Cargo、rustfmt、Clippy 與 rust-analyzer 分工處理建置、格式、lint 及編輯器支援。

## 怎麼用

以下為 Linux／macOS 官方 rustup 安裝流程；先閱讀下載的腳本，再決定是否執行。Windows 請改依官方安裝文件處理 MSVC 工具鏈。

```bash
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf -o rustup-init.sh
# 閱讀 rustup-init.sh 後才執行
sh rustup-init.sh
# 重新開啟終端機後
rustc --version
cargo --version
```

### 操作與驗證重點

1. 一般使用者不必編譯 rust-lang/rust；優先使用 rustup 管理工具鏈。
2. 開發者可閱讀 The Book 入門；修改編譯器則另讀 rustc-dev-guide。
3. 記錄工具鏈版本與相依鎖檔，讓人工及 Coding Agent 的驗證環境一致。

以下內容依官方文件整理；安裝指令僅為讀者參考，本次未安裝或實測候選軟體。

## 跟其他方案的關係

| 方案 | 定位 | 使用邊界 |
| --- | --- | --- |
| Rust | 語言、編譯器與標準庫 | 建構原生程式；不是 LLM 執行服務 |
| Cargo | Rust 生態的套件與建置工具 | 與 rustc 分工，不是另一種語言 |
| [[llvm-llvm-project\|LLVM Project]] | 通用編譯器基礎建設 | 比較的是工具鏈層次，而非 Agent 能力 |

### 限制與選擇提醒

- README 指向 rustup 安裝，不建議一般使用者從原始碼安裝。
- 授權以 README 的 MIT／Apache-2.0 雙授權及各元件例外為準，不只採 API 的單一 license 標籤。

## 相關概念

← [[Coding-Agent-CLI]] · [[self-hosted]]

## 來源

- [GitHub：rust-lang/rust](https://github.com/rust-lang/rust)
- README 快照：`raw/2026-10-15-rust-lang-rust.md`
- GitHub metadata：`raw/2026-10-15-rust-lang-rust-metadata.json`
- [官方安裝文件](https://doc.rust-lang.org/book/ch01-01-installation.html) — 本地快照：`raw/2026-10-15-rust-install.html`；已整理至本頁 rustup 安裝與工具鏈驗證流程。
- [編譯器開發指南](https://rustc-dev-guide.rust-lang.org/)

---

| Metadata | 值 |
| --- | --- |
| GitHub | [rust-lang/rust](https://github.com/rust-lang/rust) |
| Stars | 120,035（2026-10-15 快照） |
| License | MIT OR Apache-2.0（部分元件另有 BSD 類授權） |
| Language | Rust（程式）；zh-TW（本頁） |
| 收錄日期 | 2026-10-15 |

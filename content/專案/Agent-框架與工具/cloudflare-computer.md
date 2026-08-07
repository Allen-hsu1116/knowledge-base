---
title: Cloudflare Computer
slug: cloudflare-computer
created: 2026-08-07
updated: 2026-08-07
stars: 4797
language: zh-TW
topics: [Agent, Sandbox, Virtual Filesystem, Cloudflare Workers, Durable Objects, FUSE]
---

# Cloudflare Computer

> ⭐4.8k · 給 AI Agent 一台虛擬電腦——Durable Object 內的 SQLite 虛擬檔案系統 + 可插拔執行層

## 快速導航

- 🤖 [[AI-Agent]] — Agent 需要一個可操作的運算環境，Computer 提供沙箱檔案系統 + 執行層
- 🛠 [[AI-Skills]] — Agent 技能生態的底層基礎設施，Computer 作為可程式化的工作空間
- 🧠 [[Coding-Agent-CLI]] — Coding Agent 可透過 Computer 取得隔離的執行環境

## 是什麼

Cloudflare Computer 是 Cloudflare 推出的開源專案，核心概念是「給你的 AI Agent 一台電腦」。它建立了一個存在於 Cloudflare Durable Object 內的虛擬檔案系統（Virtual Filesystem），權威狀態保存在 SQLite 中，並透過一個統一的 `workspace.runtime` 介面暴露可插拔的執行層。

這個系統的設計目標是讓 AI Agent 能夠像使用真實電腦一樣操作檔案系統、執行命令、安裝套件和執行程式碼，同時保持隔離性和可持久化的狀態管理。它不是一個簡單的沙箱，而是一個完整的「Agent 運算環境」抽象層，支援從 shell 命令到 JavaScript 模組等多種執行模式。

目前仍處於 PREVIEW 階段，API 不穩定，適合實驗和原型開發，尚不適合生產環境使用。

## 核心特色

- **三種可插拔後端**：Container（完整 Linux 沙箱 + FUSE 掛載，真實二進位檔案和網路）、Isolate Shell（在 Dynamic Worker 中運行 just-bash）、Isolate JavaScript（在 Dynamic Worker 中運行 ECMAScript 模組），可根據需求選擇
- **Durable Object + SQLite 權威狀態**：所有檔案系統狀態保存在 Durable Object 的 SQLite 中，確保持久性和一致性。`computerd` 守護行程透過 FUSE 掛載將狀態映射為真實檔案系統
- **capnweb RPC 同步**：沙箱端的 `computerd` 透過 capnweb RPC 通道與 Durable Object 同步狀態變更，確保兩端的檔案系統保持一致
- **效能優勢**：在 metadata 密集型工作上，FUSE 掛載的效能甚至超越真實磁碟；在大檔案順序讀寫上略遜，但整體表現優異
- **多種範例**：容器範例、Worker Shell、Worker JavaScript、@cloudflare/think 聊天 Agent、跨執行環境比較 UI、教學範例、Artifacts 發布、Workers AI 圖片生成等
- **Monorepo 架構**：包含 `@cloudflare/dofs`（DO 虛擬 FS）、`@cloudflare/computer-rpc`（RPC 類型）、`@cloudflare/computerd`（FUSE 守護行程）、`@cloudflare/computer`（頂層套件）等多個套件

## 怎麼用

### 安裝

```bash
# 安裝 @cloudflare/computer 套件
npm install @cloudflare/computer

# 或使用 pnpm
pnpm add @cloudflare/computer
```

### 基本使用

```typescript
// 在 Worker 中使用 Computer
import { Computer } from '@cloudflare/computer'

export default {
  async fetch(request, env) {
    const workspace = new Computer(env)

    // 寫入檔案到虛擬檔案系統
    await workspace.fs.writeFile('/hello.txt', 'Hello from Computer!')

    // 讀取檔案
    const content = await workspace.fs.readFile('/hello.txt')

    // 執行命令（需要已註冊的後端）
    const result = await workspace.runtime.exec('echo "Hello World"', {
      backend: 'container'
    })

    return new Response(content)
  }
}
```

### 容器後端設定

```bash
# 電腦守護行程在容器內運行，FUSE 掛載 + HTTP/WebSocket RPC
# 詳見 examples/container 目錄
cd examples/container
npm install
npm run dev
```

## 跟其他方案的關係

Cloudflare Computer 與其他 Agent 沙箱/執行環境的比較：

- **Cloudflare Computer** — 虛擬 FS + 可插拔後端，Durable Object 持久化，原生 Cloudflare 整合
- **E2B** — 雲端沙箱，開放協議，完整 Linux 環境，但無 DO 級別的狀態持久化
- **Daytona** — 開發環境管理，支援多種 runtime，但不是 Agent 優先設計
- **Modal** — Python 優先的無伺服器運算，沙箱功能較弱
- **自建 Docker** — 完全自主，但需自行管理狀態持久化和同步

Computer 的獨特優勢在於 Durable Object + SQLite 的權威狀態管理，讓 Agent 的檔案系統狀態天然持久化，不需要額外的同步層。但代價是綁定 Cloudflare 生態系。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]]

## 來源

- raw/2026-08-07-cloudflare-computer.md
- GitHub: https://github.com/cloudflare/computer

---

- **GitHub**: https://github.com/cloudflare/computer
- **Stars**: ⭐4,797
- **License**: MIT
- **Language**: TypeScript
- **收錄日期**: 2026-08-07
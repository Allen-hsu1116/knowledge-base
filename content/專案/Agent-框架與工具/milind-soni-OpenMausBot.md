---
title: OpenMausBot
slug: milind-soni-OpenMausBot
created: 2026-10-30
updated: 2026-10-30
stars: 7479
language: zh-TW
topics: ["ai-agents", "claude-code", "codex", "computer-use", "docker", "electron", "expo", "grok", "grok-bot", "grok-bot-alternative", "self-hosted", "typescript"]
---

# OpenMausBot

> ⭐7.48k · Local-first 多 Agent 聊天桌面、電腦操作與核准

## 快速導航

- [[AI-Agent]] — Agent 能力與執行迴圈。
- [[sandbox]] — 電腦隔離與宿主權限邊界。

## 是什麼

OpenMausBot 是把 AI Agent 做成聊天聯絡人的桌面應用：每個 Bot 可有自己的角色、模型、對話和連接服務。它原名 OpenGrokBot，也稱 MausBot，是獨立開源專案，不隸屬 xAI 或其他被其比較的廠商。

底層沿用使用者本機已安裝、登入的 Claude、Codex 或 Grok CLI，而非重新提供模型服務。React 介面透過 HTTP 命令與 SSE 事件流和本機 harness 溝通，harness 擁有 Agent processes，並把不同 provider 的事件統一為可保存的執行紀錄。

Local-first 指 transcript、keys 與 events 儲存在 `~/.openmausbot`；並不表示所有推論和電腦操作都離線。模型供應商、Composio 及 Boat 雲端電腦仍有各自的資料邊界、帳號與費用。

## 核心特色

### 自帶 Agent 引擎

使用既有 CLI 登入與訂閱；可設定自訂 CLI binary，並在對話中切換 Bot 模型。

### 電腦操作後端

可使用雲端 Linux 桌面、Local VM，或在支援平台明確 opt-in 後操作宿主機。

### 聊天內核准

Shell、檔案編輯與問題以卡片呈現，透過 permission broker 讓使用者做 Allow／Deny 決策。

### 團隊與頻道

頻道具有自己的 transcript、指示、工作目錄和回應規則，可匯入 Markdown 團隊 playbook。

### 有界 MCP 控制面

外部 client 可派工、查詢和中斷，但 MCP 不提供核准授權、刪除、憑證或電腦生命週期操作。

## 怎麼用

原始碼執行需要 Node 24+、pnpm，以及至少一個已安裝登入的 `claude`、`codex` 或 `grok` CLI。官方提供 macOS、Windows 與 Ubuntu 24.04 x64 版本。

```sh
git clone https://github.com/milind-soni/OpenMausBot
cd OpenMausBot
pnpm install
```

開三個終端機，分別執行並保持前面的服務運作：

```sh
pnpm dev:server
# 另一個終端機：
pnpm dev
# 再一個終端機，啟動 Electron：
pnpm dev:desktop
```

Harness 預設為 `127.0.0.1:8799`，Web 介面為 `http://127.0.0.1:5199`。已發行桌面版內含 harness，不需額外啟動 server。本次僅收錄文件，未安裝候選專案。

Composio 與 Boat 憑證是選用整合，本機聊天不要求這兩個服務；Boat 試用期後可能產生費用。匯入團隊時仍應審查其指示與連接需求。

**安全與平台限制**：macOS 與 Ubuntu Xorg 的宿主操作需要明確 opt-in；Ubuntu Wayland 的宿主操作目前停用，不能把有畫面預覽視為能安全控制電腦。Local VM 與宿主模式是不同安全邊界。

## 跟其他方案的關係

以下是兩份官方 README 的定位對照，並非效能測試或安全認證。

| 方案 | 接入方式 | 重點與取捨 |
| --- | --- | --- |
| [[CopilotKit-OpenBot\|OpenBot（CopilotKit）]] | AG-UI endpoints | 企業客製範本、政策 gateway、audit；需 Intelligence 相依服務。 |
| [[milind-soni-OpenMausBot\|OpenMausBot]] | 本機 Claude／Codex／Grok CLI | 聊天式多 Agent 桌面、核准卡與多種電腦後端。 |

兩者都有可視化 Agent 工作介面，但前者以協議與部署治理為主，後者以沿用本機 Agent 和桌面工作體驗為主。請依實際權限設定評估，不因開源或有容器就推定安全。

## 相關概念

← [[AI-Agent]] · [[sandbox]]

## 來源

- [GitHub](https://github.com/milind-soni/OpenMausBot)
- [官方 README](https://github.com/milind-soni/OpenMausBot/blob/main/README.md)
- 原始快照：`raw/2026-10-30-milind-soni-OpenMausBot.md`
- API metadata：`raw/2026-10-30-milind-soni-OpenMausBot.metadata.json`
- 對照來源：[OpenBot README](https://github.com/CopilotKit/OpenBot/blob/main/README.md)、[OpenMausBot README](https://github.com/milind-soni/OpenMausBot/blob/main/README.md)。
- 本頁為文件整理；功能與安全敘述依收錄當日官方文件，非實機驗證結果。

---

| Metadata | 值 |
| --- | --- |
| GitHub | https://github.com/milind-soni/OpenMausBot |
| Stars | 7,479（2026-10-30 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-30 |

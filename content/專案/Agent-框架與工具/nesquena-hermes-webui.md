---
title: Hermes WebUI
slug: nesquena-hermes-webui
created: 2026-06-01
updated: 2026-06-01
stars: 9980
language: Python
topics:
  - agent
  - ai-agents
  - hermes
  - hermes-agent
  - nous-research
---

# Hermes WebUI

> ⭐10k · Hermes Agent 的 Web 介面，用手機或瀏覽器操控你的 AI Agent

快速導航：[[hermes-agent]] · [[open-webui-open-webui]] · [[AI-Agent]]

## 是什麼

Hermes WebUI 是 [Hermes Agent](https://hermes-agent.nousresearch.com/) 的 Web 介面，讓使用者可以透過瀏覽器或手機操作 Hermes Agent，而不用侷限在終端機。它提供與 CLI 完全相同的功能——所有終端機能做的事，WebUI 都能做。

它的技術架構非常輕量：沒有 build step、沒有前端框架、沒有 bundler，純 Python + 原生 JavaScript。佈局採三欄式設計：左邊是 session 和導航、中間是聊天區、右邊是工作區檔案瀏覽器。模型、設定檔和工作區控制都放在輸入框底部，永遠可見。圓形 context ring 一眼就能看到 token 使用量。

它直接使用你現有的 Hermes Agent 設定和模型，不需要額外配置。透過 SSH tunnel 就能安全地從任何裝置存取。

## 核心特色

- **三欄佈局**：左側 session 導航、中間聊天、右側工作區檔案瀏覽器，資訊一目了然
- **CLI 完全同位**：所有終端機能做的事都能在 WebUI 完成，包括 tool call 顯示、檔案操作等
- **Hermes Control Center**：集中管理設定、session 工具、模型切換，從側邊欄底部啟動
- **Context Ring**：圓形視覺化 token 使用量，撰寫訊息時即時可見
- **零配置啟動**：使用現有 Hermes Agent 設定和模型，一行指令啟動，一行指令 SSH tunnel

## 怎麼用

安裝：

```bash
pip install hermes-webui
```

啟動 WebUI：

```bash
hermes-webui
```

SSH tunnel 遠端存取：

```bash
ssh -L 8888:localhost:8888 your-server
```

然後在瀏覽器打開 `http://localhost:8888` 即可使用。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 對應 Agent | Web 介面 | 手機支援 |
|------|-------|------|-----------|---------|---------|
| **Hermes WebUI** | ⭐10k | Agent Web UI | Hermes Agent | ✅ 三欄式 | ✅ |
| [[open-webui-open-webui]] | ⭐100k+ | LLM 平台 | OpenAI 等多模型 | ✅ 完整 | ✅ |
| [[hermes-agent]] | ⭐141.8k | Agent 框架 | 本身 | CLI 為主 | ❌ |

Hermes WebUI 是專為 Hermes Agent 設計的 Web 介面，和 Open WebUI 的定位不同——Open WebUI 是通用 LLM 平台（支援多種模型和 RAG），Hermes WebUI 則是深度整合 Hermes Agent 的操作介面。搭配 Hermes Agent 使用，可以讓 Agent 的跨 session 記憶、定時任務等功能在瀏覽器中完整發揮。

← [[hermes-agent]] · [[open-webui-open-webui]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/nesquena/hermes-webui>
- 原始 README: `raw/2026-06-01-nesquena-hermes-webui.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [nesquena/hermes-webui](https://github.com/nesquena/hermes-webui) |
| Stars | ⭐9,981 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-01 |
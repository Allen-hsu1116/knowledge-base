---
title: Headroom
slug: chopratejas-headroom
created: 2026-06-03
updated: 2026-06-03
stars: 6416
language: Python
---

# Headroom

> ⭐6.4k · AI Agent 的上下文壓縮層，60-95% token 節省、可逆還原、支援 Library/Proxy/MCP 三種模式

## 快速導航
[[Token-Optimization]] · [[MCP]] ·[[rtk|RTK]] · [[Context-Database]]

## 是什麼

Headroom 是一個專為 AI Agent 設計的**上下文壓縮層**，在 tool output、log、RAG chunk、檔案和對話歷史送達 LLM 之前先壓縮，實測能節省 60-95% 的 token，同時保持相同品質的回答。它解決的核心問題是：AI coding agent 在處理大型程式碼庫時，上下文視窗往往塞滿了冗餘資訊，導致回應慢、成本高、甚至遺漏重要內容。

Headroom 的技術架構包含了 **ContentRouter**（偵測內容類型並分派壓縮器）、**SmartCrusher**（JSON 壓縮）、**CodeCompressor**（AST 感知的程式碼壓縮）、**Kompress-base**（基於 HuggingFace 模型的文本壓縮）、**CacheAligner**（穩定前綴讓 KV cache 命中）以及 **CCR**（可逆壓縮，原始內容永遠不會被刪除，LLM 可按需取回）。這整條管線讓壓縮後的上下文既精簡又不失精確。

使用方式非常彈性：可以作為 Python/TypeScript library 直接呼叫 `compress(messages)`、作為 proxy 零程式碼改動、一鍵 wrap 現有 coding agent（Claude Code、Codex、Cursor、Aider、Copilot CLI），或作為 MCP server 提供壓縮/取回/統計三個工具。此外還有 `headroom learn` 功能，自動挖掘失敗的 agent session 並將修正寫入 CLAUDE.md/AGENTS.md。

## 核心特色

- **🔄 可逆壓縮（CCR）**：原始內容永不刪除，LLM 透過 `headroom_retrieve` 按需取回，兼顧精簡與完整
- **🧠 智慧分派（ContentRouter）**：自動偵測 JSON、程式碼、散文等內容類型，選擇最適壓縮器
- **💡 六種壓縮演算法**：SmartCrusher（JSON）、CodeCompressor（AST）、Kompress-base（ML 文本）、CacheAligner（KV 快取）、IntelligentContext（重要性評分）、RollingWindow
- **🔌 三種整合模式**：Library、Proxy、Agent Wrap + MCP server，隨場景選擇
- **🤝 跨 Agent 記憶**：共享 context store，Claude/Codex/Gemini 之間自動去重
- **📚 headroom learn**：自動分析失敗 session，將學習結果寫回 agent 指令檔

## 怎麼用

```bash
# 安裝（Python 或 Node）
pip install "headroom-ai[all]"          # Python 完整版
npm install headroom-ai                 # Node/TypeScript

# 三種使用模式
headroom wrap claude                    # 一鍵 wrap coding agent
headroom proxy --port 8787              # Drop-in proxy，零程式碼改動
# 或作為 library:
from headroom import compress
result = compress(messages, model="gpt-4")

# MCP server
headroom mcp install                    # 安裝 MCP server

# 查看壓縮統計
headroom stats
```

Docker 也可用：`docker pull ghcr.io/chopratejas/headroom:latest`

## 跟其他方案的關係

| 方案 | Stars | 壓縮範圍 | 離線 | 可逆 | 部署方式 |
|------|-------|----------|------|------|----------|
| **Headroom** | ⭐6.4k | 所有上下文（tool/RAG/log/歷史） | ✅ | ✅ | Library + Proxy + MCP |
| [[rtk|RTK]] | ⭐40k | CLI 輸出 | ✅ | ❌ | CLI wrapper |
| [[JuliusBrussee-caveman|Caveman]] | ⭐52.5k | Prompt 壓縮 | ✅ | ❌ | CLI |
| [[AlexsJones-llmfit|llmfit]] | ⭐25.4k | Token 最佳化 | ✅ | ❌ | Library |
| OpenAI Compaction | — | 對話歷史 | ❌ | ❌ | Provider-native |

## 相關概念
← [[Token-Optimization]] · [[MCP]] · [[rtk]]

## 來源

- GitHub: <https://github.com/chopratejas/headroom>
- 原始 README: `raw/2026-06-03-chopratejas-headroom.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [chopratejas/headroom](https://github.com/chopratejas/headroom) |
| Stars | ⭐6,416 |
| License | Apache 2.0 |
| Language | Python, TypeScript |
| 收錄日期 | 2026-06-03 |
---
title: Headroom (headroomlabs-ai)
slug: headroomlabs-ai-headroom
created: 2026-08-09
updated: 2026-08-09
stars: 65534
language: Python
topics: [Token Optimization, Context 壓縮, MCP, AI Agent, Proxy]
---

# Headroom (headroomlabs-ai)

> ⭐65.5k · AI Agent 的上下文壓縮層——在 tool output、log、RAG chunk 送達 LLM 之前先壓縮，JSON 省 60-95%、coding agent 省 15-20%，可逆還原，支援 Library/Proxy/MCP/Agent Wrap 四種模式。

## 快速導航

- ⚡ **Token Optimization** → [[Token-Optimization]]
- 🔌 **MCP** → [[MCP]]
- 🧠 **Context Engineering** → [[context-engineering-basics|Context Engineering]]
- 🔄 **早期版本** → [[chopratejas-headroom|Headroom (chopratejas)]]

## 是什麼

Headroom 是一個專為 AI Agent 設計的**上下文壓縮層**，在 tool output、log、RAG chunk、檔案和對話歷史送達 LLM 之前先壓縮，實測能節省 60-95% 的 token（JSON 場景），同時保持相同品質的回答。它解決的核心問題是：AI coding agent 在處理大型程式碼庫時，上下文視窗往往塞滿了冗餘資訊，導致回應慢、成本高、甚至遺漏重要內容。

headroomlabs-ai 版本是 chopratejas/headroom 的演進升級版，從 ⭐6.4k 成長到 ⭐65.5k。新增了多項重要功能：**輸出 token 削減**（不只壓縮你送出的，也削減模型寫回的冗餘）、**跨 Agent 記憶共享**（Claude/Codex/Gemini/Grok 共享 store，自動去重）、**`headroom learn`**（挖掘失敗 session 的修正寫入 CLAUDE.md/AGENTS.md）、以及大幅擴展的 Agent 相容性矩陣（支援 18+ coding agent）。

技術架構包含 **ContentRouter**（偵測內容類型並分派壓縮器）、**SmartCrusher**（JSON 壓縮）、**CodeCompressor**（AST 感知的程式碼壓縮）、**Kompress-v2-base**（HuggingFace 模型文本壓縮）、**CacheAligner**（偵測會破壞 KV cache 前綴的內容並警告）以及 **CCR**（可逆壓縮，原始內容永遠不刪除，LLM 可按需取回）。

## 核心特色

- **🔄 可逆壓縮（CCR）** — 原始內容永不刪除，LLM 透過 `headroom_retrieve` 按需取回，兼顧精簡與完整
- **🧠 智慧分派（ContentRouter）** — 自動偵測 JSON、程式碼、散文等內容類型，選擇最適壓縮器
- **📤 輸出 token 削減** — 不只壓縮 prompt，也削減模型寫回的冗餘（preamble、重述程式碼、routine thinking），Opus 級模型輸出成本是輸入的 5 倍
- **🤖 18+ Agent 相容** — Claude Code、Codex、Cursor、Aider、Copilot CLI、OpenClaw、OpenCode、Cline、Goose、OpenHands、Grok CLI、Kimi CLI 等全部支援 `headroom wrap`
- **🔗 跨 Agent 記憶** — Claude/Codex/Gemini/Grok 共享壓縮 store，自動去重
- **📚 自動學習（`headroom learn`）** — 挖掘失敗 session，自動寫修正到 CLAUDE.md / AGENTS.md
- **🎯 CacheAligner** — 偵測會破壞 provider KV cache 前綴的內容，避免 cache miss
- **📊 即時儀表板** — `headroom dashboard` 即時顯示節省量，含 measured/estimated 標籤

## 怎麼用

安裝：

```bash
# 推薦
uv tool install --python 3.13 "headroom-ai[all]"
# 或
pip install "headroom-ai[all]"
# TypeScript SDK（無 CLI）
npm install headroom-ai
```

使用：

```bash
headroom deploy                         # 一鍵本地部署 + Agent 設定
headroom wrap claude                    # 包裝 coding agent
headroom proxy --port 8787              # drop-in proxy，零程式碼改動
headroom doctor                         # 健康檢查
headroom perf                           # 效能測試
headroom dashboard                      # 即時節省量儀表板

# 輸出 token 削減
export HEADROOM_OUTPUT_SHAPER=1
headroom proxy --port 8787

# 自動學習 terseness
headroom learn --verbosity              # 預覽（dry run）
headroom learn --verbosity --apply      # 套用
```

## 跟其他方案的關係

| 方案 | 壓縮模式 | 可逆 | 輸出削減 | Agent 相容 | MCP |
|------|----------|------|----------|-----------|-----|
| **Headroom (headroomlabs-ai)** | Library/Proxy/Wrap/MCP | ✅ CCR | ✅ | 18+ | ✅ |
| [[chopratejas-headroom\|Headroom (chopratejas)]] | Library/Proxy/Wrap/MCP | ✅ CCR | ❌ | 6 | ✅ |
| [[rtk-ai-rtk\|RTK]] | Proxy | ❌ | ❌ | 5+ | ❌ |
| [[Token-Optimization\|Caveman]] | Skill | ❌ | ❌ | Claude Code | ❌ |

Headroom 的核心差異化：可逆壓縮 + 輸出 token 削減 + 跨 Agent 記憶 + 18+ Agent 相容。其他方案要麼不可逆，要麼只壓輸入不壓輸出，要麼只支援少數 Agent。

## 相關概念

← [[Token-Optimization]] · [[MCP]] · [[context-engineering-basics|Context Engineering]] · [[chopratejas-headroom|Headroom (chopratejas)]]

## 來源

- GitHub: https://github.com/headroomlabs-ai/headroom
- Docs: https://docs.headroomlabs.ai/docs
- PyPI: `headroom-ai[all]`
- npm: `headroom-ai`
- 授權: Apache-2.0
- HuggingFace: `chopratejas/kompress-v2-base`
- Raw 檔案: `raw/2026-08-09-headroomlabs-ai-headroom.md`
- 早期版本: [[chopratejas-headroom]]

---

| 項目 | 值 |
|------|-----|
| GitHub | [headroomlabs-ai/headroom](https://github.com/headroomlabs-ai/headroom) |
| Stars | 65,534 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-08-09 |
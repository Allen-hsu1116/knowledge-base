# everything-claude-code

> AI Agent harness 效能優化系統 — Skills、Instincts、Memory、Security、Research-first Development。140K+ stars、Anthropic Hackathon 得獎作品，支援 Claude Code、Codex、Cursor、OpenCode、Gemini 等 7+ harness。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| **Stars** | ⭐172,098 |
| **Language** | JavaScript/TypeScript（npm）、Shell、Python、Go、Java 等 12+ 生態系 |
| **建立日期** | 2026-01-18 |
| **收錄日期** | 2026-05-03 |
| **授權** | MIT |

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（ECC 是 Agent harness 的效能優化系統）
- 🛠️ **AI Skills** → [[AI-Skills]]（ECC 包含大量 SKILL.md 格式的技能）
- 🔒 **Prompt Security** → [[prompt-security]]（ECC 包含 AgentShield 安全掃描）
- ⚡ **Token Optimization** → [[Token-Optimization]]（ECC 包含 token 優化技能）

## 簡介

Everything Claude Code（ECC）不只是設定檔合集，而是一個完整的 Agent 效能優化系統：skills、instincts、memory optimization、continuous learning、security scanning、research-first development。經過 10+ 個月的密集日常使用和真實產品開發演進而來。

v2.0 新增 Dashboard GUI、Hermes operator story、cross-harness 架構，讓同一套技能可以跨 Claude Code、Codex、Cursor、OpenCode、Gemini 等平台使用。

## 核心特色

### Skills 系統

結構化操作手冊（SKILL.md），涵蓋：
- 開發、測試、安全、基礎設施、產品、行銷等領域
- 跨 harness 通用（Claude Code / Codex / Cursor / OpenCode / Gemini）
- 一鍵安裝：`npx ecc-universal`

### Instincts

Agent 的「直覺」— 在沒有明確指令時的預設行為模式。讓 Agent 即使面對模糊需求也能做出合理判斷。

### Memory Optimization

- 持久化記憶：跨 session 保存上下文
- 連續學習：每次互動都讓 Agent 更了解你的偏好
- Token 優化：壓縮歷史、精簡摘要

### Security（AgentShield）

- Prompt injection 偵測
- Sandbox 隔離
- 敏感資料清理
- CVE 掃描

### Research-first Development

Agent 在寫程式碼之前先研究最佳實踐、現有方案、安全性問題，而非直接動手。

## 安裝

```bash
# npm 一鍵安裝
npx ecc-universal

# 指定 harness
npx ecc-universal --claude      # Claude Code
npx ecc-universal --codex       # Codex CLI
npx ecc-universal --cursor      # Cursor
npx ecc-universal --opencode    # OpenCode
npx ecc-universal --gemini      # Gemini CLI
```

## 技術棧

- **npm Package**：`ecc-universal`（跨平台安裝器）
- **Security Package**：`ecc-agentshield`（安全掃描）
- **12+ 語言生態系**：TypeScript、Shell、Python、Go、Java、Perl 等
- **支援平台**：Claude Code、Codex CLI、Cursor、OpenCode、Gemini CLI

## 相關概念

- [[AI-Agent]] — Agent harness 效能優化
- [[AI-Skills]] — SKILL.md 格式定義
- [[Prompt-Engineering]] — Prompt 最佳化技術
- [[prompt-security]] — Agent 安全掃描
- [[Token-Optimization]] — Token 消耗優化

---

- **GitHub**: https://github.com/affaan-m/everything-claude-code
- **Stars**: ⭐172,098
- **License**: MIT
- **收錄日期**: 2026-05-03
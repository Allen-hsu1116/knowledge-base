# Everything Claude Code (ECC)

> AI Agent harness 效能優化系統 — Skills、Instincts、Memory、Security、Research-first Development。140K+ stars、Anthropic Hackathon 得獎作品，支援 Claude Code、Codex、Cursor、OpenCode、Gemini 等 7+ harness。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠️ **AI Skills** → [[AI-Skills]]
- 🔒 **Prompt Security** → [[prompt-security]]
- ⚡ **Token Optimization** → [[Token-Optimization]]

## 是什麼

Everything Claude Code（ECC）不只是設定檔合集，而是一個完整的 Agent 效能優化系統：skills、instincts、memory optimization、continuous learning、security scanning、research-first development。經過 10+ 個月的密集日常使用和真實產品開發演進而來。v2.0 新增 Dashboard GUI、Hermes operator story、cross-harness 架構，讓同一套技能可以跨 Claude Code、Codex、Cursor、OpenCode、Gemini 等平台使用。

## 核心特色

- **Skills 系統** — 結構化操作手冊（SKILL.md），涵蓋開發、測試、安全、基礎設施、產品、行銷等領域，跨 harness 通用，一鍵安裝
- **Instincts** — Agent 的「直覺」，在沒有明確指令時的預設行為模式，讓 Agent 面對模糊需求也能做出合理判斷
- **Memory Optimization** — 持久化記憶（跨 session 保存上下文）、連續學習、Token 優化（壓縮歷史、精簡摘要）
- **Security（AgentShield）** — Prompt injection 偵測、Sandbox 隔離、敏感資料清理、CVE 掃描
- **Research-first Development** — Agent 在寫程式碼之前先研究最佳實踐、現有方案、安全性問題

## 怎麼用

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

## 跟其他方案的關係

ECC 是 [[AI-Agent]] harness 的效能優化系統，包含大量 [[AI-Skills]] 格式的技能。AgentShield 對應 [[prompt-security]]，memory optimization 對應 [[Token-Optimization]]。[[Prompt-Engineering]] 最佳化技術也是 ECC 的基礎。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Prompt-Engineering]] · [[prompt-security]] · [[Token-Optimization]]

## 來源

- raw/affaan-m-everything-claude-code.md

---

- **GitHub**: https://github.com/affaan-m/everything-claude-code
- **Stars**: ⭐172,098
- **License**: MIT
- **收錄日期**: 2026-05-03
# Everything Claude Code (ECC)

> AI Agent harness 效能優化系統 — Skills、Instincts、Memory、Security、Research-first Development。140K+ stars、Anthropic Hackathon 得獎作品，支援 7+ harness。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠️ **AI Skills** → [[AI-Skills]]
- 🔒 **Prompt Security** → [[prompt-security]]
- ⚡ **Token Optimization** → [[Token-Optimization]]

## 是什麼

Everything Claude Code（ECC）不只是設定檔合集，而是一個完整的 Agent 效能優化系統：skills、instincts、memory optimization、continuous learning、security scanning、research-first development。經過 10+ 個月的密集日常使用和真實產品開發演進而來。v2.0 新增 Dashboard GUI、Hermes operator story、cross-harness 架構，讓同一套技能可以跨 Claude Code、Codex、Cursor、OpenCode、Gemini 等 7+ 平台使用。

## 核心特色

- **Skills 系統** — 結構化操作手冊（SKILL.md），涵蓋開發、測試、安全、基礎設施、產品、行銷等領域。每個 skill 定義觸發條件、執行步驟、輸出格式。跨 harness 通用（同一個 skill 在 Claude Code 和 Codex 都能用），一鍵 `npx ecc-universal` 安裝
- **Instincts** — Agent 的「直覺」，在沒有明確指令時的預設行為模式。例如「遇到測試失敗先看 log 再改程式碼」、「先 research 再動手」。讓 Agent 面對模糊需求也能做出合理判斷，而不是瞎猜
- **Memory Optimization** — 持久化記憶（跨 session 保存上下文）、連續學習（從每次對話中提煉經驗）、Token 優化（壓縮歷史對話、精簡摘要、智能裁剪）。三層記憶架構確保 Agent 不會忘記重要的事，又不會撐爆 context
- **Security（AgentShield）** — Prompt injection 偵測（辨識惡意指令）、Sandbox 隔離（危險操作在沙箱中執行）、敏感資料清理（避免洩漏 API key 等）、CVE 掃描（依賴項安全檢查）。四層安全防護
- **Research-first Development** — Agent 在寫程式碼之前先研究最佳實踐、現有方案、安全性問題。避免「邊寫邊查」的低效模式，先研究後動手

## 怎麼實現的

ECC 的架構是 Cross-harness Adapter + Skill Registry + Memory Layer + Security Shield：

1. **Cross-harness 架構**：v2.0 的核心改進。每個 harness（Claude Code、Codex、Cursor 等）有不同的設定格式和慣例。ECC 用 adapter 層抽象化差異 — skill 內容寫一次，adapter 自動轉換成各 harness 的格式（CLAUDE.md、.cursorrules、AGENTS.md 等）
2. **Skill Registry**：所有 skill 用 SKILL.md 格式定義，包含 metadata（觸發條件、依賴）和內容（步驟、範例）。`npx ecc-universal` 讀取 registry，根據目標 harness 生成對應設定檔
3. **三層 Memory 架構**：Working Memory（當前 session 上下文）、Short-term Memory（最近 N 次 session 的摘要）、Long-term Memory（持久化的經驗和偏好）。每層有壓縮和裁剪策略，確保 token 預算內保留最重要資訊
4. **AgentShield**：四層安全 — (1) Prompt injection 偵測用 pattern matching + LLM 判斷，(2) Sandbox 隔離用 OS 層級權限限制，(3) 敏感資料清理用 regex 掃描輸出，(4) CVE 掃描用 OSV database 查詢
5. **Instinct Engine**：Instincts 定義為「如果 X 則 Y」的行為規則。Agent 在 context 中載入所有適用的 instincts，遇到模糊需求時按 instincts 的預設行為執行

## 怎麼用

```bash
# npm 一鍵安裝（自動偵測 harness）
npx ecc-universal

# 指定 harness
npx ecc-universal --claude      # Claude Code
npx ecc-universal --codex       # Codex CLI
npx ecc-universal --cursor      # Cursor
npx ecc-universal --opencode    # OpenCode
npx ecc-universal --gemini      # Gemini CLI
npx ecc-universal --windsurf    # Windsurf
npx ecc-universal --cline       # Cline

# 安裝後 Agent 自動載入 skills、instincts、memory、security 設定
# 無需額外配置

# Dashboard GUI（v2.0）
npx ecc-dashboard
# 網頁介面管理 skills、查看 memory、監控 security 狀態
```

## 跟其他方案的關係

| 方案 | 定位 | Skills | Memory | Security | Cross-harness |
|------|------|--------|--------|----------|--------------|
| **ECC** | Agent 效能優化 | ✅ 完整 | ✅ 三層 | ✅ 四層 | ✅ 7+ |
| **Academic Research Skills** | 學術場景 | ✅ | ❌ | ❌ | ❌ |
| **claude-plugins-official** | 插件目錄 | ❌ | ❌ | ❌ | ❌ |
| **RTK** | Token 壓縮 | ❌ | ❌ | ❌ | ❌ |

- ECC 是 [[AI-Agent]] harness 的效能優化系統，包含大量 [[AI-Skills]] 格式的技能
- AgentShield 對應 [[prompt-security]]，memory optimization 對應 [[Token-Optimization]]
- 與 [[Imbad0202-academic-research-skills|Academic Research Skills]] 互補：ECC 優化 Agent 基礎能力（memory、security），Academic Research Skills 提供專業領域技能
- 與 [[anthropics-claude-plugins-official|claude-plugins-official]] 不同：ECC 是使用者側的優化系統，官方插件是平台側的擴展機制
- [[Prompt-Engineering]] 最佳化技術也是 ECC 的基礎

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Prompt-Engineering]] · [[prompt-security]] · [[Token-Optimization]]

## 來源

- raw/affaan-m-everything-claude-code.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code) | ⭐172,098 | MIT | 2026-05-03 |
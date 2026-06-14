---
title: Open Design
slug: open-design
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Open Design

> 開源版 Claude Design — 本地優先、BYOK、skill-driven 的 AI 設計工具，讓你既有的 coding agent CLI 變成設計引擎。

## 快速導航
- 🛠 **AI Skills** → [[AI-Skills]]（OD 的 31 個 Skills 遵循 SKILL.md 格式）
- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]（OD 偵測並串接 16 個 CLI agent）
- 🔌 **MCP** → [[MCP]]（Skills 定義「做什麼」，MCP 定義「怎麼連」）
- 🎨 **Prompt Engineering** → [[Prompt-Engineering]]（設計 prompt stack 驅動 agent 像資深設計師一樣運作）

## 是什麼

Open Design 是 Anthropic Claude Design 的開源替代品。同樣是「AI 驅動設計產出」的思維，但不鎖定模型、不鎖定平台、本地優先、BYOK。它不自己實作 agent——而是偵測你機器上已有的 coding agent CLI（如 Claude Code、Codex CLI、Gemini CLI 等），把它們接入 skill-driven 的設計工作流。

## 核心特色

- **16 個 Coding Agent CLI 自動偵測**：Claude Code · Codex CLI · Cursor Agent · Gemini CLI · OpenCode · Qwen · Copilot CLI 等，PATH 掃描後一鍵切換
- **BYOK API Proxy**：沒有 CLI 也能用，貼上 apiKey + model 即可透過 `/api/proxy/` 串接 OpenAI/Anthropic/Azure/Google
- **129 套 Design Systems**：含 Linear、Stripe、Vercel、Airbnb、Apple、Notion 等 70 個產品系統 + 57 個 design skills
- **31 個內建 Skills**：27 prototype mode（landing、dashboard、mobile app、social carousel 等）+ 4 deck mode（PPT 簡報）
- **5 種策展視覺方向**：Editorial Monocle · Modern Minimal · Warm Soft · Tech Utility · Brutalist Experimental，各有確定性 OKLch 色盤 + 字型
- **媒體生成整合**：gpt-image-2（圖片）、Seedance 2.0（影片）、HyperFrames（HTML→MP4 動態圖形），93 個現成 prompt
- **Sandboxed Preview + 5 格式匯出**：HTML / PDF / PPTX / ZIP / Markdown
- **匯入 Claude Design ZIP**：可以延續 Anthropic 的設計專案繼續編輯
- **SQLite 持久化**：專案、對話、訊息重開即恢復
- **Device Frames**：iPhone 15 Pro、Pixel、iPad Pro、MacBook、Browser Chrome 像素精準裝置框

## 怎麼用

```bash
# 快速啟動
pnpm tools-dev start

# 查看狀態
pnpm tools-dev status

# 停止
pnpm tools-dev stop
```

工作流程：選擇 Skill → 選 Design System → 輸入簡報 → Discovery Form 鎖定需求 → Direction Picker 選風格 → Agent 產出計畫 → Pre-flight 檢查 → 5 維度自我批判 → 產出 artifact → Sandboxed iframe 預覽 → 下載。

部署選項：Local（`pnpm tools-dev`）· Vercel web layer · packaged Electron desktop app。

## 跟其他方案的關係

| 方案 | 開源 | BYOK | 本地優先 | Skills | Agent 數量 |
|------|------|------|----------|--------|-----------| 
| **Open Design** | ✅ | ✅ | ✅ | 31 | 16+ |
| **Claude Design** | ❌ | ❌ | ❌ | — | 1 |
| **Open Codesign** | ✅ | 部分 | ❌ (Electron) | — | 1 (pi-ai) |

OD 站在四個開源專案的肩膀上：
1. **huashu-design** — 設計哲學指南（5 步驟品牌協議、反 AI slop 檢查表、5 維度自我批判）
2. **guizang-ppt-skill** — 雜誌風格 PPT 簡報
3. **open-codesign** — UX 北極星（streaming artifact loop、sandboxed iframe、live agent panel）
4. **multica** — Daemon + runtime 架構（PATH-scan agent detection、本地 daemon）

### 四個開源基石

1. **huashu-design** — 設計哲學指南（5 步驟品牌協議、反 AI slop 檢查表、5 維度自我批判）
2. **guizang-ppt-skill** — 雜誌風格 PPT 簡報
3. **open-codesign** — UX 北極星（streaming artifact loop、sandboxed iframe、live agent panel）
4. **multica** — Daemon + runtime 架構（PATH-scan agent detection、本地 daemon）

## 相關概念
← [[AI-Skills]] · [[Coding-Agent-CLI]] · [[MCP]] · [[Prompt-Engineering]] · [[AI-Agent]]

## 來源
- raw/2026-05-07-open-design.md

---

- **GitHub**: https://github.com/nexu-io/open-design
- **Stars**: ⭐30,632
- **License**: Apache-2.0
- **收錄日期**: 2026-05-07
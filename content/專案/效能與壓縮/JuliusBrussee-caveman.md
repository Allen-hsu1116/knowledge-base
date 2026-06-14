---
title: caveman
slug: JuliusBrussee-caveman
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# caveman

> Claude Code / Codex 的 token 壓縮 plugin — 用「穴居人語」回答，砍掉 75% output token 但保持 100% 技術準確度。附帶 caveman-shrink MCP middleware 壓縮 46% input token。

## 快速導航

- ⚡ **Token Optimization** → [[Token-Optimization]]
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]

## 是什麼

Caveman 是一個 Claude Code / Codex plugin，核心理念：**為什麼用很多字，當少少字就夠了？** 它讓 AI 用極簡語法回答（穴居人語），把冗長的自然語言描述壓縮成關鍵資訊密集的簡短回應。技術準確度 100% 保留，但 token 消耗大幅降低。

## 核心特色

- **Output 壓縮（75% 節省）** — AI 用穴居人語回答，省掉 75% output token，技術準確度 100% 保留
- **Input 壓縮（46% 節省）** — caveman-shrink MCP middleware 自動壓縮送進 LLM 的 input，攔截命令輸出，智慧過濾冗餘資訊
- **四種壓縮強度** — Lite（稍微精簡）、Full（標準穴居人語）、Ultra（極限壓縮）、文言文（中文古文風格）
- **Terse Commits** — 極簡 commit message
- **One-line Reviews** — 一行 code review
- **Lifetime Stats** — 追蹤累計節省的 token 數

### 四種壓縮強度

| 等級 | 說明 | 效果 |
|------|------|------|
| **Lite** | 稍微精簡 | 適合需要可讀性的場景 |
| **Full** | 標準穴居人語 | 平衡壓縮率和可讀性 |
| **Ultra** | 極限壓縮 | 只剩關鍵資訊 |
| **文言文** | 中文古文風格 | 中文使用者的趣味選項 |

## 怎麼用

```bash
# Claude Code
npx caveman install --claude

# Codex CLI
npx caveman install --codex

# 查看統計
npx caveman stats
```

自動偵測 30+ agent harness（Claude Code、Codex、Cursor、OpenCode 等）。

## 跟其他方案的關係

| 方案 | 壓縮類型 | Input 省 | Output 省 | 可讀性 |
|------|----------|----------|-----------|--------|
| [[rtk]] | CLI proxy | 46% | — | 高 |
| caveman | Plugin + MCP | 46% | 75% | 中 |
| caveman Ultra | Plugin | — | 90%+ | 低 |

caveman 的 input 壓縮類似 [[rtk]] 但用 MCP 介面而非 CLI proxy。穴居人語是 [[Prompt-Engineering]] 的實戰應用，整體屬於 [[Token-Optimization]] 領域。

## 相關概念

← [[Token-Optimization]] · [[Prompt-Engineering]] · [[rtk]]

## 來源

- raw/JuliusBrussee-caveman.md

---

- **GitHub**: https://github.com/JuliusBrussee/caveman
- **Stars**: ⭐52,506
- **License**: MIT
- **收錄日期**: 2026-05-03
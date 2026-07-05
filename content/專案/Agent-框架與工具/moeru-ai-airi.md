---
title: AIRI
slug: moeru-ai-airi
created: 2024-12-01
updated: 2026-05-26
stars: 39726
language: TypeScript
topics: [AI Agent, 自架平台, Computer-Use]
---

# AIRI

> ⭐39.7k · 自架 AI 虛擬夥伴，Web 原生技術打造的開源 Neuro-sama 替代方案

## 快速導航
[[AI-Agent]] · [[self-hosted|自架 AI 平台]] · [[computer-use-agent|電腦使用代理]] · [[generative-AI|生成式 AI]]

## 是什麼

AIRI 是受到 Neuro-sama 啟發的開源虛擬陪伴專案，讓你能自架自己的 AI 角色伴侶。不只是聊天——還能玩遊戲（Minecraft、Factorio）、看影片、連 Discord 語音，甚至進行程式碼審查。基於 Web 技術（WebGPU、WebAudio、Web Workers、WebAssembly、WebSocket）建構，桌面版原生支援 NVIDIA CUDA 和 Apple Metal。

## 核心特色

- 🌐 **Web 原生**：基於 WebGPU、WebAudio、Web Workers、WebAssembly、WebSocket 建構，可跑在瀏覽器和手機 PWA
- 🖥️ **桌面版高效能**：原生支援 NVIDIA CUDA 和 Apple Metal（透過 HuggingFace Candle）
- 📱 **跨平台**：Windows、macOS、Linux、手機 PWA、瀏覽器全部支援
- 🎮 **多模態互動**：不只是聊天，還能玩遊戲（Minecraft、Factorio）、看影片、連 Discord 語音
- 🔌 **插件系統**：WIP 的插件系統讓開發者擴充功能
- 🏠 **完全自架**：你擁有自己的數位生命，不需依賴第三方服務

## 怎麼用

```bash
# Web 版（瀏覽器直接開啟）
# https://airi.moeru.ai/

# 桌面版安裝
# 從 GitHub Releases 下載 Windows/macOS/Linux 安裝包
# https://github.com/moeru-ai/airi/releases

# 或從原始碼建構
git clone https://github.com/moeru-ai/airi
cd airi
pnpm install
pnpm dev
# 開啟 http://localhost:5173
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | Web 原生 | 遊戲互動 | 自架 | 開源 |
|------|-------|------|---------|---------|------|------|
| **AIRI** | ⭐39.7k | AI 虛擬角色 | ✅ | ✅ | ✅ | ✅ |
| Neuro-sama | — | AI 虛擬角色 | ✅ | ✅ | ❌ | ❌ |
| [[open-webui-open-webui|Open WebUI]] | ⭐80k+ | LLM 介面 | ✅ | ❌ | ✅ | ✅ |
| Character.AI | — | AI 角色聊天 | ✅ | ❌ | ❌ | ❌ |

## 相關概念
← [[AI-Agent]] · [[self-hosted|自架 AI 平台]] · [[computer-use-agent|電腦使用代理]] · [[generative-AI|生成式 AI]]

## 來源

- GitHub: <https://github.com/moeru-ai/airi>
- Demo: <https://airi.moeru.ai/>
- 原始 README: `raw/2026-05-26-moeru-ai-airi.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [moeru-ai/airi](https://github.com/moeru-ai/airi) |
| Stars | ⭐39,726 |
| License | — |
| Language | TypeScript |
| 收錄日期 | 2026-05-26 |
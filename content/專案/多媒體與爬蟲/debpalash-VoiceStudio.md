---
title: VoiceStudio
slug: debpalash-VoiceStudio
created: 2026-09-03
updated: 2026-09-03
stars: 14723
language: Python
topics: [voice-ai, text-to-speech, speech-to-text, voice-cloning, local-first, mcp]
---

# VoiceStudio

> ⭐14.7k · 全本地開源語音工作室，整合語音克隆、配音、聽寫、轉錄、有聲書與 Agent API。

## 快速導航

- 🎙 **語音技術** → [[語音辨識]]（ASR、TTS、語音克隆與即時串流）
- 🏠 **本地執行** → [[self-hosted]]（模型、專案與輸出預設留在本機）
- 🔌 **Agent 整合** → [[MCP]]（提供合成與轉錄工具給 MCP 客戶端）

## 是什麼

VoiceStudio（前稱 OmniVoice-Studio）是開源、local-first 的語音製作平台，定位為 ElevenLabs 等雲端語音服務的本地替代方案。它把語音克隆、voice design、影片配音、系統聽寫、轉錄、故事與有聲書製作放進同一套桌面工作流。

平台整合 16 個 TTS 引擎與 11 個 ASR 引擎，語言目錄標示 646 種語言，但實際品質與覆蓋範圍依所選引擎而異。桌面層採 Tauri v2，前端是 React/Vite，後端以 FastAPI、SQLite 與 engine registry 組成。

它同時提供本地 REST、SSE、WebSocket、OpenAI-compatible audio API 與 MCP Server，因此不只是一個 GUI，也能作為其他應用、Coding Agent 或自動化管線的本地語音基礎設施。專案仍處於 active beta，穩定工作應優先使用 release 而非 main。

## 核心特色

- **全流程語音製作**：語音克隆、voice design、影片配音、聽寫、故事、有聲書與批次生成。
- **多引擎路由**：16 TTS、11 ASR，可依語言、裝置、授權與品質切換模型。
- **本地優先**：核心創作流程不需帳號、API key、訂閱或用量計費，資料預設留在本機。
- **跨平台運算**：支援 CUDA、Apple Silicon MPS/MLX、Linux ROCm、CPU 與選配遠端 worker。
- **Agent-ready API**：提供 OpenAI-compatible audio endpoints、MCP Server 與 skills.sh 相容 Skills。
- **長內容工作流**：支援多角色腳本、EPUB/PDF 匯入、章節渲染與 `.m4b` 輸出。
- **診斷與隱私邊界**：內建 self-check、錯誤日誌與可清理診斷包；分析遙測預設關閉。

## 怎麼用

一般使用者可從 GitHub Releases 下載 macOS Apple Silicon DMG、Windows MSI、Linux AppImage，或使用 Docker。從原始碼啟動：

```bash
git clone https://github.com/debpalash/VoiceStudio.git
cd VoiceStudio
bun install
bun run desktop
```

第一次啟動會建立受管理的 Python 環境並下載預設模型。要把語音能力提供給 Agent，可安裝專案 Skills：

```bash
npx skills add debpalash/VoiceStudio
```

本地 API 預設可用 `http://localhost:3900/v1`；若開放到 LAN、Tailscale 或反向代理，必須先設定 API 驗證與 HTTPS。

## 跟其他方案的關係

| 方案 | 定位 | 本地優先 | ASR | TTS / 克隆 | Agent 介面 |
|------|------|----------|-----|------------|------------|
| VoiceStudio | 完整語音製作平台 | 是 | 11 引擎 | 16 引擎 | MCP + OpenAI API |
| [[jamiepine-voicebox\|Voicebox]] | 本地 AI 語音工作室 | 是 | 有 | 多引擎 | MCP + REST |
| [[OpenBMB-VoxCPM\|VoxCPM]] | Tokenizer-free TTS 模型 | 是 | 無 | 單一模型家族 | 需自行整合 |
| [[moonshine-ai-moonshine\|Moonshine Voice]] | 低延遲語音模型與 SDK | 是 | 有 | 有 | SDK 為主 |
| ElevenLabs | 託管語音服務 | 否 | 有 | 有 | 雲端 API |

VoiceStudio 的差異在於把多個模型引擎、桌面 UX、長內容工作流與標準化 API 包成完整產品。模型研究專案更適合自行組裝；託管服務部署最省事，但會換來訂閱成本與資料外送。

## 相關概念

← [[語音辨識]] · [[self-hosted]] · [[MCP]]

## 來源

- [GitHub：debpalash/VoiceStudio](https://github.com/debpalash/VoiceStudio)
- [Releases](https://github.com/debpalash/VoiceStudio/releases/latest)
- [Raw README + metadata](../raw/2026-09-03-debpalash-VoiceStudio.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/debpalash/VoiceStudio |
| Stars | ⭐14,723 |
| License | AGPL-3.0 |
| Language | Python |
| 收錄日期 | 2026-09-03 |

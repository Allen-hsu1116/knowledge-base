---
title: OpenMontage
slug: calesthio-OpenMontage
created: 2026-06-23
updated: 2026-06-23
stars: 12.1k
language: Python
topics:
  - agentic-ai
  - ai
  - text-to-video
  - video-generation
  - video-production
  - claude
  - openai
  - ffmpeg
  - remotion
  - stable-diffusion
---

# OpenMontage

> ⭐12.1k · 全球首個開源 agentic 影片製作系統，12 條管線、52 個工具、500+ agent skills，把你的 AI coding assistant 變成完整影片製作工作室

## 快速導航

- 🎬 **AI 影片生成** → [[AI-video-generation|AI 影片生成]]
- 🤖 **AI Agent** → [[AI-Agent|AI Agent]]
- 🎨 **生成式 AI** → [[generative-AI|生成式 AI]]
- 🛠 **Agent Skills 生態系** → [[agent-skills-ecosystem|Agent Skills 生態系]]
- 📝 **內容自動化** → [[content-automation|內容自動化]]

## 是什麼

OpenMontage 是全球第一個開源的 agentic 影片製作系統。它的核心理念是：你用自然語言描述想要什麼影片，你的 AI coding assistant（Claude Code、Cursor、Copilot、Windsurf、Codex 等）就自動處理研究、腳本撰寫、素材生成、剪輯和最終合成——全過程不需要你手動操作任何剪輯軟體。

跟一般「AI 影片生成」工具不同的是，OpenMontage 不只是把幾張靜態圖片動起來就叫做影片。它可以走真正的影片路徑：agent 從免費素材庫和開放檔案庫建立語料庫，檢索真實的動態片段，把它們剪輯成時間軸，然後渲染出成品。它也可以走 AI 生成路徑：用 FLUX 生成圖片、Veo/Kling/MiniMax 生成影片片段、ElevenLabs 做 TTS、WhisperX 做字幕，最後用 Remotion 合成。

整個系統是管線驅動的——12 條生產管線覆蓋不同影片風格（動畫短片、紀錄片、產品廣告、Pixar 風格、Ghibli 風格等），52 個工具和 500+ agent skills 透過 tool registry 自動發現和調度。每個創意決策都需要你的批准，每個供應商選擇都跨 7 個維度評分並留下可審計的決策日誌。

## 核心特色

1. **12 條生產管線** — 覆蓋圖片動畫、真實素材蒙太奇、AI 影片生成、產品廣告、動畫短片、Ghibli 風格等，每條管線有獨立的 stage director skill
2. **52 個工具 + 500+ Agent Skills** — 透過 tool registry 自動發現，涵蓋圖片生成、影片生成、TTS、音樂、字幕、渲染等全流程
3. **參考影片起點** — 可以貼一個 YouTube/TikTok/Reel 影片作為參考，agent 分析逐字稿、節奏、場景、關鍵幀和風格，產出 2-3 個差異化概念和成本估算
4. **多供應商整合** — FAL（FLUX + Veo/Kling/MiniMax）、OpenAI、ElevenLbs、Google、xAI、HeyGen、Runway、Suno，支援本地 GPU 生成（Wan2.1、Hunyuan、LTX2、CogVideo）
5. **自動品質審查** — ffprobe 驗證、幀取樣、音量分析、交付承諾驗證、字幕檢查，在成品交付前跑多點自審
6. **極低成本示範** — Pixar 風格動畫短片 $1.33、產品廣告 $0.69、Ghibli 風格動畫 $0.15，證明開源流程的成本優勢

## 怎麼用

```bash
# 前置需求：Python 3.10+、FFmpeg、Node.js 18+、AI coding assistant

git clone https://github.com/calesthio/OpenMontage.git
cd OpenMontage
make setup

# 或者手動安裝
pip install -r requirements.txt
cd remotion-composer && npm install && cd ..
pip install piper-tts
cp .env.example .env
```

在你的 AI coding assistant 中打開專案，用自然語言描述需求：

```
"Make a 60-second animated explainer about how neural networks learn"
"Make a 75-second documentary montage about city life in the rain. Use real footage only, no narration, elegiac tone, with music."
```

可選加入 API keys 獲得更多工具：

```bash
# .env — 每個 key 都是可選的
FAL_KEY=your-key          # FLUX 圖片 + Veo/Kling/MiniMax 影片
OPENAI_API_KEY=***        # OpenAI TTS, DALL-E 3
ELEVENLABS_API_KEY=***    # Premium TTS, 音效
GOOGLE_API_KEY=***        # Google Imagen, TTS 700+ 語音

# 有 GPU？解鎖免費本地影片生成
make install-gpu
VIDEO_GEN_LOCAL_ENABLED=true
VIDEO_GEN_LOCAL_MODEL=wan2.1-1.3b
```

## 跟其他方案的關係

| 方案 | 定位 | 管線數 | 成本 | Agent 整合 |
|------|------|--------|------|-----------|
| **OpenMontage** | 開源 agentic 影片製作 | 12 條 | $0.15-$1.33/片 | Claude Code/Cursor/Copilot/Windsurf/Codex |
| [[harry0703-MoneyPrinterTurbo\|MoneyPrinterTurbo]] | AI 影片自動生成 | 單一流程 | API 費用 | 獨立運行 |
| [[linyqh-NarratoAI\|NarratoAI]] | AI 短劇製作 | 特定場景 | API 費用 | 獨立運行 |
| [[Lightricks-LTX-2\|LTX-2]] | DiT 音影片生成模型 | 模型級 | 自架 GPU | ComfyUI 整合 |
| [[palmier-io-palmier-pro\|Palmier Pro]] | macOS AI 影片編輯器 | 編輯器級 | 訂閱制 | MCP（Claude/Codex/Cursor） |

OpenMontage 的獨特之處在於它是管線驅動的 agent 系統——不是一個獨立工具，而是把你的 coding agent 變成影片製作工作室。跟 MoneyPrinterTurbo 相比，它更靈活（12 條管線 vs 單一流程）、更透明（可審計的決策日誌）、更省錢（支援免費本地生成）。

## 相關概念

← [[AI-video-generation|AI 影片生成]] · [[AI-Agent|AI Agent]] · [[generative-AI|生成式 AI]] · [[agent-skills-ecosystem|Agent Skills 生態系]] · [[content-automation|內容自動化]] · [[palmier-io-palmier-pro|Palmier Pro]]

## 來源

- GitHub: https://github.com/calesthio/OpenMontage
- raw/2026-06-23-openmontage.md

---

| 項目 | 值 |
|------|-----|
| **GitHub** | https://github.com/calesthio/OpenMontage |
| **Stars** | ⭐12.1k |
| **License** | AGPL-3.0 |
| **Language** | Python |
| **收錄日期** | 2026-06-23 |
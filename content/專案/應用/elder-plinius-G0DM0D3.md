---
title: G0DM0D3
slug: elder-plinius-G0DM0D3
created: 2026-07-19
updated: 2026-07-19
stars: 9510
language: TypeScript
topics:
  - ai
  - red-teaming
  - jailbreak
  - multi-model
  - openrouter
  - ollama
  - prompt-engineering
  - llm-security
---

# G0DM0D3

> ⭐9.5k · 開源多模型 AI 對話介面，專為紅隊測試、越獄研究與認知研究設計，60+ 模型並行競賽

## 快速導航

- 🔒 **Prompt Security** → [[prompt-security]]
- 🧠 **LLM** → [[LLM]]
- ⚙️ **Prompt Engineering** → [[Prompt-Engineering]]

## 是什麼

G0DM0D3（GODMOD3）是 Pliny（elder-plinius）開發的完全開源、隱私透明的多模型 AI 對話介面。它專為紅隊測試（red teaming）、認知研究和「不受限的 AI 互動」設計，目標使用者是駭客、哲學家和系統研究者的社群。整個介面以單一 `index.html` 檔案構成，無 build step、無套件安裝，可直接在瀏覽器開啟。

它的核心能力是「pushing the limits of the post-training layer」——測試模型在 post-training 安全層面的極限。GODMODE CLASSIC 模式讓 5 個經過實戰驗證的 prompt + model 組合同時並行競賽，每個組合配對特定模型和特定越獄 prompt，最好的回答勝出。ULTRAPLINIAN 更進一步，是一個多模型比較評估引擎，跨 5 個等級（12-60 個 OpenRouter 模型）查詢、以 100 分複合指標評分、回傳優勝者。

G0DM0D3 支援三大模型來源：OpenRouter（60+ 模型）、Venice（最多 44 模型）、以及本地模型（透過 Ollama、LM Studio、llama.cpp、vLLM 等 OpenAI 相容伺服器）。所有對話和設定存在瀏覽器 localStorage，無帳號系統、無雲端同步，完全自託管。Parseltongue 引擎提供 33 種輸入擾動技術（跨 3 個強度等級），用於研究模型穩健性。

## 核心特色

- **GODMODE CLASSIC** — 5 個戰鬥測試過的 prompt + model 組合並行競賽，包括 Claude Sonnet 4.6、Grok 4.5、Gemini 2.5 Flash、GPT-4o、Hermes-4-405b，每個配對特定越獄策略
- **ULTRAPLINIAN** — 多模型比較評估引擎，5 個等級（FAST 12→ULTRA 60 模型），100 分複合指標評分，回傳最佳回答
- **Parseltongue** — 輸入擾動引擎，33 種轉換技術跨 3 個強度等級（leetspeak、bubble text、braille、morse、Unicode 替換、語音轉換、分層編碼），偵測觸發詞並研究模型穩健性
- **AutoTune** — 上下文自適應取樣參數引擎，將查詢分類為 20 種上下文之一，自動選擇 temperature、top_p、top_k、frequency/presence/repetition penalty
- **本地模型支援** — 透過 Ollama、LM Studio、llama.cpp、vLLM 在自有硬體上跑 ULTRAPLINIAN，Local-only 模式排除 OpenRouter/Venice 呼叫並自動關閉遙測
- **隱私透明** — 無帳號系統，對話在瀏覽器 localStorage，遙測只含 metadata（page-session ID、時間戳、model/mode/tier），不含 prompt/response/API key，No-Log 和 Local-only 模式可完全關閉遙測

## 怎麼用

### 託管版（最簡單）

直接造訪 [godmod3.ai](https://godmod3.ai)，帶一個 OpenRouter key 或 Venice key，或連接本地 OpenAI 相容伺服器。

### 自架

```bash
git clone https://github.com/elder-plinius/G0DM0D3.git
cd G0DM0D3

# 直接在瀏覽器開啟
open index.html
# 或本地伺服
python3 -m http.server 8000
```

### 本地模型

```bash
ollama pull qwen3:8b
ollama serve
```

在 Settings → API Keys → Local Models 輸入 `http://localhost:11434/v1`，點 Test & Discover Models。啟用 Local-only mode 排除外部呼叫。

### 部署

上傳 `index.html` 到任何靜態主機——GitHub Pages、Vercel、Cloudflare Pages、Netlify 或 web server。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 多模型競賽 | 紅隊工具 | 本地模型 | 隱私 |
|------|-------|------|-----------|---------|---------|------|
| **G0DM0D3** | ⭐9.5k | 紅隊對話介面 | ✅ (60+) | ✅ Parseltongue | ✅ Ollama | localStorage |
| [[CherryHQ-cherry-studio\|Cherry Studio]] | ⭐47k | AI 工作室 | ✅ | — | ✅ Ollama | 本地 |
| [[open-webui-open-webui\|Open WebUI]] | ⭐100k+ | LLM 前端 | — | — | ✅ Ollama | 本地 |
| [[p-e-w-heretic\|Heretic]] | ⭐22k | 模型安全 | — | ✅ 審查移除 | ✅ | 本地 |

G0DM0D3 的獨特定位是「紅隊測試專用多模型對話介面」。Cherry Studio 和 Open WebUI 是通用 LLM 前端，Heretic 偏重審查移除。G0DM0D3 把多模型並行競賽（GODMODE CLASSIC / ULTRAPLINIAN）、輸入擾動（Parseltongue）、自適應取樣（AutoTune）三者結合，形成一個完整的 post-training 層測試工具鏈。


## 相關概念
← [[prompt-security]] · [[LLM]] · [[Prompt-Engineering]]

## 來源

- GitHub: https://github.com/elder-plinius/G0DM0D3
- 線上版: https://godmod3.ai
- 原始 README: `raw/2026-07-19-elder-plinius-G0DM0D3.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [elder-plinius/G0DM0D3](https://github.com/elder-plinius/G0DM0D3) |
| Stars | ⭐9,510 |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-07-19 |
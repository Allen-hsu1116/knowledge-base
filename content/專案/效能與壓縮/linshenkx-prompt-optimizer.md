---
title: Prompt Optimizer
slug: linshenkx-prompt-optimizer
created: 2026-06-28
updated: 2026-06-28
stars: 31489
language: TypeScript
topics:
  - prompt-engineering
  - prompt-optimization
  - llm
  - prompt-tuning
  - ai-tools
  - prompt-testing
---

# Prompt Optimizer

> ⭐31.5k · AI 提示詞優化工具，一鍵改善 prompt 品質，支援多模型、圖片生成和 MCP 整合

## 快速導航
- 🧠 **Prompt Engineering** → [[Prompt-Engineering]]
- ⚡ **Token Optimization** → [[Token-Optimization]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

Prompt Optimizer 是一款強大的 AI 提示詞優化工具，幫助使用者寫出更好的 prompt 並獲得更好的 AI 輸出。它提供四種使用方式：Web 應用、桌面應用、Chrome 擴充功能和 Docker 部署，覆蓋從個人使用到企業部署的各種場景。

Prompt 的來源可以是手動撰寫、模板、本地匯入，或從 Prompt Garden 社群匯入。Prompt Optimizer 是這些 prompt 被優化、測試、評估和儲存為可重用 prompt 資產的地方。它的核心工作流程是：輸入 prompt → AI 分析並優化 → 評估改善程度 → 儲存為收藏。整個過程支援多輪迭代改進，也能對比優化前後的效果差異。

架構上 Prompt Optimizer 採用純客戶端處理，資料直接與 AI 服務商互動，不經過中間伺服器，確保隱私安全。所有資料儲存在本地瀏覽器中，線上版同樣安全可靠。它還支援 MCP 協議，可與 Claude Desktop 等 MCP 相容的 AI 應用整合。

## 核心特色

- **一鍵智能優化**：多輪迭代改進 prompt，提升 AI 回應準確度
- **雙模式優化**：支援 system prompt 和 user prompt 兩種優化模式
- **分析與比較評估**：支援分析、單結果評估和多結果比較評估，判斷 prompt 是否真正改善
- **多模型整合**：OpenAI、Gemini、DeepSeek、Grok、智譜 AI、SiliconFlow、MiniMax 等主流模型
- **圖片生成**：支援 Text-to-Image、Image-to-Image、多圖生成，整合 Gemini、Seedream、Grok 等模型
- **智能收藏**：資源感知的 prompt 資產管理，含版本歷史、可重現範例、媒體支援、來源綁定
- **進階測試模式**：上下文變數管理、多輪對話測試、Function Calling 支援
- **多平台部署**：Web 應用、桌面應用、Chrome 擴充功能、Docker 四種部署方式
- **MCP 協議支援**：可與 Claude Desktop 等 MCP 相容應用整合

## 怎麼用

```bash
# 方式 1：線上版（推薦，直接使用）
# 訪問 https://prompt.always200.com

# 方式 2：Vercel 一鍵部署
# 點擊 https://vercel.com/new/clone?repository-url=https://github.com/linshenkx/prompt-optimizer

# 方式 3：Docker 部署
docker pull linshen/prompt-optimizer
docker run -d -p 80:80 linshen/prompt-optimizer

# 方式 4：本地開發
git clone https://github.com/linshenkx/prompt-optimizer.git
cd prompt-optimizer
npm install
npm run dev

# Chrome 擴充功能
# 從 Chrome Web Store 安裝
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **Prompt Optimizer** | ⭐31.5k | Prompt 優化工具 | 一鍵多輪優化 | 多平台部署 |
| [[promptfoo-promptfoo\|Promptfoo]] | ⭐22k | LLM 評測 | 紅隊測試 | CI/CD 整合 |
| [[Prompt-Engineering\|Prompt Engineering]] | — | 方法論 | 設計提示詞 | Token 優化 |
| [[dair-ai-Prompt-Engineering-Guide\|PE Guide]] | ⭐75.7k | 學習資源 | 論文+課程 | 系統化指南 |
| [[Token-Optimization\|Token Optimization]] | — | 技術 | 降低成本 | 壓縮輸入 |

← [[Prompt-Engineering]] · [[Token-Optimization]] · [[MCP]] · [[promptfoo-promptfoo|Promptfoo]]


## 相關概念

← [[Prompt-Engineering]] · [[Token-Optimization]] · [[MCP]]

## 來源

- GitHub: <https://github.com/linshenkx/prompt-optimizer>
- 原始 README: `raw/2026-06-28-linshenkx-prompt-optimizer.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [linshenkx/prompt-optimizer](https://github.com/linshenkx/prompt-optimizer) |
| Stars | ⭐31,489 |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-06-28 |
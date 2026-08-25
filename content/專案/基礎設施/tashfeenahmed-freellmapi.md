---
title: FreeLLMAPI
slug: tashfeenahmed-freellmapi
created: 2026-08-25
updated: 2026-08-25
stars: 19780
language: zh-TW
topics: [AI Gateway, LLM, Coding Agent CLI, self-hosted]
---

# FreeLLMAPI

> ⭐19.8k · 把 34 家供應商的免費額度與自訂 OpenAI 相容端點整合成單一 `/v1` API，並自動路由、追蹤配額與故障切換。

## 快速導航

- 🚪 [[AI-Gateway]] — 理解統一模型介面、路由與容錯的基礎架構
- 💻 [[Coding-Agent-CLI]] — 查看可接上統一端點的 Claude Code、Codex 等工具
- 🏠 [[self-hosted]] — 了解本地優先部署與資料控制

## 是什麼

FreeLLMAPI 是一個本地優先、單使用者導向的 AI Gateway。它把多家 LLM 供應商的免費方案、以及使用者自訂的 OpenAI 相容端點，收斂成同一個 API；應用程式只需設定一次 base URL 與統一金鑰，不必逐家處理 SDK、限流規則與錯誤格式。

專案 README 在 2026-08-25 宣稱目錄涵蓋 34 家供應商、474 個模型家族、635 個免費端點，列出的月容量約 74 億 tokens。這些數字是專案依各家公開免費額度整理的估算，不代表 SLA，也會隨供應商政策改變。

路由器會依模型能力、速度、可靠度與配額狀態挑選端點；遇到 429 或 5xx 時冷卻該金鑰並嘗試下一個模型。專案明確定位為個人實驗與原型用途，不建議把波動的免費額度直接當成正式產品的推論基礎。

## 核心特色

- **多協議統一介面**：除了 OpenAI chat、responses、embeddings、圖片與音訊端點，也提供 Anthropic Messages、Gemini 與選用的 Ollama 相容介面。
- **六種智慧路由策略**：以速度、能力與可靠度分數排序，搭配 fallback chain、冷卻與 key rotation 處理供應商故障。
- **細粒度配額追蹤**：針對 `(platform, model, key)` 記錄 RPM、RPD、TPM、TPD，避免持續撞上免費額度上限。
- **統一模型與設定檔**：同一模型在多個供應商的端點可合併呈現，並用命名 profile 建立 coding、vision 等不同 fallback chain。
- **金鑰與資料控制**：供應商金鑰以 AES-256-GCM 加密存進 SQLite，請求由本機直接送到啟用的上游。
- **Coding Agent 整合**：提供 Claude Code、Codex、Aider、OpenCode、Goose 等工具的設定產生器與零持久化 launcher。
- **可選上下文壓縮**：可去除重複 prompt、壓縮 JSON、過濾工具輸出並裁切過舊上下文；失敗時採 fail-open。
- **自動模型目錄**：以簽章目錄更新模型與配額資料；免費版使用延遲約 30 天的月快照，付費版取得即時目錄。

## 怎麼用

最短路徑需要 Docker。執行官方安裝腳本前，建議先開啟網址檢查腳本內容：

```bash
curl -fsSL https://freellmapi.co/install.sh | bash
```

服務啟動後開啟 `http://localhost:3001`，加入各供應商金鑰、調整 fallback chain，再從 Keys 頁取得統一 API key。OpenAI SDK 可這樣連線：

```python
from openai import OpenAI

client = OpenAI(
    base_url="http://localhost:3001/v1",
    api_key="freellmapi-your-unified-key",
)
response = client.chat.completions.create(
    model="auto",
    messages=[{"role": "user", "content": "Hello"}],
)
```

如果要連 Claude Code，可使用會備份並合併既有設定的產生器；正式執行前先加 `--dry-run` 檢查變更：

```bash
npx freellmapi setup-claude \
  --url http://localhost:3001 \
  --api-key <unified-key> \
  --dry-run
```

使用免費額度前仍需逐家閱讀並遵守供應商條款。免費 tier 的容量、模型品質與延遲不穩定，正式服務應改用有 SLA 的付費 API 或自有推論端點。

## 跟其他方案的關係

FreeLLMAPI 跟一般 AI Gateway 的差別，是把「彙整個人可申請的免費額度」設為主要場景；LiteLLM 偏向通用供應商抽象，OmniRoute 強調多供應商與 token 壓縮，Sub2API 則偏向訂閱帳號池與商業配額分發。

| 方案 | 主要定位 | 路由來源 | 適合情境 |
|------|----------|----------|----------|
| FreeLLMAPI | 個人免費額度聚合 | 免費 tier、自訂 OpenAI 相容端點 | 學習、原型、個人實驗 |
| [[litellm\|LiteLLM]] | 通用 LLM Proxy / SDK | 大量商用與自架 provider | 團隊統一 API 與觀測 |
| [[diegosouzapw-OmniRoute\|OmniRoute]] | 多供應商 AI Gateway | 商用、免費與自架端點 | Coding Agent 多模型路由 |
| [[Wei-Shaw-sub2api\|Sub2API]] | 訂閱帳號池與配額分發 | Claude、OpenAI、Gemini、Grok | 有計費與多租戶需求的自架服務 |

選型時不能只比較端點數；還要檢查上游服務條款、故障隔離、資料留存、配額準確度與正式環境的 SLA。

## 相關概念

← [[AI-Gateway]] · [[Coding-Agent-CLI]] · [[self-hosted]] · [[Token-Optimization]]

## 來源

- GitHub：https://github.com/tashfeenahmed/freellmapi
- 原始 README 快照：`raw/2026-08-25-tashfeenahmed-freellmapi.md`
- 數量與功能描述依 2026-08-25 擷取的專案 README；免費方案可能隨時變動

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/tashfeenahmed/freellmapi |
| Stars | ⭐19,780 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-08-25 |

---
title: "iFixAi"
slug: ifixai-ai-iFixAi
created: 2026-10-15
updated: 2026-10-15
stars: 27420
language: zh-TW
topics: ["AI-Agent", "prompt-security"]
---

# iFixAi

> ⭐27.4k · 以業務政策、權限與獨立 judge 稽核 Agent 的評測工具。

## 快速導航

- [[AI-Agent]] — 相關概念與配套背景
- [[prompt-security]] — 相關概念與配套背景

## 是什麼

iFixAi 是 AI Agent 稽核工具，關注系統是否符合預期任務、業務政策和組織權限，而不只看延遲或模型回答能力。它提供 CLI、引導式設定、Plugin 與 Skill 等入口，底層共用診斷引擎。

評估對象可以是裸模型 API，也可以是帶有 system prompt、工具、檢索與治理機制的真實 Agent。兩者不能等同：只有 adapter 暴露足夠能力，工具授權、來源或稽核軌跡等檢查才有證據可判讀。

官方主打快速稽核，但耗時及費用取決於測試套件、fixture、模型與 judge 呼叫量。本頁未執行收費稽核，也不將 README 的速度與可靠性宣稱當作獨立測試結果。

## 核心特色

### 1. 多入口共用診斷

CLI wizard、明確 flags 與 Agent Plugin／Skill 服務不同操作流程。

### 2. 分離受測系統與 judge

支援跨供應商評分；self 模式適合 smoke test，不等於獨立評估。

### 3. 分級測試套件

README 現行預設 essential 為 10 項，--full-run 為 60 項；不要與 --mode full 混淆。

### 4. 證據不足明確揭露

adapter 未暴露足夠工具能力時可標示 insufficient_evidence，不應當作通過。

### 5. 機器與人工可讀報告

輸出 JSON、Markdown 及終端 scorecard，可保留測試設定與結果供追蹤。

## 怎麼用

以下為文件摘錄整理的隔離安裝與 mock 示範；需要 Python 3.10+。mock 不需真實金鑰，內建 fixture 故意含缺陷，失敗分數不代表測試管線壞掉。

```bash
python3 -m venv .venv
. .venv/bin/activate
python -m pip install "ifixai[openai]"
ifixai run --provider mock --api-key not-used --eval-mode self
```

### 操作與驗證重點

1. 實際評估前建立符合自己角色、政策、工具與正常任務的 fixture；不要直接用內建缺陷樣本替自己的產品下結論。
2. 測真實 Agent 時依官方 HTTP adapter 文件接端點；在授權測試環境執行，避免破壞性測試影響生產資料。
3. 先以 dry-run 估計費用，再配置獨立 judge；API key 及敏感稽核資料不得提交到公共 repo。

以下內容依官方文件整理；安裝指令僅為讀者參考，本次未安裝或實測候選軟體。

## 跟其他方案的關係

| 方案 | 定位 | 使用邊界 |
| --- | --- | --- |
| iFixAi | Agent 業務政策與操作保證稽核 | 重視 fixture、受測系統能力暴露與 judge 獨立性 |
| [[promptfoo-promptfoo\|Promptfoo]] | LLM 評測與紅隊工具 | 可互補；未進行同條件效能或檢出率比較 |
| 執行期 sandbox／approval | 限制實際工具操作 | 稽核不是即時權限隔離的替代品 |

### 限制與選擇提醒

- README 的套件數與費用段落存在更新不同步（部分成本文字仍寫 50-test）；費用以當次 dry-run 和實際 API 計費為準。
- 高分不是無漏洞證明；要保留 insufficient_evidence、fixture、judge 與報告，避免只引用字母等級。

## 相關概念

← [[AI-Agent]] · [[prompt-security]]

## 來源

- [GitHub：ifixai-ai/iFixAi](https://github.com/ifixai-ai/iFixAi)
- README 快照：`raw/2026-10-15-ifixai-ai-iFixAi.md`
- GitHub metadata：`raw/2026-10-15-ifixai-ai-iFixAi-metadata.json`
- [受測 Agent adapter 文件](https://github.com/ifixai-ai/iFixAi/blob/main/docs/testing-your-agent.md)
- [計分說明](https://github.com/ifixai-ai/iFixAi/blob/main/docs/scoring.md)

---

| Metadata | 值 |
| --- | --- |
| GitHub | [ifixai-ai/iFixAi](https://github.com/ifixai-ai/iFixAi) |
| Stars | 27,420（2026-10-15 快照） |
| License | Apache-2.0 |
| Language | Python（程式）；zh-TW（本頁） |
| 收錄日期 | 2026-10-15 |

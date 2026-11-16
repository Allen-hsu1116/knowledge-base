---
title: "SkillEvaluator"
slug: NVIDIA-SkillEvaluator
created: 2026-11-16
updated: 2026-11-16
stars: 1688
language: zh-TW
topics: ["AI-Skills", "AI-Agent", "prompt-security"]
---

# SkillEvaluator

> ⭐1.7k · NVIDIA 的分層技能評估框架，區分靜態品質、語意重疊與實際 Agent 成效。

## 快速導航

- [[AI-Skills]]
- [[AI-Agent]]
- [[prompt-security]]

## 是什麼

SkillEvaluator 評估 Agent Skills 的文件品質、安全相關檢查及對任務結果的影響。它屬於 NVIDIA Verified Skills pipeline，核心問題不是技能寫得多長，而是結構與品質是否合格、指引是否重複，以及有無技能時 Agent 的任務結果是否不同。

框架分成 Tier 1 驗證、Tier 2 語意去重與 Tier 3 live evaluation，各層需要不同的依賴和證據。只完成無金鑰的靜態品質檢查，不能宣稱技能安全或實際有效；專案以 INCOMPLETE 明確表示尚未取得的證據。

## 核心特色

- **Tier 1 品質與驗證**：區分靜態品質、結構、安全掃描與宿主相容性；完整掃描有額外工具需求。

- **Tier 2 去重**：透過 embeddings 與模型檢查指引重疊，可搭配 catalog 做技能間比較。

- **Tier 3 成效評估**：在沙箱中執行 Agent，比較技能對任務結果的影響。

- **證據完整性**：掃描器無法執行或缺乏完整評估時，不能把跳過檢查算作通過。

- **CI 與 Agent 入口**：提供 CLI、CI 初始化及可載入的評估技能，串進既有工作流程。

- **明確關卡語意**：Tier 3 要搭配 --block-on-agent-eval 才會作為 combined pipeline 的阻擋關卡。

## 怎麼用

README 提供 Python 3.12／3.13／3.14 支援資訊，clone 範例使用 uv 與 Python 3.13。下列先做不需 LLM 的品質檢查；本次沒有安裝或執行評估器。

```bash
git clone --depth 1 https://github.com/NVIDIA/SkillEvaluator.git
cd SkillEvaluator
uv run --python 3.13 skillevaluator quality-check \
  src/skillevaluator/tier3/reference_skills/text-analyzer \
  -r cli -r json -o reports/first-quality
```

1. 先閱讀 CLI 與 JSON 報告，區分品質分數、檢查失敗及缺乏證據。

2. 需要完整 Tier 1 時準備安全掃描器；--no-llm 不會移除掃描器需求。

3. 做 Tier 2／3 前設定 provider、模型與 Agent／沙箱，審查測試案例並記錄版本及成本。

### 使用邊界

README 的範例分數不是本次執行結果。模型評分可能把技能文件傳給供應商，managed sandbox 與模型呼叫也可能收費。

## 跟其他方案的關係

| 方案 | 定位 | 適合情境 |
|---|---|---|
| SkillEvaluator | 整合品質、去重與實際任務成效 | 想判斷技能是否值得採用並建立證據 |
| SkillSpector | 專門的技能安全掃描 | 作為安全檢查的一環，不取代任務成效評估 |
| 單純格式 lint | 檢查結構與規則 | 快速過濾格式錯誤，不能證明安全或改善表現 |

doctor 檢查環境就緒，不保證推論成功；自動生成的一個技能導向案例也不等於完整測試覆蓋。

## 相關概念

← [[AI-Skills]] · [[AI-Agent]] · [[prompt-security]]

## 來源

- [GitHub repository](https://github.com/NVIDIA/SkillEvaluator)
- [官方 README](https://github.com/NVIDIA/SkillEvaluator#readme)
- README 快照：`raw/2026-11-16-NVIDIA-SkillEvaluator.md`
- API metadata：`raw/2026-11-16-NVIDIA-SkillEvaluator.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [NVIDIA/SkillEvaluator](https://github.com/NVIDIA/SkillEvaluator) |
| Stars | 1,688（2026-11-16 擷取） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-11-16 |

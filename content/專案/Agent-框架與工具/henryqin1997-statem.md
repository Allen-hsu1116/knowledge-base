---
title: StateM
slug: henryqin1997-statem
created: 2026-09-02
updated: 2026-09-06
language: zh-TW
stars: 984
topics: [state-machine, harness-engineering, procedural-memory, ai-agent]
source: https://github.com/henryqin1997/statem
---

# StateM

> ⭐984 · 為長時間 AI Agent 執行設計的命令列狀態機：把計畫、執行、驗證、修復與交付移出聊天上下文，放進可版本控制、可檢查、具 transition gate 的 YAML runbook。

## 快速導航

- [[harness-engineering]] — 以外部程序控制提高執行可靠度
- [[self-correction]] — 驗證失敗後的修復迴圈

## 是什麼

長任務失敗不一定是模型能力不足。常見原因是原始目標被冗長 trace 稀釋、進度只存在對話歷史、驗證被延後，或 context compaction／session 中斷後無法重建目前狀態。StateM 將這些 procedural state 外部化，讓 Agent 隨時知道目前階段、合法轉移、所需證據與歷史結果。

其核心論點是「模型能力」與「執行可靠度」是兩條不同的 scaling axis。與其只升級模型，可以先 scale model 周圍的 harness：縮短當前階段指令、保存 durable progress、在重要邊界要求證據，並保留修復路徑。

## 狀態與契約

典型流程是：

```text
plan → execute → verify → handoff
          ↑          |
          └─ repair ─┘
```

每個 state 同時是 context boundary 與 contract boundary。進入 state 時載入該階段需要的資訊；離開 state 前執行 `before_transfer` 檢查。若測試、predicate、checklist、人工批准或 LLM review 未通過，轉移不會提交，Agent 留在目前節點修復。

一次 transition 類似交易：解析 edge、執行 exit checks 與 dynamic checks、評估 condition、執行 hooks，最後才記錄轉移並進入新 state。這使「完成」不再只是模型說完成，而是有 evidence receipt 的狀態變更。

## 核心特色

- **Static runbook**：nodes、edges、prompts、hooks、gates，應納入版本控制
- **Runtime state**：current node、history、results、timestamps，不必提交 git
- **Dynamic checks**：任務執行後才知道的特定驗證，作用於目前 state entry
- **Durable project notes**：計畫、決策、進度與產物，通常應保存於專案檔案

Core package 只需要 Python 3.11+，沒有 runtime dependency。任何能執行 shell command 的 Agent 都能操作 StateM，並提供 Codex、Claude Code、Terminal-Bench 與 Stop hook 整合。

## 怎麼用

依官方 README，使用 Python 3.11+ 在獨立虛擬環境安裝原始碼：

```bash
git clone https://github.com/henryqin1997/statem.git
cd statem
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -e .
```

準備符合專案 schema 的 `runbook.yaml` 後，再執行以下命令：

```bash
statem validate runbook.yaml
statem start runbook.yaml --run-id demo
statem cur --run-id demo
statem next --run-id demo
statem goto plan --run-id demo
statem history --run-id demo
```

`statem prompt` 與 `statem compact-prompt` 可產生 session clear 或 context compaction 後的恢復提示；`STATEM_STATE_DIR` 可把 runtime state 放到 repo 外的持久位置。

## 評測結果

論文在 Terminal-Bench 2.1 報告：

- GPT-5.5 xhigh：83.1% reference → **92.1% + StateM**
- GPT-5.6 Sol xhigh + frozen profile：**95.28% raw（424/445）**
- DeepSeek-V4-Flash + adapted profile：標準 timeout **88.09%（392/445）**
- DeepSeek 描述性結果：單一 latency-sensitive task 使用揭露的延長 timeout 後 **88.76%（395/445）**
- DeepSeek final-evaluation API cost：**US\$15.20**；含 profile adaptation 的完整 campaign 為 US\$52.22

這些是 system-level harness 結果，不是新 base model。95.28% 是 2026-08-11 時 public submission 的 raw、pre-adjudication 分數，尚非官方 leaderboard 結果；五次嘗試涵蓋所有 task 也不等於單次執行可靠度。

## 研究洞見

- GPT-5.5 開發的 frozen runbook 可不修改地轉移到 GPT-5.6，表示程序知識可累積在 harness，而非模型權重
- 跨 provider 不宜照搬所有細節：相同 runtime 與高階結構可重用，但 DeepSeek 需要 provider-specific adaptation
- 最顯著的提升來自 service readiness、consumer-facing verification、破壞性操作保護與 final-state consistency
- BusinessBench 顯示 generalization 取決於 mechanism match；把錯誤 workflow boundary 套到不合適任務會造成 negative transfer
- 論文展示 22 小時連續 harness-development run，證明 day-scale endurance，但不代表無限自主執行

## 三種失敗缺口

1. **Epistemic gap**：決策點缺乏知識或方法 → 以 state-local context／`in_hook` 補足
2. **Procedural-memory gap**：過往教訓沒有在風險重現時被喚回 → 以 versioned practices 保存
3. **Procedural-compliance gap**：知道正確程序卻沒有完整執行 → 以 checked transitions 阻擋過早交付

這個分類有助於避免把所有 Agent 失敗都歸因於「模型不夠聰明」。

## 適用與限制

StateM 適合有明確階段、昂貴交付邊界、需要跨 session 恢復與可驗證證據的長任務。簡短一次性工作若沒有 state transition 或 recovery 需求，導入狀態機可能只增加流程成本。Runbook 也應保持精簡、匹配任務機制，不能把所有過往錯誤都堆成永久規則。

## 跟其他方案的關係

| 方案 | 狀態保存 | 驗證與交付 |
|---|---|---|
| StateM | YAML runbook 與獨立 runtime state | transition gate 要求證據 |
| 一般 TODO 清單 | 自由文字進度 | 本身不執行驗證 |
| CI pipeline | 工作流程與執行紀錄 | 預設步驟與測試，較少由 Agent 即時編輯 |

StateM 是 [[harness-engineering]] 的直接實作，補強 [[AI-Agent]] 的長任務可靠度與 [[self-correction]] 修復迴圈。它比一般 TODO list 多了可執行 gate，比 CI pipeline 更可由 Agent 編輯，也比通用 workflow engine 更輕量。

## 專案資訊

- GitHub：https://github.com/henryqin1997/statem
- Project page：https://henryqin1997.github.io/statem/
- Paper：arXiv:2608.15089
- 主要語言：Python 3.11+
- 授權：Apache-2.0
- Stars：2026-09-06 GitHub API 查得 984

## 相關概念

← [[harness-engineering]] · [[AI-Agent]] · [[self-correction]]

## 來源

- https://github.com/henryqin1997/statem
- https://henryqin1997.github.io/statem/
- raw/2026-09-06-henryqin1997-statem-readme.md — 官方 README 原始快照；舊頁引用的 2026-09-02 快照在本機不存在，已改為可追溯來源。
- https://henryqin1997.github.io/statem/statem-paper.pdf

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/henryqin1997/statem |
| Stars | ⭐984（2026-09-06） |
| License | Apache-2.0 |
| 收錄日期 | 2026-09-02 |

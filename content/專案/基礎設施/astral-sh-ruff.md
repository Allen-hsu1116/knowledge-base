---
title: Ruff
slug: astral-sh-ruff
created: '2026-11-08'
updated: '2026-11-08'
stars: 50979
language: Rust
topics:
- Coding-Agent-CLI
- free-software
github_topics:
- linter
- pep8
- python
- python3
- ruff
- rust
- rustpython
- static-analysis
- static-code-analysis
- style-guide
- styleguide
---

# Ruff

> ⭐51.0k · Rust 實作的 Python linter 與 formatter，可作為 Coding Agent 工作流的確定性品質檢查。

## 快速導航

[[Coding-Agent-CLI]] · [[free-software]]

## 是什麼

Ruff 是 Astral 維護的 Python 靜態檢查與格式化工具，核心以 Rust 撰寫。ruff check 處理 lint 規則，ruff format 處理排版；它不需要呼叫 LLM，也不是會自行規劃或修改整個專案的 Coding Agent。

在 AI 輔助開發流程中，Ruff 可以提供快速、可重複的回饋，讓生成程式碼通過一致的工程規則。這是本知識庫對工具搭配的解讀；規則檢查無法取代型別檢查、單元測試或安全稽核。README 的效能倍率屬作者基準主張，本次未重跑。

## 核心特色

- **Lint 與格式化共用工具**：分別以 check 和 format 命令執行，職責清楚。

- **內建規則**：README 標示超過 900 個規則，包含多種常見 Flake8 插件功能。

- **自動修正**：可修正部分 lint 問題，例如未使用的 import；套用後仍需檢視差異。

- **專案設定**：支援 pyproject.toml，以及 monorepo 的階層式設定。

- **快取與整合**：跳過未變動檔案的重複分析，可整合編輯器、pre-commit 與 CI。

## 怎麼用

### 安裝

以下是官方文件的使用示例，本次僅收錄文件，未執行候選專案。

```bash
# 加入既有 uv Python 專案的開發依賴
uv add --dev ruff
```

### 基本操作

```bash
# 先做不改寫檔案的檢查
uv run ruff check .
uv run ruff format --check .

# 確認差異與版本控制狀態後，才選擇修正
uv run ruff check --fix .
uv run ruff format .
```

- 若只需一次性執行，可依 README 使用 uvx ruff@0.17.4 check；正式 CI 應固定團隊核准版本。

- check 與 format 的通過條件不同，CI 應分別檢查，不把格式正確當成邏輯正確。

- 是否適合替代現有工具，需逐一比對已啟用規則和格式差異，不直接假定所有行為完全一致。

## 跟其他方案的關係

以下是依功能定位整理的比較，不是效能排名。

| 方案 | 主要用途 | 關係與取捨 |
| --- | --- | --- |
| Ruff | Python lint、格式化與部分自動修正 | 集中工具入口，仍須設定規則 |
| Flake8／isort／Black | 分別處理 lint、import 與格式 | Ruff 提供相關替代能力，遷移須驗證差異 |
| Coding Agent | 依自然語言產生與修改程式碼 | 可使用 Ruff 作回饋，但兩者職責不同 |

### 限制與查證範圍

- 靜態規則通過不代表程式在實際資料、權限與併發條件下正確。

- 本次未安裝 Ruff 或執行上游 benchmark，沒有實測速度結論。

← [[Coding-Agent-CLI]] · [[free-software]]

## 來源

- [GitHub](https://github.com/astral-sh/ruff)
- [README](https://github.com/astral-sh/ruff/blob/main/README.md)
- [官方資料 1](https://docs.astral.sh/ruff/)
- [官方資料 2](https://docs.astral.sh/ruff/configuration/)
- 原始快照：`raw/2026-11-08-astral-sh-ruff.md`
- Metadata：`raw/2026-11-08-astral-sh-ruff.metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [astral-sh/ruff](https://github.com/astral-sh/ruff) |
| Stars | 50,979（2026-11-08 快照） |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-11-08 |

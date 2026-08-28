---
title: actions/checkout
slug: actions-checkout
created: 2026-08-28
updated: 2026-08-28
stars: 8729
language: TypeScript
topics: [GitHub Actions, CI/CD, Git, workflow automation, supply chain security]
---

# actions/checkout

> ⭐8.7k · GitHub Actions 工作流中取得原始碼的官方 Action，支援 ref、淺層／稀疏 clone、子模組、LFS 與安全憑證清理

## 快速導航

- 🔄 **CI/CD 工作流** → [[workflow-automation]]
- 🤖 **Agent 自動化交付** → [[Coding-Agent-CLI]]
- 🔐 **工作流安全** → [[prompt-security]]

## 是什麼

actions/checkout 是 GitHub 官方維護、幾乎所有 GitHub Actions workflow 都會使用的基礎 Action。它把觸發工作流的 repository 取到 `$GITHUB_WORKSPACE`，讓後續建置、測試、Agent 任務或部署步驟能讀取實際程式碼。

預設只抓取觸發事件所對應 ref／SHA 的單一 commit，以減少時間與流量；需要完整歷史、tags、特定 branch、另一個 repository、Git LFS 或 submodules 時，可透過 inputs 明確開啟。Git 不可用時，工具也能退回 REST API 下載檔案。

近期版本特別強化憑證與不可信 pull request 的防護：credentials 會在 job 後清理，而 `pull_request_target` 或 `workflow_run` 不會預設 checkout fork PR 程式碼，避免在持有 base repository token、secrets 與 runner 權限的情境執行攻擊者內容。

## 核心特色

- **事件 ref checkout**：自動取得觸發 workflow 的 commit、branch 或 tag
- **淺層 clone 預設**：`fetch-depth: 1` 降低 CI 網路與儲存成本
- **稀疏與部分 clone**：只抓取需要的路徑或 objects，適合大型 monorepo
- **多 repository**：支援 side-by-side 或 nested checkout，private repo 可提供 PAT
- **LFS 與 submodules**：能處理大型檔案及遞迴子模組
- **憑證生命週期**：可選擇是否持久化 token，並在 post-job 清理
- **Fork PR 防護**：高權限事件預設拒絕不安全的 fork code checkout

## 怎麼用

最小 GitHub Actions workflow：

```yaml
name: test
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v7
      - run: npm ci
      - run: npm test
```

需要完整歷史或只取部分目錄時：

```yaml
- uses: actions/checkout@v7
  with:
    fetch-depth: 0
    sparse-checkout: |
      .github
      src
```

跨 private repository 時，內建 `${{ github.token }}` 通常只涵蓋目前 repo，應提供最小權限 PAT，並避免在 log 中輸出 secrets。

## 跟其他方案的關係

它不是完整 CI 平台，而是 GitHub Actions 執行環境中的 source acquisition building block。GitLab CI 與 Jenkins 通常由 runner／SCM plugin 內建 checkout；直接執行 `git clone` 彈性最高，但要自行處理 ref、credentials、safe directory 與清理。

| 方案 | 執行環境 | Checkout 抽象 | 安全與便利性 |
|------|----------|---------------|----------------|
| actions/checkout | GitHub Actions | 官方 Action inputs | 與 token、事件 SHA、runner 深度整合 |
| git clone | 任意 shell | 原生 Git CLI | 最彈性，但憑證與 ref 要自行管理 |
| GitLab Runner | GitLab CI | Runner checkout strategy | 與 GitLab pipeline 原生整合 |
| Jenkins Git plugin | Jenkins | SCM plugin | 適合自架 Jenkins 與企業流程 |

## 相關概念

← [[workflow-automation]] · [[Coding-Agent-CLI]] · [[prompt-security]] · [[google-googletest]]

## 來源

- GitHub: <https://github.com/actions/checkout>
- GitHub Actions: <https://github.com/features/actions>
- 原始 README 與 metadata: `raw/2026-08-28-actions-checkout.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/actions/checkout |
| Stars | ⭐8,729 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-08-28 |

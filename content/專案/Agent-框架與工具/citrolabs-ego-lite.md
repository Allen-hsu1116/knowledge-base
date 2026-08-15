---
title: ego lite
slug: citrolabs-ego-lite
created: 2026-08-15
updated: 2026-08-15
stars: 10367
language: JavaScript
topics: [agent-skills, ai-agent, automation, browser, browser-automation, claude-code, codex, hermes-agent, skills, skills-sh]
---

# ego lite

> ⭐10.4k · AI Agent 專用瀏覽器——你和 agent 在同一個瀏覽器裡並行工作，agent 在獨立 Space 跑任務，你的分頁不受干擾

## 快速導航

- 🤖 **Agent 框架** → [[browser-use-browser-use]] · [[alibaba-page-agent]]
- 🛠️ **Skill 生態系** → [[agentskills-agentskills]] · [[agent-skills-ecosystem]]
- 🌐 **瀏覽器自動化** → [[ChromeDevTools-chrome-devtools-mcp]] · [[CloakHQ-CloakBrowser]]

## 是什麼

ego lite 是一款專為 AI agent 設計的瀏覽器，讓你和你 的 agent 在同一個瀏覽器裡並行工作。你的 agent 在自己的 Space 裡跑瀏覽器任務，你的分頁保持不受干擾，任務用更少的 token 更快完成。

現有的工具如 Browser-Use 和 agent-browser 是瀏覽器自動化框架——它們需要一個單獨的瀏覽器來驅動，登入狀態從無法乾淨地傳遞，而且你和 agent 最後會在同一個分頁上搶來搶去。ego lite 從一開始就是為「你們兩個」共享而設計的單一瀏覽器。不需要額外設定，agent 隨時可以透過 `ego-browser` 存取你真實的登入狀態和分頁。

核心設計理念是「code base, not CLI base」——ego lite 把瀏覽器能力包裝成 JavaScript 函數讓 agent 直接呼叫，agent 可以把多步驟任務組合成單一輸出，而不是陷入「呼叫兩個指令、看結果、再呼叫兩個」的迴圈。相比傳統 CLI 方式，複雜工作流最多快 2.5 倍，成功率更高，工具呼叫次數更少。

## 核心特色

- **Code base 而非 CLI base**：瀏覽器能力以 JavaScript 函數暴露給 agent，多步驟任務合成單一輸出，比傳統 CLI 方式快 2.5 倍且 token 更少
- **獨立 Space 隔離**：每個 agent 有自己完全隔離的 Space，你在前面瀏覽、agent 在背景工作，互不干擾
- **多 Space 平行工作**：多個 agent 同時在不同 Space 跑任務——Claude Code 在 10 個 Space 豐富 10 條線索，Codex 在另外 5 個爬競品網站
- **業界最強頁面快照**：kernel 級客製化產出最高品質的頁面快照（text model 用來「看」網頁的視圖），可靠處理深層巢狀 iframe
- **ego-browser Skill 連接層**：任何 agent CLI（Claude Code、Codex、Cursor）都能透過 `ego-browser` 驅動，暴露 snapshot/fill/click/wait/navigate/capture 等工具
- **Chrome 資料繼承**：首次啟動可選擇遷移 Chrome 資料，agent 直接繼承你的登入、cookie、擴充功能和書籤
- **經驗積累**（開發中）：將成功操作蒸餾為可重用工具和工作流，類似任務最多快 5 倍

## 怎麼用

```bash
# 方式一：下載 macOS App（Apple Silicon 或 Intel）
# https://cdn.ego.app/setup/macos/arm64/egolite-Y7MbxKIuhzFB.dmg

# 方式二：用 npx 安裝 ego-browser skill
npx skills add citrolabs/ego-lite

# 方式三：讓你的 agent 自己安裝
# 在 agent CLI 貼上：
# Set up ego lite for me: https://github.com/citrolabs/ego-lite
# Read `skills/ego-browser/references/install.md` and follow the steps

# 首次啟動時選擇遷移 Chrome 資料，agent 就繼承你的登入狀態

# 執行第一個任務——在 agent CLI 輸入：
# /ego-browser follow @ego_agent on x.com for me
```

安裝後 agent 獲得 `ego-browser` skill，包含以下工具：
- **snapshot**：取得頁面快照（text model 的「視覺」）
- **fill**：填寫表單欄位
- **click**：點擊元素
- **wait**：等待條件
- **navigate**：導航到 URL
- **capture**：擷取頁面截圖

## 跟其他方案的關係

- **Browser-Use**：瀏覽器自動化框架，需要單獨瀏覽器驅動；ego lite 自帶瀏覽器且共享登入狀態
- **agent-browser (Vercel)**：同為框架，不自帶瀏覽器；ego lite 提供完整瀏覽器體驗
- **ChatGPT Atlas / Perplexity Comet**：AI 瀏覽器但只允許內建 agent 驅動；ego lite 開放任何外部 agent
- **Chrome DevTools MCP**：MCP 協議操控 Chrome；ego lite 是獨立瀏覽器，不依賴 Chrome
- **Page Agent**：Chrome 擴充的 in-page GUI agent；ego lite 是完整瀏覽器
- **CloakBrowser**：反偵測隱私瀏覽器；ego lite 專注 agent 並行工作

| 能力 | ego lite | Browser-Use | agent-browser | ChatGPT Atlas | Perplexity Comet |
|---|:---:|:---:|:---:|:---:|:---:|
| 平行多工 | ✓ | — | — | — | — |
| 可重用 Skill | ✓ | — | — | — | — |
| 繼承 Chrome 資料 | ✓ | — | — | ✓ | ✓ |
| 同瀏覽器獨立空間 | ✓ | — | — | — | — |
| 外部 Agent 可驅動 | ✓ | ✓ | ✓ | — | — |
| 資料本地儲存 | ✓ | ✓ | ✓ | — | — |
| 免費 | ✓ | ✓ | ✓ | — | — |

## 相關概念

← [[browser-use-browser-use]] · [[agentskills-agentskills]] · [[ChromeDevTools-chrome-devtools-mcp]] · [[alibaba-page-agent]] · [[CloakHQ-CloakBrowser]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/citrolabs/ego-lite>
- 文件: <https://lite.ego.app/document/>
- 原始 README: `raw/2026-08-15-citrolabs-ego-lite.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | citrolabs/ego-lite |
| Stars | ⭐10.4k |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-08-15 |
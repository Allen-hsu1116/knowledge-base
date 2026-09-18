---
title: "BrowserSkill"
slug: Tencent-BrowserSkill
created: 2026-09-18
updated: 2026-09-18
stars: 4148
language: zh-TW
topics: ["AI-Skills", "computer-use-agent", "AI-Agent"]
---

# BrowserSkill

> ⭐4.1k · 以 CLI、daemon 與擴充功能，讓 Agent 使用已登入的真實瀏覽器

## 快速導航

- [[AI-Skills]]
- [[computer-use-agent]]
- [[AI-Agent]]

## 是什麼

BrowserSkill 把具備 shell 能力的 Agent 接到使用者已登入的瀏覽器。它由本機 bsk CLI／daemon 與瀏覽器擴充組成，另提供 Skill 教導宿主 Agent 正確操作。

一般任务在可見的獨立 Agent Window 進行；要使用既有個人分頁時，需明確借用並在完成後歸還。這種設計重點是與人共用登入狀態而減少互相干擾，不是替模型增加推理能力。

README 列有 Cursor、Claude Code、Codex 等多種宿主。是否能安全使用真實帳號，仍取決於任務授權、擴充設定、網頁提示注入防護及人類確認，不能把登入狀態視為無限制操作許可。

## 核心特色

- **登入狀態重用**：不必為每個任務重新建立測試帳號。

- **獨立 Agent Window**：讓自動化與使用者工作視窗分離。

- **bsk CLI**：shell-capable Agent 可操作，不綁定單一模型。

- **Human-in-the-loop**：遇登入、驗證碼或確認步驟可請人接手。

- **受管 Skill**：支援宿主選擇與同步，保留自訂或本地修改。

- **連線診斷**：doctor 檢查連線；Skill 發現與實際讀頁仍需分別確認。

## 怎麼用

### 安裝與啟動

macOS/Linux 範例：下載並審閱腳本；CLI、瀏覽器擴充及 Skill 是分開的安裝步驟。

```bash
curl -fsSL https://raw.githubusercontent.com/Tencent/BrowserSkill/main/install.sh -o bsk-install.sh
# 審閱後再執行
sh bsk-install.sh
export PATH="${BSK_INSTALL_DIR:-$HOME/.local/bin}:$PATH"
bsk --version
bsk install-skill
bsk doctor
```

### 使用流程

1. 從 Chrome 或 Edge 商店安裝官方 BrowserSkill 擴充。
2. install-skill 只選擇需要的宿主；多 profile 環境先核對目標路徑。
3. 開始新 Agent session，確認技能可用，讀取 example.com 後停止 BrowserSkill session。

### 限制與注意

- 借用分頁確認與人類求助是兩個獨立設定，README 表示預設開啟。
- doctor 通過不保證 Skill 已安裝；登入牆與付款等高風險操作仍需人工。
- 本次只收錄文件，沒有安裝擴充、變更瀏覽器或借用個人分頁。

## 跟其他方案的關係

以下是依功能分層的編輯比較，不是實测效能排名。

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| BrowserSkill | 真實登入瀏覽器的工具連接層 | CLI＋擴充＋Skill |
| 獨立測試瀏覽器 | 分離的自動化環境 | 通常另處理登入與個人設定 |
| Agent runtime | 任務規劃與工具選擇 | BrowserSkill 為其提供工具，不取代 runtime |

## 相關概念

← [[AI-Skills]] · [[computer-use-agent]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/Tencent/BrowserSkill)
- [官方 README](https://github.com/Tencent/BrowserSkill/blob/main/README.md)
- 原始快照：`raw/2026-09-18-Tencent-BrowserSkill.md`


---

| 欄位 | 內容 |
|---|---|
| GitHub | [Tencent/BrowserSkill](https://github.com/Tencent/BrowserSkill) |
| Stars | 4,148（2026-09-18 擷取） |
| License | MIT |
| Language | TypeScript（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-09-18 |

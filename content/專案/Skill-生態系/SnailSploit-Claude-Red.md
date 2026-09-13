---
title: Claude-Red
slug: SnailSploit-Claude-Red
created: '2026-09-13'
updated: '2026-09-13'
stars: 3598
language: zh-TW
topics:
- AI-Skills
- pentesting
- prompt-security
- AI-Agent
---

# Claude-Red

> ⭐3.6k · 以 SKILL.md 封裝資安研究與授權紅隊方法的 Claude 技能庫，重點是領域知識而非獨立掃描引擎。

## 快速導航

- [[AI-Skills]] — 相關概念與其他實作
- [[pentesting]] — 相關概念與其他實作
- [[prompt-security]] — 相關概念與其他實作
- [[AI-Agent]] — 相關概念與其他實作

## 是什麼

Claude-Red 是供 Claude Skills 系統使用的資安方法論集合，每個技能以 SKILL.md 描述特定領域的知識、工具與工作方式。README 列出的用途包含獲授權紅隊評估、bug bounty 分流、安全研究、CTF 與訓練。

它透過技能與對話觸發條件向 Agent 提供領域上下文，而不是自行運作的漏洞掃描平台。技能內容涉及 Web、身分驗證、雲端、無線、容器、供應鏈與 AI 安全等領域，因此需要逐項審閱、限制工具權限與指定測試範圍，不能因安裝了文件就視為結果可靠。

本頁只記錄公開 README 的封裝方式、安裝介面與安全邊界，不複製利用 payload 或攻擊步驟。將方法庫用於教學和防禦評估，與讓 Agent 對真實第三方系統自主執行，是不同風險等級的使用情境。

## 核心特色

- **結構化技能封裝**
  以 SKILL.md 承載領域方法，可作為人工閱讀材料或 Agent 的技能上下文。

- **領域分類**
  依 Web、Auth、Cloud、Wireless、AI Security 等類別組織；實際數量應以當時檔案樹為準。

- **按需載入設計**
  README 描述依對話觸發載入匹配技能；具體行為仍取決於宿主 Claude／Agent 的技能支援。

- **多種匯入入口**
  提供 git clone、稀疏簽出、手動貼入，以及安裝腳本入口，可按範圍選擇。

- **研究與報告用途**
  目錄含快速分流、報告與教學相關內容，可優先用於整理檢查清單與解釋風險。

## 怎麼用

### 環境與安裝

先把 repository 下載到一般審閱目錄，不直接載入具完整工具權限的 Agent。下列 clone 只取得資料；install.sh 僅在完成審查、確認目標目錄並備份後才由使用者執行。

```bash
git clone https://github.com/SnailSploit/Claude-Red.git claude-red-review
cd claude-red-review
# 以下為官方安裝入口；審查、備份與確認後才執行
# ./install.sh --target ~/.claude/skills
```

### 使用流程

1. 先閱讀 README、授權與想使用的 SKILL.md，拒絕將來源文件中的指令當成自動授權。
2. 確認宿主支援的技能路徑與載入方式，只匯入必要範圍；不要直接把全部高風險技能載入日常助理。
3. 優先在自有靶場或 CTF 使用，要求人類審核所有網路活動與系統變更，保留工具輸出及可重現證據。

### 限制與注意事項

README 徽章／分類數是文件聲明，本頁沒有對完整技能樹做數量或效果驗證。本次未 clone 執行專案、未安裝技能、未測試任何目標；匯入命令為文件示例，實際相容性需在選定 Claude 版本驗證。

## 跟其他方案的關係

以下依文件描述做定位比較，不是實測效能排行。

| 方案 | 核心定位 | 選擇重點 |
|---|---|---|
| Claude-Red | 資安領域技能文件庫 | 為宿主 Agent 補充方法與上下文，不等於已驗證的漏洞發現 |
| 一般 Agent Skills | 各種任務的可重用操作文件 | 採相同封裝思路，但資安技能需更嚴格權限與作用範圍 |
| 自動化掃描／滲透測試平台 | 工具執行、任務調度與證據管理 | 與文件庫不同層級，仍需授權、環境限制及人工確認 |

安全測試的合規範圍由系統擁有者授權與平台規則決定，技能中的角色設定不能取代授權，也不能保證避免誤報或破壞性操作。

## 相關概念

← [[AI-Skills]] · [[pentesting]] · [[prompt-security]] · [[AI-Agent]]

## 來源

- [GitHub repository](https://github.com/SnailSploit/Claude-Red)
- [本次 README 所在分支](https://github.com/SnailSploit/Claude-Red/blob/main/README.md)
- 原始 README 與來源欄位：`raw/2026-09-13-SnailSploit-Claude-Red.md`
- GitHub metadata 快照：`raw/2026-09-13-SnailSploit-Claude-Red.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/SnailSploit/Claude-Red |
| Stars | 3,598（2026-09-13 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-09-13 |

---
title: GhostTrack
slug: HunxByts-GhostTrack
created: '2026-10-02'
updated: '2026-10-02'
stars: 16404
language: zh-TW
topics:
- privacy
- pentesting
---

# GhostTrack

> ⭐16.4k · IP、電話號碼與帳號名稱的 OSINT 查詢工具；非 LLM 或 AI Agent。

## 快速導航

- [[privacy]] — 相關原理與使用邊界。
- [[pentesting]] — 相鄰技術與應用脈絡。

## 是什麼

GhostTrack 是 Python 終端工具，README 將其定位為 OSINT／資訊蒐集，提供 IP Tracker、Phone Tracker、Username Tracker 三種選單。它把不同查詢入口集中在同一個 CLI，而不是訓練或呼叫語言模型。

此專案來自 GitHub Trending 候選，收錄於一般應用作為相鄰工具，不代表它屬於 LLM 生態。README 使用「track location」措辭，但沒有證據可據此宣稱能取得手機即時 GPS、精確住址或持有人身分。查詢所得資料仍須核實，僅限自己的資料或獲得明確授權的範圍。

## 核心特色

- **IP 查詢入口**：README 展示 IP Tracker 選單，便於集中查閱 IP 相關資訊。

- **電話號碼資訊**：提供 Phone Tracker；不能將資訊查詢等同即時追蹤手機。

- **帳號名稱查詢**：Username Tracker 用於社群帳號相關查找，同名不代表同一人。

- **Python CLI**：以 GhostTR.py 作為入口，依 requirements.txt 安裝相依套件。

- **多環境指引**：README 分別列出 Debian Linux 與 Termux 的前置需求。

## 怎麼用

### 安裝

以下為文件指令，並非本次任務的執行紀錄。

```bash
git clone https://github.com/HunxByts/GhostTrack.git
cd GhostTrack
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python GhostTR.py
```

### 使用流程

1. 先閱讀原始碼與相依套件，確認可能聯繫哪些第三方服務。

2. 只用自己的 IP、電話或帳號進行功能驗證，不對他人展開未授權蒐集。

3. 將輸出視為待驗證線索，不將號碼資料或 IP 區域當作精確位置。

4. 本次只進行文件收錄，沒有安裝或執行查詢。

### 限制與注意事項

- 根目錄沒有 LICENSE，GitHub metadata 的 license 亦為 null；公開可讀不等於授予重製散布權。

- README 未提供準確率、服務可用性或隱私保證；不得推定其具備。

## 跟其他方案的關係

以下為依功能定位整理的比較，不是效能排名。

| 方案 | 定位 | 適用差異 |
|---|---|---|
| GhostTrack | 手動 OSINT 選單 | 非 AI，查詢結果需驗證 |
| 人工公開資料查核 | 逐一檢查原始來源 | 較費時，但可掌握證據與脈絡 |
| AI 滲透測試 Agent | 以模型規劃與使用安全工具 | 功能範圍不同，不可把 GhostTrack 誤稱 Agent |

## 相關概念

← [[privacy]] · [[pentesting]]

## 來源

- GitHub：https://github.com/HunxByts/GhostTrack
- 原始 README 快照：`raw/2026-10-02-HunxByts-GhostTrack.md`
- Stars 與程式語言為 2026-10-02 GitHub API 快照；功能描述以當日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/HunxByts/GhostTrack |
| Stars | 16,404 |
| License | 未提供 LICENSE（不應假定可自由再授權） |
| Language | Python |
| 收錄日期 | 2026-10-02 |

---
title: "App Store Compliance Playbook"
slug: mjmirza-app-store-compliance
created: 2026-11-20
updated: 2026-11-20
stars: 1842
language: zh-TW
topics: ["AI-Skills", "Coding-Agent-CLI"]
---

# App Store Compliance Playbook

> ⭐1.8k · 將行動應用上架規範整理為 playbook、掃描 guard 與 Coding Agent hooks。

## 快速導航

- [[AI-Skills]]
- [[Coding-Agent-CLI]]

## 是什麼

此專案整理 Apple App Store 與 Google Play 的拒件模式、檢查清單及對應修正方法。它提供可單獨執行的 shell guard，也能安裝到多種 Coding Agent，在提交命令前檢查重大風險。

核心價值是把提交前檢查提早放進開發流程，而不是保證通過商店審查。程式掃描不能看見開發者帳戶、合約、實際後端可用性及所有 listing 狀態，仍須配合人工清單與官方政策查核。

## 核心特色

- 一次性掃描：以 git 與 bash 取得 playbook，直接對 app 目錄執行 guard。

- 明確狀態：BLOCKED、CLEAR 與 NOT CHECKED 區分風險及未完成檢查。

- 跨 Agent 整合：針對 Claude Code、Codex、Gemini CLI 等提供不同 hooks 或 skills。

- 安裝驗證：doctor 與 Install verified 用於檢查阻擋流程，不等於 App Store 核准。

- 資料與人工清單：涵蓋隱私、權限、展示帳號及無法靜態判定的帳戶準備。

## 怎麼用

### 安裝與起步

```bash
git clone https://github.com/mjmirza/app-store-compliance ~/repositories/app-store-compliance
bash ~/repositories/app-store-compliance/agent-os/hooks/app-store-compliance-guard.sh "/path/to/your/app"
```

以上是取得工具與一次性掃描，不會安裝 Agent hooks。若要常駐攔截，先審查 scripts/install.sh 的 --dry-run 輸出、備份設定，再選擇指定工具安裝，避免直接 --tool all。

### 使用與驗證邊界

授權不是一般 MIT：LICENSE 指向 ORA 2.3，超過營收門檻有額外條件，AI 訓練另需 Compute 授權。遵循當前官方政策，不以 README 成功案例推論通過率。

本頁是官方文件閱讀與收錄結果，未在本機安裝或實測此專案。

## 跟其他方案的關係

下表比較工作層次，不是效能排名或替代方案的實測結論。

| 方案 | 定位 | 選擇時的界線 |
|---|---|---|
| 本專案 guard | 上架前風險與命令攔截 | 靜態分析存在可見性限制 |
| 一般 lint／單元測試 | 程式品質與行為 | 不等於商店政策合規 |
| 官方審查與 Console | 平台最終審核 | CLEAR 不能取代正式審核 |

## 相關概念

← [[AI-Skills]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub 與 README](https://github.com/mjmirza/app-store-compliance)
- [官方使用文件](https://mjmirza.github.io/app-store-compliance/)
- 原始快照：`raw/2026-11-20-mjmirza-app-store-compliance.md`
- API metadata：`raw/2026-11-20-mjmirza-app-store-compliance.metadata.json`
- [授權條款](https://github.com/mjmirza/app-store-compliance/blob/main/LICENSE)

Stars 是收錄當日快照；安裝方式與功能以官方最新文件為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/mjmirza/app-store-compliance |
| Stars | 1,842 |
| License | LicenseRef-OpenRoots-ORA-2.3（含營收級距與 AI 訓練限制） |
| Language | Shell |
| 收錄日期 | 2026-11-20 |

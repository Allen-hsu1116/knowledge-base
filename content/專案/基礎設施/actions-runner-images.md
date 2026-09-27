---
title: "GitHub Actions Runner Images"
slug: "actions-runner-images"
created: "2026-09-27"
updated: "2026-09-27"
stars: 13300
language: "PowerShell"
topics: ["Coding-Agent-CLI", "harness-engineering"]
---

# GitHub Actions Runner Images

> ⭐13.3k · GitHub／Azure 託管 CI 虛擬機映像的建置來源與預裝軟體清單。

## 快速導航

- [[Coding-Agent-CLI]] — 對應的背景概念與延伸閱讀。
- [[harness-engineering]] — 對應的背景概念與延伸閱讀。

## 是什麼

actions/runner-images 保存建立 GitHub-hosted runners 與 Azure Pipelines Microsoft-hosted agents VM 映像的原始碼。它說明可用映像、作業系統標籤、軟體清單、更新與汰換政策，是理解 CI 環境的重要來源。

它不是 Runner 執行程式本身，也不是安裝後便能自動託管 GitHub Actions 的服務。對 Coding Agent 而言，价值在於解釋測試環境與工具版本差異；LLM 本身、任務規劃與權限控制則由其他系統提供。

## 核心特色

### 1. 多作業系統映像

README 以 Ubuntu、macOS、Windows 與架構列出可用標籤。

### 2. 預裝軟體透明

各映像有獨立軟體清單，能核對建置工具與版本。

### 3. 標籤遷移公告

-latest 可能逐步切換 OS，固定版本標籤可避免這一類遷移。

### 4. 更新與生命週期

通常每週更新軟體，並公告 Beta、GA、deprecation 與 brownout。

### 5. 自建映像入口

官方另有 VM／Azure 資源建置指南，需自行準備雲端資源與成本。

## 怎麼用

使用託管 Runner 不需要安裝這個 repo；若要研究或自建映像，可先取得建置來源。

```bash
git clone https://github.com/actions/runner-images.git
cd runner-images
# 自建 VM 請依 docs/create-image-and-azure-resources.md
# 複製 repo 不會自動建立雲端 VM 或註冊 Runner。
```

### 使用前檢查

- 一般 workflow 透過 runs-on: ubuntu-24.04 等標籤選擇執行環境。
- 固定 OS 標籤不等於固定全部軟體版本；還應固定依賴、action commit 或容器 digest。
- GitHub-hosted 環境與自架 Runner 的權限、秘密資訊及隔離條件不同，不應混用信任假設。

## 跟其他方案的關係

以下比較為依功能定位的編輯整理，不是實測效能排名。

| 方案 | 定位 | 適用情況 |
|---|---|---|
| runner-images | VM 映像建置與軟體清單 | 核對 CI 環境或研究自建映像 |
| Runner 執行程式 | 接收及執行 Actions jobs | 是不同責任層，不由 clone 映像 repo 取代 |
| Agent Harness | 編排模型、工具及驗證迴圈 | 可把 CI 當驗證工具，但不等於 CI 映像 |

README 的可用標籤與軟體清單會變動；本頁是收錄日快照，不保證往後 -latest 的內容不變。

## 相關概念

← [[Coding-Agent-CLI]] · [[harness-engineering]]

## 來源

- GitHub：https://github.com/actions/runner-images
- README：https://github.com/actions/runner-images/blob/main/README.md
- 原始快照：`raw/2026-09-27-actions-runner-images.md`
- https://github.com/actions/runner-images/blob/main/docs/create-image-and-azure-resources.md

---

| 項目 | 值 |
|---|---|
| GitHub | https://github.com/actions/runner-images |
| Stars | 13,300（2026-09-27 快照） |
| License | MIT |
| Language | PowerShell（GitHub 主要語言） |
| 收錄日期 | 2026-09-27 |

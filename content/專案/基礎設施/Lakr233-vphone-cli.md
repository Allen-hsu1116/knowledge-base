---
title: "vphone-cli"
slug: "Lakr233-vphone-cli"
created: "2026-09-17"
updated: "2026-09-17"
stars: 13343
language: "Swift"
topics: ["computer-use-agent", "sandbox"]
---

# vphone-cli

> ⭐13.3k · Swift · 以 Apple 虛擬化研究基礎設施啟動虛擬 iPhone，提供可程式化測試控制。

## 快速導航

- [[computer-use-agent]]
- [[sandbox]]

## 是什麼

vphone-cli 使用 Apple Virtualization.framework 與 PCC research VM 基礎設施啟動虛擬 iPhone。專案把韌體準備、虛擬機管理與啟動整合成 CLI，主要定位是研究和測試環境，而不是一般手機管理 App。

它與 LLM 的交集在 automation 介面：host control socket 可提供截圖、觸控、滑動、硬體按鍵與剪貼簿操作，每個動作能回傳截圖，供 AI 驅動的端對端測試使用。README 另外連向外部 vphone-mcp wrapper；那不是本 repo 自帶的 LLM。

環境門檻和風險非常重要：需要 Apple Silicon、macOS 15 以上、Xcode/iOS SDK，且涉及 SIP/AMFI 限制放寬。不能把 guest 虛擬化等同於主機安全不受影響，因此不適合在保存正式憑證的日常主機直接嘗試。

## 核心特色

- **虛擬機生命週期**：CLI 管理建立、啟動、狀態查詢與設定，並提供 JSON 列表輸出。

- **可攜與複製**：支援 APFS clone、匯出及匯入，方便保存研究環境。

- **韌體流程整合**：將下載、準備、restore 與首次啟動等步驟包裝成可重跑工作流程。

- **視覺操作自動化**：control socket 提供截圖、touch、swipe 與按鍵等測試動作。

- **外部 MCP 橋接**：README 指向 vphone-mcp，作為 Agent 使用控制介面的外部包裝。

## 怎麼用

以下只摘錄套件安裝與說明查詢。真正啟動前須在隔離研究機閱讀官方 prerequisites，確認韌體使用條件、系統保護變更與復原流程；本頁不要求關閉任何主機保護。

```bash
brew install zqxwce/tap/vphone-cli
vphone-cli --help
vphone-cli vm list --json
```

### 建議操作流程

1. 確認使用實體 Apple Silicon Mac；README 指出巢狀 macOS VM 無法執行該研究 guest。
2. 先規劃獨立測試資料及 ~/.vphone/ 儲存空間，再閱讀 upstream 的完整流程。
3. 若用於 Agent 測試，限制 control socket 和外部 MCP 的存取，避免把真實帳號、憑證或敏感 App 放入研究環境。

### 使用限制與驗證邊界

不同 firmware variant 有不同程度的保護繞過，且主機本身可能要降低防護。這不是可無條件採用的安全沙箱，也不能把上游相容表視為本機已驗證。

本次僅完成來源擷取與文件整理，未安裝、啟動或評測此專案。

## 跟其他方案的關係

| 方案 | 主要定位 | 適用與限制 |
|---|---|---|
| vphone-cli | 基於研究 guest 的虛擬 iPhone | 適合專門研究與可程式化裝置測試 |
| 一般 App 開發模擬器 | 常規開發與 UI 測試工具 | 應依測試目標評估是否已足夠 |
| 實體測試手機 | 真實硬體、系統與感測器 | 硬體相關行為仍需實機驗證 |

三者的差異是測試覆蓋與信任邊界，不是誰全面取代誰。與 Computer Use Agent 的關係是提供可操控環境，而非提供推理模型。

## 相關概念

← [[computer-use-agent]] · [[sandbox]]

## 來源

- GitHub：https://github.com/Lakr233/vphone-cli
- README 快照：`raw/2026-09-17-Lakr233-vphone-cli.md`
- Metadata 快照：`raw/2026-09-17-Lakr233-vphone-cli-metadata.json`
- https://github.com/pluginslab/vphone-mcp

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Lakr233/vphone-cli |
| Stars | ⭐13,343（2026-09-17 擷取） |
| License | MIT |
| Language | Swift |
| 收錄日期 | 2026-09-17 |

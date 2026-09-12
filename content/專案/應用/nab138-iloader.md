---
title: iloader
slug: nab138-iloader
created: '2026-09-12'
updated: '2026-09-12'
stars: 2908
language: TypeScript
topics:
- idevice
- ios
- sideloading
- sidestore
---

# iloader

> ⭐2.9k · TypeScript · 簡化 iOS 側載、配對檔案與開發憑證管理的桌面工具；非 LLM 專案。

## 快速導航

- [[free-software]]
- [[productivity]]

## 是什麼

iloader 是用於向 iPhone／iPad 側載應用的桌面程式。主要情境為安裝 SideStore 或其他 IPA，同時處理配對檔案與憑證，減少手動操作各種工具的負擔。

應用建立在 Tauri 上，README 列出的開發依賴包括 Bun 或 Node.js，以及 Rust。装置通訊與應用安裝分別結合 idevice、isideload 等元件，並不是 AI Agent 執行框架。

此專案來自本日一般 Trending 候選，作為桌面生產力工具補充收錄。它需要接觸 Apple ID、配對檔案和開發憑證，使用前應審核來源與權限，不把這些資料提供給不受信任服務。

## 核心特色

- SideStore 安裝流程：支援 SideStore，或 LiveContainer 加 SideStore 的組合。

- 任意 IPA 匯入：提供使用者選擇應用套件的側載入口。

- 配對檔案管理：可處理 rppairing 與 lockdown pairing，並支援相關應用的配對需求。

- 錯誤建議：針對常見失敗提供處理建議，另可檢視診斷日誌。

- 憑證管理：可查看、撤銷開發憑證與 App IDs。

## 怎麼用

一般使用者從官方 Releases 安裝對應平台版本。以下是 README 的原始碼建置路徑，需要 Rust 與 Bun；此頁不代表已在本機執行安裝。

```bash
git clone https://github.com/nab138/iloader.git
cd iloader
bun i
bun tauri build
```

1. 確認 usbmuxd：macOS 內建，Windows 依 README 安裝 iTunes，Linux 視发行版補齊。
2. 使用 USB 連接裝置，開啟 iloader 並由本人登入 Apple ID。
3. 選擇安裝 SideStore 或匯入 IPA；只安裝可信且有權使用的套件。
4. 操作完成後檢查裝置端狀態；遇到問題先查看日誌，分享前移除敏感資訊。

### 使用限制與驗證

- README 的 Future Plans 包含自動刷新應用與帳號便利功能，不應描述為已完成。

- MIT 只覆蓋程式碼；名稱、logo、品牌和媒體素材有獨立條件。

- README 指定官方 repo 與 iloader.app 為官方下載入口；Homebrew、AUR、COPR 屬社群維護。

## 跟其他方案的關係

下表為依本次來源整理的定位比較，不是實測效能排名。

| 方案 | 主要定位 | 關係與邊界 |
|---|---|---|
| iloader | 桌面側載與配對操作介面 | 降低手動操作成本 |
| SideStore | 被安裝到裝置上的應用 | iloader 的主要安裝目標之一 |
| idevice／isideload | 裝置通訊與安裝元件 | iloader README 列出的底層依賴 |

## 相關概念

← [[free-software]] · [[productivity]]

## 來源

- GitHub：https://github.com/nab138/iloader
- README 原始快照：`raw/2026-09-12-nab138-iloader.md`
- https://iloader.app
- https://github.com/nab138/iloader/releases
- https://github.com/nab138/iloader/blob/main/LICENSE-BRANDING

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/nab138/iloader |
| Stars | 2,908（2026-09-12 快照） |
| License | MIT（程式碼）；品牌與媒體素材另有限制 |
| Language | TypeScript |
| 收錄日期 | 2026-09-12 |

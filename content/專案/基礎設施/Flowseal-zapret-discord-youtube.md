---
title: zapret-discord-youtube
slug: Flowseal-zapret-discord-youtube
created: '2026-09-13'
updated: '2026-09-13'
stars: 33209
language: zh-TW
topics:
- privacy
- free-software
---

# zapret-discord-youtube

> ⭐33.2k · 包裝 zapret／WinDivert 的 Windows 網路連線工具，提供 Discord、YouTube 等服務的 DPI 規避策略；非 LLM 專案。

## 快速導航

- [[privacy]] — 相關概念與其他實作
- [[free-software]] — 相關概念與其他實作

## 是什麼

zapret-discord-youtube 是 Flowseal 維護的 Windows 批次檔與執行檔整合包，底層使用 zapret 的 winws 及 WinDivert 封包攔截能力。它整理多種策略、網域與 IP 清單，讓使用者在受限網路環境中評估 Discord、YouTube 等服務的連通性。

本專案不是 VPN、代理伺服器、LLM 框架或 Agent 工具。DPI 規避改變的是封包被中間設備判讀的方式，不能据此宣稱匿名、隱藏來源 IP 或額外加密所有流量；本頁在隱私概念下將它視為邊界比較案例。Trending 命中只代表熱門來源，不代表 AI 關聯。

README 強調策略是否有效取決於網路條件，而且可能隨時間失效。WinDivert 具備攔截流量能力，可能觸發防毒警示；『可能是誤報』不等於任何下載檔都安全，應核對官方 release、來源與雜湊，不應直接關閉保護。

## 核心特色

- **多組策略入口**
  general.bat 與其他 general 變體提供手動測試入口，選擇需依所在網路實測。

- **服務管理選單**
  service.bat 提供 Install Service、Remove Services 與 Check Status 等功能，涉及 Windows 服務狀態。

- **診斷與測試**
  內建 Run Diagnostics 和 Run Tests，協助區分環境問題與策略可用性；不是安全性認證。

- **清單式範圍控制**
  使用者網域清單、IP set 與排除清單可控制影響範圍，避免不必要地改動其他服務流量。

- **更新與遊戲過濾**
  可检查版本、更新 IPSet、切換 Game Filter；擴大過濾範圍可能使原本正常的應用失效。

## 怎麼用

### 環境與安裝

僅在自己管理或獲授權的 Windows 電腦與網路上評估，並遵守所在地規則。從官方 Releases 下載 ZIP、檢查来源後解壓到不含特殊字元的路徑；下列僅為安裝包解壓示例，不會自動啟動策略。

```powershell
# release.zip 代表已從官方 Releases 下載並檢查的檔案
Expand-Archive -LiteralPath .\release.zip -DestinationPath C:\Tools\zapret-review
# 檢視解壓結果，不自動安裝服務
Get-ChildItem C:\Tools\zapret-review
```

### 使用流程

1. 閱讀解壓後 README，先記錄原本能正常連線的應用與網路設定。
2. 若決定測試，依官方說明手動選取策略並檢查結果；不要直接將未驗證策略設為自動啟動。
3. 確認風險與有效性後才考慮 service.bat 的服務安裝功能；異常時依文件停用並還原，不盲目重設整個網路。

### 限制與注意事項

此工作只收錄文件，沒有執行 bat、安裝 WinDivert、改 hosts 或修改本機 DNS。授權檔確認一方程式碼採 MIT，但附帶 WinDivert 有独立 LGPLv3／GPLv2 義務。

## 跟其他方案的關係

以下依文件描述做定位比較，不是實測效能排行。

| 方案 | 核心定位 | 選擇重點 |
|---|---|---|
| Flowseal 整合包 | Windows 策略、清單與管理選單 | 需要現成操作入口時參考，但有效性依網路而異 |
| bol-van/zapret-win-bundle | README 指向的上游 Windows 方案 | 核對底層工具與二進位來源，或參考上游文件 |
| VPN／代理 | 經由中介節點或隧道傳輸 | 與本機封包處理層不同，隱私、信任與路由需求需分開評估 |

連通性改善與隱私保護是不同目標；不能用『成功連線』推論匿名性或端點安全。

## 相關概念

← [[privacy]] · [[free-software]]

## 來源

- [GitHub repository](https://github.com/Flowseal/zapret-discord-youtube)
- [本次 README 所在分支](https://github.com/Flowseal/zapret-discord-youtube/blob/main/README.md)
- 原始 README 與來源欄位：`raw/2026-09-13-Flowseal-zapret-discord-youtube.md`
- GitHub metadata 快照：`raw/2026-09-13-Flowseal-zapret-discord-youtube.metadata.json`
- https://github.com/Flowseal/zapret-discord-youtube/blob/main/LICENSE.txt
- https://github.com/Flowseal/zapret-discord-youtube/releases/latest

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Flowseal/zapret-discord-youtube |
| Stars | 33,209（2026-09-13 快照） |
| License | MIT；WinDivert 另採 LGPLv3 或 GPLv2 |
| Language | Batchfile |
| 收錄日期 | 2026-09-13 |

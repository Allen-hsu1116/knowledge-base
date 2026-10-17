---
title: LinkSwift
slug: hmjz100-LinkSwift
created: 2026-10-17
updated: 2026-10-17
stars: 23702
language: JavaScript
topics: [userscript, tampermonkey, aria2, baidu-netdisk, aliyun-drive]
---

# LinkSwift

> ⭐23.7k · 透過瀏覽器使用者腳本取得網盤下載連結，串接下載器並調整操作介面。

## 快速導航

- [[workflow-automation]] — 輔助檔案下載流程，不是自主 Agent。
- [[free-software]] — 開源程式授權與下載內容權利是不同問題。

## 是什麼

LinkSwift 是 JavaScript 網盤使用者腳本，由「網盤直鏈下載助手」修改而來。它在網盤網頁提供下載連結取得、介面調整與多種下載器整合，協助不便使用官方客戶端的使用者處理有權存取的檔案。

GitHub metadata 的描述仍列八種網盤，但目前預設 `dev` 分支 README 已列九種，包含新增的光鴨雲盤。正式版與開發版不能混為一談；README 將 `main` 連結列為正式版，`dev` 列為可能不穩定的金絲雀版。

本專案由一般 GitHub Trending 帶入候選，並非 LLM、MCP 或 AI Agent 工具。作者明確表示下載連結依服務商公開 API 取得，沒有宣稱破解限速；是否更快仍受服務策略、帳戶條件及網路環境影響。

## 核心特色

- **多網盤適配**：README 涵蓋百度、阿里、移動、天翼、迅雷、光鴨、夸克、UC 與 123 雲盤。
- **下載器整合**：更新紀錄提到 Aria2、IDM、AB Download Manager 與比特彗星推送。
- **介面調整**：提供主題、深色模式及下載彈窗等網頁操作改善。
- **連結與命令複製**：可協助取得連結及下載命令，但功能細節依網盤與版本不同。
- **多來源發布**：README 提供 GitHub、腳本貓與 OpenUserJS 等安裝入口。
- **分支區分**：正式版與金絲雀版分開，更新前應核對支援範圍及穩定性。

## 怎麼用

先在支援的瀏覽器安裝可信來源的使用者腳本管理器，再透過 README 的正式版連結進入安裝確認畫面。下列 macOS 指令只會開啟安裝網址，不是直接執行下載程式；收錄時未安裝任何擴充或腳本。

```bash
# macOS：開啟 README 指定的 main 正式版安裝連結
open 'https://github.com/hmjz100/LinkSwift/raw/main/%EF%BC%88%E6%94%B9%EF%BC%89%E7%BD%91%E7%9B%98%E7%9B%B4%E9%93%BE%E4%B8%8B%E8%BD%BD%E5%8A%A9%E6%89%8B.user.js'
```

其他作業系統可直接從 [README 安裝段落](https://github.com/hmjz100/LinkSwift#安装) 點選正式版來源，交由腳本管理器確認安裝。

### 基本操作流程

1. 核對來源、腳本版本及所需網頁權限。
2. 登入自己有權使用的網盤帳號。
3. 在支援頁面選取檔案，使用下載助手介面取得連結。
4. 依需求選擇直接下載、複製連結或推送至已設定的下載器。
5. 若發生服務端錯誤，先核對網盤政策與版本，不要假定工具能繞過限制。

### 安全與相容性

- Cookie、AccessToken 與帶授權參數的下載連結應視為敏感資訊。
- 不要把帳戶憑證貼到議題、公開日誌或不可信下載服務。
- README 的金絲雀版可能含尚未穩定的變更，不能當作正式版保證。
- 網站樣式與 API 變更可能使腳本失效；Stars 多不代表免審查或永久相容。
- 只下載自己有權存取與使用的內容，並遵守服務條款。

## 跟其他方案的關係

| 方案 | 角色 | 與 LinkSwift 的關係 |
|---|---|---|
| 官方網盤客戶端 | 服務商維護的存取與下載介面 | LinkSwift 是瀏覽器側替代操作途徑，不取代帳戶授權 |
| 網盤直鏈下載助手 | 上游使用者腳本 | README 明示 LinkSwift 基於此修改 |
| Aria2／IDM／AB Download Manager | 接收下載工作並執行傳輸 | 與連結取得腳本互補，不是同一層工具 |
| 工作流編排平台 | 串接跨系統、多步驟流程 | LinkSwift 只輔助下載環節，不等於通用編排或 LLM 推理 |

README 的介紹與版本紀錄是功能依據；這次僅整理文件，沒有驗證各家網盤或下載器的實際可用性。

## 相關概念

← [[workflow-automation]] · [[free-software]]

## 來源

- [GitHub：hmjz100/LinkSwift](https://github.com/hmjz100/LinkSwift)
- [預設 dev 分支 README](https://github.com/hmjz100/LinkSwift/blob/dev/README.md)
- 原始快照：`raw/2026-10-17-hmjz100-LinkSwift.md`
- Metadata：`outputs/2026-10-17-hmjz100-LinkSwift-metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/hmjz100/LinkSwift |
| Stars | 23,702（2026-10-17 快照） |
| License | AGPL-3.0 |
| Language | JavaScript |
| 收錄日期 | 2026-10-17 |

版本快照：README 列正式版 v1.1.3、測試版 v1.1.4；本文不把測試版能力直接視為正式版承諾。

---
title: "MVT（Mobile Verification Toolkit）"
slug: "mvt-project-mvt"
created: "2026-09-22"
updated: "2026-09-22"
stars: 13593
language: "zh-TW"
topics: ["android", "forensics", "forensics-tools", "ios", "mobile", "security"]
---

# MVT（Mobile Verification Toolkit）

> ⭐13.6k · Android／iOS 行動裝置鑑識與間諜軟體跡證分析；非 LLM 工具。

## 快速導航

- [[pentesting]] — 行動鑑識與主動滲透不同；MVT 分析既有跡證，公開 IOC 無命中不能證明裝置安全。
- [[sandbox]] — MVT 是鑑識工具而非沙箱；處理敏感採集與可疑樣本時，隔離屬分析環境的額外責任。

## 是什麼

MVT 是 Amnesty International Security Lab 與社群維護的行動裝置鑑識工具集，協助蒐集與分析 Android、iOS 裝置的可疑跡證。它在 Pegasus Project 背景下公開，面向具數位鑑識及命令列經驗的調查者，而不是一般使用者的一鍵自我診斷程式。

工具可搭配公開入侵指標（IOC）尋找已知間諜軟體活動留下的痕跡；但找不到命中不代表裝置乾淨。官方明確指出，可靠的完整分流與調查需要非公開指標、研究與威脅情報。此專案來自通用 Trending 候選，不應誤標為 LLM 或自主攻擊 Agent。

## 核心特色

- **跨行動平台**：以 mvt-ios、mvt-android 分析對應平台的採集資料。

- **公開 IOC 比對**：支援研究組織公布的已知威脅指標；陰性結果不能證明沒有入侵。

- **共用命令入口**：mvt 提供版本、補全、插件與 download-iocs 等功能。

- **模組擴充**：插件可增加鑑識模組與頂層 CLI 命令，仍須審查來源。

- **版本相容性提醒**：README 警告 v3 合併帶來 breaking changes，依賴輸出格式的腳本需回歸測試。

## 怎麼用

### 安裝與啟動

```bash
uv tool install mvt
mvt
mvt-ios --help
mvt-android --help
```

### 建議使用流程

1. 先取得資料所有人的自由、明確且充分知情同意，再規劃採集與資料保留方式。

2. 依官方平台文件分析合法取得的資料；把原始採集、工具版本、指標版本和結果分開保存。

3. 請由專業調查者解讀命中；若擔心自身裝置遭監控，優先尋求可信任的專家協助。

### 使用邊界

本頁的 sandbox 連結是調查環境隔離的編輯建議，不表示 MVT 自带沙箱。授權不是 MIT：MVT License 1.1 第 3.0 節要求資料所有人的知情同意，涉及隱私、保留及處置政策。

以上指令依官方文件整理；本次只做資料收錄與網站驗證，未安裝或執行此專案。

## 跟其他方案的關係

下表為依功能定位整理的編輯比較，非效能測試。

| 方案 | 主要用途 | 關係與邊界 |
| --- | --- | --- |
| MVT | 分析行動裝置採集資料與 IOC | 查找既有入侵跡證，不是主動漏洞利用 |
| 一般滲透測試 | 在授權範圍主動驗證弱點 | 與事件後鑑識互補，不能互換結論 |
| 沙箱／隔離環境 | 限制分析程序與樣本對主機的影響 | 屬部署防護，不會自動產生鑑識判斷 |

## 相關概念

← [[pentesting]] · [[sandbox]]

## 來源

- [GitHub 專案](https://github.com/mvt-project/mvt)
- [官方補充資料](https://docs.mvt.re/en/latest/)
- 原始 README：`raw/2026-09-22-mvt-project-mvt.md`
- GitHub metadata 快照：`outputs/trending-2026-09-22/mvt-project-mvt.json`
- [MVT LICENSE](https://github.com/mvt-project/mvt/blob/main/LICENSE)：API 的 NOASSERTION 不代表沒有授權條款。

---

| 欄位 | 資訊 |
| --- | --- |
| GitHub | https://github.com/mvt-project/mvt |
| Stars | ⭐13,593（2026-09-22 查詢） |
| License | MVT License 1.1（含知情同意限制） |
| Language | Python（主要程式語言）；本文 zh-TW |
| 收錄日期 | 2026-09-22 |

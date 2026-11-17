---
title: "江山時序（jiangshan-map）"
slug: DeanChensj-jiangshan-map
created: 2026-11-17
updated: 2026-11-17
stars: 6724
language: zh-TW
topics: ["ancient-china", "cartography", "china-map", "chinese-history", "classical-chinese-poetry", "digital-humanities", "gis", "historical-atlas", "historical-map", "interactive-map"]
---

# 江山時序（jiangshan-map）

> ⭐6.7k · 具時間軸、古地名查詢及 MCP／Agent 接口的互動歷史地圖。

## 快速導航

- [[MCP]]
- [[AI-Skills]]
- [[frontend-design]]

## 是什麼

江山時序把中國歷史時段、疆域示意、城市沿革與人物行程呈現在互動式地圖。時間軸及深連結讓使用者從年份、地名或人物進入特定視圖，不必先手工輸入經緯度。

它同時提供 llms.txt、本地 stdio MCP Server 與 Agent Skill，可作歷史文字或詩詞解說的視覺化工具。地圖邊界只是歷史範圍示意，不是精確測繪或權威疆界；介面敘事與資料仍需另行考證。

## 核心特色

### 1. 時間與地理聯動

年份變動可更新時代、政權及疆域示意，並比較前後階段。

### 2. 人物與地名查詢

Trace Place 呈現地名沿革；人物年表可顯示跨年路線。

### 3. 本地 MCP 查詢

提供 inspect_place、inspect_person、search_atlas 三個工具。

### 4. 靜態與嵌入部署

無須建置即可用靜態 HTTP 服務啟動，並可用 iframe 嵌入指定視圖。

## 怎麼用

### 安裝與起步

以下為來源文件的操作入口，並非本次已在主機安裝或執行的紀錄。

```bash
git clone https://github.com/DeanChensj/jiangshan-map.git
cd jiangshan-map
python3 -m http.server 8000
```

### 操作順序

1. 開啟 http://localhost:8000，以年份及地名搜尋確認資料是否符合使用情境。

2. MCP 客戶端可設定 Node 執行 scripts/mcp_server.js，使用絕對路徑。

3. 可透過 year/place 深連結分享視圖；本次未安裝 MCP Server 或驗證歷史資料。

### 使用邊界

- 程式碼與專案自製資料為 GPL-3.0，但 CHGIS 衍生府級邊界僅供學術非商業使用且不得再散布。
- 現代省界另受來源條款約束；含受限圖層的截圖也不能只按 GPL 授權判斷。

## 跟其他方案的關係

以下是依專案定位整理的比較，非效能測試或排名。

| 方案 | 定位 | 選用差異 |
| --- | --- | --- |
| 江山時序 | 可探索的歷史地圖應用 | 包含資料、時間軸、人物及 AI 工具接口。 |
| 純文字 LLM 回答 | 自然語言解說 | 可接地圖查詢降低猜測，但不能免除來源核對。 |
| GeoJSON / GIS 工作流 | 地理資料處理 | 專案可匯出部分圖層；受限圖層不應公開再散布。 |

## 相關概念

← [[MCP]] · [[AI-Skills]] · [[frontend-design]]

## 來源

- GitHub：https://github.com/DeanChensj/jiangshan-map
- README 快照：`raw/2026-11-17-DeanChensj-jiangshan-map.md`
- Metadata 快照：`raw/2026-11-17-DeanChensj-jiangshan-map.metadata.json`


---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/DeanChensj/jiangshan-map |
| Stars | 6,724（2026-11-17 擷取） |
| License | GPL-3.0 |
| Language | JavaScript |
| 收錄日期 | 2026-11-17 |

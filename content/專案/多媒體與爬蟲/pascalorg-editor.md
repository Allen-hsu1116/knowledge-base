---
title: Pascal Editor
slug: pascalorg-editor
created: 2026-09-08
updated: 2026-09-08
stars: 22333
language: zh-TW
topics: [MCP, AI-Agent, 3d, architecture, parametric-design]
---

# Pascal Editor

> ⭐22.3k · 具 MCP 場景工具的 3D 建築編輯器，讓 AI 主機連接可持久化的建築場景。

## 快速導航

- 🔌 [[MCP]] — 透過工具、資源與提示介面連接場景資料。
- 🧠 [[AI-Agent]] — Agent 使用領域工具的應用案例，而非通用 Agent 框架。

## 是什麼

Pascal Editor 是以 React Three Fiber 與 WebGPU 建構的 3D 建築編輯器。它把建築場景拆成 Site、Building、Level、Wall、Slab、Roof、Zone 等結構化節點，並提供選取、編輯工具、場景狀態與渲染系統，適合建立與分享建築專案。

本次收錄的 AI 關聯不是單靠「3D」標籤推測：目前官方 README 明確列出 `@pascal-app/mcp`，用來向 MCP-compatible AI hosts 暴露場景工具、資源、提示及本地儲存；本地 CLI 也會啟動有驗證機制的 MCP 服務。因此可將它視為 Agent 操作建築領域資料的具體應用。

專案採 Turborepo monorepo，分離 core、viewer、editor、nodes、CLI 與 MCP。它並不等於自帶通用 LLM，也不能由 README 推導出符合工程規範的建築設計能力；模型選擇、工具授權與設計成果查核仍需由使用者及專業人員處理。

## 核心特色

- **結構化建築節點**：場景以扁平字典保存節點，再用父子關係描述建築層級，方便查詢與更新。
- **可重用的套件分層**：core 管 schema／狀態／registry，viewer 管渲染，editor 管互動工具，nodes 提供內建節點插件。
- **MCP 領域介面**：將場景工具、資源、提示與儲存提供給相容 AI 主機，不必只靠畫面座標操作。
- **持久化本地工作環境**：CLI 安裝並管理版本化 editor runtime，專案資料存在本地 SQLite 路徑。
- **場景歷史與儲存**：README 記載 Zustand 場景狀態、IndexedDB persist 與 Zundo 的 50 步 undo／redo；此瀏覽器狀態機制與 CLI 的 SQLite 資料路徑應分開理解。
- **可選 capture 擴充**：capture-protocol 和 capture-viewer 分離靜態／即時來源契約與參考渲染層，不是預設必裝核心。

## 怎麼用

### 本地啟動

官方 README 指定 Node.js 22.13 或更新版本。以下命令會建立持久化安裝並啟動背景 editor／MCP 服務，不是單純唯讀預覽；本次收錄沒有執行這些安裝命令。

```bash
node --version
npx @pascal-app/cli editor
```

CLI 會選擇避免衝突的 loopback ports，並將專案放在 `~/.pascal/data/pascal.db`。正式導入前應規劃備份與工作階段權限，不要直接把服務暴露至公網。

### 連接 Agent

依官方本地編輯器文件完成安裝與命令路徑設定後，將相容 Agent 的 MCP 啟動命令設為：

```bash
pascal mcp connect
```

README 明確說明 MCP 服務具驗證機制；憑證與詳細連線設定請依官方文件，不在筆記中猜測金鑰或列出未驗證的設定檔。

### 嵌入自己的 React 應用

```bash
npm install @pascal-app/core @pascal-app/viewer @pascal-app/editor @pascal-app/nodes
```

在掛載 Viewer 前，載入內建節點插件：

```typescript
import { loadPlugin } from '@pascal-app/core'
import { builtinPlugin } from '@pascal-app/nodes'

await loadPlugin(builtinPlugin)
```

## 跟其他方案的關係

下表是用途與架構比較，不是功能完整度或建築設計品質評測。

| 方案 | 主要定位 | 與 Pascal 的差異或互補 |
|---|---|---|
| 一般 3D viewer | 顯示場景與相機互動 | Pascal 額外提供編輯工具、建築節點與 MCP 場景介面 |
| React Three Fiber | React 形式的 Three.js 渲染基礎 | 是 Pascal 的底層構件，不是完整建築編輯器替代品 |
| 通用 GUI Agent | 透過畫面理解與操作介面 | Pascal 的 MCP 提供結構化領域入口，降低純座標操作依賴 |
| 通用 Agent 框架 | 規劃、工具調用與任務執行 | 可當 Pascal MCP 的上游主機，兩者處於不同層 |

## 相關概念

← [[MCP]] · [[AI-Agent]]

## 來源

- GitHub：https://github.com/pascalorg/editor
- README：https://github.com/pascalorg/editor/blob/main/README.md
- 官方本地使用文件：https://editor.pascal.app/docs/developers/local-editor
- 原始快照：`raw/2026-09-08-pascalorg-editor.md`
- Stars、授權與語言取自 2026-09-08 GitHub API；架構及命令取自同日 README。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/pascalorg/editor |
| Stars | 22,333（2026-09-08 快照） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-09-08 |

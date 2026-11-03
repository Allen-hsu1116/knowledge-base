---
title: agent-desktop
slug: vercel-labs-agent-desktop
created: 2026-11-03
updated: 2026-11-03
stars: 9702
language: zh-TW
topics: ["AI-Agent", "computer-use-agent"]
---

# agent-desktop

> ⭐9.7k · 以 OS accessibility tree 與 snapshot refs 操作桌面應用的跨平台 CLI／C library。

## 快速導航
- [[AI-Agent]] — 理解主要概念與應用背景。
- [[computer-use-agent]] — 對照實作機制與技術邊界。

## 是什麼

agent-desktop 是 Vercel Labs 的桌面操作工具，提供 macOS、Windows 與 Linux CLI，以及可程序內呼叫的 C library。它讀取作業系統 accessibility tree，回傳 Agent 能操作的元素與參考識別碼，而不是主要依靠像素匹配。

工具提供觀察、執行與再觀察的介面；真正的規劃迴圈仍由外部 Agent 負責。每次 CLI 呼叫各自執行於獨立程序，JSON envelope 讓呼叫端判斷成功、錯誤及重試條件。

這是可接到既有 Harness 的執行工具，不是自帶模型的完整自主助手，也不是隔離沙箱。預設 headless 限制搶焦點與合成輸入，但仍能透過 accessibility API 改動真實應用，使用者授權與隱私控制不可省略。

## 核心特色

- **Snapshot-scoped refs**：元素 ref 帶有所屬 snapshot；UI 改變後遇到 STALE_REF 或 AMBIGUOUS_TARGET 應重新觀察。

- **結構化輸出**：每個命令回傳 ok 與 data 或 error；只有 retry disposition 標示 safe 才適合自動重試。

- **預設 headless**：ref 動作使用 accessibility API；--headed 才允許實體輸入，並不代表有安全隔離。

- **跨平台能力說明**：macOS 需 Accessibility 授權，Linux 需圖形 session 與 AT-SPI；X11／Wayland 功能有所差異。

- **內建版本對應文件**：skills get desktop／platform 提供與 binary 相符的操作規則；另有 FFI 文件。

## 怎麼用

### 安裝

```bash
npm install -g agent-desktop
agent-desktop version
```

macOS 可執行 `agent-desktop permissions --guide` 查看 Accessibility 授權說明。Finder 僅為 macOS 範例，其他平台使用實際應用名稱。

### 入門流程

```bash
agent-desktop skills get desktop
agent-desktop skills get platform
agent-desktop list-apps
agent-desktop snapshot --app Finder -i
```

先讀取 snapshot，再使用當次輸出的完整 ref 操作，最後重新 snapshot 驗證。不要複製 README 的示範 ref 當作真實識別碼；多視窗時應明確指定 --window-id。

### 使用限制

snapshot、剪貼簿、截圖與 trace 可能含私人資料，不應上傳公開日誌；選配 JEV helper 會向設定的模型提供者送出畫面描述。這次僅收錄文件，未安裝工具或授予桌面權限。

## 跟其他方案的關係

以下為依官方定位整理的用途比較，不是本次實測排名。

| 方案 | 定位 | 選用情境 |
|---|---|---|
| agent-desktop | OS accessibility tree、snapshot refs | 操作具有可存取性元素的桌面應用 |
| [[browser-use-browser-harness]] | CDP 瀏覽器操作 | 主要目標是網頁與瀏覽器狀態 |
| [[trycua-cua]] | 桌面 Agent 與隔離環境路線 | 另需規劃桌面執行環境及沙箱 |
| 純截圖座標操作 | 視覺定位加座標動作 | 可處理部分無 accessibility 元素的畫面，但須另外驗證定位 |

## 相關概念

← [[AI-Agent]] · [[computer-use-agent]]

## 來源

- [GitHub：vercel-labs/agent-desktop](https://github.com/vercel-labs/agent-desktop)
- [README](https://github.com/vercel-labs/agent-desktop/blob/main/README.md)
- 原始快照：`raw/2026-11-03-vercel-labs-agent-desktop.md`
- Metadata：`raw/2026-11-03-vercel-labs-agent-desktop.metadata.json`

資料擷取日：2026-11-03。Stars 為收錄時快照；安裝指令依官方文件整理，並非本次執行記錄。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [vercel-labs/agent-desktop](https://github.com/vercel-labs/agent-desktop) |
| Stars | 9,702 |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-11-03 |

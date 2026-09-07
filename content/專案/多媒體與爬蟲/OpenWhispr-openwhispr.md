---
title: OpenWhispr
slug: OpenWhispr-openwhispr
created: 2026-09-07
updated: 2026-09-07
stars: 7370
language: zh-TW
topics: ["語音辨識", "AI-Agent"]
---

# OpenWhispr

> ⭐7.4k · 將桌面聽寫、會議逐字稿、筆記與語音 AI 助理整合在同一個跨平台應用。

## 快速導航

- [[語音辨識]] — 相關概念與延伸閱讀
- [[AI-Agent]] — 相關概念與延伸閱讀

## 是什麼

OpenWhispr 是面向 macOS、Windows 與 Linux 的桌面語音工具。使用者按全域快捷鍵說話，文字就能貼入游標所在位置；它也能把語音交給 AI 助理處理，而不只產生逐字稿。

它把 Whisper、NVIDIA Parakeet 等語音引擎與 LLM 文字處理、筆記搜尋和會議流程整合起來。轉錄及核心 AI 功能可以選用本地模型或雲端供應商，因此「本地優先」是部署選擇，不代表啟用雲端後資料仍完全留在裝置上。

## 核心特色

- **全域聽寫與翻譯**：快捷鍵錄音、自動貼上，並可用另一組快捷鍵翻譯後輸入。
- **語音 AI 助理**：支援雲端或本地模型，能處理語音指令與選取文字；螢幕截圖上下文需主動啟用。
- **會議轉錄**：支援通話偵測、說話者分離、聲紋及行事曆整合。
- **筆記與匯入**：以資料夾及語意搜尋整理筆記，亦可匯入音訊、影片或 URL。
- **本地推論選項**：Whisper 可利用 Metal、CUDA 或 Vulkan 加速，Parakeet 使用 sherpa-onnx。
- **API 與 MCP**：提供程式化管理筆記、轉錄及連接 AI 助理的介面。

## 怎麼用

一般使用者可直接從 GitHub Releases 下載安裝包；以下是 README 的原始碼開發安裝方式，前提為 Node.js 24+。

```bash
git clone https://github.com/OpenWhispr/openwhispr.git
cd openwhispr
npm install
npm run dev
```

1. 選擇本地或雲端轉錄引擎，確認麥克風及系統所需權限。
2. 設定快捷鍵，在一般文字欄位測試聽寫與貼上。
3. 如需 AI 整理文字，再設定模型供應商或本地 LLM。
4. 開啟會議功能前，先確認參與者知情並檢查錄音與同步設定。

### 使用限制

- Intel Mac 缺少 README 所列的即時說話者識別及聲紋功能；筆記搜尋改以關鍵字回退。
- 核心離線模式與雲端同步、團隊分享是不同資料路徑，不應混為一談。
- 本頁依文件整理，未實測辨識品質、延遲或各平台功能一致性。

## 跟其他方案的關係

| 方案 | 定位 | 與本專案的關係 |
|---|---|---|
| OpenWhispr | 桌面聽寫、會議、筆記、語音 Agent | 面向終端使用者的整合應用 |
| Whisper / whisper.cpp | 語音模型及本地推論實作 | 是它使用的底層引擎，不是相同層級的完整桌面流程 |
| NVIDIA Parakeet / sherpa-onnx | ASR 模型及執行框架 | 另一條本地轉錄路徑 |

選擇重點是是否需要「錄音到文字再到 AI 動作」的整合介面，而非只比較模型名稱。

## 相關概念

← [[語音辨識]] · [[AI-Agent]]

## 來源

- [GitHub：OpenWhispr/openwhispr](https://github.com/OpenWhispr/openwhispr)
- [README](https://github.com/OpenWhispr/openwhispr/blob/main/README.md)
- 原始快照：`raw/2026-09-07-OpenWhispr-openwhispr.md`
- GitHub metadata 擷取日期：2026-09-07；功能描述以本次 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [OpenWhispr/openwhispr](https://github.com/OpenWhispr/openwhispr) |
| Stars | 7,370（2026-09-07 快照） |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-09-07 |

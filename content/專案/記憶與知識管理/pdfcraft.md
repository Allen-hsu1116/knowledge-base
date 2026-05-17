---
title: PDFCraft
---

# PDFCraft — 瀏覽器端隱私優先 PDF 工具箱

> 90+ 專業 PDF 工具，全部在瀏覽器端運作，不上傳檔案到任何伺服器。WebAssembly 實現接近原生性能。

## 快速導航
- 📄 **文件解析** → [[document-parsing|文件解析]]: PDF 處理是文件處理的基礎
- 🔍 **RAG** → [[rag|RAG]]: PDF 解析是 RAG pipeline 的前置步驟
- 🧱 **HiChunk** → [[hichunk|HiChunk]]: PDF 解析 → chunking 是 RAG 的完整流程

## 是什麼

PDFCraft 是完全在瀏覽器端運作的 PDF 工具箱，所有處理都在本地完成，不上傳到任何伺服器。使用 WebAssembly 技術實現接近原生性能的 PDF 操作。

## 核心特色

| 特色 | 說明 |
|------|------|
| 🔒 100% 隱私 | 所有處理 client-side，檔案不離開裝置 |
| 🚀 快速響應 | Next.js + WebAssembly 接近原生性能 |
| 🛠️ 90+ 工具 | 涵蓋任何 PDF 處理需求 |
| 🌐 多語言 | 英/西/法/德/葡/日/韓/中 |
| 📋 工作流編輯器 | 拖拉式節點編輯器 + 23+ 預建模板 |

## 工具分類

| 分類 | 工具數 | 範例 |
|------|--------|------|
| 頁面操作 | 15+ | 合併、分割、旋轉、N-up、書冊排版 |
| 編輯 | 10+ | 加文字/圖片、浮水印、註解 |
| 轉檔 | 10+ | PDF↔圖片、Office→PDF、eBook→PDF |
| 安全 | 5+ | 加密、解鎖、權限設定 |
| OCR | 1 | 掃描 PDF 文字辨識 |
| 壓縮 | 3+ | 網頁最佳化、灰階壓縮 |

## 怎麼用

```bash
# 本地開發
git clone https://github.com/PDFCraftTool/pdfcraft.git
cd pdfcraft
npm install   # 或 yarn install / pnpm install
npm run dev   # 開啟 http://localhost:3000
```

也可直接使用線上版本：https://pdfcraft.devtoolcafe.com

所有 PDF 處理都在瀏覽器端完成，不需要後端伺服器，檔案不會上傳。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[microsoft-markitdown]] | 文件轉 Markdown | 互補：markitdown 做文件格式轉換，PDFCraft 做 PDF 操作 |
| [[docling]] | 文件解析 | 上游：docling 解析文件結構，PDFCraft 處理 PDF 操作（合併、分割等） |
| [[ragflow]] | RAG 引擎 | 上游：PDF 文件先經 PDFCraft 預處理，再進 RAGFlow 的 RAG 管線 |
| Adobe Acrobat | 商業 PDF 工具 | 對比：PDFCraft 免費、開源、隱私優先、全 client-side |

## 相關概念

← [[document-parsing]] · [[rag]] · [[hichunk]]

## 來源

- raw/2026-05-xx-pdfcraft.md

## 專案資訊

- **GitHub**: https://github.com/PDFCraftTool/pdfcraft
- **Stars**: ⭐5,771
- **語言**: JavaScript (Next.js)
- **授權**: AGPL-3.0
- **官網**: https://pdfcraft.devtoolcafe.com

## 與相關主題的連結

- [[document-parsing|文件解析]] — PDF 處理是文件處理的基礎
- [[rag|RAG]] — PDF 解析是 RAG pipeline 的前置步驟
- [[hichunk|HiChunk]] — PDF 解析 → chunking 是 RAG 的完整流程
- [[microsoft-markitdown|markitdown]] — 另一個文件轉換工具（微軟出品）

---

GitHub: [PDFCraftTool/pdfcraft](https://github.com/PDFCraftTool/pdfcraft) · Stars: ⭐5.5k+ · License: AGPL-3.0 · 收錄日期: 2026-05
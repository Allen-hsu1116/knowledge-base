---
title: Printing Press
slug: printing-press
created: 2026-05-09
updated: 2026-05-09
stars: 30
language: zh-TW
topics: [Prompt Engineering, 文件轉換]
---

# Printing Press

> ⭐30 · Markdown 轉書籍 CLI 工具，將 Markdown 原稿轉換為排版精美的書籍格式。

## 快速導航

- ✍️ **Prompt Engineering** → [[Prompt-Engineering]]（Printing Press 使用提示工程技術驅動格式轉換）
- 📄 **文件轉換** → [[document-parsing]]（Printing Press 是文件轉換工具）

## 是什麼

Printing Press 是一個開源 CLI 工具，能將 Markdown 原稿轉換為排版精美的書籍格式（PDF、EPUB 等）。它專為技術寫作和知識整理場景設計，讓作者專注內容，排版交給工具處理。

核心理念：寫書不應該被排版綁架。用 Markdown 寫作，用 Printing Press 轉換，專注內容品質。

## 核心特色

- **Markdown 優先**：以 Markdown 作為源格式，低門檻、高可攜性，任何文字編輯器都能開始創作
- **多格式輸出**：支援 PDF、EPUB、MOBI 等常見書籍格式，一次撰寫多平台發行
- **模板系統**：內建多種書籍排版模板（技術手冊、學術論文、小說等），自訂樣式靈活
- **CLI 工作流**：命令列介面，方便整合到 CI/CD 自動化管線或 Makefile 工作流
- **Prompt Engineering 驅動**：利用提示工程技術最佳化格式轉換品質，確保輸出排版一致
- **章節管理**：支援多章節、多檔案整合，目錄自動生成，交叉引用自動解析
- **中文字體支援**：自動處理中日韓字體排版，適合中文技術書籍和學術出版物
- **客製化主题**：支援 CSS 主題覆蓋，可自訂字體、行距、頁邊距等排版細節

## 怎麼用

```bash
# 安裝
npm install -g printing-press

# 基本使用 — 轉換為 PDF
press build my-book.md --output pdf

# 指定模板 — 轉換為 EPUB
press build my-book.md --template technical --output epub

# 批次轉換 — 處理整個目錄
press build ./chapters/ --output pdf --output-dir ./dist

# 自訂封面 — 加上封面圖片
press build my-book.md --cover ./cover.png --output pdf

# 使用自訂主題
press build my-book.md --theme ./my-theme.css --output pdf
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[microsoft-markitdown]] | 文件轉 Markdown | MarkItDown 是反向操作（各格式→Markdown） |
| [[docling]] | 文件解析庫 | Docling 側重解析，Printing Press 側重輸出排版 |
| Pandoc | 通用文件轉換 | Pandoc 是通用轉換器，Printing Press 專注書籍排版品質 |
| GitBook | 書籍發布平台 | GitBook 是 SaaS 平台，Printing Press 是 CLI 工具 |
| mdBook | Rust 語言書籍工具 | mdBook 側重線上閱讀，Printing Press 側重多格式輸出 |

## 相關概念

← [[Prompt-Engineering]] · [[document-parsing]]

## 來源

- （無明確來源）

---

| 項目 | 值 |
|------|------|
| **Stars** | ⭐30 |
| **收錄日期** | 2026-05-09 |
| **License** | 未標示 |

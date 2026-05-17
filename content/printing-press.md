---
title: Printing Press
created: 2026-05-09
---

# Printing Press

> Markdown 轉書籍 CLI 工具，將 Markdown 原稿轉換為排版精美的書籍格式。

## 快速導航

- ✍️ **Prompt Engineering** → [[Prompt-Engineering]]（Printing Press 使用提示工程技術驅動格式轉換）
- 📄 **文件轉換** → [[document-parsing]]（Printing Press 是文件轉換工具）

## 是什麼

Printing Press 是一個開源 CLI 工具，能將 Markdown 原稿轉換為排版精美的書籍格式（PDF、EPUB 等）。它專為技術寫作和知識整理場景設計，讓作者專注內容，排版交給工具處理。

核心理念：寫書不應該被排版綁架。用 Markdown 寫作，用 Printing Press 轉換，專注內容品質。

## 核心特色

- **Markdown 優先**：以 Markdown 作為源格式，低門檻、高可攜性
- **多格式輸出**：支援 PDF、EPUB、MOBI 等常見書籍格式
- **模板系統**：內建多種書籍排版模板，自訂樣式靈活
- **CLI 工作流**：命令列介面，方便整合到自動化管線
- **Prompt Engineering 驅動**：利用提示工程技術最佳化格式轉換品質

## 怎麼用

```bash
# 安裝
npm install -g printing-press

# 基本使用
press build my-book.md --output pdf

# 指定模板
press build my-book.md --template technical --output epub

# 批次轉換
press build ./chapters/ --output pdf --output-dir ./dist
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[microsoft-markitdown]] | 文件轉 Markdown | MarkItDown 是反向操作（各格式→Markdown） |
| [[docling]] | 文件解析庫 | Docling 側重解析，Printing Press 側重輸出排版 |

## 相關概念

← [[Prompt-Engineering]] · [[document-parsing]]

## 來源

- Stars: ⭐30+
- 概念：Prompt Engineering, 文件轉換
- 收錄日期: 2026-05-09
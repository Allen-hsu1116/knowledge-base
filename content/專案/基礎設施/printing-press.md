---
title: Printing Press
created: 2026-05-09
---

# Printing Press

> 將 Markdown 文件轉換為精美、可列印書籍的 CLI 工具。從寫作到成書，一條指令搞定。

## 快速導航
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（Printing Press 的配置語法與 Prompt 設計相關）
- 🧠 **LLM** → [[LLM]]（Markdown 處理和文件轉換的工具鏈）

## 是什麼

Printing Press 是一個 CLI 優先的書籍排版工具，讓使用者從 Markdown 文件直接產出專業排版的書籍。不需要 InDesign 或 LaTeX 的複雜設定，只需要 Markdown 加上一個簡單的 YAML 設定檔，就能產出 PDF 和 EPUB 格式的書籍。

它解決的核心問題是：寫書的人不應該需要學排版。Markdown 是最自然的寫作格式，而 Printing Press 把 Markdown → 精美書籍這段路變得一條指令就走完。

## 核心特色

- **Markdown 轉書籍**：輸入標準 Markdown，輸出專業排版的書籍，`press build` 一條指令搞定
- **4 種內建主題**：default、academic、novel、manual，也支援自訂主題
- **多格式輸出**：同一份 Markdown 可輸出 PDF（A4/A5 等）和 EPUB（含封面圖片支援）
- **CLI 優先設計**：`press init`、`press build`、`press preview`、`press export pdf`
- **精細排版控制**：字體嵌入、分頁控制、程式碼高亮、KaTeX 數學公式、目錄生成、交叉引用

## 怎麼用

```bash
# 全域安裝
npm install -g @mvanhorn/printing-press

# 初始化新書專案
press init my-book

# 建置書籍
press build

# 瀏覽器預覽（熱更新）
press preview

# 匯出 PDF
press export pdf
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Prompt-Engineering]] | Prompt 工程 | Markdown 模板與 Prompt 工程相關 |
| [[LLM]] | LLM | Markdown 處理和文件轉換的工具鏈 |

## 相關概念

← [[Prompt-Engineering]] · [[LLM]]

## 來源

- raw/2026-05-09-printing-press.md

---

- **GitHub**: https://github.com/mvanhorn/cli-printing-press
- **Stars**: 30+
- **License**: MIT
- **收錄日期**: 2026-05-09
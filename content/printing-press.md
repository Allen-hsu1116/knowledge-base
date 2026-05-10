---
title: Printing Press
created: 2026-05-09
---

# Printing Press

> 將 Markdown 文件轉換為精美、可列印書籍的 CLI 工具。從寫作到成書，一條指令搞定。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [mvanhorn/cli-printing-press](https://github.com/mvanhorn/cli-printing-press) |
| 官網 | [printingpress.dev](https://printingpress.dev/) |
| Stars | 30+ |
| Language | JavaScript / Node.js |
| 授權 | MIT |
| 收錄日期 | 2026-05-09 |

## 快速導航

- [[Prompt-Engineering|Prompt Engineering]] — Printing Press 的配置語法與 Prompt 設計相關
- [[LLM]] — Markdown 處理和文件轉換的工具鏈

## 簡介

Printing Press 是一個 CLI 優先的書籍排版工具，讓使用者從 Markdown 文件直接產出專業排版的書籍。不需要 InDesign 或 LaTeX 的複雜設定，只需要 Markdown 加上一個簡單的 YAML 設定檔，就能產出 PDF 和 EPUB 格式的書籍。

它解決的核心問題是：**寫書的人不應該需要學排版**。Markdown 是最自然的寫作格式，而 Printing Press 把 Markdown → 精美書籍這段路變得一條指令就走完。

## 核心特色

### 📘 Markdown 轉書籍

輸入標準 Markdown，輸出專業排版的書籍。支援標題層級、粗體斜體、列表、引用、程式碼區塊等所有常見 Markdown 語法，並自動轉換為對應的書籍排版元素。

```bash
press build
```

一條指令就能從 Markdown 產出完整書籍，不需要額外設定。

### 🎨 內建主題系統

提供四種內建主題：

| 主題 | 適用場景 |
|------|----------|
| **default** | 通用專業排版 |
| **academic** | 學術論文風格，含腳註 |
| **novel** | 小說排版，章節標題設計 |
| **manual** | 技術手冊風格 |

也支援自訂主題，用 CSS 和模板即可打造自己的風格。

### 📄 多格式輸出

同一份 Markdown 原始檔可以輸出：

- **PDF** — 可設定紙張大小（A4、A5 等）和邊距
- **EPUB** — 含封面圖片支援
- 其他電子書格式

```yaml
output:
  pdf:
    format: A5
    margins: 15mm
  epub:
    cover: assets/cover.png
```

### 🔧 CLI 優先設計

所有操作都透過命令列完成，適合自動化和腳本整合：

```bash
# 初始化新書專案
press init my-book

# 建置書籍
press build

# 瀏覽器預覽（熱更新）
press preview

# 匯出 PDF
press export pdf
```

### 📐 精細排版控制

- **字體嵌入** — 自訂字體並嵌入輸出
- **分頁控制** — 用 Markdown 註解控制換頁位置
- **程式碼高亮** — 程式碼區塊自動語法著色
- **數學公式** — 透過 KaTeX 渲染 LaTeX 數學式
- **圖片處理** — 自動調整大小和最佳化
- **目錄生成** — 從標題自動產生目錄
- **交叉引用** — 章節間互相連結

## 安裝方式

```bash
# 全域安裝
npm install -g @mvanhorn/printing-press

# 或直接使用（不需安裝）
npx @mvanhorn/printing-press
```

## 專案結構

```
my-book/
├── press.config.yaml   # 書籍設定檔
├── chapters/
│   ├── 01-intro.md
│   ├── 02-content.md
│   └── 03-conclusion.md
├── assets/
│   └── images/
└── themes/
    └── custom/
```

## 技術棧

- **Node.js** — 執行環境
- **Markdown** — 內容格式
- **YAML** — 設定格式
- **CSS** — 主題與排版樣式
- **KaTeX** — 數學公式渲染
- **PDF/EPUB 生成器** — 輸出引擎

## 相關連結

- [官網](https://printingpress.dev/)
- [GitHub](https://github.com/mvanhorn/cli-printing-press)
- [[Prompt-Engineering]] — Markdown 模板與 Prompt 工程
- [[LLM]] — 文件處理工具鏈
---
source: https://www.bnext.com.tw/article/90530/llm-knowledge-base-obsidian-claude-code
date: 2026-04-28
tags: [llm, knowledge-base, obsidian, claude-code, karpathy, ai-workflow]
---

# LLM 知識庫系統：Karpathy 的方法（中文報導版）

> OpenAI 共同創辦人 Andrej Karpathy 公開了他的 LLM 知識庫系統：讓 AI 代替人做知識整理工作。核心概念是 LLM 作為「編譯器」，把原始文件編譯成結構化的 markdown wiki。

**來源**: 數位時代 BusinessNext
**日期**: 2026.04.07
**作者**: 李先泰

## 系統組成

### 三個區域

| 區域 | 說明 |
|------|------|
| `raw/` | 原始資料夾：所有素材只進不改 |
| `wiki/` | 知識庫：AI 整理好的筆記，每個概念一篇，互相連結 |
| `index.md + log.md` | 目錄與整理記錄，AI 自動維護 |

## 四個 Phases

### Phase 1: Ingest（蒐集）
- Obsidian Web Clipper 把網頁文章存成乾淨 `.md`
- arXiv 論文、GitHub repos、資料集收集進 `raw/`
- 所有原始文件先進 `raw/` staging area

### Phase 2: Compile（整理/編譯）
- LLM 讀取 `raw/` 並建立結構化 wiki：
  - **Index & Summaries**：自動維護的索引檔案
  - **Concept Articles**：按主題組織帶 backlinks 和交叉引用
  - **Derived Outputs**：Marp 簡報、matplotlib 圖表、回存的問答答案
  - **Backlinks & Cross-links**：自動生成的概念連結圖

### Phase 3: Query & Enhance（提問與增強）
- **Obsidian IDE**：瀏覽 wiki 和視覺化的前端
- **Q&A Agent**：跨文章的複雜研究問題
- **Search Engine**：對 wiki 的搜尋引擎
- 關鍵洞察：查詢輸出回存到 wiki——每次探索都有累積

### Phase 4: Lint & Maintain（清理與維護）
- 掃描不一致的資料
- 透過網路搜尋補充缺失資訊
- 找出概念間的連結，建立新文章
- 建議值得深入探索的問題
- Linting 完成後回到 Phase 2——wiki 持續成長

## 回饋迴圈

```
Q&A Agent 輸出 → 回存到 wiki（Derived Outputs）
Linting 結果 → 增強 wiki
Phase 4 → 循環回到 Phase 2 持續運作
```

## 需要的工具

1. **Obsidian**（免費）— 筆記桌面應用
2. **Obsidian Web Clipper**（免費）— 瀏覽器擴充功能
3. **Claude Code**（需 Anthropic 帳號，Pro 方案約 $20/月）— 核心 AI

## 快速建立方式

- **方法一**：把 Karpathy 的 GitHub Gist 餵給 Claude Code
- **方法二**：使用 Elvis Saravia 整理的完整架構說明文件

## 為什麼有意義

傳統知識管理工具（Notion、Roam、Obsidian）把整理苦工甩給人做。LLM 知識庫把這個成本轉移給 AI：

- **人負責**：找素材、定方向、問好問題
- **AI 負責**：摘要、交叉連結、一致性維護

Karpathy：「我認為這裡有空間誕生一個了不起的產品，而不只是一堆雜七雜八的腳本。」

## 未來方向

從 wiki 生成合成資料來微調 LLM，讓它把知識「燒進」權重而不只是靠 context window。

## 相關主題

- [[karpathy-gist-llm-wiki|Karpathy LLM Wiki Gist]] — 原始 Gist
- [[karpathy-skills|Karpathy Skills Skill 版]] — 標準化版本
- [[andrej-karpathy-ai-how|Karpathy 知識庫完整拆解]] — 純資料夾版本

## 參考資料

- [Karpathy GitHub Gist](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
- [Karpathy X 貼文](https://x.com/karpathy/status/2039805659525644595)
- [Elvis Saravia / dair.ai](https://academy.dair.ai/blog/llm-knowledge-bases-karpathy)
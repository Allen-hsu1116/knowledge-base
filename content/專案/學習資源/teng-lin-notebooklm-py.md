---
title: teng-lin/notebooklm-py
slug: teng-lin-notebooklm-py
created: 2026-05-26
stars: 15157
language: Python
updated: 2026-05-26
---

# notebooklm-py ⭐15.2k

Google NotebookLM 的非官方 Python API 與 Agent Skill，提供完整程式化存取——包含網頁 UI 未暴露的能力——透過 Python、CLI 與 AI Agent（Claude Code、Codex、OpenClaw）操作。

## 快速導航

- [是什麼](#是什麼)
- [核心特色](#核心特色)
- [怎麼用](#怎麼用)
- [跟其他方案的關係](#跟其他方案的關係)
- [相關概念](#相關概念)

## 是什麼

notebooklm-py 是一個開源（MIT）Python 函式庫，讓開發者能用 Python API、CLI 或 AI Agent 介面操作 Google NotebookLM 的全部功能。它透過逆向工程 NotebookLM 的內部 API，實現了網頁 UI 沒有提供的進階操作，例如批次下載、測驗/閃卡結構化匯出、心智圖 JSON 提取、簡報 PPTX 匯出等。

⚠️ 這是社群專案，非 Google 官方，使用未公開 API，可能隨時失效。適合原型開發、研究與個人專案。

## 核心特色

- **三種使用方式**：Python API（async）、CLI（Shell 自動化）、Agent 整合（Claude Code / Codex）
- **完整 NotebookLM 覆蓋**：筆記本 CRUD、來源管理（URL / PDF / YouTube / Google Drive）、聊天、研究代理、分享權限
- **內容生成**：Audio Overview（4 格式 × 3 長度 × 50+ 語言）、Video Overview、簡報、資訊圖、測驗、閃卡、報告、資料表、心智圖
- **超越網頁 UI 的能力**：批次下載、Quiz/Flashcard 結構化匯出（JSON/Markdown/HTML）、Mind Map JSON 提取、簡報 PPTX 匯出、單頁修改、Chat 存為筆記、來源全文存取、程式化分享管理、多帳號切換、瀏覽器 Cookie 匯入
- **Agent Skill 生態系**：內建 SKILL.md（`npx skills add` 可發現）、`notebooklm skill install` 本地安裝、AGENTS.md（Codex 用）
- **跨平台**：macOS / Linux / Windows 均已測試

## 怎麼用

**安裝（CLI 與 Agent 最快路徑）：**

```bash
pip install "notebooklm-py[browser]"
playwright install chromium
notebooklm login                        # 開瀏覽器登入 Google
notebooklm auth check --test --json     # 驗證認證
```

**作為函式庫（不需 Playwright / Chromium）：**

```bash
pip install notebooklm-py               # ~10 MB；自行提供 storage_state.json
```

**CLI 常用指令：**

```bash
notebooklm create "My Research"
notebooklm use <notebook_id>
notebooklm source add "https://en.wikipedia.org/wiki/Artificial_intelligence"
notebooklm source add "./paper.pdf"
notebooklm ask "What are the key themes?"
notebooklm generate audio "make it engaging" --wait
notebooklm generate quiz --difficulty hard
notebooklm download audio ./podcast.mp3
notebooklm download quiz --format markdown ./quiz.md
notebooklm download mind-map ./mindmap.json
```

**Python API：**

```python
import asyncio
from notebooklm import NotebookLMClient

async def main():
    async with await NotebookLMClient.from_storage() as client:
        nb = await client.notebooks.create("Research")
        await client.sources.add_url(nb.id, "https://example.com", wait=True)
        result = await client.chat.ask(nb.id, "Summarize this")
        print(result.answer)
        status = await client.artifacts.generate_audio(nb.id, instructions="make it fun")
        await client.artifacts.wait_for_completion(nb.id, status.task_id)
        await client.artifacts.download_audio(nb.id, "podcast.mp3")

asyncio.run(main())
```

**Agent Skill 安裝：**

```bash
# 方式一：CLI 安裝
notebooklm skill install

# 方式二：npx 生態系
npx skills add teng-lin/notebooklm-py
```

## 跟其他方案的關係

| 方案 | 定位 | 差異 |
|------|------|------|
| **NotebookLM 網頁 UI** | Google 官方圖形介面 | 無程式化存取，無批次操作，無結構化匯出；notebooklm-py 是其 API 層的封裝與擴展 |
| **LangChain** | LLM 應用開發框架 | 專注於 Chain/Agent 編排；notebooklm-py 專注於 NotebookLM 特定能力（Audio Overview、來源管理），可作為 LangChain 工具整合 |
| **LlamaIndex** | RAG 與資料索引框架 | 聚焦於文件索引與檢索增強生成；NotebookLM 本身是封閉 RAG 系統，notebooklm-py 提供對其的程式化控制 |

## 相關概念

- [[AI-Agent]] — Agent 架構與工具整合
- [[AI-Skills]] — AI Agent 的 Skill 發現與安裝生態系

## 來源

- Raw data: [raw/2026-05-26-teng-lin-notebooklm-py.md](../raw/2026-05-26-teng-lin-notebooklm-py.md)
- GitHub: <https://github.com/teng-lin/notebooklm-py>
- PyPI: <https://pypi.org/project/notebooklm-py/>

---
*Last updated: 2026-05-26 | Stars: 15,157 | License: MIT*
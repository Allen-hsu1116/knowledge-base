---
title: Browser Use
slug: browser-use-browser-use
created: 2026-06-12
updated: 2026-06-12
stars: 98341
language: Python
---

# Browser Use

> ⭐98k · 開源瀏覽器 AI Agent，讓 LLM 直接操作網頁——點擊、填表、導航，Rust 核心驅動

快速導航：[[AI-Agent]] · [[computer-use-agent]] · [[web-scraping]] · [[MCP]]

## 是什麼

Browser Use 是一個開源的瀏覽器 AI Agent 框架，讓大型語言模型能夠像人類一樣操作網頁——點擊按鈕、填寫表單、滾動頁面、導航連結。它提供真實的瀏覽器操作空間，而不是簡單的 API 呼叫，這讓 LLM 能完成需要多步互動的複雜網頁任務。

2026 年的 0.13 版本引入了 Rust 核心的全新 beta agent，架構是「Python API → Rust 核心 → 瀏覽器 harness → 任務完成」。這個設計參考了 coding agent 的持久工具和錯誤恢復迴圈，讓瀏覽器操作更穩定可靠。支援 GPT-5.5、Claude Opus 4.8 等前沿模型。

除了 Python SDK，Browser Use 還提供 CLI 工具和 Claude Code Skill 整合。雲端版提供更強大的代理輪換、驗證碼處理和 1000+ 整合（Gmail、Slack、Notion 等），開源版則適合需要深度客製化的場景。

## 核心特色

- **Rust 核心驅動**：0.13 版全新 beta agent，Python API + Rust 底層，效能和穩定性大幅提升
- **真實瀏覽器操作空間**：不是模擬 DOM，而是操控真實瀏覽器，支援 JS-heavy 頁面
- **持久工具 + 恢復迴圈**：參考 coding agent 的設計，操作失敗自動重試和修正
- **多模型支援**：GPT-5.5、Claude Opus 4.8、自訂模型都能用
- **CLI 工具**：命令列直接操控瀏覽器，`browser-use open/click/type/close` 快速迭代
- **Claude Code Skill**：一行安裝 skill，Claude Code 直接呼叫瀏覽器自動化

## 怎麼用

**安裝（Python ≥ 3.11）：**

```bash
uv add "browser-use[core]"
# 或：pip install "browser-use[core]"
```

**第一個 Agent：**

```python
from browser_use.beta import Agent, BrowserProfile, ChatBrowserUse
import asyncio

async def main():
    agent = Agent(
        task="Find the number of stars of the browser-use repo",
        llm=ChatBrowserUse(model='bu-3-max'),
        browser_profile=BrowserProfile(
            headless=False,
            allowed_domains=["*.github.com"],
        ),
    )
    history = await agent.run()
    print(history.final_result())

if __name__ == "__main__":
    asyncio.run(main())
```

**CLI 快速操作：**

```bash
browser-use open https://example.com    # 開啟網頁
browser-use state                       # 查看可點擊元素
browser-use click 5                      # 點擊第 5 個元素
browser-use type "Hello"                 # 輸入文字
browser-use close                        # 關閉瀏覽器
```

**Claude Code Skill 安裝：**

```bash
mkdir -p ~/.claude/skills/browser-use
curl -o ~/.claude/skills/browser-use/SKILL.md \
  https://raw.githubusercontent.com/browser-use/browser-use/main/skills/browser-use/SKILL.md
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 真實瀏覽器 | Rust 核心 | Claude Skill |
|------|-------|------|-----------|----------|-------------|
| **Browser Use** | ⭐98k | 瀏覽器 Agent | ✅ | ✅ beta | ✅ |
| [[CloakHQ-CloakBrowser\|CloakBrowser]] | ⭐14k | 隱私瀏覽器 | ✅ | ❌ | ❌ |
| [[ChromeDevTools-chrome-devtools-mcp\|Chrome DevTools MCP]] | ⭐40k | MCP 瀏覽器工具 | ✅ | ❌ | ❌ |
| [[firecrawl-firecrawl\|Firecrawl]] | ⭐131k | 網頁 API | ❌ 無頭爬取 | ❌ | ✅ MCP |
| [[trycua-cua\|CUA]] | ⭐16k | Computer Use 框架 | ✅ | ❌ | ❌ |

← [[AI-Agent]] · [[computer-use-agent]] · [[web-scraping]] · [[MCP]]

## 來源

- GitHub: <https://github.com/browser-use/browser-use>
- 原始 README: `raw/2026-06-12-browser-use-browser-use.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [browser-use/browser-use](https://github.com/browser-use/browser-use) |
| Stars | ⭐98,341 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-12 |
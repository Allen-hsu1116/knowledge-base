# InkOS

> 自主小說寫作 AI Agent — 寫、審、改全程接管。33 維度連續性審計 + AI 痕跡偵測 + 文風指紋注入，支援玄幻、仙俠、都市、科幻等多種風格。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [Narcooo/inkos](https://github.com/Narcooo/inkos) |
| Stars | ⭐5,672 |
| Language | TypeScript |
| 建立日期 | 2026-03-12 |
| 收錄日期 | 2026-05-06 |
| 授權 | MIT |

## 快速導航

- 🤖 **Agent 工作流** → [[AI-Agent]]（InkOS 是垂直領域 Agent 的代表作）
- 🛠 **Agent Skills** → [[AI-Skills]]（InkOS 已發布為 OpenClaw Skill）
- 🧠 **記憶與連續性** → [[mempalace]]（小說連續性審計 vs Agent 記憶系統）
- 🔄 **自演化** → [[lsdefine-GenericAgent]]（技能結晶 vs 小說寫作技能樹）
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（文風指紋注入是一種 prompt engineering）

## 是什麼

InkOS 是一個自主小說寫作 AI Agent，覆蓋玄幻、仙俠、都市、科幻等多種風格。它不只是一個「AI 寫作工具」，而是一個完整的寫-審-改管線：Agent 自主寫草稿、33 維度審計員檢查連續性、修訂員修正問題 — 人類只在審閱門控處介入。

InkOS 的核心差異化在於「去 AI 味」設計：內建 AI 痕跡偵測維度，自動識別「LLM 味」表達（高頻詞、句式單調、過度總結），並在源頭 — 寫手 agent 的 prompt 層 — 注入詞彙疲勞詞表、禁用句式、文風指紋，從源頭減少 AI 生成痕跡。

Studio 2.0 提供本地 Web 工作台，TUI 提供全屏互動儀表盤，兩者加上 OpenClaw Skill 共用同一套互動執行內核。這意味著你可以用自然語言對話式地操作書籍 — 改名、寫章、審計、導出 — 不論是 TUI、Studio 還是 OpenClaw 介面。

## 核心特色

### 寫-審-改自主管線

InkOS 的小說創作是三階段自主流程：

```
[寫手 Agent 草稿] → [33維度審計員檢查] → [審計不通過？修訂循環]
                                          → [通過？進入人類審閱門控]
```

審計不通過的草稿會自動進入修訂循環，直到通過或達到重試上限。人類審閱門控確保你始終掌控全域。

### 33 維度連續性審計

審計員從 33 個維度檢查每一章草稿：

- **角色記憶**：角色行為是否跟前面一致？
- **物資連續性**：物品、能力是否無故出現/消失？
- **伏箋收放**：伏筆是否合理回收或延續？
- **大綱偏離**：是否偏離故事聖經（story_bible.md）？
- **敘事節奏**：章節節奏是否合理？
- **情感弧線**：角色情感變化是否連貫？
- **AI 痕跡偵測**：高頻詞、句式單調、過度總結

### 去 AI 味 — 從源頭到事後

InkOS 的去 AI 味是雙層設計：

1. **源頭預防**：寫手 agent 的 prompt 層注入：
   - 詞彙疲勞詞表（避免高頻重複用詞）
   - 禁用句式（排除典型 LLM 句型）
   - 文風指紋注入（模仿特定作者的風格特徵）

2. **事後改寫**：`revise --mode anti-detect` 對已有章節做專門的反 AI 檢測改寫

文風分析功能 `inkos style analyze` 可以從參考文本提取統計指紋（句長分佈、詞頻特徵、節奏模式），再用 `inkos style import` 注入到指定書籍，後續所有章節自動採用該風格。

### 雙重控制文件

每本書有兩份長期可編輯的 Markdown 控制文件：

- **story/author_intent.md**：這本書長期想成為什麼
- **story/current_focus.md**：最近 1-3 章要把注意力拉回哪裡

這跟我們知識庫的 raw → wiki 架構異曲同工：author_intent 像 wiki（長期結構化知識），current_focus 像 daily notes（近期工作上下文）。

### 程式碼範例

```bash
# 安裝
npm i -g @actalk/inkos

# 或透過 OpenClaw
clawhub install inkos

# 建立新書
inkos init my-novel
cd my-novel
inkos book create --title "吞天魔帝" --genre xuanhuan

# 啟動 Studio（Web 工作台）
inkos

# 或啟動 TUI（全屏儀表盤）
inkos tui

# 寫下一章（完整管線：草稿 → 審計 → 修訂）
inkos write next 吞天魔帝

# 審閱草稿
inkos review list 吞天魔帝
inkos review approve-all 吞天魔帝

# 導出
inkos export 吞天魔帝                # 純文字
inkos export 吞天魔帝 --format epub  # EPUB（手機/Kindle）

# 文風分析與注入
inkos style analyze reference-text.txt
inkos style import 吞天魔帝

# 互動式操作（OpenClaw / 外部 Agent 入口）
inkos interact --json --message "繼續當前書，但把節奏再收緊一點"
```

### LLM Provider 支援

InkOS 內建 Provider Bank，支援：
- Google Gemini、Moonshot、MiniMax、智譜、百鍊、DeepSeek
- 矽基流動、PPIO、OpenRouter、Ollama
- 可為不同 Agent 分配不同模型（寫手用強模型、審計員用快模型）

Studio 和 CLI 的配置完全隔離，不會互相污染。

## 與其他方案的關係

InkOS 是垂直領域 Agent 的優秀範例 — 專注於一個領域（小說寫作）做到極致，而不是做通用 Agent。它的去 AI 味設計跟 [[Prompt-Engineering]] 的核心議題直接相關：如何讓 LLM 的輸出更自然、更有人味。

33 維度連續性審計的概念可以借鑑到其他需要長文本連貫性的場景（技術文件、法律合約等）。[[mempalace]] 的宮殿索引解決的是「記憶在哪裡」的問題，InkOS 的連續性審計解決的是「記憶是否正確」的問題 — 兩者互補。

## 技術棧

- **核心語言**：TypeScript
- **前端**：React（Studio）、Ink（TUI）
- **套件**：npm `@actalk/inkos`
- **OpenClaw Skill**：ClawHub `inkos`
- **LLM 相容**：Gemini、Moonshot、MiniMax、智譜、百鍊、DeepSeek、Ollama 等

## 相關連結

- [GitHub](https://github.com/Narcooo/inkos)
- [ClawHub](https://clawhub.ai/narcooo/inkos)
- [npm](https://www.npmjs.com/package/@actalk/inkos)

← [[AI-Agent]] · [[AI-Skills]] · [[mempalace]] · [[Prompt-Engineering]]
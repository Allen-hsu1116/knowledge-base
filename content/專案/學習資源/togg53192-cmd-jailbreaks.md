---
title: Jailbreaks
slug: togg53192-cmd-jailbreaks
created: 2026-10-28
updated: 2026-10-28
stars: 5545
language: zh-TW
topics: ["prompt-security", "Prompt-Engineering"]
---

# Jailbreaks

> ⭐5.5k · 指令衝突、persona 與 workspace policy 的研究素材；非有效性保證。

## 快速導航

- [[prompt-security]]
- [[Prompt-Engineering]]

## 是什麼

Jailbreaks 是提示詞與 Agent 指令文件的集合，內容類型包括 system prompt、persona 定義、workspace policy、AGENTS.md 與 Ollama Modelfile。它不是模型推論引擎，也不是自帶裁判與統計報表的評測平台。

README 自述收錄 31 份 prompts、涵蓋 25 種以上模型，但這是作者的描述，並非本次獨立逐一驗證的相容性清單。根目錄持續新增文件，因此 README 徽章與實際檔案清單可能不同步；模型名稱亦應視為作者的標籤，而非官方版本確認。

知識庫以指令層級、提示注入防禦及安全研究角度收錄，不轉載可直接套用的越獄 payload，也不把作者聲稱的行為等同可重現結果。README 明確限制為研究教育用途，並提醒遵守法律與服務條款。

## 核心特色

- **多種指令表面**：同時整理 system prompt、專案規則、全域 policy 與配置文件。
- **依模型家族分類**：README 將多個供應者與 open-weight 家族分區，方便閱讀定位。
- **完整檔案導向**：作者採一份 prompt 一個檔案，方便觀察版本差異。
- **版本敏感性提醒**：明確指出模型更新與指令層級改變可能使既有行為失效。
- **貢獻格式規範**：要求標示部署位置、版本變更與實測相容性，不任意宣稱支援。
- **防禦研究用途**：可作為辨識指令衝突與 persona framing 的素材索引，但不是安全保證。

## 怎麼用

這是文件集合，沒有必須安裝的執行套件。以下只下載到新研究目錄供閱讀，不會套用任何 prompt 或變更 Agent 全域規則。

```bash
git clone https://github.com/togg53192-cmd/jailbreaks.git jailbreaks-review
cd jailbreaks-review
git rev-parse HEAD
```

### 安全研究流程

1. 記錄 commit、模型版本與閱讀日期，避免把不同快照混為一談。
2. 先辨識每份文件是 system prompt、workspace policy 還是模型配置。
3. 只在自有或明確授權的隔離環境進行良性測試。
4. 同時保存原始基準與測試結果，檢查是否真的出現指令邊界失守。
5. 記錄失敗與無效案例，不只挑出符合預期的成功截圖。

### 不應直接採取的做法

不要把未知 AGENTS.md 放入生產工作區，也不要覆蓋全域指令。

研究用 Agent 應移除真實憑證、私人資料與對外副作用工具；本次 ingest 未執行任何越獄測試。

README 列有直接載入指令的位置，但本頁只記錄其格式定位，並不建議繞過模型供應者政策。

## 跟其他方案的關係

以下比較研究素材與防禦方法的角色，不評比越獄成功率。

| 方案 | 提供什麼 | 不提供什麼 |
|---|---|---|
| Jailbreaks | 多模型指令文件與研究線索 | 經獨立驗證的成功率或防禦保證 |
| [[Prompt-Engineering]] | 一般任務表述與提示設計方法 | 特定模型漏洞承諾 |
| [[prompt-security]] | 信任邊界、注入風險與防禦觀念 | 通用一鍵防護能力 |
| 自建授權評測流程 | 固定模型、資料與判準的可追溯測試 | 跨版本永久有效結論 |

## 相關概念

← [[prompt-security]] · [[Prompt-Engineering]]

## 來源

- [GitHub](https://github.com/togg53192-cmd/jailbreaks)
- [README](https://github.com/togg53192-cmd/jailbreaks/blob/main/README.md)
- 原始快照：`raw/2026-10-28-togg53192-cmd-jailbreaks.md`
- Metadata 快照：`outputs/trending-2026-10-28/togg53192-cmd-jailbreaks.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/togg53192-cmd/jailbreaks |
| Stars | 5,545（2026-10-28 快照） |
| License | 未標示（API 與根目錄未見授權檔） |
| Language | GitHub 未標示；內容以 Markdown 文件為主 |
| 收錄日期 | 2026-10-28 |

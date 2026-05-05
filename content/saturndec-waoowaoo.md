# waoowaoo AI 影視 Studio

> AI 短劇/漫畫視頻製作工具 — 從小說文本自動生成分鏡、角色、場景，組裝成完整視頻。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（waoowaoo 的全流程自動化是 multi-agent 協作的應用）
- 🛠️ **AI Skills** → [[AI-Skills]]（waoowaoo 每個環節都是獨立 AI 能力）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（劇本解析→分鏡→視頻是結構化 pipeline）

## 是什麼

waoowaoo 是一個 AI 驅動的短劇和漫畫視頻製作工具。輸入小說文本，它自動拆解出角色、場景、分鏡，然後用 AI 生成角色和場景圖像，最後組裝成帶語音旁白的完整視頻。支援中英雙語 UI。

## 核心特色

- **AI 劇本解析**：自動從小說提取角色、場景、劇情
- **角色/場景生成**：AI 生成一致性角色和場景圖像
- **分鏡視頻製作**：自動生成鏡頭並組成視頻
- **AI 語音旁白**：多角色語音合成
- **多語言**：中文 / English UI 切換

## 怎麼用

```bash
# Docker 一鍵啟動
curl -O https://raw.githubusercontent.com/saturndec/waoowaoo/main/docker-compose.yml
docker compose up -d
# 訪問 http://localhost:13000
```

## 跟其他方案的關係

waoowaoo 是 AI Agent 自動化流程在影視製作領域的應用。跟 [[hugohe3-ppt-master]] 方向不同：
- **PPT Master**：文件 → 簡報
- **waoowaoo**：文本 → 視頻

兩者都是 AI 把非結構化輸入轉成結構化多媒體輸出的 pipeline。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 來源

- raw/2026-05-05-waoowaoo.md

---

- **GitHub**: https://github.com/saturndec/waoowaoo
- **Stars**: ⭐12,000
- **License**: 未明確標示
- **收錄日期**: 2026-05-05
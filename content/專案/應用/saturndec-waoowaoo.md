---
title: waoowaoo AI 影視 Studio
slug: saturndec-waoowaoo
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# waoowaoo AI 影視 Studio

> AI 短劇/漫畫視頻製作工具 — 從小說文本自動生成分鏡、角色、場景，組裝成帶語音旁白的完整視頻。Next.js 15 + React 19。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（waoowaoo 的全流程自動化是 multi-agent 協作的應用）
- 🛠️ **AI Skills** → [[AI-Skills]]（waoowaoo 每個環節都是獨立 AI 能力）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（劇本解析→分鏡→視頻是結構化 pipeline）

## 是什麼

waoowaoo 是一個 AI 驅動的短劇和漫畫視頻製作工具。輸入小說文本，它自動拆解出角色、場景、分鏡，然後用 AI 生成角色和場景圖像，最後組裝成帶語音旁白的完整視頻。支援中英雙語 UI。技術棧為 Next.js 15 + React 19 + MySQL + Prisma + Redis + BullMQ，Docker 一鍵部署。

## 核心特色

- **AI 劇本解析** — 自動從小說文本提取角色（名稱、外貌、性格）、場景（地點、氛圍）、劇情（事件序列、衝突）。用 LLM 做結構化提取，把非結構化小說變成可執行的分鏡腳本
- **角色/場景生成** — AI 生成一致性角色和場景圖像。關鍵是「一致性」— 同一角色在不同分鏡中保持相同外貌。用角色描述 + seed 控制實現跨場景角色一致性
- **分鏡視頻製作** — 自動從劇情生成鏡頭列表（景別、角度、時長），然後按分鏡組裝成視頻。每個分鏡 = 場景圖 + 角色圖 + 鏡頭指令，用圖像合成工具組合
- **AI 語音旁白** — 多角色語音合成，不同角色用不同聲音。旁白文本從劇本自動提取對話和描述
- **多語言** — 中文 / English UI 切換，劇本解析支援中英文文本

## 怎麼實現的

waoowaoo 的架構是 LLM Pipeline + Image Generation + Video Assembly：

1. **劇本解析 Pipeline**：用 LLM 做多輪結構化提取 — 第一輪提取角色列表和場景列表，第二輪按場景拆分劇情，第三輪為每個場景生成分鏡腳本（鏡頭描述、對話、旁白）
2. **角色一致性系統**：每個角色生成時建立一個「角色卡」（外貌描述 + seed + 風格參數），後續所有分鏡中的同一角色都用同一張角色卡生成，確保外貌一致
3. **分鏡生成**：每個分鏡包含場景背景圖 + 角色圖（按角色卡生成）+ 鏡頭參數。圖像用 AI 生成模型（Stable Diffusion 等），合成時按鏡頭參數排列
4. **視頻組裝**：用 FFmpeg 將分鏡圖序列 + 語音檔 + 字幕組裝成最終視頻。BullMQ 做任務佇列，每個視頻生成是非同步任務
5. **Web 管理介面**：Next.js 15 前端，Prisma ORM 操作 MySQL，Redis + BullMQ 做任務調度，Docker 容器化部署

## 怎麼用

```bash
# Docker 一鍵啟動（最簡單）
curl -O https://raw.githubusercontent.com/saturndec/waoowaoo/main/docker-compose.yml
docker compose up -d
# 訪問 http://localhost:13000

# 本地開發
git clone https://github.com/saturndec/waoowaoo.git
cd waoowaoo
cp .env.example .env
npm install
docker compose up mysql redis minio -d
npx prisma db push
npm run dev
# 訪問 http://localhost:3000

# 使用流程
# 1. 輸入小說文本（貼上或上傳）
# 2. AI 自動解析角色、場景、劇情
# 3. 預覽和調整分鏡腳本
# 4. 生成角色和場景圖像
# 5. 生成語音旁白
# 6. 組裝成完整視頻
```

## 跟其他方案的關係

| 方案 | 輸入 | 輸出 | 角色一致性 | 語音 |
|------|------|------|-----------|------|
| **waoowaoo** | 小說文本 | 視頻 | ✅ 角色卡 | ✅ 多角色 |
| **PPT Master** | 文件 | 簡報 | N/A | ✅ TTS |
| **ComfyUI** | Prompt | 圖像 | ⚠️ 手動 | ❌ |

- 跟 [[hugohe3-ppt-master|PPT Master]] 方向不同：PPT Master 把文件 → 簡報，waoowaoo 把文本 → 視頻。兩者都是 AI 把非結構化輸入轉成結構化多媒體輸出的 pipeline
- waoowaoo 是 [[AI-Agent]] 自動化流程在影視製作領域的應用，每個環節（解析、生成、組裝）都是獨立的 AI 能力
- 與 ComfyUI 等 image gen 工具互補：ComfyUI 提供精細控制，waoowaoo 提供全流程自動化

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 來源

- raw/2026-05-05-waoowaoo.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [saturndec/waoowaoo](https://github.com/saturndec/waoowaoo) | ⭐12,000 | — | 2026-05-05 |
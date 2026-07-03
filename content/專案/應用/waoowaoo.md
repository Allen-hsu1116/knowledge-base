---
title: waoowaoo
slug: waoowaoo
aliases:
  - waoowaoo
stars: '⭐12k'
updated: 2026-06-14
language: zh-TW
---

# waoowaoo

> ⭐12k · AI 短劇/漫畫視頻製作工具，從小說文本自動生成分鏡、角色、場景，並製作成完整視頻。⭐ 12k

## 快速導航
- ⚡ [[generative-AI]] · [[AI-Agent]] · [[self-hosted]]

## 是什麼

waoowaoo 是一個 AI 驅動的短劇/漫畫視頻製作工具。從小說文本出發，自動解析劇本、提取角色和場景、生成分鏡（storyboard）、AI 生成角色和場景圖片、語音旁白合成，最終自動組裝成完整視頻。支援中英文 UI 切換，技術棧基於 Next.js 15 + React 19 + MySQL + Prisma。

目前為 Early Beta 階段，功能更新頻繁，可能有 bug。

## 核心特色

- **AI 劇本解析** — 自動解析小說文本，提取角色、場景、劇情，無需手動分鏡
- **角色與場景生成** — AI 生成一致的（consistent）角色和場景圖片，跨鏡頭保持角色外貌一致
- **分鏡視頻製作** — 自動生成 shots 並組裝成視頻，支援轉場效果
- **AI 語音旁白** — 多角色語音合成，不同角色不同聲音
- **多語言支援** — 中英文 UI 切換，支援中英文劇本輸入
- **Docker 一鍵部署** — `docker compose up -d` 即可啟動，適合自架場景
- **現代技術棧** — Next.js 15 + React 19 + MySQL + Prisma + Redis + BullMQ

## 怎麼用

```bash
# Docker（最簡單）
curl -O https://raw.githubusercontent.com/saturndec/waoowaoo/main/docker-compose.yml
docker compose up -d
# 存取 http://localhost:13000
```

Local 開發：
```bash
git clone https://github.com/saturndec/waoowaoo
cd waoowaoo
cp .env.example .env
npm install
docker compose up mysql redis minio -d
npx prisma db push
npm run dev
```

技術棧：Next.js 15 + React 19、MySQL + Prisma ORM、Redis + BullMQ、Tailwind CSS v4、NextAuth.js、Docker。

## 跟其他方案的關係

| 特色 | waoowaoo | Runway ML | Pika | Stable Video Diffusion |
|------|----------|-----------|------|------------------------|
| 輸入 | 小說文本 | 圖片/文字 prompt | 文字 prompt | 圖片 |
| 輸出 | 完整短劇視頻 | 短視頻 | 短視頻 | 短視頻 |
| 分鏡 | ✅ 自動生成 | ❌ | ❌ | ❌ |
| 角色一致性 | ✅ AI 保持一致 | ⚠️ 需手動 | ⚠️ 需手動 | ❌ |
| 語音旁白 | ✅ 多角色合成 | ❌ | ❌ | ❌ |
| 開源 | ✅ | ❌ SaaS | ❌ SaaS | ✅ 模型開源 |
| 自架 | ✅ Docker | ❌ | ❌ | 本地跑模型 |
| 成本 | API 費用 | 高額訂閱 | 高額訂閱 | 需要 GPU |

waoowaoo 是少數從「文本到完整視頻」的全流程 AI 製作工具，填補了 [[generative-AI]] 在短劇/漫畫視頻領域的空白。與 Runway ML 和 Pika 相比，waoowaoo 的獨特價值在於全流程自動化（劇本→分鏡→角色→視頻）和角色一致性。

### 適用場景

- 短劇創作者：快速將劇本文字轉為視頻
- 漫畫製作：AI 輔助生成分鏡和角色圖
- 內容行銷：批量產出短視頻內容
- 教育培訓：將教材文字轉為互動影片

## 相關概念
← [[generative-AI]] · [[AI-Agent]] · [[self-hosted]]

## 來源

- GitHub：https://github.com/saturndec/waoowaoo
- Raw 檔案：`raw/2026-05-05-waoowaoo.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [saturndec/waoowaoo](https://github.com/saturndec/waoowaoo) |
| Stars | ⭐12k |
| License | — |
| Language | zh-TW |
| 收錄日期 | 2026-05-05 |

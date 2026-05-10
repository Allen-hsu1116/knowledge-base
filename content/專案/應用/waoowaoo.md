---
source: https://github.com/saturndec/waoowaoo
date: 2026-05-05
---

# waoowaoo AI 影視 Studio — AI 短劇/漫畫視頻製作

> AI 短劇/漫畫視頻製作工具，從小說文本自動生成分鏡、角色、場景，並製作成完整視頻。

**GitHub**: https://github.com/saturndec/waoowaoo
**Stars**: 12k | **Language**: TypeScript | **Status**: Early beta

## 什麼是 waoowaoo

AI 驅動的短劇/漫畫視頻製作工具。從小說文本自動解析角色、場景、情節，AI 生成一致的角色和場景圖片，自動組裝分鏡視頻，支援多角色 AI 旁白。

## 核心特色

| 功能 | 說明 |
|------|------|
| AI 劇本分析 | 自動解析小說，提取角色、場景、情節 |
| 角色 & 場景生成 | AI 生成一致性角色和場景圖片 |
| 分鏡視頻製作 | 自動生成鏡頭並組裝視頻 |
| AI 旁白 | 多角色語音合成 |
| 多語言 | 中英文 UI 切換 |

## 快速開始

```bash
# Docker（最簡單）
curl -O https://raw.githubusercontent.com/saturndec/waoowaoo/main/docker-compose.yml
docker compose up -d
```

訪問 http://localhost:13000

## 本地開發

```bash
git clone https://github.com/saturndec/waoowaoo.git
cd waoowaoo
cp .env.example .env
npm install
docker compose up mysql redis minio -d
npx prisma db push
npm run dev
```

## 技術棧

Next.js 15 + React 19 | MySQL + Prisma ORM | Redis + BullMQ | Tailwind CSS v4 | NextAuth.js | Docker

## 參考資料

- [GitHub - saturndec/waoowaoo](https://github.com/saturndec/waoowaoo)
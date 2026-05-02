#!/bin/bash
# sync-wiki-to-quartz.sh
# 從 knowledge-base/wiki/ 同步內容到 Quartz 專案的 content/ 目錄

QUARTZ_DIR="$(dirname "$0")"
WIKI_DIR="$(dirname "$0")/../knowledge-base/wiki"

echo "🔄 同步 wiki → Quartz content/"
rsync -av --delete \
  --exclude='SCHEMA.md' \
  --exclude='SKILL.md' \
  "$WIKI_DIR/" "$QUARTZ_DIR/content/"

echo "✅ 同步完成"
echo ""
echo "接下來可以："
echo "  1. cd $QUARTZ_DIR && npx quartz build --serve  # 本地預覽"
echo "  2. cd $QUARTZ_DIR && npx quartz sync            # 推送到 GitHub"
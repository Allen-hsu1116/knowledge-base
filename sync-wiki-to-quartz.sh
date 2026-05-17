#!/bin/bash
# sync-wiki-to-quartz.sh
# 從 knowledge-base/wiki/ 同步內容到 Quartz 專案的 content/ 目錄
# 使用 rsync 全量同步，自動掃描 wiki/ 目錄

QUARTZ_DIR="$(dirname "$0")"
WIKI_DIR="$(dirname "$0")/../knowledge-base/wiki"
CONTENT_DIR="$QUARTZ_DIR/content"

echo "🔄 同步 wiki → Quartz content/"

# 1. 使用 rsync 全量同步（刪除目標多餘檔案、保留 index.md 和 log.md）
rsync -av --delete \
  --exclude='.DS_Store' \
  "$WIKI_DIR/" "$CONTENT_DIR/"

# 2. 報告結果
sync_count=$(find "$CONTENT_DIR" -name "*.md" | wc -l)
wiki_count=$(find "$WIKI_DIR" -name "*.md" | wc -l)
echo ""
echo "✅ 同步完成：wiki/ $wiki_count 個 .md → content/ $sync_count 個 .md"
echo ""
echo "接下來可以："
echo "  1. cd $QUARTZ_DIR && npx quartz build --serve  # 本地預覽"
echo "  2. cd $QUARTZ_DIR && npx quartz sync            # 推送到 GitHub"
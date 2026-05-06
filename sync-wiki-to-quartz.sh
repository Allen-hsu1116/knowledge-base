#!/bin/bash
# sync-wiki-to-quartz.sh
# 從 knowledge-base/wiki/ 同步內容到 Quartz 專案的 content/ 目錄
# 維持資料夾結構讓 Explorer 有分類

QUARTZ_DIR="$(dirname "$0")"
WIKI_DIR="$(dirname "$0")/../knowledge-base/wiki"
CONTENT_DIR="$QUARTZ_DIR/content"

echo "🔄 同步 wiki → Quartz content/"

# 1. 清空 content/ 的 .md 和子資料夾
find "$CONTENT_DIR" -name "*.md" ! -name "index.md" ! -name "log.md" -delete 2>/dev/null
rm -rf "$CONTENT_DIR/概念" "$CONTENT_DIR/專案" "$CONTENT_DIR/影片" 2>/dev/null

# 2. 建立子資料夾
mkdir -p "$CONTENT_DIR/概念/核心" "$CONTENT_DIR/概念/工具與協議" "$CONTENT_DIR/概念/方法論" "$CONTENT_DIR/概念/應用與研究"
mkdir -p "$CONTENT_DIR/專案/Agent-框架與工具" "$CONTENT_DIR/專案/記憶與知識管理" "$CONTENT_DIR/專案/效能與壓縮" "$CONTENT_DIR/專案/應用" "$CONTENT_DIR/專案/Skill-生態系" "$CONTENT_DIR/專案/基礎設施"
mkdir -p "$CONTENT_DIR/影片"

# 3. 複製根目錄檔案
cp "$WIKI_DIR/index.md" "$CONTENT_DIR/"
cp "$WIKI_DIR/log.md" "$CONTENT_DIR/"

# 4. 分類複製
copy_to() {
  if [ -f "$WIKI_DIR/$1" ]; then
    cp "$WIKI_DIR/$1" "$CONTENT_DIR/$2/"
  else
    echo "⚠️  Missing: $1"
  fi
}

# 概念 - 核心
copy_to "AI-Agent.md"                  "概念/核心"
copy_to "LLM.md"                       "概念/核心"
copy_to "llm-internals.md"             "概念/核心"
copy_to "Prompt-Engineering.md"        "概念/核心"
copy_to "Token-Optimization.md"        "概念/核心"

# 概念 - 工具與協議
copy_to "MCP.md"                       "概念/工具與協議"
copy_to "Context-Database.md"          "概念/工具與協議"
copy_to "Knowledge-Graph.md"          "概念/工具與協議"
copy_to "AI-Skills.md"                 "概念/工具與協議"
copy_to "Coding-Agent-CLI.md"          "概念/工具與協議"

# 概念 - 方法論
copy_to "agent-persona.md"             "概念/方法論"
copy_to "agent-skills-ecosystem.md"    "概念/方法論"
copy_to "llm-knowledge-base.md"       "概念/方法論"
copy_to "prompt-security.md"           "概念/方法論"
copy_to "self-correction.md"           "概念/方法論"
copy_to "ocr-memory.md"               "概念/方法論"

# 概念 - 應用與研究
copy_to "AI-Tutoring.md"              "概念/應用與研究"

# 專案 - Agent 框架與工具
copy_to "affaan-m-everything-claude-code.md"    "專案/Agent-框架與工具"
copy_to "HKUDS-nanobot.md"                      "專案/Agent-框架與工具"
copy_to "openclaw.md"                           "專案/Agent-框架與工具"
copy_to "Gitlawb-openclaude.md"                 "專案/Agent-框架與工具"
copy_to "googleworkspace-cli.md"                "專案/Agent-框架與工具"
copy_to "Panniantong-Agent-Reach.md"            "專案/Agent-框架與工具"
copy_to "jackwener-OpenCLI.md"                  "專案/Agent-框架與工具"

copy_to "openai-codex-plugin-cc.md"              "專案/Agent-框架與工具"

# 專案 - 記憶與知識管理
copy_to "mempalace.md"                          "專案/記憶與知識管理"
copy_to "safishamsi-graphify.md"                "專案/記憶與知識管理"
copy_to "volcengine-OpenViking.md"              "專案/記憶與知識管理"
copy_to "openviking.md"                         "專案/記憶與知識管理"
copy_to "ragflow.md"                            "專案/記憶與知識管理"
copy_to "docling.md"                            "專案/記憶與知識管理"
copy_to "cocoindex.md"                          "專案/記憶與知識管理"
copy_to "microsoft-markitdown.md"              "專案/記憶與知識管理"
copy_to "datalab-to-chandra.md"                 "專案/記憶與知識管理"

# 專案 - 效能與壓縮
copy_to "JuliusBrussee-caveman.md"   "專案/效能與壓縮"
copy_to "rtk.md"                     "專案/效能與壓縮"
copy_to "litellm.md"                  "專案/效能與壓縮"

# 專案 - 應用
copy_to "santifer-career-ops.md"               "專案/應用"
copy_to "ZhuLinsen-daily_stock_analysis.md"     "專案/應用"
copy_to "HKUDS-DeepTutor.md"                    "專案/應用"
copy_to "saturndec-waoowaoo.md"                 "專案/應用"
copy_to "hugohe3-ppt-master.md"                 "專案/應用"
copy_to "autoresearch.md"                        "專案/應用"
copy_to "virattt-dexter.md"                       "專案/應用"

# 專案 - Skill 生態系
copy_to "sickn33-antigravity-awesome-skills.md" "專案/Skill-生態系"

# 專案 - 基礎設施
copy_to "volcengine-OpenSandbox.md"  "專案/基礎設施"
copy_to "project-golem.md"           "專案/基礎設施"
copy_to "hermes-agent.md"            "專案/基礎設施"

# 影片
copy_to "agent-anatomy-openclaw.md"     "影片"
copy_to "context-engineering-basics.md" "影片"
copy_to "ai-agent-interaction.md"       "影片"
copy_to "ai-agent-work-impact.md"       "影片"
copy_to "harness-engineering.md"        "影片"

echo "✅ 同步完成"
echo ""
echo "接下來可以："
echo "  1. cd $QUARTZ_DIR && npx quartz build --serve  # 本地預覽"
echo "  2. cd $QUARTZ_DIR && npx quartz sync            # 推送到 GitHub"

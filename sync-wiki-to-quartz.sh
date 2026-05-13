#!/bin/bash
# sync-wiki-to-quartz.sh
# 從 knowledge-base/wiki/ 同步內容到 Quartz 專案的 content/ 目錄
# 自動掃描 wiki/ 目錄，根據 index.md 分類歸檔

QUARTZ_DIR="$(dirname "$0")"
WIKI_DIR="$(dirname "$0")/../knowledge-base/wiki"
CONTENT_DIR="$QUARTZ_DIR/content"

echo "🔄 同步 wiki → Quartz content/"

# 1. 清空 content/ 的 .md 和子資料夾（保留 index.md 和 log.md）
find "$CONTENT_DIR" -name "*.md" ! -name "index.md" ! -name "log.md" -delete 2>/dev/null
rm -rf "$CONTENT_DIR/概念" "$CONTENT_DIR/專案" "$CONTENT_DIR/影片" 2>/dev/null

# 2. 建立子資料夾
mkdir -p "$CONTENT_DIR/概念/核心" "$CONTENT_DIR/概念/工具與協議" "$CONTENT_DIR/概念/方法論" "$CONTENT_DIR/概念/應用與研究"
mkdir -p "$CONTENT_DIR/專案/Agent-框架與工具" "$CONTENT_DIR/專案/記憶與知識管理" "$CONTENT_DIR/專案/效能與壓縮" "$CONTENT_DIR/專案/應用" "$CONTENT_DIR/專案/Skill-生態系" "$CONTENT_DIR/專案/基礎設施" "$CONTENT_DIR/專案/Agent-自演化" "$CONTENT_DIR/專案/模型推論與部署" "$CONTENT_DIR/專案/向量資料庫" "$CONTENT_DIR/專案/多媒體與爬蟲"
mkdir -p "$CONTENT_DIR/影片"

# 3. 複製根目錄檔案
cp "$WIKI_DIR/index.md" "$CONTENT_DIR/"
cp "$WIKI_DIR/log.md" "$CONTENT_DIR/"
cp "$WIKI_DIR/projects.md" "$CONTENT_DIR/"

# 4. 分類映射：檔名 → 目標資料夾
# 概念 - 核心
CONCEPT_CORE="AI-Agent LLM llm-internals Prompt-Engineering Token-Optimization"
# 概念 - 工具與協議
CONCEPT_TOOLS="MCP Context-Database Knowledge-Graph AI-Skills Coding-Agent-CLI sandbox"
# 概念 - 方法論
CONCEPT_METHOD="agent-persona agent-skills-ecosystem llm-knowledge-base prompt-security self-correction ocr-memory persona-skill-colleague mempalace-usage-discussion andrej-karpathy-ai-how karpathy-gist-llm-wiki karpathy-skills llm-knowledge-base-obsidian-claude-code"
# 概念 - 應用與研究
CONCEPT_APP="AI-Tutoring document-parsing hichunk rag self-rag 向量資料庫 模型推論與部署 語音辨識 網頁爬蟲 web-crawling web-scraping visualization cl4r1t4s"

# 專案 - Agent 框架與工具
PROJ_AGENT="affaan-m-everything-claude-code HKUDS-nanobot openclaw Gitlawb-openclaude googleworkspace-cli Panniantong-Agent-Reach jackwener-OpenCLI openai-codex-plugin-cc lsdefine-GenericAgent holaboss-ai-holaOS RightNow-AI-openfang cft0808-edict AutoGPT LangChain CrewAI bytedance-deer-flow ruvnet-ruflo"
# 專案 - 記憶與知識管理
PROJ_MEM="mempalace safishamsi-graphify volcengine-OpenViking openviking ragflow docling cocoindex microsoft-markitdown datalab-to-chandra tirth8205-code-review-graph pymupdf4llm run-llama-ParseBench LeDat98-NexusRAG aiptimizer-TurboOCR flamehaven01-Flamehaven-Filesearch MemPalace-mempalace thedotmack-claude-mem upstash-context7"
# 專案 - 效能與壓縮
PROJ_PERF="JuliusBrussee-caveman rtk litellm AlexsJones-llmfit gemma4-mtp-drafters rtk-ai-rtk"
# 專案 - 應用
PROJ_APP="santifer-career-ops ZhuLinsen-daily_stock_analysis HKUDS-DeepTutor saturndec-waoowaoo hugohe3-ppt-master autoresearch virattt-dexter HKUDS-Vibe-Trading Narcooo-inkos Imbad0202-academic-research-skills daily-stock-analysis waoowaoo ppt-master anthropics-financial-services HKUDS-AI-Trader yikart-AiToEarn"
# 專案 - Skill 生態系
PROJ_SKILL="sickn33-antigravity-awesome-skills heygen-com-hyperframes open-design nidhinjs-prompt-master addyosmani-agent-skills google-skills agency-agents-144-personas openmythos"
# 專案 - 模型推論與部署
PROJ_INFER="Ollama llama-cpp vLLM huggingface-transformers NVIDIA-TensorRT-LLM sgl-project-sglang"
# 專案 - 向量資料庫
PROJ_VEC="Milvus Qdrant Chroma"
# 專案 - 多媒體與爬蟲
PROJ_MEDIA="Whisper Crawl4AI"
# 專案 - 基礎設施
PROJ_INFRA="volcengine-OpenSandbox project-golem hermes-agent anthropics-claude-plugins-official can1357-oh-my-pi jo-inc-camofox-browser printing-press codeburn cubesandbox fireworks-tech-graph obscura agent-reach opencli opensandbox claude-code-boris-cherny-advanced-techniques"
# 專案 - Agent 自演化
PROJ_EVO="EvoMap-evolver"

# 影片
VIDEO="agent-anatomy-openclaw context-engineering-basics ai-agent-interaction ai-agent-work-impact harness-engineering self-correction ai-self-growth flash-attention kv-cache positional-embedding-evolution"

# 學習資源
mkdir -p "$CONTENT_DIR/學習資源"
PROJ_LEARN="rasbt-LLMs-from-scratch datawhalechina-hello-agents"

# 5. 複製函數
copy_to() {
  if [ -f "$WIKI_DIR/$1.md" ]; then
    cp "$WIKI_DIR/$1.md" "$CONTENT_DIR/$2/"
  else
    echo "⚠️  Missing: $1.md"
  fi
}

# 複製概念頁
for f in $CONCEPT_CORE; do copy_to "$f" "概念/核心"; done
for f in $CONCEPT_TOOLS; do copy_to "$f" "概念/工具與協議"; done
for f in $CONCEPT_METHOD; do copy_to "$f" "概念/方法論"; done
for f in $CONCEPT_APP; do copy_to "$f" "概念/應用與研究"; done

# 複製專案頁
for f in $PROJ_AGENT; do copy_to "$f" "專案/Agent-框架與工具"; done
for f in $PROJ_MEM; do copy_to "$f" "專案/記憶與知識管理"; done
for f in $PROJ_PERF; do copy_to "$f" "專案/效能與壓縮"; done
for f in $PROJ_APP; do copy_to "$f" "專案/應用"; done
for f in $PROJ_SKILL; do copy_to "$f" "專案/Skill-生態系"; done
for f in $PROJ_INFRA; do copy_to "$f" "專案/基礎設施"; done
for f in $PROJ_EVO; do copy_to "$f" "專案/Agent-自演化"; done
for f in $PROJ_INFER; do copy_to "$f" "專案/模型推論與部署"; done
for f in $PROJ_VEC; do copy_to "$f" "專案/向量資料庫"; done
for f in $PROJ_MEDIA; do copy_to "$f" "專案/多媒體與爬蟲"; done
for f in $PROJ_LEARN; do copy_to "$f" "學習資源"; done

# 複製影片頁
for f in $VIDEO; do copy_to "$f" "影片"; done

# 6. 檢查孤兒頁（在 wiki/ 但沒被分類的）
CLASSIFIED="$CONCEPT_CORE $CONCEPT_TOOLS $CONCEPT_METHOD $CONCEPT_APP $PROJ_AGENT $PROJ_MEM $PROJ_PERF $PROJ_APP $PROJ_SKILL $PROJ_INFRA $PROJ_EVO $PROJ_INFER $PROJ_VEC $PROJ_MEDIA $PROJ_LEARN $VIDEO"
ORPHANS=""
for f in "$WIKI_DIR"/*.md; do
  name=$(basename "$f" .md)
  if [ "$name" != "index" ] && [ "$name" != "log" ]; then
    if ! echo "$CLASSIFIED" | grep -qw "$name"; then
      ORPHANS="$ORPHANS $name"
    fi
  fi
done

if [ -n "$ORPHANS" ]; then
  echo ""
  echo "⚠️  以下 wiki 頁面未被分類到任何資料夾："
  for name in $ORPHANS; do
    echo "   - $name"
  done
  echo "請在 sync-wiki-to-quartz.sh 中加入對應的分類！"
fi

echo ""
echo "✅ 同步完成"
echo ""
echo "接下來可以："
echo "  1. cd $QUARTZ_DIR && npx quartz build --serve  # 本地預覽"
echo "  2. cd $QUARTZ_DIR && npx quartz sync            # 推送到 GitHub"
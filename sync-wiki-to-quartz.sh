#!/bin/bash
# sync-wiki-to-quartz.sh
# 從 knowledge-base/wiki/ 同步內容到 Quartz 專案的 content/ 目錄
# 1. 先 rsync 平面同步所有 .md 檔案
# 2. 再建立資料夾分類結構（Quartz Explorer 依賴資料夾做分類導航）

QUARTZ_DIR="$(dirname "$0")"
WIKI_DIR="$(dirname "$0")/../knowledge-base/wiki"
CONTENT_DIR="$QUARTZ_DIR/content"

echo "🔄 同步 wiki → Quartz content/"

# ============================================================
# Step 1: 平面同步所有 wiki 檔案到 content/ 根目錄
# ============================================================
rsync -av --delete \
  --exclude='.DS_Store' \
  --exclude='SCHEMA.md' \
  --exclude='SKILL.md' \
  "$WIKI_DIR/" "$CONTENT_DIR/"

# ============================================================
# Step 2: 建立資料夾分類結構，把檔案分類移動
# ============================================================

echo ""
echo "📁 建立資料夾分類結構..."

# 定義分類映射
# 格式：資料夾路徑 | 檔案列表（空格分隔）

# --- 概念/核心 ---
CONCEPT_CORE="
AI-Agent.md
LLM.md
llm-internals.md
Prompt-Engineering.md
Token-Optimization.md
"

# --- 概念/工具與協議 ---
CONCEPT_TOOLS="
AI-Skills.md
Coding-Agent-CLI.md
Context-Database.md
Knowledge-Graph.md
MCP.md
embedded-AI.md
"

# --- 概念/方法論 ---
CONCEPT_METHOD="
agent-persona.md
agent-skills-ecosystem.md
cl4r1t4s.md
llm-knowledge-base.md
llm-knowledge-base-obsidian-claude-code.md
karpathy-gist-llm-wiki.md
karpathy-skills.md
andrej-karpathy-ai-how.md
mempalace-usage-discussion.md
ocr-memory.md
persona-skill-colleague.md
prompt-security.md
self-correction.md
ai-self-growth.md
"

# --- 概念/應用與研究 ---
CONCEPT_APP="
AI-Tutoring.md
document-parsing.md
rag.md
generative-AI.md
AI-video-generation.md
diffusion-model.md
world-model.md
code-intelligence.md
"

# --- 專案/Agent-框架與工具 ---
PROJECT_AGENT="
AutoGPT.md
LangChain.md
CrewAI.md
garrytan-gstack.md
llama-index.md
RightNow-AI-openfang.md
cft0808-edict.md
lsdefine-GenericAgent.md
holaboss-ai-holaOS.md
Panniantong-Agent-Reach.md
jackwener-OpenCLI.md
openai-codex-plugin-cc.md
Gitlawb-openclaude.md
affaan-m-everything-claude-code.md
HKUDS-nanobot.md
googleworkspace-cli.md
addyosmani-agent-skills.md
google-skills.md
agency-agents-144-personas.md
openclaw.md
czlonkowski-n8n-mcp.md
tinyhumansai-openhuman.md
agent-reach.md
opencli.md
Mininglamp-AI-Mano-P.md
HKUDS-CLI-Anything.md
affaan-m-ECC.md
msitarzewski-agency-agents.md
"

# --- 專案/Agent-編排與記憶 ---
PROJECT_ORCHESTRATION="
ruvnet-ruflo.md
upstash-context7.md
bytedance-deer-flow.md
claude-code-boris-cherny-advanced-techniques.md
humanlayer-12-factor-agents.md
"

# --- 專案/記憶與知識管理 ---
PROJECT_MEMORY="
qmd.md
hichunk.md
pdfcraft.md
thedotmack-claude-mem.md
run-llama-ParseBench.md
LeDat98-NexusRAG.md
aiptimizer-TurboOCR.md
flamehaven01-Flamehaven-Filesearch.md
pymupdf4llm.md
microsoft-markitdown.md
datalab-to-chandra.md
safishamsi-graphify.md
volcengine-OpenViking.md
openviking.md
mempalace.md
MemPalace-mempalace.md
ragflow.md
docling.md
cocoindex.md
self-rag.md
"

# --- 專案/模型推論與部署 ---
PROJECT_INFERENCE="
ds4.md
huggingface-transformers.md
llama-cpp.md
sgl-project-sglang.md
Ollama.md
vLLM.md
NVIDIA-TensorRT-LLM.md
flash-attention.md
kv-cache.md
positional-embedding-evolution.md
模型推論與部署.md
rtk.md
"

# --- 專案/向量資料庫 ---
PROJECT_VECTOR="
Milvus.md
Qdrant.md
Chroma.md
向量資料庫.md
"

# --- 專案/多媒體與爬蟲 ---
PROJECT_MEDIA="
roboflow-supervision.md
Crawl4AI.md
Whisper.md
supertone-inc-supertonic.md
ruvnet-RuView.md
Anil-matcha-Open-Generative-AI.md
NVlabs-Sana.md
BigBodyCobain-Shadowbroker.md
web-crawling.md
web-scraping.md
網頁爬蟲.md
語音辨識.md
KeygraphHQ-shannon.md
"

# --- 專案/效能與壓縮 ---
PROJECT_PERF="
jieba.md
nltk.md
gemma4-mtp-drafters.md
AlexsJones-llmfit.md
tirth8205-code-review-graph.md
rtk-ai-rtk.md
JuliusBrussee-caveman.md
litellm.md
"

# --- 專案/學習資源 ---
PROJECT_LEARN="
minimind.md
rasbt-LLMs-from-scratch.md
datawhalechina-hello-agents.md
microsoft-ai-agents-for-beginners.md
"

# --- 專案/應用 ---
PROJECT_APPS="
shiyu-coder-Kronos.md
HKUDS-AI-Trader.md
yikart-AiToEarn.md
anthropics-financial-services.md
Imbad0202-academic-research-skills.md
Narcooo-inkos.md
HKUDS-Vibe-Trading.md
saturndec-waoowaoo.md
waoowaoo.md
hugohe3-ppt-master.md
ppt-master.md
virattt-dexter.md
HKUDS-DeepTutor.md
daily-stock-analysis.md
ZhuLinsen-daily_stock_analysis.md
autoresearch.md
santifer-career-ops.md
"

# --- 專案/Agent-自演化 ---
PROJECT_EVO="
EvoMap-evolver.md
"

# --- 專案/Skill-生態系 ---
PROJECT_SKILL="
nidhinjs-prompt-master.md
open-design.md
heygen-com-hyperframes.md
sickn33-antigravity-awesome-skills.md
obra-superpowers.md
github-spec-kit.md
K-Dense-AI-scientific-agent-skills.md
colbymchenry-codegraph.md
mattpocock-skills.md
multica-ai-andrej-karpathy-skills.md
Alishahryar1-free-claude-code.md
"

# --- 專案/基礎設施 ---
PROJECT_INFRA="
obscura.md
cubesandbox.md
fireworks-tech-graph.md
openmythos.md
codeburn.md
printing-press.md
anthropics-claude-plugins-official.md
jo-inc-camofox-browser.md
can1357-oh-my-pi.md
volcengine-OpenSandbox.md
opensandbox.md
hermes-agent.md
project-golem.md
sandbox.md
visualization.md
plausible-analytics.md
CloakHQ-CloakBrowser.md
trycua-cua.md
frappe-erpnext.md
Kappaemme-git-codex-complexity-optimizer.md
"

# --- 影片 ---
VIDEOS="
ai-self-growth.md
flash-attention.md
kv-cache.md
positional-embedding-evolution.md
self-correction.md
harness-engineering.md
ai-agent-interaction.md
ai-agent-work-impact.md
context-engineering-basics.md
agent-anatomy-openclaw.md
"

# --- 概念頁（中文資料夾名稱） ---
CONCEPT_MISC="
向量資料庫.md
模型推論與部署.md
網頁爬蟲.md
語音辨識.md
web-crawling.md
web-scraping.md
"

# ============================================================
# 移動函數：把檔案從 content/ 根目錄移到對應資料夾
# ============================================================
move_files() {
  local folder="$1"
  shift
  local files="$@"
  
  # 建立資料夾
  mkdir -p "$CONTENT_DIR/$folder"
  
  # 移動每個檔案
  for file in $files; do
    if [ -f "$CONTENT_DIR/$file" ]; then
      mv "$CONTENT_DIR/$file" "$CONTENT_DIR/$folder/"
    fi
  done
}

# 執行移動
move_files "概念/核心" $CONCEPT_CORE
move_files "概念/工具與協議" $CONCEPT_TOOLS
move_files "概念/方法論" $CONCEPT_METHOD
move_files "概念/應用與研究" $CONCEPT_APP
move_files "專案/Agent-框架與工具" $PROJECT_AGENT
move_files "專案/Agent-編排與記憶" $PROJECT_ORCHESTRATION
move_files "專案/記憶與知識管理" $PROJECT_MEMORY
move_files "專案/模型推論與部署" $PROJECT_INFERENCE
move_files "專案/向量資料庫" $PROJECT_VECTOR
move_files "專案/多媒體與爬蟲" $PROJECT_MEDIA
move_files "專案/效能與壓縮" $PROJECT_PERF
move_files "專案/學習資源" $PROJECT_LEARN
move_files "專案/應用" $PROJECT_APPS
move_files "專案/Agent-自演化" $PROJECT_EVO
move_files "專案/Skill-生態系" $PROJECT_SKILL
move_files "專案/基礎設施" $PROJECT_INFRA
move_files "影片" $VIDEOS

# ============================================================
# Step 3: 報告結果
# ============================================================
sync_count=$(find "$CONTENT_DIR" -name "*.md" | wc -l)
wiki_count=$(find "$WIKI_DIR" -name "*.md" | wc -l)
root_count=$(find "$CONTENT_DIR" -maxdepth 1 -name "*.md" | wc -l)
folder_count=$(find "$CONTENT_DIR" -mindepth 2 -name "*.md" | wc -l)

echo ""
echo "✅ 同步完成：wiki/ $wiki_count 個 .md → content/ $sync_count 個 .md"
echo "   根目錄：$root_count 個（index.md, projects.md, log.md 等）"
echo "   分類資料夾：$folder_count 個"
echo ""
echo "接下來可以："
echo "  1. cd $QUARTZ_DIR && npx quartz build --serve  # 本地預覽"
echo "  2. cd $QUARTZ_DIR && npx quartz sync            # 推送到 GitHub"
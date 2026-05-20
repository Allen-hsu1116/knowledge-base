#!/bin/bash
# sync-wiki-to-quartz.sh
# 從 knowledge-base/wiki/ 同步內容到 Quartz 專案的 content/ 目錄
# 1. 清空舊分類 → rsync 平面同步
# 2. 用 Python 從 projects.md + index.md 自動解析分類，移動檔案

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
WIKI_DIR="$(cd "$SCRIPT_DIR/../knowledge-base/wiki" && pwd)"
CONTENT_DIR="$SCRIPT_DIR/content"

echo "🔄 同步 wiki → Quartz content/"
echo "   wiki:   $WIKI_DIR"
echo "   target: $CONTENT_DIR"

# ============================================================
# Step 1: 清空舊分類，rsync 平面同步
# ============================================================
rm -rf "$CONTENT_DIR/概念" "$CONTENT_DIR/專案" "$CONTENT_DIR/影片"

rsync -av --delete \
  --exclude='.DS_Store' \
  --exclude='SCHEMA.md' \
  --exclude='SKILL.md' \
  "$WIKI_DIR/" "$CONTENT_DIR/"

# ============================================================
# Step 2: 用 Python 自動解析分類並移動檔案
# ============================================================
echo ""
echo "📁 自動分類中..."

CONTENT_DIR="$CONTENT_DIR" WIKI_DIR="$WIKI_DIR" python3 << 'PYTHON_SCRIPT'
import os, re, shutil

CONTENT_DIR = os.environ['CONTENT_DIR']
WIKI_DIR = os.environ['WIKI_DIR']

# --- projects.md section → 資料夾映射 ---
SECTION_FOLDER_MAP = {
    "🤖 Agent 框架與工具": "專案/Agent-框架與工具",
    "🔄 Agent 編排與記憶": "專案/Agent-編排與記憶",
    "🧠 記憶與知識管理": "專案/記憶與知識管理",
    "🧠 模型推論與部署": "專案/模型推論與部署",
    "🔍 向量資料庫": "專案/向量資料庫",
    "🎯 多媒體與爬蟲": "專案/多媒體與爬蟲",
    "⚡ 效能與壓縮": "專案/效能與壓縮",
    "📖 學習資源": "專案/學習資源",
    "📊 應用": "專案/應用",
    "🔄 Agent 自演化": "專案/Agent-自演化",
    "🛠 Skill 生態系": "專案/Skill-生態系",
    "🏗 基礎設施": "專案/基礎設施",
}

# --- index.md section → 資料夾映射 ---
CONCEPT_FOLDER_MAP = {
    "🧠 核心": "概念/核心",
    "🔌 工具與協議": "概念/工具與協議",
    "🛠 方法論": "概念/方法論",
    "📚 應用與研究": "概念/應用與研究",
    "🎨 生成式 AI": "概念/應用與研究",
    "🤖 程式碼智慧": "概念/應用與研究",
}

# --- 影片：固定清單 ---
VIDEO_SLUGS = [
    "ai-self-growth", "flash-attention", "kv-cache",
    "positional-embedding-evolution", "self-correction",
    "harness-engineering", "ai-agent-interaction",
    "ai-agent-work-impact", "context-engineering-basics",
    "agent-anatomy-openclaw",
]

def parse_wiki_links(line):
    """從 markdown 行提取所有 [[slug|alias]] 或 [[slug]] 或 [[slug\\|alias]] 中的 slug"""
    slugs = []
    for m in re.finditer(r'\[\[(.+?)\]\]', line):
        inner = m.group(1)
        # 取 | 或 \| 前面的部分作為 slug
        slug = re.split(r'\\\||\|', inner)[0].strip()
        if slug and not slug.startswith('!'):  # 排除圖片
            slugs.append(slug)
    return slugs

def parse_md_sections(filepath, section_markers):
    """解析 markdown 檔案，回傳 {filename: folder} 映射"""
    result = {}
    current_folder = None
    with open(filepath, 'r', encoding='utf-8') as f:
        for line in f:
            # 偵測 heading
            m = re.match(r'^#{1,4}\s+(.+)$', line)
            if m:
                heading = m.group(1).strip()
                matched = False
                for key, folder in section_markers.items():
                    if key in heading:
                        current_folder = folder
                        matched = True
                        break
                # 如果是頂層 section (## 或 #) 且沒匹配到映射 → 重置
                if not matched and re.match(r'^#{1,2}\s', line):
                    current_folder = None
            # 偵測任何包含 wiki link 的行（表格或一般文字）
            if current_folder and '[[' in line:
                for slug in parse_wiki_links(line):
                    result[f"{slug}.md"] = current_folder
    return result

# 解析 projects.md
file_to_folder = {}
projects_md = os.path.join(WIKI_DIR, "projects.md")
if os.path.exists(projects_md):
    file_to_folder.update(parse_md_sections(projects_md, SECTION_FOLDER_MAP))

# 解析 index.md
index_md = os.path.join(WIKI_DIR, "index.md")
if os.path.exists(index_md):
    file_to_folder.update(parse_md_sections(index_md, CONCEPT_FOLDER_MAP))

# --- Fallback: 從 known-repos.json 讀取分類 ---
import json

KNOWN_REPOS_JSON = os.path.join(WIKI_DIR, "..", "known-repos.json")

# concepts → 資料夾映射（同時支援空格和連字符格式）
CONCEPTS_FOLDER_MAP = {
    "AI Agent": "專案/Agent-框架與工具",
    "AI-Agent": "專案/Agent-框架與工具",
    "Agent Workflow": "專案/Agent-框架與工具",
    "MCP": "專案/Agent-框架與工具",
    "Coding Agent CLI": "專案/Agent-框架與工具",
    "Coding-Agent-CLI": "專案/Agent-框架與工具",
    "沙箱": "專案/基礎設施",
    "記憶": "專案/記憶與知識管理",
    "Knowledge Graph": "概念/方法論",
    "knowledge-graph": "概念/方法論",
    "RAG": "專案/記憶與知識管理",
    "AI Skills": "專案/Skill-生態系",
    "AI-Skills": "專案/Skill-生態系",
    "agent-skills-ecosystem": "專案/Skill-生態系",
    "Prompt Engineering": "概念/核心",
    "prompt-engineering": "概念/核心",
    "Token Optimization": "概念/核心",
    "token-optimization": "概念/核心",
    "Agent 安全": "概念/方法論",
    "prompt-security": "概念/方法論",
    "文件解析": "概念/應用與研究",
    "document-parsing": "概念/應用與研究",
    "OCR": "概念/應用與研究",
    "向量資料庫": "專案/向量資料庫",
    "LLM": "概念/核心",
    "LLM 推論": "專案/模型推論與部署",
    "模型推論與部署": "專案/模型推論與部署",
    "邊緣 AI": "概念/應用與研究",
    "embedded-AI": "概念/應用與研究",
    "Computer-Use": "專案/Agent-框架與工具",
    "computer-use": "專案/Agent-框架與工具",
    "GUI-VLA": "專案/Agent-框架與工具",
    "edge-AI": "概念/應用與研究",
}

# known-repos.json 的 slug 對應分類
CATEGORY_FOLDER_MAP = {
    "agent-framework": "專案/Agent-框架與工具",
    "agent-orchestration": "專案/Agent-編排與記憶",
    "memory-knowledge": "專案/記憶與知識管理",
    "model-inference": "專案/模型推論與部署",
    "vector-db": "專案/向量資料庫",
    "multimedia-crawler": "專案/多媒體與爬蟲",
    "performance": "專案/效能與壓縮",
    "learning": "專案/學習資源",
    "application": "專案/應用",
    "agent-evolution": "專案/Agent-自演化",
    "skill-ecosystem": "專案/Skill-生態系",
    "infrastructure": "專案/基礎設施",
}

if os.path.exists(KNOWN_REPOS_JSON):
    with open(KNOWN_REPOS_JSON, "r", encoding="utf-8") as f:
        repos_data = json.load(f)
    repos = repos_data.get("repos", {})
    for slug, info in repos.items():
        filename = f"{slug}.md"
        if filename not in file_to_folder:
            # 用 category 欄位（如果有的話）
            if isinstance(info, dict) and "category" in info:
                folder = CATEGORY_FOLDER_MAP.get(info["category"])
                if folder:
                    file_to_folder[filename] = folder
                    continue
            # 用 concepts 欄位做分類
            if isinstance(info, dict) and "concepts" in info:
                for concept in info["concepts"]:
                    if concept in CONCEPTS_FOLDER_MAP:
                        file_to_folder[filename] = CONCEPTS_FOLDER_MAP[concept]
                        break

# --- Fallback: 從 wiki 頁面的 frontmatter 和標題推斷分類 ---
# 關鍵字 → 資料夾映射
TITLE_KEYWORDS_FOLDER_MAP = {
    # Agent 框架與工具
    "agent": "專案/Agent-框架與工具", "mcp": "專案/Agent-框架與工具",
    "cli": "專案/Agent-框架與工具", "cua": "專案/Agent-框架與工具",
    "skill": "專案/Skill-生態系", "persona": "專案/Skill-生態系",
    # 記憶與知識管理
    "rag": "專案/記憶與知識管理", "memory": "專案/記憶與知識管理",
    "knowledge": "專案/記憶與知識管理", "memory": "專案/記憶與知識管理",
    # 模型推論與部署
    "llm": "專案/模型推論與部署", "inference": "專案/模型推論與部署",
    "transformer": "專案/模型推論與部署",
    # 學習資源
    "tutorial": "專案/學習資源", "beginner": "專案/學習資源",
    "from scratch": "專案/學習資源",
    # 基礎設施
    "sandbox": "專案/基礎設施", "browser": "專案/基礎設施",
    "erp": "專案/基礎設施",
}

# 掃描還沒分類的 wiki 頁面，用 frontmatter keywords 和標題推斷分類
wiki_dir = WIKI_DIR
for fname in os.listdir(CONTENT_DIR):
    if not fname.endswith('.md') or fname in ('index.md', 'log.md', 'projects.md'):
        continue
    if fname in file_to_folder:
        continue
    
    fpath = os.path.join(CONTENT_DIR, fname)
    if not os.path.isfile(fpath):
        continue
    
    try:
        with open(fpath, 'r', encoding='utf-8') as f:
            content = f.read()
            # 取 frontmatter（用簡單 YAML parser 處理多行值）
            fm = {}
            fm_lists = {}  # 儲存 YAML list 欄位
            if content.startswith('---'):
                end = content.find('---', 3)
                if end > 0:
                    fm_text = content[3:end]
                    current_key = None
                    current_list = []
                    for line in fm_text.split('\n'):
                        if not line.strip():
                            continue
                        # 新的 key: value 行
                        m = re.match(r'^(\w[\w-]*):\s*(.*)', line)
                        if m:
                            # 如果上一個 key 在收集 list，先存起來
                            if current_key and current_list:
                                fm_lists[current_key] = current_list
                                current_list = []
                            key, val = m.group(1), m.group(2).strip().strip('"').strip("'")
                            if val:
                                fm[key] = val
                            current_key = key
                        elif line.strip().startswith('- ') and current_key:
                            current_list.append(line.strip()[2:].strip())
                    # 處理最後一個 list
                    if current_key and current_list:
                        fm_lists[current_key] = current_list
            
            title = fm.get('title', fname.replace('.md', ''))
            slug = fm.get('slug', fname.replace('.md', ''))
            # 取 concepts / tags / topics 等欄位
            concepts_str = fm.get('concepts', fm.get('tags', ''))
            if not concepts_str and 'topics' in fm_lists:
                concepts_str = ','.join(fm_lists['topics'])
            elif not concepts_str and 'topics' in fm:
                concepts_str = fm['topics']
            
            # 用 slug 中的關鍵字推斷
            slug_lower = slug.lower()
            matched = False
            
            # 先從 concepts 欄位推斷
            if concepts_str:
                for concept in concepts_str.split(','):
                    concept = concept.strip()
                    if concept in CONCEPTS_FOLDER_MAP:
                        file_to_folder[fname] = CONCEPTS_FOLDER_MAP[concept]
                        matched = True
                        break
            
            if matched:
                continue
            
            # 用 title 關鍵字推斷
            for keyword, folder in TITLE_KEYWORDS_FOLDER_MAP.items():
                if keyword in slug_lower or keyword in title.lower():
                    file_to_folder[fname] = folder
                    matched = True
                    break
    except Exception:
        pass

# 加入影片
for slug in VIDEO_SLUGS:
    filename = f"{slug}.md"
    if filename not in file_to_folder:
        file_to_folder[filename] = "影片"

# 執行移動
moved = 0
for filename, folder in sorted(file_to_folder.items()):
    src = os.path.join(CONTENT_DIR, filename)
    if os.path.exists(src):
        dst_dir = os.path.join(CONTENT_DIR, folder)
        os.makedirs(dst_dir, exist_ok=True)
        shutil.move(src, os.path.join(dst_dir, filename))
        moved += 1

# 檢查漏網之魚
root_dir_files = [f for f in os.listdir(CONTENT_DIR)
                  if f.endswith('.md') and f not in ('index.md', 'log.md', 'projects.md')]
if root_dir_files:
    print(f"\n⚠️  以下 {len(root_dir_files)} 個檔案未被分類到任何資料夾：")
    for f in sorted(root_dir_files):
        print(f"  - {f}")
else:
    print("✅ 根目錄乾淨，所有 .md 檔案都已分類。")

# 統計
total = sum(1 for _, _, files in os.walk(CONTENT_DIR) for f in files if f.endswith('.md'))
root_count = sum(1 for f in os.listdir(CONTENT_DIR) if f.endswith('.md'))
folder_count = total - root_count

print(f"\n✅ 同步完成：wiki/ → content/ {total} 個 .md")
print(f"   根目錄：{root_count} 個（index.md, projects.md, log.md 等）")
print(f"   分類資料夾：{folder_count} 個")
print(f"   移動了 {moved} 個檔案到分類資料夾")
PYTHON_SCRIPT

echo ""
echo "接下來可以："
echo "  1. cd $SCRIPT_DIR && npx quartz build --serve  # 本地預覽"
echo "  2. cd $SCRIPT_DIR && npx quartz sync            # 推送到 GitHub"
import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// 自訂 Explorer 排序：讓資料夾順序跟 index.md 一致
// 概念 > 專案 > 影片 > 其他
const EXPLORER_ORDER: Record<string, number> = {
  "概念": 1,
  "專案": 2,
  "影片": 3,
}

// 概念子資料夾排序：核心 > 工具與協議 > 方法論 > 應用與研究
const CONCEPT_ORDER: Record<string, number> = {
  "核心": 1,
  "工具與協議": 2,
  "方法論": 3,
  "應用與研究": 4,
}

// 專案子資料夾排序：Agent-框架與工具 > 記憶與知識管理 > 效能與壓縮 > 應用 > Skill-生態系 > 基礎設施
const PROJECT_ORDER: Record<string, number> = {
  "Agent-框架與工具": 1,
  "記憶與知識管理": 2,
  "效能與壓縮": 3,
  "應用": 4,
  "Skill-生態系": 5,
  "基礎設施": 6,
}

function getFolderOrder(displayName: string, parentSlug?: string): number {
  // 頂層資料夾
  if (EXPLORER_ORDER[displayName] !== undefined) return EXPLORER_ORDER[displayName]
  // 概念子資料夾
  if (parentSlug && parentSlug.includes("概念") && CONCEPT_ORDER[displayName] !== undefined) return CONCEPT_ORDER[displayName]
  // 專案子資料夾
  if (parentSlug && parentSlug.includes("專案") && PROJECT_ORDER[displayName] !== undefined) return PROJECT_ORDER[displayName]
  return 999
}

const customSortFn = (a: any, b: any): number => {
  // 資料夾優先
  if ((!a.isFolder && !b.isFolder) || (a.isFolder && b.isFolder)) {
    const aOrder = getFolderOrder(a.displayName, a.slug?.segment)
    const bOrder = getFolderOrder(b.displayName, b.slug?.segment)
    // 如果有自訂順序，用它排序
    if (aOrder !== 999 || bOrder !== 999) {
      if (aOrder !== bOrder) return aOrder - bOrder
    }
    // 同順序的用字母排
    return a.displayName.localeCompare(b.displayName, undefined, { numeric: true, sensitivity: "base" })
  }
  if (!a.isFolder && b.isFolder) return 1
  return -1
}

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [],
  afterBody: [],
  footer: Component.Footer({
    links: {
      GitHub: "https://github.com/jackyzha0/quartz",
      "Discord Community": "https://discord.gg/cRFFHYye7t",
    },
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.ConditionalRender({
      component: Component.Breadcrumbs(),
      condition: (page) => page.fileData.slug !== "index",
    }),
    Component.ArticleTitle(),
    Component.ContentMeta(),
    Component.TagList(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Flex({
      components: [
        {
          Component: Component.Search(),
          grow: true,
        },
        { Component: Component.Darkmode() },
        { Component: Component.ReaderMode() },
      ],
    }),
    Component.Explorer({
      sortFn: customSortFn,
      folderDefaultState: "collapsed",
      folderClickBehavior: "link",
    }),
  ],
  right: [
    Component.Graph(),
    Component.DesktopOnly(Component.TableOfContents()),
    Component.Backlinks(),
  ],
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [Component.Breadcrumbs(), Component.ArticleTitle(), Component.ContentMeta()],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Flex({
      components: [
        {
          Component: Component.Search(),
          grow: true,
        },
        { Component: Component.Darkmode() },
      ],
    }),
    Component.Explorer({
      sortFn: customSortFn,
      folderDefaultState: "collapsed",
      folderClickBehavior: "link",
    }),
  ],
  right: [],
}

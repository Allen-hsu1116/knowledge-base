import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// 自訂 Explorer 排序：讓資料夾順序跟 index.md 一致（概念 > 專案 > 影片）

const customSortFn = (a: any, b: any): number => {
  // 資料夾優先
  if ((!a.isFolder && !b.isFolder) || (a.isFolder && b.isFolder)) {
    // 自訂排序表
    const orderMap: Record<string, number> = {
      // 頂層
      "概念": 1,
      "專案": 2,
      "影片": 3,
      // 概念子資料夾
      "核心": 10,
      "工具與協議": 20,
      "方法論": 30,
      "應用與研究": 40,
      // 專案子資料夾
      "Agent-框架與工具": 100,
      "記憶與知識管理": 200,
      "效能與壓縮": 300,
      "應用": 400,
      "Skill-生態系": 500,
      "基礎設施": 600,
    }
    const aOrder = orderMap[a.displayName] ?? 999
    const bOrder = orderMap[b.displayName] ?? 999
    if (aOrder !== bOrder) return aOrder - bOrder
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

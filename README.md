# GitHub Trending Knowledge Base

这是一个 **Obsidian 兼容的 GitHub 项目知识库**。目标不是只保存榜单，而是把 GitHub Trending 作为项目发现入口，并持续沉淀可检索的项目知识。

## 目录结构

```text
GitHub-Trending-KB/
├── Daily/
│   └── YYYY/
│       └── MM/
│           └── YYYY-MM-DD.md
├── Projects/
├── Topics/
├── Index/
│   └── projects.jsonl
├── Templates/
├── Dashboard.md
└── README.md
```

- `Daily/YYYY/MM/`：每天的 GitHub Trending 日报，按年/月归档，避免侧栏日期无限增长。
- `Projects/`：每个仓库一张长期项目卡片；正文标题和展示名统一使用 `owner/repo`。
- `Topics/`：主题入口和双向链接。
- `Index/projects.jsonl`：按 `date + repo` 保存结构化历史快照，用于统计和去重。
- `Templates/`：日报和项目卡片模板。
- `Dashboard.md`：Dataview 仪表盘。

## 日报展示规范

日报不再使用只有 Rank/Repo 的主表格。每个仓库使用独立 Markdown 项目块，至少包含：

- GitHub 原始排名
- 标准仓库名 `owner/repo`
- 中文简介
- 主要功能 / 特点
- 主要语言
- Total Stars / Forks / Stars Today
- GitHub 链接
- 项目知识卡链接

GitHub Trending 当天页面显示什么就记录什么，并严格保留原始顺序；不做兴趣筛选、评分或二次排序。

## 存储原则

- Markdown 是主知识层：可读、可编辑、支持双链。
- JSONL 是结构化数据层：适合 Python、统计、去重和趋势分析。
- 项目使用 `owner/repo` 作为唯一键。
- 重复上榜不会创建第二个项目节点，只更新原项目卡并追加当天历史。

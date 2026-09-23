# GitHub Trending Knowledge Base

这是一个 **Obsidian 兼容的 GitHub 项目知识库**。目标不是只保存榜单，而是把 GitHub Trending 作为项目发现入口，并持续沉淀可检索、可实际利用的项目知识。

## 目录结构

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

- Daily/YYYY/MM/：每天的 GitHub Trending 日报，按年/月归档。
- Projects/：每个仓库一张长期项目卡片；展示名统一使用 owner/repo。
- Topics/：主题入口和双向链接。
- Index/projects.jsonl：按 date + repo 保存结构化历史快照。
- Templates/：日报和项目卡片模板。
- Dashboard.md：Dataview 仪表盘。

## 内容原则

知识库不是“技术名词目录”。每个项目必须尽量回答：

1. **它是什么**：解决什么实际问题。
2. **它能做什么**：列出主要能力。
3. **怎么利用**：放到具体工作流里，输入 → 操作 → 输出是什么。
4. **实际例子**：优先使用 README、官方文档、examples、demo 中真实存在的使用案例。
5. **有什么限制**：项目成熟度、依赖、权限、安全或适用边界。

例如不要只写：

> 基于 Kubernetes 的 Agent Runtime。

而应继续解释：

> 如果要同时运行数百个长期 Coding Agent，可以让 Agent 空闲时暂停并释放 Worker，再在用户继续会话时恢复原来的文件和运行状态。

## 日报展示规范

每个仓库使用独立 Markdown 项目块，至少包含：
- GitHub 原始排名
- 标准仓库名 owner/repo
- 中文简介
- 主要功能 / 特点
- **怎么利用 / 实例**
- Language / Total Stars / Forks / Stars Today
- GitHub 链接
- 项目知识卡链接

“怎么利用 / 实例”优先来自官方材料。若根据项目能力自行推导，必须明确标记为“可推导用法”，避免把推断写成官方事实。

GitHub Trending 当天页面显示什么就记录什么，并严格保留原始顺序；不做兴趣筛选、评分或二次排序。

## 存储原则
- Markdown 是主知识层。
- JSONL 是结构化数据层。
- 项目使用 owner/repo 作为唯一键。
- 重复上榜不会创建第二个项目节点，只更新原项目卡并追加当天历史。

# GitHub Trending Knowledge Base

这是一个 **Obsidian 兼容的 GitHub 项目情报库**。

## 目录

- `Daily/`：每天的 GitHub Trending 日报
- `Projects/`：每个仓库一张长期项目卡片
- `Topics/`：主题入口和双向链接
- `Index/projects.jsonl`：结构化历史索引，供程序统计与去重
- `Templates/`：日报和项目卡片模板
- `Dashboard.md`：Dataview 仪表盘示例

## 在 Obsidian 中打开

1. 解压整个文件夹。
2. Obsidian → **打开其他仓库 / Open folder as vault**。
3. 选择 `GitHub-Trending-KB-Obsidian` 文件夹。
4. 可选安装社区插件 `Dataview`，打开 `Dashboard.md` 查看自动统计。

## 存储原则

- Markdown 是主知识层：可读、可编辑、支持双链。
- JSONL 是结构化数据层：适合 Python、统计、去重和趋势分析。
- 每个项目使用固定项目卡片，日报只记录当天变化，避免重复。

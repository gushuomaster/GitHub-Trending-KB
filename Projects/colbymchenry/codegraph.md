---
repo: "colbymchenry/codegraph"
url: "https://github.com/colbymchenry/codegraph"
first_seen: 2026-10-01
last_seen: 2026-10-01
trending_count: 1
github_rank: 14
stars_today: 118
total_stars: 72584
forks: 4664
language: C
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["Developer Tools", "Code Intelligence", "AI"]
tags: ["knowledge-graph", "tree-sitter", "mcp", "sqlite", "code-search"]
topics: ["AI", "Developer-Tools"]
status: active
---
# colbymchenry/codegraph

## 一句话说明
在本地把代码解析为符号和调用关系图，让 Coding Agent 用更少工具调用理解调用链、影响范围和相关源码。

## 它能做什么
- 用 tree-sitter/Rust 内核提取函数、类、调用、导入和继承关系。
- 把图、源码和 FTS5 搜索保存在项目内 SQLite 数据库。
- 监听文件变化并增量同步索引。
- 通过 MCP 和 CLI 服务 Claude Code、Codex、Cursor、Gemini 等多种 Agent。

## 怎么利用
运行安装器选择要配置的 Agent，然后在每个代码仓库执行 `codegraph init` 建立 `.codegraph` 索引；后续让 Agent 用 explore 查询请求链路、定义和 blast radius，代码变更会自动增量同步。

## 实际例子
**官方文档场景 →** 回答“一个 HTTP 请求如何到达数据库”。 **输入 →** 已索引的后端代码仓库和问题。 **操作 →** Agent 调用 CodeGraph explore，沿路由、服务和 ORM 调用边遍历。 **输出 →** 相关源码、调用流程与修改影响范围。

    npx @colbymchenry/codegraph
    codegraph init

## 适合谁
维护中大型、多语言代码库并希望 Coding Agent快速理解架构和改动影响的开发者。

## 局限 / 注意点
静态解析不能完整还原反射、动态调用、运行时配置或生成代码；首次索引占用磁盘和时间，敏感源码虽保持本地，也应审查 MCP 暴露范围和 Agent 权限。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-10-01 | 14 | +118 | 72584 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-01|2026-10-01]]


---
repo: "DeusData/codebase-memory-mcp"
url: "https://github.com/DeusData/codebase-memory-mcp"
first_seen: 2026-09-24
last_seen: 2026-09-24
trending_count: 1
github_rank: 14
stars_today: 266
total_stars: 44500
forks: 3632
language: C
category: ["AI","Developer Tools","Code Intelligence"]
tags: ["mcp","knowledge-graph","code-intelligence","tree-sitter","c"]
topics: ["Developer-Tools","Context-Engineering"]
status: active
---
# DeusData/codebase-memory-mcp

## 一句话说明
本地代码智能 MCP，把代码库索引成持久知识图谱，让 Coding Agent 用结构化查询理解函数、调用链、路由和跨服务关系，减少逐文件读取。

## 它能做什么
- Tree-sitter + Hybrid LSP 索引多语言代码。
- 提供 architecture、call graph、dead code、change impact、semantic search 等 MCP 工具。
- 本地持久化知识图谱并自动监视代码变化。
- 内置图谱 Web UI。

## 怎么利用
安装本地二进制并让安装器配置检测到的 Coding Agent；开启 auto-index 后，Agent 进入项目即可复用已有代码图谱，而不是每次重新 grep/read。

## 实际例子
**场景 →** 让 Agent 理解大型遗留仓库。 **操作 →** 安装后设置 `codebase-memory-mcp config set auto_index true`，重启 Agent；需要可视化时运行 `codebase-memory-mcp --ui=true --port=9749`。 **结果 →** Agent 可直接查询架构、调用链和变更影响，浏览器可查看知识图谱。

## 适合谁
大型代码库、长周期 Coding Agent、希望减少上下文 token 消耗的开发团队。

## 局限 / 注意点
工具会读取整个代码库并修改 Agent 配置；应审查二进制、配置写入和允许访问的根目录。语义解析质量也会因语言而异。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-24 | 14 | +266 | 44500 |
## 相关主题
[[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Context-Engineering|Context-Engineering]]
## 相关日报
- [[Daily/2026/09/2026-09-24|2026-09-24]]
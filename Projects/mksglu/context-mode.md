---
repo: "mksglu/context-mode"
url: "https://github.com/mksglu/context-mode"
first_seen: 2026-09-09
last_seen: 2026-10-01
trending_count: 2
github_rank: 4
stars_today: 90
total_stars: 24479
forks: 1769
language: TypeScript
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Agent", "Developer Tools"]
tags: ["context-window", "sandbox", "mcp", "hooks", "fts5"]
topics: ["AI", "Agent", "Developer-Tools"]
status: active
---
# mksglu/context-mode

## 一句话说明
把大体积工具输出留在沙箱或可检索存储中，只把摘要和按需片段送回 Coding Agent，从而延长长任务的有效上下文。

## 它能做什么
- 在隔离环境中执行命令、抓取网页和批量处理文件，避免原始输出直接塞进上下文。
- 把本地文件或目录建立 FTS5 索引，并跨会话搜索与复用。
- 通过 MCP 与生命周期 hooks 在多种 Coding Agent 中强制路由，并统计 token 节省。

## 怎么利用
安装对应平台插件并运行 doctor；随后让 Agent 用 ctx_execute/ctx_index 处理测试日志、构建输出或大文档，主对话只接收摘要，需要证据时再 ctx_search 取回命中片段。

## 实际例子
**官方工具对应场景 →** 分析一个大型测试日志目录。 **输入 →** 日志目录与失败关键字。 **操作 →** 用 `ctx_index` 建立持久索引，Agent 用 `ctx_search` 查找异常并只取回命中上下文。 **输出 →** 错误位置、相关日志片段和结论，而不是整批日志占满上下文。

    npm install -g context-mode
    /context-mode:ctx-doctor

## 适合谁
经常让 Claude Code、Codex、Cursor 等处理大日志、长文档或多轮重构的开发者。

## 局限 / 注意点
需要为宿主正确配置 MCP/hooks，并依赖 Node/Bun 与 SQLite FTS5；路由和摘要会改变工具输出形态，关键结论仍应回看原始证据，不能只信压缩摘要。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-09 | 未保存 | +651 | 未保存 |
| 2026-10-01 | 4 | +90 | 24479 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]


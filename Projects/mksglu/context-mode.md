---
type: github-project
repo: "mksglu/context-mode"
url: "https://github.com/mksglu/context-mode"
first_seen: 2026-09-09
last_seen: 2026-10-04
trending_count: 5
language: "TypeScript"
total_stars: 24479
forks: 1769
stars_today: 90
github_rank: 4
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Agent", "Context-Engineering", "Developer-Tools"]
tags: ["ai", "agent", "context-engineering", "developer-tools"]
topics: ["AI", "Agent", "Context-Engineering", "Developer-Tools"]
---
# mksglu/context-mode

## 一句话说明
把大型工具输出留在本地沙箱和可检索存储中，只向 Agent 返回摘要与命中片段，从而延长长任务的有效上下文。

**当前官方描述：** Context window optimization for AI coding agents. Sandboxes tool output (98% reduction), persists session memory, and   enforces routing across 17 platforms via MCP + hooks.

## 它能做什么
- 在隔离子进程中运行代码，只把 stdout 返回对话。
- 用 SQLite FTS5/BM25 索引文件和会话事件，按需检索片段。
- 通过 MCP 与 hooks 为多种 Coding Agent 提供路由、统计和恢复。

## 怎么利用
安装对应宿主插件并运行 doctor；用 `ctx_index` 索引日志或目录，再用 `ctx_search` 查错误，只把命中片段带回主对话。

## 实际例子
**官方工具场景 →** 输入大型测试日志目录和失败关键字；建立 FTS5 索引后检索异常，输出错误位置与相关片段，而不是把全部日志塞入上下文。

## 关键命令
```text
npm install -g context-mode
ctx doctor
```

## 适合谁
经常让 Agent 处理大日志、长文档、多文件分析或跨会话重构的开发者。

## 局限 / 注意点
依赖 MCP/hooks、Node/Bun 与 SQLite FTS5；摘要和检索会改变原始输出形态，关键结论仍需回看原始证据。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 13 | 651 | 未保存 | 归档顺序；统计来自原有快照或未保存 |
| 2026-10-01 | 4 | 90 | 24479 | 仓库索引 |
| 2026-10-02 | 8 | 未保存 | 未保存 | 仓库索引 |
| 2026-10-03 | 10 | 未保存 | 未保存 | 仓库索引 |
| 2026-10-04 | 13 | 未保存 | 未保存 | 仓库索引 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Context-Engineering|Context-Engineering]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]
- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/mksglu/context-mode

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/mksglu/context-mode/blob/main/README.md
- README blob SHA：b796169524473691594af24995d21ca94027f7c7
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。

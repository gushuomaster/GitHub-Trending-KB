---
type: github-project
repo: mksglu/context-mode
url: https://github.com/mksglu/context-mode
first_seen: '2026-09-09'
last_seen: '2026-10-16'
trending_count: 10
language: TypeScript
total_stars: 29787
forks: 2083
stars_today: 904
github_rank: 8
fetched_at: '2026-10-16T08:10:32+08:00'
category:
- AI
- Agent
- Context-Engineering
- Developer-Tools
tags:
- ai
- agent
- context-engineering
- developer-tools
topics:
- AI
- Agent
- Context-Engineering
- Developer-Tools
documentation_checked_at: '2026-10-16'
stats_as_of: '2026-10-16'
---

# mksglu/context-mode

> 功能和用法按 2026-10-16 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
把大型工具输出留在本地沙箱和可检索存储中，只向 Agent 返回摘要与命中片段，从而延长长任务的有效上下文。

## 它能做什么
- 在隔离子进程中运行代码，只把 stdout 返回对话。
- 用 SQLite FTS5/BM25 索引文件和会话事件，按需检索片段。
- 通过 MCP 与 hooks 为多种 Coding Agent 提供路由、统计和恢复。

## 怎么利用
安装对应宿主插件并运行 doctor；用 `ctx_index` 索引日志或目录，再用 `ctx_search` 查错误，只把命中片段带回主对话。

## 实际例子
**官方工具场景 →** 输入大型测试日志目录和失败关键字；建立 FTS5 索引后检索异常，输出错误位置与相关片段，而不是把全部日志塞入上下文。

## 适合谁
经常让 Agent 处理大日志、长文档、多文件分析或跨会话重构的开发者。

## 局限 / 注意点
不同宿主的 MCP/hooks 接入方式不同；需要兼容运行时和 SQLite FTS5。摘要与检索会改变输出形态，关键结论需回看原始证据；不以 --continue 继续时，README 说明旧会话数据会被删除，不能当作永久跨项目记忆。

## 关键命令
```text
/plugin marketplace add mksglu/context-mode
/plugin install context-mode@context-mode
/context-mode:ctx-doctor
```

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 13 | 651 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/65c9872b096ffb485055f7f8af63b7f68a5853f9/archive/repository/2026/2026-09-09/(null).json) |
| 2026-10-01 | 4 | 90 | 24479 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-02 | 8 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/95a8b5931135f4aef4bbc15dbb13ca4dc9319407/archive/repository/2026/2026-10-02/(null).json) |
| 2026-10-03 | 10 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/2c94a658b36f43039d6e2d707f4bc9f4746da107/archive/repository/2026/2026-10-03/(null).json) |
| 2026-10-04 | 13 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |
| 2026-10-11 | 5 | 178 | 26306 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-13 | 3 | 246 | 27272 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |

| 2026-10-14 | 4 | 969 | 28215 | GitHub Today live snapshot |
| 2026-10-15 | 3 | 947 | 29096 | GitHub Today live snapshot |
| 2026-10-16 | 8 | 904 | 29787 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Context-Engineering|Context-Engineering]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]
- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-11|2026-10-11]]
- [[Daily/2026/10/2026-10-13|2026-10-13]]

- [[Daily/2026/10/2026-10-14|2026-10-14]]
- [[Daily/2026/10/2026-10-15|2026-10-15]]
- [[Daily/2026/10/2026-10-16|2026-10-16]]

## GitHub 原始链接
https://github.com/mksglu/context-mode

## 官方资料复核（2026-10-16）
- README：https://github.com/mksglu/context-mode/blob/main/README.md
- README blob SHA：`b796169524473691594af24995d21ca94027f7c7`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。



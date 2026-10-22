---
type: github-project
repo: "Graphify-Labs/graphify"
url: "https://github.com/Graphify-Labs/graphify"
first_seen: "2026-10-21"
last_seen: "2026-10-22"
trending_count: 2
github_rank: 11
stars_today: 1433
total_stars: 131605
forks: 12636
language: "Python"
fetched_at: "2026-10-22T08:05:55+08:00"
documentation_checked_at: "2026-10-22"
stats_as_of: "2026-10-22"
snapshot_status: live
topics: ["Knowledge Graph","Code Intelligence","Developer Tools","Agent"]
status: active
---
# Graphify-Labs/graphify

## 一句话说明
把代码、文档、SQL schema、配置和 PDF 转成可查询知识图谱，让 Agent 能追踪跨文件关系而不依赖向量库。

> 使用方式依据仓库当前 README 核对于 2026-10-22。

## 它能做什么
- 用 tree-sitter 在本地解析约 40 种语言的调用、导入和继承关系
- 检测关键节点、子系统社区和跨文件路径，并标注 EXTRACTED/INFERRED
- 生成 `graph.json`、架构报告和可交互 HTML，也可通过 CLI/MCP 查询

## 怎么利用
**官方示例 →** 安装后在 FastAPI 仓库执行 `/graphify .`，再运行 `graphify path "FastAPI" "ModelField"`；输出两者之间的三跳关系，以及每条边是源码抽取还是推断。

## 实际例子
**官方示例 →** 安装后在 FastAPI 仓库执行 `/graphify .`，再运行 `graphify path "FastAPI" "ModelField"`；输出两者之间的三跳关系，以及每条边是源码抽取还是推断。

## 关键命令
```bash
uv tool install graphifyy
graphify install
/graphify .
```

## 适合谁
需要理解陌生代码库、追踪跨文件依赖、生成架构报告或为 Coding Agent 提供结构化上下文的开发者和维护团队。

## 局限 / 注意点
需要 Python 3.10+；代码可完全本地解析，但文档/PDF/图片的语义抽取会按配置发送给模型后端。大型仓库构图耗时和占用空间，查询日志默认保存在本机。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-21 | 7 | 802 | 130210 | 12538 | GitHub Today live snapshot |
| 2026-10-22 | 11 | 1433 | 131605 | 12636 | GitHub Today live snapshot |

## 相关主题
[[Topics/Knowledge Graph|Knowledge Graph]] · [[Topics/Code Intelligence|Code Intelligence]] · [[Topics/Developer Tools|Developer Tools]] · [[Topics/Agent|Agent]]

## 相关日报
- [[Daily/2026/10/2026-10-21|2026-10-21]]
- [[Daily/2026/10/2026-10-22|2026-10-22]]

## GitHub 原始链接
https://github.com/Graphify-Labs/graphify

## 官方资料复核（2026-10-22）
- README：https://github.com/Graphify-Labs/graphify/blob/v8/README.md
- README blob SHA：`544af36d76762b66d8204bbd74254ba8377bda48`

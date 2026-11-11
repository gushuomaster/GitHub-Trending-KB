---
type: github-project
repo: "github/spec-kit"
url: "https://github.com/github/spec-kit"
first_seen: 2026-09-12
last_seen: "2026-11-05"
trending_count: 2
language: "Python"
total_stars: 147460
forks: 13232
stars_today: 808
github_rank: 7
fetched_at: "2026-11-05T14:04:38+08:00"
documentation_checked_at: "2026-11-05"
stats_as_of: "2026-11-05"
snapshot_status: "live"
category: ["AI","Developer-Tools","SDD"]
topics: ["AI","Developer-Tools","Skills"]
---
# github/spec-kit

## 一句话说明
GitHub 官方的结构化 Agent 开发工具包，把需求、技术计划、任务、实现和收敛检查保存为可审阅产物。

## 它能做什么
- 用 constitution、specify、plan、tasks、implement、converge 串联 SDD
- 提供独立的 bug assess→fix→test 工作流
- 用 idea assessment 形成 go、needs-clarification 或 kill 决策
- 支持 extension、preset、workflow、overlay、bundle，以及公开、私有或离线 catalog

## 怎么利用
官方 SDD 示例：运行 `specify init my-project --integration <agent>` 后，在 Agent 中依次执行 `/speckit-specify`、`/speckit-plan`、`/speckit-tasks`、`/speckit-implement` 与 `/speckit-converge`，输出规格、计划、任务和验证结果。

## 实际例子
**官方材料中的工作流：** 官方 SDD 示例：运行 `specify init my-project --integration <agent>` 后，在 Agent 中依次执行 `/speckit-specify`、`/speckit-plan`、`/speckit-tasks`、`/speckit-implement` 与 `/speckit-converge`，输出规格、计划、任务和验证结果。

## 关键命令
```bash
uv tool install specify-cli
specify init my-project --integration codex
```

## 适合谁
希望 Coding Agent 按可审阅规格、计划、任务和验证产物工作的开发团队。

## 局限 / 注意点
- 需要 Python 3.11+、uv 与受支持的 Agent 集成。完整流程会增加文件和步骤，小修复应选择独立 bug 工作流；社区 catalog 不代表 GitHub 审计，模板不能替代需求判断，未得到 verified/converged 的结果不能视为完成。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-09-12 | 15 | 985 | 未保存 | 未保存 | 语言不限归档；统计见说明 |
| 2026-11-05 | 7 | 808 | 147460 | 13232 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Skills|Skills]]

## 相关日报
- [[Daily/2026/09/2026-09-12|2026-09-12]]
- [[Daily/2026/11/2026-11-05|2026-11-05]]

## GitHub 原始链接
https://github.com/github/spec-kit

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/github/spec-kit/blob/main/README.md
- 说明：当前资料不代表 2026-09-12 当时的功能版本。

## 官方资料复核（2026-11-05）
- README：https://github.com/github/spec-kit/blob/HEAD/README.md
- README blob SHA：`a4ea4f520add603de250c59f96037f0eb7be46e5`
- 复核了三类独立流程、扩展与 catalog 体系、安装要求和收敛边界；当前资料不冒充历史版本。

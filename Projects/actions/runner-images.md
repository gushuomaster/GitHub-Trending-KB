---
repo: "actions/runner-images"
url: "https://github.com/actions/runner-images"
first_seen: 2026-09-27
last_seen: 2026-09-27
trending_count: 1
github_rank: 13
stars_today: null
total_stars: 13393
forks: 3875
language: "PowerShell"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["CI-CD", "GitHub-Actions", "Infrastructure"]
status: active
---
# actions/runner-images

## 一句话说明
GitHub-hosted Actions runners 与 Microsoft-hosted Azure Pipelines agents 的虚拟机镜像源码和软件清单。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 维护 Ubuntu、macOS、Windows 多版本 runner 镜像
- 公布各镜像预装软件与发布说明
- 提供自建 VM 镜像的定义和构建文档

## 怎么利用
CI 遇到环境差异时先查对应镜像软件清单和公告；需要固定工具链时显式指定 runner 标签或基于仓库定义构建自托管镜像。

## 实际例子
**官方使用场景：** 场景 → 验证 `ubuntu-latest` 是否含目标 SDK。输入 → workflow 标签和 SDK 版本。操作 → 查对应 Included Software 文档并在 CI 输出版本。输出 → 可复现的 runner 选择或自定义镜像方案。

## 适合谁
维护 GitHub Actions/Azure Pipelines、排查托管 runner 环境变化的 DevOps 团队。

## 局限 / 注意点
`*-latest` 会滚动迁移；预装软件和弃用计划会变化，关键生产流程应锁定标签并监控公告。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-27 | 13 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/CI-CD|CI-CD]] · [[Topics/GitHub-Actions|GitHub-Actions]] · [[Topics/Infrastructure|Infrastructure]]

## 相关日报
- [[Daily/2026/09/2026-09-27|2026-09-27]]

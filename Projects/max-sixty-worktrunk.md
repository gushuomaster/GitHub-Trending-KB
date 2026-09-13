---
repo: "max-sixty/worktrunk"
first_seen: 2026-09-13
last_seen: 2026-09-13
recommend_score: 9.4
trending_count: 1
stars_today: 137
category: ["AI", "Agent", "Developer Tools"]
tags: ["github/agent", "github/git", "github/worktree", "github/rust", "github/developer-tools", "github/parallel"]
---

# max-sixty/worktrunk

## 项目定位
面向并行 AI Agent 开发的 Git worktree 管理 CLI，把隔离工作树、分支生命周期和 Agent 工作流工程化。

## 核心功能 / 实现特点
- Rust/Cargo 核心，包含 `.claude-plugin`、`.codex`、`.agents`、hooks、配置和大量集成测试。
- 统一创建、切换、合并、prune/cleanup 等 worktree 操作，并面向自动化/Agent 提供稳定接口。

## 主要优点
- 直接解决多个 Coding Agent 并行修改同一仓库时的隔离问题
- Rust CLI 工程质量和测试密度高
- 对 Claude Code、Codex 等 Agent 工作流有第一方适配思路

## 局限 / 注意点
- detached HEAD、删除/清理等 Git 边界仍有历史 Issue
- 并行 worktree 会增加磁盘、分支和合并治理成本

## 最近变化
- 首次上榜；今日 +137 stars。9 月 12 日晚仍有连续提交，修复 `wt step prune` 分支年龄判断并继续增强文档/测试，维护活跃度很高。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-13 | +137 | 9.4 |

## 相关主题
- [[Agent]]
- [[Developer-Tools]]

## 相关日报
- [[2026-09-13]]

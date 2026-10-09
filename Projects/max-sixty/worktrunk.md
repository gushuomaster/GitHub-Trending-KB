---
type: github-project
repo: "max-sixty/worktrunk"
url: "https://github.com/max-sixty/worktrunk"
first_seen: 2026-09-13
last_seen: 2026-09-13
trending_count: 1
category: ["Git","Developer Tools","AI Agent"]
topics: ["Git","Developer Tools","AI Agent"]
---
# max-sixty/worktrunk

## 一句话说明
把 Git worktree 包装成按分支操作的 CLI，让多个 Coding Agent 能在互不覆盖的目录中并行工作。

## 它能做什么
- 用 `wt switch`、`wt list` 和 `wt remove` 创建、查看和清理 worktree
- 通过 hooks 自动运行初始化、合并前检查和清理流程
- 共享构建缓存，并在列表中展示 diff、日志、CI 和 PR 状态
- 可在新 worktree 中直接启动 Claude Code、Codex 等 Agent

## 怎么利用
官方示例：运行 `wt switch -c -x claude feat` 创建 `feat` 分支及 worktree 并启动 Claude；完成后用合并工作流整合改动，再由 `wt remove` 清理目录和分支。

## 实际例子
**官方材料中的工作流：** 官方示例：运行 `wt switch -c -x claude feat` 创建 `feat` 分支及 worktree 并启动 Claude；完成后用合并工作流整合改动，再由 `wt remove` 清理目录和分支。

## 关键命令
```bash
wt switch -c -x claude feat
wt list --full
```

## 适合谁
同时运行多个 Coding Agent、需要隔离分支和工作目录的软件团队。

## 局限 / 注意点
- 它简化但不会消除 Git 分支、合并冲突和磁盘占用；删除或 prune 前仍要确认未提交改动，hooks 也会执行本地命令，需先审查配置。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-13 | 15 | 137 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/Git|Git]] · [[Topics/Developer Tools|Developer Tools]] · [[Topics/AI Agent|AI Agent]]

## 相关日报
- [[Daily/2026/09/2026-09-13|2026-09-13]]

## GitHub 原始链接
https://github.com/max-sixty/worktrunk

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/max-sixty/worktrunk/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。

---
repo: "anthropics/claude-code-action"
url: "https://github.com/anthropics/claude-code-action"
first_seen: 2026-09-27
last_seen: 2026-09-27
trending_count: 1
github_rank: 12
stars_today: null
total_stars: 9211
forks: 2174
language: "TypeScript"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Agent", "GitHub-Actions", "Developer-Tools"]
status: active
---
# anthropics/claude-code-action

## 一句话说明
让 Claude Code 在 GitHub Issue、Pull Request 和自动化工作流中回答问题、审查或实施代码修改。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 根据 @claude、Issue 分配或显式 prompt 自动选择模式
- 支持代码问答、PR Review、修复和结构化输出
- 支持 Anthropic、Bedrock、Vertex AI、Microsoft Foundry 等认证

## 怎么利用
用官方 `/install-github-app` 或工作流模板配置，授予最小 GitHub 权限和模型凭据；先从只读问答/Review 开始，再对写入任务增加分支、测试和审批。

## 实际例子
**官方示例对应场景：** 场景 → PR 中请求 Claude 修复测试。输入 → `@claude` 评论和失败日志。操作 → Action 在 GitHub runner 上检出代码、修改并运行允许的命令。输出 → PR 评论、进度清单和可审查提交/结构化结果。

## 适合谁
希望把 Claude Code 接入 GitHub 协作、自动 Review 或小型修复流程的研发团队。

## 局限 / 注意点
会在自己的 runner 上执行并调用外部模型；Secrets、Fork PR、工具白名单与写权限必须严格控制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-27 | 12 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/GitHub-Actions|GitHub-Actions]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-27|2026-09-27]]

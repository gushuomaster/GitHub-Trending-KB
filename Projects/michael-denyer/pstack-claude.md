---
type: github-project
repo: michael-denyer/pstack-claude
first_seen: '2026-10-05'
last_seen: '2026-10-05'
url: https://github.com/michael-denyer/pstack-claude
trending_count: 1
github_rank: 11
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# michael-denyer/pstack-claude

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
将 Lauren Tan 的 pstack 工程技能移植到 Claude Code、Codex、Pi 等宿主，以 poteto-mode 路由计划、调试、实现和验证流程。

## 它能做什么
- 跟踪上游技能，并在 `tools/forks.json` 记录本地策略分叉。
- 按任务选择调查、设计、实现、审查和验证工作流。
- 提供不同宿主的插件或包入口，并可配置各角色模型及推理强度。

## 怎么利用
安装对应宿主的插件后配置模型与路由；例如 Codex 使用 `codex plugin marketplace add michael-denyer/pstack-claude` 和 `codex plugin add pstack@pstack-claude`。在仓库中明确提出问题并要求使用 poteto-mode。

## 实际例子
**官方 Getting started → 场景：** 切换分页后搜索筛选被重置。**输入：** 项目和可复现 bug。**操作：** 提出“Use poteto-mode to fix the search filter resetting when I change pages”。**输出：** 失败复现、调查、代码修复及重跑结果；跨函数边界时流程会加入架构分析。

## 适合谁
希望在多个 Coding Agent 宿主中复用结构化工程流程的开发者。

## 局限 / 注意点
各宿主的路由 hook、技能发现和模型能力存在差异，README 记录部分 Copilot 非交互版本限制。TLA+/Lean 属于另一个 agent-formal-verify 插件，并非本仓库自动具备。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-05 | 11 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-05|2026-10-05]]

## GitHub 原始链接
https://github.com/michael-denyer/pstack-claude

## 官方资料复核（2026-10-13）
- README：https://github.com/michael-denyer/pstack-claude/blob/main/README.md
- README blob SHA：`5e39261f518d4eb4b658fe4b1544166add230ef6`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

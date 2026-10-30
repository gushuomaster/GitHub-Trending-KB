---
type: github-project
repo: "Donchitos/Claude-Code-Game-Studios"
url: "https://github.com/Donchitos/Claude-Code-Game-Studios"
first_seen: "2026-10-30"
last_seen: "2026-10-30"
trending_count: 1
github_rank: 11
stars_today: 353
total_stars: 29152
forks: 4042
language: "Shell"
fetched_at: "2026-10-30T08:08:40+08:00"
documentation_checked_at: "2026-10-30"
stats_as_of: "2026-10-30"
snapshot_status: "live"
category: ["Game Development", "Claude Code", "Agent Workflow"]
topics: ["Game-Development", "Claude-Code", "Multi-Agent", "QA"]
status: active
---
# Donchitos/Claude-Code-Game-Studios

## 一句话说明
把 Claude Code 项目配置成一个分工明确的游戏工作室，用专业 Agent、技能、质量门禁和引擎规范覆盖从构思、开发到测试与发布的完整流程。

## 它能做什么
- 提供 49 个分层 Agent，覆盖设计、编程、美术、音频、叙事、QA、制作与发行等职责。
- 提供 74 个工作流 Skill，并用 `project.yaml` 的 rigor、引擎和团队参数控制过程重量。
- 为 Godot、Unity 和 Unreal 提供专门角色与路径规则，自动检查提交、推送、设计文档、资产、注册表和测试变更。
- 要求影响玩家可见内容的任务实际运行游戏、观察画面并保留截图证据，而不只依赖解析或单元测试。

## 怎么利用
把仓库克隆为游戏项目，从项目根目录启动 Claude Code 并运行 `/start`；输入是游戏概念、目标引擎、过程严格度和已有代码，系统选择相应 Agent、Skill、Hook 与规则，输出设计资料、实现任务、代码、测试和 QA 证据。

## 实际例子
**官方流程 → 场景：** 从一个游戏想法开始建立可运行原型。**输入：** 一页玩法概念、目标引擎和 `minimal` rigor。**操作：** 执行 `/start`，随后运行 `/setup-engine`、`/brainstorm`、`/create-stories` 和 `/dev-story`；可见改动必须启动游戏观察并保存截图。**输出：** 可运行、测试过的游戏增量，以及与任务对应的最小文档和 QA 证据。

```sh
git clone https://github.com/Donchitos/Claude-Code-Game-Studios.git my-game
cd my-game
claude
# 在 Claude Code 中运行 /start
```

## 适合谁
希望用 Claude Code 组织 Godot、Unity 或 Unreal 项目，并需要角色分工、过程约束、可追踪 QA 与发布检查的独立开发者和小型游戏团队。

## 局限 / 注意点
- 依赖 Claude Code、Git、Python 3 和 Bash；Windows 需要 Git for Windows，部分校验还建议安装 jq。
- 官方实验显示更高流程严格度会显著增加前置文档，但不保证游戏质量更高；应按项目阶段选择 rigor，避免把流程本身当成果。
- Hooks、拒绝规则和多 Agent 协作会影响命令与文件修改；它仍是需要人类决策的协作模板，不是无需监督的自动游戏生成器。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-30 | 11 | 353 | 29152 | 4042 | GitHub Today live snapshot |

## 相关主题
[[Topics/Game-Development|Game-Development]] · [[Topics/Claude-Code|Claude-Code]] · [[Topics/Multi-Agent|Multi-Agent]] · [[Topics/QA|QA]]

## 相关日报
- [[Daily/2026/10/2026-10-30|2026-10-30]]

## GitHub 原始链接
https://github.com/Donchitos/Claude-Code-Game-Studios

## 官方资料复核（2026-10-30）
- README：https://github.com/Donchitos/Claude-Code-Game-Studios/blob/main/README.md
- README blob SHA：`d73112eae0042d010d867ea850142e66ffc37f71`

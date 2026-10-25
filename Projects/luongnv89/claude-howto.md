---
type: github-project
repo: "luongnv89/claude-howto"
url: "https://github.com/luongnv89/claude-howto"
first_seen: "2026-10-23"
last_seen: "2026-10-25"
trending_count: 2
github_rank: 5
stars_today: 392
total_stars: 44550
forks: 5492
language: "Python"
fetched_at: "2026-10-25T08:11:52+08:00"
documentation_checked_at: "2026-10-25"
stats_as_of: "2026-10-25"
snapshot_status: live
category: ["Claude Code", "Tutorial", "Developer Tools"]
topics: ["Claude Code", "Agent", "Skills", "Developer Tools"]
status: active
---
# luongnv89/claude-howto

## 一句话说明
用循序渐进的教程和可复制模板，教用户把 Claude Code 的命令、记忆、Skills、子 Agent、MCP 与 hooks 组合成真实工程工作流。

## 它能做什么
- 提供从 Slash Commands 到高级自动化的 10 个学习模块。
- 附带可直接复制的 CLAUDE.md、命令、Skill、子 Agent、MCP 和 hook 示例。
- 给出代码审查、文档生成、部署和安全审计等组合工作流。
- 提供学习路线、自测命令和可生成的离线 EPUB。

## 怎么利用
克隆仓库后先复制一个最小 slash command 到项目 `.claude/commands/`，在 Claude Code 中运行并观察效果；再逐步加入项目记忆和 code-review Skill。输入是你的代码项目和希望标准化的任务，输出是可版本控制的 Claude Code 配置与可重复执行流程。

## 实际例子
**官方 15 分钟入门 → 场景：** 给一个现有仓库增加代码优化快捷命令。**输入：** `optimize.md` 模板和目标项目。**操作：** 复制模板到 `.claude/commands/`，在 Claude Code 输入 `/optimize`。**输出：** 按模板执行的优化分析；随后可加入 `CLAUDE.md` 和 code-review Skill 扩展成团队流程。

```bash
mkdir -p /path/to/project/.claude/commands
cp 01-slash-commands/optimize.md /path/to/project/.claude/commands/
```

## 适合谁
已经安装 Claude Code、但需要从零建立可维护命令、Skills、hooks 或多 Agent 工程流程的个人和团队。

## 局限 / 注意点
这是社区教程而非 Anthropic 官方规范，示例可能随 Claude Code 版本变化；复制 hook、MCP 或插件前必须审查命令、权限和凭据处理。模板提供起点，不能替代项目测试、代码审查和安全边界。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-23 | 8 | 177 | 43178 | 5386 | GitHub Today live snapshot |
| 2026-10-25 | 5 | 392 | 44550 | 5492 | GitHub Today live snapshot |

## 相关主题
[[Topics/Claude-Code|Claude-Code]] · [[Topics/Agent|Agent]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-23|2026-10-23]]
- [[Daily/2026/10/2026-10-25|2026-10-25]]

## GitHub 原始链接
https://github.com/luongnv89/claude-howto

## 官方资料复核（2026-10-25）
- README：https://github.com/luongnv89/claude-howto/blob/main/README.md
- README blob SHA：`3079bb8e772afccb7dee1f9e513c760d270ac278`


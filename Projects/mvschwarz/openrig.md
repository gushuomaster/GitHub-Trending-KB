---
repo: "mvschwarz/openrig"
url: "https://github.com/mvschwarz/openrig"
first_seen: 2026-09-28
last_seen: 2026-09-30
trending_count: 3
github_rank: 6
stars_today: 737
total_stars: 2421
forks: 176
language: TypeScript
fetched_at: "2026-09-30T08:04:00+08:00"
category: ["AI", "Agent", "Developer Tools"]
tags: ["multi-agent", "codex", "claude-code", "tmux", "orchestration"]
topics: ["AI", "Agent", "Developer-Tools"]
status: active
---
# mvschwarz/openrig

## 一句话说明
把 Claude Code、Codex 等 Coding Agent 组织成持久的多 Agent 团队，用稳定席位、拓扑、队列和 TUI 管理协作与恢复。

## 它能做什么
- 用 YAML RigSpec 定义 pod、seat、关系和连续性策略。
- 一键启动 tmux 会话并在 TUI 查看状态、上下文与拓扑。
- 通过 send、broadcast、chatroom 和队列协调 Agent。
- 快照、恢复、扩缩容，并可发现和接管既有会话。

## 怎么利用
在代码仓库中启动 `first-project`，让 owner Agent 实现一个边界清晰的改动，再让 checker Agent 检查同一候选；所有任务、消息和结果留在稳定地址中。

## 实际例子
**场景 →** 让两个 Codex 席位完成并复核一个功能。 **输入 →** 本地仓库和“实现一个有用改动”的任务。 **操作 →** `rig up first-project --cwd .`，再向 `dev-owner@first-project` 发送任务，由 owner 请求 `dev-check` 复核。 **输出 →** 带任务 ID、验证证据和独立检查结果的本地候选改动。

```bash
npm install -g @openrig/cli
rig setup --dry-run
rig up first-project --cwd . --plan
```

## 适合谁
已经并行使用多个 Coding Agent、需要稳定协作与恢复机制的开发者。

## 局限 / 注意点
要求 Node.js 20/22/24、tmux 和已登录的 Agent；启动会写入 tmux、Codex/Claude trust、hooks 与工作区配置。首次使用必须先 dry-run、备份相关配置并审查权限；YOLO 默认关闭。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-28 | 7 | +114 | 1212 |
| 2026-09-29 | 7 | +734 | 1701 |
| 2026-09-30 | 6 | +737 | 2421 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-28|2026-09-28]]
- [[Daily/2026/09/2026-09-29|2026-09-29]]
- [[Daily/2026/09/2026-09-30|2026-09-30]]

---
type: github-project
repo: "JetBrains/thinkrail"
url: "https://github.com/JetBrains/thinkrail"
first_seen: "2026-10-26"
last_seen: "2026-10-28"
trending_count: 3
github_rank: 10
stars_today: 1204
total_stars: 3967
forks: 211
language: "TypeScript"
fetched_at: "2026-10-28T08:05:36+08:00"
documentation_checked_at: "2026-10-28"
stats_as_of: "2026-10-28"
snapshot_status: live
category: ["Agentic IDE", "Coding Agent", "Developer Tools"]
topics: ["Coding Agent", "IDE", "Git Worktree", "MCP"]
status: active
---
# JetBrains/thinkrail

## 一句话说明
把 AI 编码 Agent 放进具备真实 IDE、独立 Git worktree、可编辑计划与项目规格的工作区，方便开发者在隔离分支中委派、审查并发布代码改动。

## 它能做什么
- 为每项任务创建隔离 worktree，并允许多个聊天或子 Agent 并行工作。
- 在真实 IDE 中查看文件、差异和诊断，通过行内评论把反馈送回 Agent。
- 用共享计划与规格图记录目标、决策和实现状态，跨会话保留项目上下文。
- 支持多模型、Skills、工作流、MCP、研究、图表与预览，并从计划和提交生成发布或 PR 内容。

## 怎么利用
在装有 Git 和模型供应商凭据的电脑上安装 ThinkRail，用 CLI 打开现有仓库，或在首次启动时选择 **Start a new project** 创建空 Git 仓库。输入是仓库或新项目、功能目标和约束；ThinkRail 为任务创建独立工作区，Agent 按计划修改代码，IDE 提供差异与诊断供人工复核，最终输出隔离分支、同步后的规格以及可推送或发起 PR 的提交。

## 实际例子
**官方工作流 → 场景：** 在不污染主工作区的情况下实现一个新功能。**输入：** 本地 Git 仓库和功能说明。**操作：** 用 `thinkrail` 打开仓库，创建隔离 workspace，让 Agent 先更新共享计划和规格，再编码；开发者在 IDE 中对具体行或 diff 留评，确认后发布分支或打开 PR。**输出：** 一个可审查的 worktree 分支、与实现一致的规格记录及 PR 描述。

```bash
curl -fsSL https://raw.githubusercontent.com/JetBrains/thinkrail/main/install.sh | bash
thinkrail ~/code/my-repo
```

## 适合谁
需要同时推进多项功能、又希望保留 IDE 诊断、Git 隔离和人工审查控制的应用开发者与工程团队。

## 局限 / 注意点
- 需要 Git 和可用的模型供应商；macOS 桌面提供 Apple Silicon / Intel DMG，Linux 桌面需要 glibc 2.38+ 等依赖。旧版 macOS DMG 或本地构建可能未签名并被 Gatekeeper 阻止，Linux 构建也未签名。
- 产品会发送不含提示词、代码、文件或凭据的基础使用分析与错误报告；可在设置或 CLI 关闭可选分析。MCP 和 Agent 能触及代码与外部工具，仍应按最小权限配置并审查写操作。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-26 | 8 | 51 | 1689 | 102 | GitHub Today live snapshot |
| 2026-10-27 | 3 | 1173 | 2874 | 153 | GitHub Today live snapshot |
| 2026-10-28 | 10 | 1204 | 3967 | 211 | GitHub Today live snapshot |

## 相关主题
[[Topics/Coding-Agent|Coding-Agent]] · [[Topics/IDE|IDE]] · [[Topics/Git|Git]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-26|2026-10-26]]
- [[Daily/2026/10/2026-10-27|2026-10-27]]
- [[Daily/2026/10/2026-10-28|2026-10-28]]

## GitHub 原始链接
https://github.com/JetBrains/thinkrail

## 官方资料复核（2026-10-28）
- README：https://github.com/JetBrains/thinkrail/blob/main/README.md
- README blob SHA：`949eedb97e553ef31931598cb8045e1da67c17cc`



---
type: github-project
repo: "ruvnet/ruflo"
url: "https://github.com/ruvnet/ruflo"
first_seen: "2026-10-16"
last_seen: "2026-10-21"
trending_count: 6
language: "TypeScript"
total_stars: 77827
forks: 9157
stars_today: 684
github_rank: 6
fetched_at: "2026-10-21T08:02:49+08:00"
category: [AI, Agent, Multi-Agent, Developer-Tools]
topics: [AI, Agent, Multi-Agent, Developer-Tools]
documentation_checked_at: "2026-10-21"
stats_as_of: "2026-10-21"
snapshot_status: live
---

# ruvnet/ruflo

## 一句话说明
为 Claude Code、Codex 等 Coding Agent 增加任务路由、多 Agent 协作、持久记忆、MCP 工具和运行控制，使复杂开发任务能分工、追踪并复核。

## 它能做什么
- 提供完整 CLI 路径，安装 Agent、Skills、MCP Server、hooks、后台进程和项目配置。
- 通过 swarm 在多个专用 Agent 间分配任务，并用共享记忆保存跨会话经验。
- 用 Console 查看任务、Agent、模型、Token、成本、日志和失败结果。
- 通过 MCP 接入 Codex 等客户端，并支持插件、策略和联邦协作扩展。

## 怎么利用
在目标项目运行初始化向导，选择需要的运行面并注册 MCP。输入是项目目录、开发目标和允许的 Agent 权限；Ruflo 负责路由、分工、记忆与过程记录，输出是各 Agent 的结果、任务状态和可检查的日志。

## 实际例子
**官方 Console 工作流 → 场景：** 把“增加暗色模式开关”组织成一项可跟踪任务。**输入：** 具体目标与 Claude 控制权限。**操作：** 初始化 Ruflo、打开 Console，要求 Agent 创建 mission，并在 pending 状态下人工批准。**输出：** Missions 中出现目标，Overview 保存操作记录；官方特别说明“创建 mission”不等于功能已经实现，仍要继续验证代码和测试。

## 关键命令
```sh
npx ruflo@latest init wizard
npx -y ruflo@latest mcp start
```

## 适合谁
需要多个 Coding Agent 长时间协作、保存跨会话记忆并审计执行过程的开发团队、Agent 平台工程师和复杂项目维护者。

## 局限 / 注意点
- CLI 完整安装会向项目写入配置、hooks、MCP 和后台组件，能力面较大，应先在隔离分支试用。
- Claude Code mods 使用账号权限且不在沙箱中，安装前必须审查代码；不同宿主对 hooks、Console 与插件能力的支持不一致。
- Swarm、任务创建和自学习声明不能替代最终代码、测试、权限和数据泄露审查。

## Trending 历史
- 2026-10-16：#7 · Stars Today：147 · Total Stars：75106 · Forks：8926

- 2026-10-17：GitHub Today #6，Stars Today 672，Total Stars 75624，Forks 8965。
- 2026-10-18：GitHub Today #12，Stars Today 420，Total Stars 76054，Forks 9001。
- 2026-10-19：GitHub Today #5，Stars Today 513，Total Stars 76506，Forks 9047。

- 2026-10-20：GitHub Today #5，Stars Today 564，Total Stars 77172，Forks 9103。
- 2026-10-21：GitHub Today #6，Stars Today 684，Total Stars 77827，Forks 9157。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Multi-Agent|Multi-Agent]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-16|2026-10-16]]

- [[Daily/2026/10/2026-10-17|2026-10-17]]

- [[Daily/2026/10/2026-10-18|2026-10-18]]

- [[Daily/2026/10/2026-10-19|2026-10-19]]

- [[Daily/2026/10/2026-10-20|2026-10-20]]
- [[Daily/2026/10/2026-10-21|2026-10-21]]

## GitHub 原始链接
https://github.com/ruvnet/ruflo

## 官方资料复核（2026-10-21）
- README：https://github.com/ruvnet/ruflo/blob/main/README.md
- README blob SHA：`f17904bd1a41b5236d64d16240f10ad806d46c9a`



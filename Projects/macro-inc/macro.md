---
type: github-project
repo: "macro-inc/macro"
url: "https://github.com/macro-inc/macro"
first_seen: "2026-10-29"
last_seen: "2026-10-29"
trending_count: 1
github_rank: 5
stars_today: 117
total_stars: 5409
forks: 517
language: "Rust"
fetched_at: "2026-10-29T08:08:39+08:00"
documentation_checked_at: "2026-10-29"
stats_as_of: "2026-10-29"
snapshot_status: live
category: ["Team Workspace", "Knowledge Graph", "AI Agents"]
topics: ["Collaboration", "Email", "CRM", "MCP"]
status: active
---
# macro-inc/macro

## 一句话说明
把邮件、团队消息、文档、任务、通话、CRM 和 AI Agent 放进同一工作区，并用双向 @链接与团队级记忆减少工具切换和上下文丢失。

## 它能做什么
- 把多账户 Gmail、频道消息、任务、@提及和 Agent 回复合并进统一收件箱。
- 用双向图连接邮件、消息、文档、任务、客户记录和 GitHub PR，保留“为什么做 → 谁在做 → 产出什么”的链路。
- 提供 Markdown/CRDT 协作文档、任务、Canvas、文件搜索、CRM、通话转录和团队记忆。
- 通过内部 Agent、MCP、API 或 SDK 搜索工作区并创建任务、编辑文档或执行获准操作。

## 怎么利用
在托管版连接 Gmail 或 Google Workspace，按团队建立频道、文档和任务；把客户邮件、讨论和工程任务互相 @链接。输入是邮件、消息、文件、客户记录和任务目标，Macro 将它们存入同一权限体系与关系图，Agent 可在授权范围内检索和执行，最终得到可追溯的任务、文档、CRM 状态及团队记忆。

## 实际例子
**官方工作流 → 场景：** 客户邮件提出一个产品问题。**输入：** 已连接邮箱中的邮件及负责工程师。**操作：** 在邮件中点击创建任务，把任务分配给工程师；任务保留到原邮件的双向链接，后续再链接实现该任务的 PR。**输出：** 一条从客户原始需求、工程任务到代码变更都能反向追踪的工作链。


```bash
claude mcp add --transport http macro https://mcp-server.macro.com/mcp
```

## 适合谁
希望用一个可搜索工作区替代 Slack、Notion、Linear、Superhuman 与轻量 CRM 组合的小型团队、创业公司和跨职能项目组。

## 局限 / 注意点
- 托管版需要账户并连接邮箱等业务数据；Agent、MCP 和共享权限应按最小权限配置，发送邮件或修改客户记录前保留人工复核。
- 仓库采用 AGPL-3.0；完整本地栈包含大量服务、Rust crates、基础设施与外部集成，自托管和二次开发成本明显高于普通单体应用。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-29 | 5 | 117 | 5409 | 517 | GitHub Today live snapshot |

## 相关主题
[[Topics/Collaboration|Collaboration]] · [[Topics/Knowledge-Graph|Knowledge-Graph]] · [[Topics/CRM|CRM]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-29|2026-10-29]]

## GitHub 原始链接
https://github.com/macro-inc/macro

## 官方资料复核（2026-10-29）
- README：https://github.com/macro-inc/macro/blob/main/README.md
- README blob SHA：`9d8cd478cef941c2024d06e62d563481902aef61`

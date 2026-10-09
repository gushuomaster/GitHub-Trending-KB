---
type: github-project
repo: "anthropics/knowledge-work-plugins"
url: "https://github.com/anthropics/knowledge-work-plugins"
first_seen: 2026-09-18
last_seen: 2026-10-09
trending_count: 3
language: "Python"
total_stars: 27526
forks: 3197
stars_today: 392
github_rank: 7
fetched_at: "2026-10-09T08:09:00+08:00"
category: ["AI", "Agent", "Skills", "Knowledge Work"]
tags: ["github/agent", "github/skills", "github/plugins", "github/python", "github/knowledge-work"]
---
# anthropics/knowledge-work-plugins

## 一句话说明
把销售、财务、客服、产品、数据分析等岗位的工作方法、命令和外部工具连接打包成 Claude 可复用插件，减少每次从零解释流程。

**官方描述：** Open source repository of plugins primarily intended for knowledge workers to use in Claude Cowork

## 它能做什么
- 提供 productivity、sales、customer-support、finance、data 等 11 个岗位插件。
- 每个插件可组合 Skills、斜杠命令、子 Agent 与 MCP Connectors。
- 允许团队替换连接器、补充公司术语，并按内部流程修改技能文件。
- 插件以 Markdown 和 JSON 为主，无需额外构建基础设施。

## 怎么利用
先选择与岗位匹配的插件，审查它需要访问的系统与数据，再在 Cowork 安装，或在 Claude Code 添加市场并安装指定插件。输入业务目标及已授权资料后，插件按岗位工作流调用相关技能和连接器，输出可复核的专业成果草稿。

## 实际例子
**官方 finance 能力 → 场景：** 月末关账准备。**输入：** 已授权的总账、对账资料和差异说明。**操作：** 在 Claude Code 安装 finance 插件，调用其对账或差异分析工作流。**输出：** 日记账准备、账户核对或差异分析草稿，仍需财务人员审批。

```sh
claude plugin marketplace add anthropics/knowledge-work-plugins
claude plugin install finance@knowledge-work-plugins
```

## 适合谁
需要把重复的销售准备、财务关账、客服分流、产品调研或数据分析流程标准化的业务团队和内部工具负责人。

## 局限 / 注意点
插件是通用起点，必须按企业术语和流程定制；连接器会访问外部业务系统，应遵循最小权限并复核输出。它主要面向 Claude Cowork/Claude Code，不能把官方目录等同为所有插件均适合未经审计直接启用。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-18 | 未保存 | 287 | 未保存 | 仓库原有索引 |
| 2026-09-20 | 未保存 | 280 | 未保存 | 仓库原有索引 |
| 2026-10-09 | 7 | 392 | 27526 | GitHub Today live snapshot |

## 最近变化
- 2026-10-09：官方 README 列出 11 个岗位插件，并说明可在 Claude Code 添加 marketplace 后安装具体插件。
- 2026-09-20：仓库原卡记录当日 +280 stars。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]

## GitHub 原始链接
https://github.com/anthropics/knowledge-work-plugins

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/anthropics/knowledge-work-plugins/blob/main/README.md
- README blob SHA：261e2f47e2b1701258e4bd3ec18620dc5d7c28ad


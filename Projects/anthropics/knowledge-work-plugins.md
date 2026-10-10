---
type: github-project
repo: "anthropics/knowledge-work-plugins"
url: "https://github.com/anthropics/knowledge-work-plugins"
language: "Python"
total_stars: 28239
forks: 3243
stars_today: 709
github_rank: 6
fetched_at: "2026-10-10T08:02:00+08:00"
category: ["AI", "Agent", "Skills", "Knowledge Work"]
tags: ["github/agent", "github/skills", "github/plugins", "github/python", "github/knowledge-work"]
first_seen: 2026-09-17
last_seen: 2026-10-10
trending_count: 5
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
| 2026-09-17 | 7 | 未保存 | 未保存 | 仓库已存快照 |
| 2026-09-18 | 8 | 287 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |
| 2026-09-20 | 7 | 280 | 未保存 | 仓库已存快照 |
| 2026-10-09 | 7 | 392 | 27526 | 当日实时快照 |
| 2026-10-10 | 6 | 709 | 28239 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]
- [[Daily/2026/10/2026-10-10|2026-10-10]]

## GitHub 原始链接
https://github.com/anthropics/knowledge-work-plugins

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/anthropics/knowledge-work-plugins/blob/main/README.md
- README blob SHA：261e2f47e2b1701258e4bd3ec18620dc5d7c28ad

## 2026-09-17 历史核验
- GitHub Trending 原始排名：#7
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/d3548164a40d3c186f33b9a0356e6e30aa857f2b/archive/repository/2026/2026-09-17/(null).json)
- 归档提交时间：2026-09-17T00:22:41Z；该时间不是页面抓取时间。

## 2026-09-18 历史核验
- GitHub Trending 原始排名：#8
- Stars Today：287
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/339673fe562fde501a85aaa2f71a287bdb97a440/archive/repository/2026/2026-09-18/(null).json)
- 归档提交时间：2026-09-18T04:12:31Z；该时间不是页面抓取时间。

---
type: github-project
repo: "coder/coder"
url: "https://github.com/coder/coder"
first_seen: 2026-09-18
last_seen: 2026-09-22
trending_count: 4
category: ["Cloud Development", "Coding Agent", "Infrastructure"]
topics: ["Cloud Development", "Coding Agent", "Infrastructure"]
---
# coder/coder

## 一句话说明
自托管的云开发环境与 AI Coding Agent 平台，用 Terraform 模板、身份治理和集中审计创建可重复的远程工作区。

## 它能做什么
- 用 Terraform 定义 EC2、Kubernetes Pod 或容器等开发工作区
- 通过安全隧道连接 IDE，并自动关闭闲置资源控制成本
- 让 Coding Agent 在自有基础设施中执行任务，模型凭据留在控制平面
- 集中管理模型提供商、用户身份、费用与审计日志

## 怎么利用
官方 Quickstart：运行安装脚本后启动 `coder server`，在 Web 界面创建用户和 Docker/Terraform 模板，再为开发者或 Agent 按任务创建可销毁工作区。

## 实际例子
**资料中的具体工作流：** 官方 Quickstart：运行安装脚本后启动 `coder server`，在 Web 界面创建用户和 Docker/Terraform 模板，再为开发者或 Agent 按任务创建可销毁工作区。

## 关键命令
```bash
curl -fsSL https://coder.com/install.sh | sh
coder server
```

## 适合谁
需要集中供应隔离开发环境，并在自有基础设施上治理 Coding Agent 的平台工程团队。

## 局限 / 注意点
- 生产部署需要 PostgreSQL、外部访问地址、容量与高可用设计；模板、网络、凭据和 Agent 工具权限配置错误仍可能造成越权或资源浪费。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-18 | 19 | 204 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |
| 2026-09-19 | 15 | 未保存 | 未保存 | 日期匹配语言不限归档；原日报未保存该项目统计 |
| 2026-09-20 | 4 | 406 | 未保存 | 日期匹配语言不限归档；Stars Today 来自原日报 |
| 2026-09-22 | 5 | 461 | 未保存 | 仓库已存快照 |

## 相关主题
[[Topics/Cloud Development|Cloud Development]] · [[Topics/Coding Agent|Coding Agent]] · [[Topics/Infrastructure|Infrastructure]]

## 相关日报
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/09/2026-09-19|2026-09-19]]
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/09/2026-09-22|2026-09-22]]

## GitHub 原始链接
https://github.com/coder/coder

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/coder/coder/blob/main/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-18 历史核验
- GitHub Trending 原始排名：#19
- Stars Today：204
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/339673fe562fde501a85aaa2f71a287bdb97a440/archive/repository/2026/2026-09-18/(null).json)
- 归档提交时间：2026-09-18T04:12:31Z；该时间不是页面抓取时间。


## 2026-09-19 历史核验
- GitHub Trending 原始排名：#15
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/50dbf9e6ba9fec94c2305ac03448b8ddd7e15988/archive/repository/2026/2026-09-19/(null).json)
- 归档提交时间：2026-09-19T00:04:06Z；该时间不是页面抓取时间。


## 2026-09-20 历史核验
- GitHub Trending 原始排名：#4
- Stars Today：406
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/aeea175a90b86aba1844727221cf2aaa8decd908/archive/repository/2026/2026-09-20/(null).json)
- 归档提交时间：2026-09-20T00:53:39Z；该时间不是页面抓取时间。

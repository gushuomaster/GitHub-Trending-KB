---
type: github-project
repo: "cloudflare/security-audit-skill"
url: "https://github.com/cloudflare/security-audit-skill"
category: ["Security Audit", "Agent Skill", "AppSec"]
topics: ["Security Audit", "Agent Skill", "AppSec"]
first_seen: 2026-09-17
last_seen: 2026-10-08
trending_count: 6
---
# cloudflare/security-audit-skill

## 一句话说明
让 Coding Agent 按六阶段流程审计代码安全问题，独立证伪候选发现，并生成带覆盖证据的机器可读报告。

## 它能做什么
- 绘制架构、信任边界和输入面，并维护 coverage ledger
- 按覆盖单位分派隔离的 hunting Agent，发现未检查区域
- 让独立验证者尝试证伪每个候选，区分 confirmed、needs_validation 与 rejected
- 校验 findings.json 和覆盖账本，再派生 REPORT.md 等报告

## 怎么利用
官方用法：把 Skill 安装到支持子 Agent 与工具的宿主，输入有审计授权的代码仓库；系统先侦察和分区检查，再独立验证候选，输出 findings.json、覆盖账本和可人工复核的报告。

## 实际例子
**资料中的具体工作流：** 官方用法：把 Skill 安装到支持子 Agent 与工具的宿主，输入有审计授权的代码仓库；系统先侦察和分区检查，再独立验证候选，输出 findings.json、覆盖账本和可人工复核的报告。

## 适合谁
需要对代码仓库执行可追踪、可重复安全审计的 AppSec 工程师与维护者。

## 局限 / 注意点
- 自动审计仍会漏报或误报，不能替代威胁建模、SAST/DAST 与专业人工审计；完整流程还依赖隔离子 Agent、Node.js 校验器和宿主沙箱。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-17 | 2 | 1434 | 未保存 | 仓库已存快照 |
| 2026-09-18 | 2 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |
| 2026-09-19 | 1 | 3019 | 未保存 | 日期匹配语言不限归档；Stars Today 来自原日报 |
| 2026-09-20 | 1 | 3162 | 未保存 | 日期匹配语言不限归档；Stars Today 来自原日报 |
| 2026-09-21 | 1 | 3162 | 未保存 | 仓库已存快照 |
| 2026-10-08 | 11 | 576 | 26105 | 当日实时快照 |

## 相关主题
[[Topics/Security Audit|Security Audit]] · [[Topics/Agent Skill|Agent Skill]] · [[Topics/AppSec|AppSec]]

## 相关日报
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/09/2026-09-19|2026-09-19]]
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/09/2026-09-21|2026-09-21]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub 原始链接
https://github.com/cloudflare/security-audit-skill

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/cloudflare/security-audit-skill/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-17 历史核验
- GitHub Trending 原始排名：#2
- Stars Today：1434
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/d3548164a40d3c186f33b9a0356e6e30aa857f2b/archive/repository/2026/2026-09-17/(null).json)
- 归档提交时间：2026-09-17T00:22:41Z；该时间不是页面抓取时间。

## 2026-09-18 历史核验
- GitHub Trending 原始排名：#2
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/339673fe562fde501a85aaa2f71a287bdb97a440/archive/repository/2026/2026-09-18/(null).json)
- 归档提交时间：2026-09-18T04:12:31Z；该时间不是页面抓取时间。


## 2026-09-19 历史核验
- GitHub Trending 原始排名：#1
- Stars Today：3019
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/50dbf9e6ba9fec94c2305ac03448b8ddd7e15988/archive/repository/2026/2026-09-19/(null).json)
- 归档提交时间：2026-09-19T00:04:06Z；该时间不是页面抓取时间。


## 2026-09-20 历史核验
- GitHub Trending 原始排名：#1
- Stars Today：3162
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/aeea175a90b86aba1844727221cf2aaa8decd908/archive/repository/2026/2026-09-20/(null).json)
- 归档提交时间：2026-09-20T00:53:39Z；该时间不是页面抓取时间。

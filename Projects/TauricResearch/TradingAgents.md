---
type: github-project
repo: "TauricResearch/TradingAgents"
url: "https://github.com/TauricResearch/TradingAgents"
first_seen: 2026-09-10
last_seen: 2026-10-27
trending_count: 4
github_rank: 2
stars_today: 1395
total_stars: 116066
forks: 22274
language: "Python"
fetched_at: "2026-10-27T08:08:24+08:00"
documentation_checked_at: "2026-10-27"
stats_as_of: "2026-10-27"
snapshot_status: live
category: ["Trading","Multi-Agent","Finance"]
topics: ["Trading","Multi-Agent","Finance"]
---
# TauricResearch/TradingAgents

## 一句话说明
用基本面、技术、新闻、情绪、交易员和风险经理等多 Agent 模拟交易公司研究与决策流程。

## 它能做什么
- 并行运行基本面、情绪、新闻和技术分析角色
- 通过多空研究员辩论与管理者汇总形成观点
- 由交易员、风险团队和投资组合经理给出决策
- 支持多模型供应商、检查点恢复、历史回测和报告

## 怎么利用
在 Python 3.11+ 环境安装包并配置所选模型供应商密钥，随后用 CLI 指定 ticker、分析日期和分析员。输入是证券代码、日期、研究深度与可选持仓，系统并行收集当时可得的市场、基本面、新闻和情绪数据，经过多空辩论与风险审核，输出决策、完整报告、配置记录和检查点。

## 实际例子
**官方 CLI 场景 → 场景：** 研究 2026-09-23 的 NVDA，而不是直接让模型按当前印象回答。**输入：** ticker、分析日期和 market/news/fundamentals 三类分析员。**操作：** 安装项目、配置一个受支持的模型供应商后运行下列命令。**输出：** 保存到本地的单页 HTML 研究报告、各 Agent 的中间分析、最终交易决策和可恢复检查点。

```bash
pip install .
tradingagents --ticker NVDA --date 2026-09-23 --analysts market,news,fundamentals --save --no-show
```

## 适合谁
研究多 Agent 金融分析、回测和决策流程的量化研究者。

## 局限 / 注意点
- 框架输出不构成投资建议；模型、温度、时间区间和数据质量都会改变结果，同一输入也可能得到不同结论。
- 历史日期虽尽量使用时点数据，但新闻和社交来源会随时间变化，非美国公司基本面也可能无法证明历史发布时间；回测不能保证实盘表现，任何交易都需独立风控。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-10 | 7 | 367 | 未保存 | 日期匹配来源 |
| 2026-09-15 | 11 | 未保存 | 未保存 | 日期匹配来源 |
| 2026-10-26 | 6 | 381 | 114576 | GitHub Today live snapshot |
| 2026-10-27 | 2 | 1395 | 116066 | GitHub Today live snapshot |

## 相关主题
[[Topics/Trading|Trading]] · [[Topics/Multi-Agent|Multi-Agent]] · [[Topics/Finance|Finance]]

## 相关日报
- [[Daily/2026/09/2026-09-10|2026-09-10]]
- [[Daily/2026/09/2026-09-15|2026-09-15]]
- [[Daily/2026/10/2026-10-26|2026-10-26]]
- [[Daily/2026/10/2026-10-27|2026-10-27]]

## GitHub 原始链接
https://github.com/TauricResearch/TradingAgents

## 官方资料核对
- 核对日期：2026-10-27
- README：https://github.com/TauricResearch/TradingAgents/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
- README blob SHA：`cedcdb1e5bf56705cab3fa4b86944686cd62276c`


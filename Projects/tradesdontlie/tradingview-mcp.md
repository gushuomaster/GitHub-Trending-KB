---
type: github-project
repo: "tradesdontlie/tradingview-mcp"
url: "https://github.com/tradesdontlie/tradingview-mcp"
first_seen: 2026-09-19
last_seen: 2026-09-19
trending_count: 1
github_rank: 12
stars_today: 64
category: ["MCP", "Trading", "Automation"]
topics: ["MCP", "Trading", "Developer Tools"]
---
# tradesdontlie/tradingview-mcp

## 一句话说明
通过 MCP 和 Chrome DevTools Protocol 把 Coding Agent 连接到本机 TradingView Desktop，用现有图表环境完成分析自动化。

## 它能做什么
- 读取并控制当前图表、指标、布局与标签页
- 创建或修改 Pine Script 并检查运行结果
- 让 MCP 客户端复用本机 TradingView Desktop 会话
- 把图表上下文转换为可复核的研究笔记

## 怎么利用
官方流程：以 `--remote-debugging-port=9222` 启动 TradingView Desktop，安装并验证 MCP 服务；随后让 Agent 打开目标图表、检查指标或修改 Pine Script，输出分析草稿与图表结果。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方流程：以 `--remote-debugging-port=9222` 启动 TradingView Desktop，安装并验证 MCP 服务；随后让 Agent 打开目标图表、检查指标或修改 Pine Script，输出分析草稿与图表结果。

## 关键命令
```bash
open -a "TradingView" --args --remote-debugging-port=9222
```

## 适合谁
希望让 Coding Agent 辅助 TradingView 图表研究和 Pine Script 实验的交易研究者。

## 局限 / 注意点
- 依赖 TradingView Desktop 的未公开内部接口，客户端升级后可能失效；需要有效订阅，且项目不执行交易，图表分析也不构成盈利保证或投资建议。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-19 | 12 | 64 | 未保存 | 日期匹配语言不限归档；Stars Today 来自原日报 |

## 相关主题
[[Topics/MCP|MCP]] · [[Topics/Trading|Trading]] · [[Topics/Developer Tools|Developer Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-19|2026-09-19]]

## GitHub 原始链接
https://github.com/tradesdontlie/tradingview-mcp

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/tradesdontlie/tradingview-mcp/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-19 历史核验
- GitHub Trending 原始排名：#12
- Stars Today：64
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/50dbf9e6ba9fec94c2305ac03448b8ddd7e15988/archive/repository/2026/2026-09-19/(null).json)
- 归档提交时间：2026-09-19T00:04:06Z；该时间不是页面抓取时间。

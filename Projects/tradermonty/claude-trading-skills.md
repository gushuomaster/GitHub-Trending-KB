---
type: github-project
repo: "tradermonty/claude-trading-skills"
url: "https://github.com/tradermonty/claude-trading-skills"
first_seen: "2026-11-14"
last_seen: "2026-11-14"
trending_count: 1
language: "Python"
total_stars: 4152
forks: 862
stars_today: 69
github_rank: 9
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Trading Research","Claude Skills","Risk Management"]
topics: ["Trading","Claude-Skills","Backtesting"]
---
# tradermonty/claude-trading-skills

## 一句话说明
Claude Trading Skills 是面向时间有限的个人投资者的技能工作流集合，用于结构化市场复盘、风险管理、交易计划、日志和策略研究，而不是替用户下单。

## 它能做什么
- 提供市场状态、长期组合、红利、Swing、仓位、交易记忆、回测和期权等技能。
- 用 YAML 工作流清单规定技能顺序、决策门和产物，支持每日、每周与月度复盘。
- 可安装到 Claude Web 或 Claude Code；部分基础路径无需付费数据 API。
- 提供样例输出、质量校验和可定制的技能打包脚本。

## 怎么利用
按 `market-regime-daily` 工作流依次运行市场宽度、趋势与 exposure coach；输入当日市场数据，输出供人工复核的市场姿态和仓位上限，而非交易指令。

## 实际例子
**官方每日市场检查 →** 按 `market-regime-daily` 工作流依次运行市场宽度、趋势与 exposure coach；输入当日市场数据，输出供人工复核的市场姿态和仓位上限，而非交易指令。

## 关键命令
```bash
git clone https://github.com/tradermonty/claude-trading-skills.git
cp -R claude-trading-skills/backtest-expert ~/.claude/skills/
```

## 适合谁
希望用结构化流程提升市场复盘、仓位管理、交易日志和策略研究质量的个人投资者或量化研究者。

## 局限 / 注意点
项目明确不是投顾、信号服务、券商执行平台或全自动交易系统；部分筛选和组合流程依赖 FMP、FINVIZ Elite 或 Alpaca，数据质量、回测偏差和最终决策均由用户负责。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-14 | 9 | 69 | 4152 | 862 | GitHub Today live snapshot |

## 相关主题
[[Topics/Trading|Trading]] · [[Topics/Claude-Skills|Claude-Skills]] · [[Topics/Backtesting|Backtesting]]

## 相关日报
- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/tradermonty/claude-trading-skills

## 官方资料复核（2026-11-14）
- README：https://github.com/tradermonty/claude-trading-skills/blob/HEAD/README.md
- README blob SHA：`028aa127c04c0848b4df1bd4765d7e0f9bea2465`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

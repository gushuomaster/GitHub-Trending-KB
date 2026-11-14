---
type: github-project
repo: "ZhuLinsen/daily_stock_analysis"
url: "https://github.com/ZhuLinsen/daily_stock_analysis"
first_seen: "2026-11-10"
last_seen: "2026-11-14"
trending_count: 3
language: "Python"
total_stars: 71574
forks: 57276
stars_today: 256
github_rank: 4
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Stock Analysis","LLM","Automation"]
topics: ["Quant","Stock-Analysis","LLM","Automation"]
---
# ZhuLinsen/daily_stock_analysis

## 一句话说明
这是面向 A 股、港股、美股及多个亚洲市场的 LLM 股票分析系统，聚合行情、新闻和基本面生成决策看板，并按计划推送到消息渠道。

## 它能做什么
- 汇总多市场行情、K 线、技术指标、新闻、公告和基本面数据。
- 用多种 LLM 生成核心结论、评分、买卖点、风险警报与催化因素。
- 提供 Web/桌面工作台、历史报告、回测、持仓与 15 种策略问股。
- 支持 GitHub Actions、Docker、本地定时任务、API 和多渠道自动推送。

## 怎么利用
Fork 仓库后在 Actions Secrets 配置至少一个模型密钥、一个通知渠道和 `STOCK_LIST`，手动运行“每日股票分析”工作流；输入是自选股代码与数据源，输出为 Markdown 决策看板和推送消息。

## 实际例子
**官方 GitHub Actions 场景 →** 设置 `STOCK_LIST=600519,hk00700,AAPL`、模型和通知密钥，运行每日工作流，得到三只股票的评分、趋势、风险与催化因素摘要，并推送到企业微信或飞书。

## 关键命令
```bash
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git
cd daily_stock_analysis
pip install -r requirements.txt
python main.py --stocks 600519,hk00700,AAPL
```

## 适合谁
需要自动汇集多市场公开数据、生成研究初稿或搭建个人股票看板的量化研究者和投资工具开发者。

## 局限 / 注意点
输出仅供学习研究，不构成投资建议；免费行情与新闻源会受限流、接口变化、时区和网络影响。模型、搜索与通知服务需要各自密钥并可能收费，生成结论必须回查原始数据，不能直接作为交易信号。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-10 | 9 | 506 | 68816 | 56382 | GitHub Today live snapshot |
| 2026-11-12 | 2 | 278 | 70203 | 56835 | GitHub Today live snapshot |
| 2026-11-14 | 4 | 256 | 71574 | 57276 | GitHub Today live snapshot |

## 相关主题
[[Topics/Quant|Quant]] · [[Topics/Stock-Analysis|Stock-Analysis]] · [[Topics/LLM|LLM]] · [[Topics/Automation|Automation]]

## 相关日报
- [[Daily/2026/11/2026-11-10|2026-11-10]]

- [[Daily/2026/11/2026-11-12|2026-11-12]]

- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/ZhuLinsen/daily_stock_analysis

## 官方资料复核（2026-11-10）
- README：https://github.com/ZhuLinsen/daily_stock_analysis/blob/HEAD/README.md
- README blob SHA：`ee14cdabf88934f5b17415cdc2432dec704ef957`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-12）
- README：https://github.com/ZhuLinsen/daily_stock_analysis/blob/HEAD/README.md
- README blob SHA：`cb130e7bd387db4fbd26949ee9f995b95c347134`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

## 官方资料复核（2026-11-14）
- README：https://github.com/ZhuLinsen/daily_stock_analysis/blob/HEAD/README.md
- README blob SHA：`80e2a4befc6a72568278fa90050be6ed88b8b7b6`
- 本次按当前官方资料复核并合并当天榜单事实；既有说明、案例、主题、风险与较早历史均保留。

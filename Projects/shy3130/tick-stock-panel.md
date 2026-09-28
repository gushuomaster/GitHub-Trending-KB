---
repo: "shy3130/tick-stock-panel"
url: "https://github.com/shy3130/tick-stock-panel"
first_seen: 2026-09-26
last_seen: 2026-09-26
trending_count: 1
github_rank: 12
stars_today: null
total_stars: 5292
forks: 1282
language: "Python"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Quant", "Finance", "Self-Hosted"]
status: active
---
# shy3130/tick-stock-panel

## 一句话说明
自托管的 A 股选股、回测、监控、因子研究与 AI 助手工作台。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 统一选股、指标、回测、监控与盘后复盘口径
- 数据源插件化，数据本地落 Parquet
- 提供 Open API、MCP、权限 Token 与 Docker 单容器部署

## 怎么利用
先接入合规数据源并用 Docker 部署，在历史数据上定义策略、费用和滑点进行回测；通过验证后只把信号接入监控和提醒，不直接自动实盘。

## 实际例子
**官方能力对应场景：** 场景 → 研究一个 A 股因子。输入 → 历史行情和 DSL 因子。操作 → 全市场扫描、样本外检验、回测并显式发布。输出 → 因子表现、回测曲线和监控规则；项目不提供荐股保证。

## 适合谁
希望本地研究 A 股策略、统一数据和回测口径的量化学习者与开发者。

## 局限 / 注意点
仓库明确仅供研究，不是投资或看盘软件；数据授权、复权、滑点、幸存者偏差和过拟合需自行治理。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-26 | 12 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Quant|Quant]] · [[Topics/Finance|Finance]] · [[Topics/Self-Hosted|Self-Hosted]]

## 相关日报
- [[Daily/2026/09/2026-09-26|2026-09-26]]

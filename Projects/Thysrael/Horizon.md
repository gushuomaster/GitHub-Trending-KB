---
type: github-project
repo: "Thysrael/Horizon"
url: "https://github.com/Thysrael/Horizon"
first_seen: "2026-11-05"
last_seen: "2026-11-05"
trending_count: 1
language: "Python"
total_stars: 12666
forks: 1830
stars_today: 121
github_rank: 15
fetched_at: "2026-11-05T14:04:38+08:00"
documentation_checked_at: "2026-11-05"
stats_as_of: "2026-11-05"
snapshot_status: "live"
category: ["AI", "News", "Automation"]
topics: ["News Aggregation", "Digest", "MCP"]
---
# Thysrael/Horizon

## 一句话说明
聚合多类信源、按个人 Profile 评分去重并生成中英双语简报的自托管 AI 新闻雷达。

## 它能做什么
- 聚合 RSS、HN、Reddit、Telegram、X、GitHub、OpenBB、OSS Insight、GDELT 与 Google News。
- 按 Profile 做路由、评分、阈值、去重、自定义栏目和分类平衡。
- 生成中英双语 Markdown，支持搜索与评论扩展。
- 发布到 GitHub Pages、邮件、webhook 或微信，并提供 CLI、MCP、Agent Skill。

## 怎么利用
运行 `uv sync` 和 `uv run horizon-wizard` 配置模型、API 与信源，再执行 `uv run horizon`；系统抓取内容、去重排序并输出当天简报。

## 实际例子
为 AI 工程师建立 Profile，把 GitHub、HN 和 RSS 的 Agent/MCP 主题汇入技术栏目，低相关内容降权，生成中英双语 Markdown 后推送到 Pages 与邮件。

## 适合谁
需要自托管、多源、可配置每日情报简报的研究者、开发者与内容团队。

## 局限 / 注意点
需要模型/API 凭据并受第三方来源稳定性和限流影响。X 扩展需要 Playwright 且不包含于 Docker 镜像；GitHub Action 模板默认禁用，需自行改名配置；PyPI 发布仍在规划中。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-05 | 15 | 121 | 12666 | 1830 | GitHub Today live snapshot |

## 相关主题
[[Topics/News-Aggregation|News Aggregation]] · [[Topics/Digest|Digest]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/11/2026-11-05|2026-11-05]]

## GitHub 原始链接
https://github.com/Thysrael/Horizon

## 官方资料复核（2026-11-05）
- README：https://github.com/Thysrael/Horizon/blob/HEAD/README_zh.md
- README blob SHA：`d6cdf17e885a94d77af67e01de2477d9f185370a`
- 当前资料只代表核对日版本；榜单统计来自同一次 GitHub Trending 页面采集。

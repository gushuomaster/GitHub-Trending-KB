---
type: github-project
repo: "firecrawl/firecrawl"
url: "https://github.com/firecrawl/firecrawl"
first_seen: "2026-11-20"
last_seen: "2026-11-21"
trending_count: 2
language: "TypeScript"
total_stars: 205250
forks: 10744
stars_today: 1241
github_rank: 6
fetched_at: "2026-11-21T08:10:09+08:00"
documentation_checked_at: "2026-11-21"
stats_as_of: "2026-11-21"
snapshot_status: "live"
category: ["Web-Scraping", "AI"]
topics: ["Web-Scraping", "AI", "Developer-Tools"]
---
# firecrawl/firecrawl

## 一句话说明
Firecrawl 把网页搜索、抓取、站点爬取和结构化提取转换为适合 LLM 的 Markdown、JSON 或截图，并提供本地、云端与完整自托管三种运行方式。

## 它能做什么
- Firecrawl Local 可在单机抓取、爬取、映射并作为 MCP/API 服务。
- Cloud 提供 Search、Interact、Agent、Monitor 与 550+ 数据提供方。
- 完整自托管版用队列、Worker、PostgreSQL 和浏览器服务扩展。

## 怎么利用
官方本地场景：安装 `firecrawl-local` 后运行 `firecrawl-local crawl https://docs.firecrawl.dev --limit 50 --out ./pages`，输入文档站点，程序渲染并清洗页面，输出逐页 Markdown 文件供 Agent 建库。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方本地场景：安装 `firecrawl-local` 后运行 `firecrawl-local crawl https://docs.firecrawl.dev --limit 50 --out ./pages`，输入文档站点，程序渲染并清洗页面，输出逐页 Markdown 文件供 Agent 建库。

## 关键命令
```bash
cargo install firecrawl-local
firecrawl-local crawl https://docs.firecrawl.dev --limit 50 --out ./pages
```

## 适合谁
为 Agent、RAG 或数据流水线准备网页知识的开发者和平台团队。

## 局限 / 注意点
Local 默认在单页本地失败时回退到 Cloud，需设 `FIRECRAWL_CLOUD=off` 才强制离线；Cloud 与 Alexandria 不是完整自托管的一部分，抓取还必须遵守 robots.txt、隐私政策与网站条款。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 6 | 825 | 204186 | 10697 | GitHub Today live snapshot |
| 2026-11-21 | 6 | 1241 | 205250 | 10744 | GitHub Today live snapshot |

## 相关主题
[[Topics/Web-Scraping|Web-Scraping]] · [[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]

## GitHub 原始链接
https://github.com/firecrawl/firecrawl

## 官方资料复核（2026-11-20）
- README：https://github.com/firecrawl/firecrawl/blob/HEAD/README.md
- README blob SHA：`eaecfed6c8a76b16b4e8bcd5d499a473ece1cb11`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。

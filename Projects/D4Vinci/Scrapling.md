---
type: github-project
repo: "D4Vinci/Scrapling"
first_seen: "2026-11-03"
last_seen: "2026-11-06"
language: "Python"
total_stars: 97941
forks: 10255
stars_today: 1655
github_rank: 5
trending_count: 4
fetched_at: "2026-11-06T08:10:55+08:00"
url: "https://github.com/D4Vinci/Scrapling"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
---

# D4Vinci/Scrapling

## 一句话说明
把快速 HTTP 请求、隐身浏览器、DOM 解析和并发爬虫统一进一个 Python 抓取框架，既能取少量字段，也能持续抓取整站并导出数据。

## 它能做什么
- 通过普通请求、持久会话或浏览器渲染抓取静态页、JavaScript 页面及后台 API。
- 用 CSS、XPath、文本、正则和相似元素匹配提取数据，并可输出干净 Markdown。
- 用 Spider 实现并发、代理轮换、重试、自动限速、暂停/恢复和 JSONL/CSV/XML 导出。
- 通过 CLI、交互 Shell、MCP Server 和 Agent Skill 接入脚本或 AI Agent。

## 怎么利用
根据目标页面选择 Fetcher、StealthyFetcher 或 Spider；输入 URL、会话/代理配置和选择器，框架负责请求或浏览器交互、解析与调度，输出结构化字段、Markdown 或导出文件。

## 实际例子
**官方 Basic Usage → 场景：** 抽取 Quotes to Scrape 的所有引文。**输入：** 页面 URL 与 `.quote .text::text` 选择器。**操作：** 建立模拟 Chrome TLS 指纹的会话并请求页面，再用 CSS 选择器取值。**输出：** 引文字符串列表。

```python
from scrapling.fetchers import FetcherSession
with FetcherSession(impersonate="chrome") as s:
    quotes = s.get("https://quotes.toscrape.com/").css(".quote .text::text").getall()
```

## 适合谁
需要将网页抓取从一次性脚本扩展到可恢复爬虫、或想让 Agent 通过 MCP 获取网页内容的数据工程师与研究人员。

## 局限 / 注意点
Python 需 3.10+；基础 `pip install scrapling` 只含解析器，Fetcher/Spider 还要安装 `fetchers` 扩展和浏览器依赖。隐身或挑战处理不保证成功，抓取仍必须遵守网站条款、访问频率、robots 与数据授权要求。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-11-03 | 3 | 706 | 92816 | GitHub Today live snapshot |
| 2026-11-04 | 11 | 1658 | 94787 | GitHub Today live snapshot |
| 2026-11-05 | 14 | 2005 | 96907 | GitHub Today live snapshot |
| 2026-11-06 | 5 | 1655 | 97941 | 10255 | GitHub Today live snapshot |

## 相关主题
- [[Topics/Web-Scraping]]
- [[Topics/Automation]]

## 相关日报
- [[Daily/2026/11/2026-11-03|2026-11-03]]
- [[Daily/2026/11/2026-11-04|2026-11-04]]
- [[Daily/2026/11/2026-11-05|2026-11-05]]
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/D4Vinci/Scrapling

## 官方资料复核（2026-11-03）
- README：https://github.com/D4Vinci/Scrapling/blob/main/README.md
- 复核了 Fetcher、StealthyFetcher、Spider、解析、导出和可选依赖说明。

## 官方资料复核（2026-11-04）
- README：https://github.com/D4Vinci/Scrapling/blob/HEAD/README.md
- README blob SHA：`26cc7aa2c13dfb31b77a1a650c7dc565bbcc4d21`
- 本次按当前官方 README 复核；仅合并当天榜单事实、必要能力补充与复核记录，原有说明、案例、分类、标签、风险与历史均保留。

## 官方资料复核（2026-11-05）
- README：https://github.com/D4Vinci/Scrapling/blob/HEAD/README.md
- README blob SHA：`bf5a1eff0137552b0696859e17973e4bbf319406`
- 本次复核当前 README；既有抓取、解析、Spider、MCP 能力与具体示例仍有效，仅合并当天事实和复核版本。

## 官方资料复核（2026-11-06）
- README：https://github.com/D4Vinci/Scrapling/blob/HEAD/README.md
- README blob SHA：`bf5a1eff0137552b0696859e17973e4bbf319406`
- 本次只合并当天榜单事实与资料复核记录，原有详细说明、案例、分类、标签、风险和历史均保留。

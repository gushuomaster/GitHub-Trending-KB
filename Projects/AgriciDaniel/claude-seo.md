---
type: github-project
repo: "AgriciDaniel/claude-seo"
url: "https://github.com/AgriciDaniel/claude-seo"
first_seen: "2026-10-26"
last_seen: "2026-10-26"
trending_count: 1
github_rank: 11
stars_today: 197
total_stars: 20828
forks: 2952
language: "Python"
fetched_at: "2026-10-26T08:02:30+08:00"
documentation_checked_at: "2026-10-26"
stats_as_of: "2026-10-26"
snapshot_status: live
category: ["SEO", "Claude Code Plugin", "Website Audit"]
topics: ["SEO", "Claude Code", "Website Audit", "Reporting"]
status: active
---
# AgriciDaniel/claude-seo

## 一句话说明
为 Claude Code 提供可在本地编排的网站 SEO 审计流程，把抓取、技术检查、内容可信度、结构化数据和 AI 搜索可见性汇总成可执行报告。

## 它能做什么
- 通过 26 个 Skill 和 19 个专用 Agent 检查技术 SEO、E-E-A-T、schema、GEO/AEO、站外与本地 SEO。
- 最多并行 17 个审计 Agent，覆盖电商、国际化、Google API 和 Agent 可发现性检查。
- 提供快速检查、完整审计、整改计划、变化监控和站点对比等命令。
- 输出 Markdown、JSON 与可选 PDF/Excel 报告，并可接入 Search Console、Analytics、PageSpeed 等数据源。

## 怎么利用
在 Claude Code 1.0.33+ 中从 marketplace 安装插件，运行 `/seo setup` 建立隔离 Python 环境并安装浏览器。输入是有权检查的网站 URL和可选 Google API 凭据；插件抓取页面、并行执行各审计角色并汇总优先级，输出问题证据、整改清单和可交付报告。

## 实际例子
**官方命令流程 → 场景：** 在改版前对公开网站做完整 SEO 基线审计。**输入：** `https://example.com` 与已授权的 Search Console/PageSpeed 凭据（可选）。**操作：** 安装插件、完成 setup 后运行 `/seo audit`，再用报告命令生成客户材料。**输出：** 按优先级排列的技术与内容问题、机器可读结果和 PDF/Markdown 报告。

```text
/plugin marketplace add AgriciDaniel/claude-seo
/plugin install claude-seo@agricidaniel-claude-seo
/seo setup
/seo audit https://example.com
```

## 适合谁
需要周期性审查客户网站的 SEO 顾问与代理商、负责站点增长的内容团队，以及想把技术 SEO 检查纳入开发流程的 Web 工程师。

## 局限 / 注意点
- 要求 Claude Code 1.0.33+ 和 Python 3.11–3.14；完整审计会消耗较多 Claude 额度，部分扩展数据源需要自备 API Key 或付费服务。
- 没有 Google API 时，Core Web Vitals 只是实验室估计、索引状态为推断；依赖滚动或点击后加载的内容可能产生噪声。插件在本机运行工具，但页面与审计数据会按 Claude Code 的工作方式发送给 Anthropic，敏感站点应先确认数据政策与授权。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-26 | 11 | 197 | 20828 | 2952 | GitHub Today live snapshot |

## 相关主题
[[Topics/SEO|SEO]] · [[Topics/Claude-Code|Claude-Code]] · [[Topics/Website-Audit|Website-Audit]] · [[Topics/Reporting|Reporting]]

## 相关日报
- [[Daily/2026/10/2026-10-26|2026-10-26]]

## GitHub 原始链接
https://github.com/AgriciDaniel/claude-seo

## 官方资料复核（2026-10-26）
- README：https://github.com/AgriciDaniel/claude-seo/blob/main/README.md
- README blob SHA：`70b98e1ad7cd3aa7228781bbd12458e1a15577ce`

---
type: github-project
repo: "vercel-labs/agent-browser"
url: "https://github.com/vercel-labs/agent-browser"
first_seen: "2026-11-06"
last_seen: "2026-11-11"
trending_count: 5
language: "Rust"
total_stars: 49189
forks: 3448
stars_today: 780
github_rank: 8
fetched_at: "2026-11-11T08:11:35+08:00"
documentation_checked_at: "2026-11-11"
stats_as_of: "2026-11-11"
snapshot_status: "live"
category: ["AI", "Browser Automation", "Developer Tools"]
tags: ["browser-automation", "accessibility-tree", "cdp", "agent"]
topics: ["Browser-Automation", "AI-Agent", "Testing"]
---
# vercel-labs/agent-browser

## 一句话说明
为 AI Agent 提供逐条命令驱动浏览器的 Rust CLI，以紧凑可访问性快照和元素引用降低工具调用成本。

## 它能做什么
- 打开页面并输出带 `@e1` 等引用的交互元素快照。
- 对引用执行点击、输入、读取 URL 等动作，并保持浏览器会话。
- 支持 CSS/文本/XPath/语义定位、CDP 接入、多引擎和云浏览器 Provider。

## 怎么利用
**官方 Quickstart →** 运行 `agent-browser open example.com`，再执行 `snapshot -i` 获取链接引用，`click @e1` 操作并用 `get url` 验证跳转；输出每一步可复核的页面状态。

## 实际例子
**官方 Quickstart →** 运行 `agent-browser open example.com`，再执行 `snapshot -i` 获取链接引用，`click @e1` 操作并用 `get url` 验证跳转；输出每一步可复核的页面状态。

## 关键命令
```bash
agent-browser open example.com
agent-browser snapshot -i
agent-browser click @e1
```

## 适合谁
需要让 Agent 从终端执行可审计浏览器操作的自动化与测试工程师。

## 局限 / 注意点
导航或 DOM 更新后旧引用会失效，必须重新 snapshot；首次安装会下载 Chrome for Testing，Linux 还可能需要系统依赖。自动浏览也受站点授权、隐私和副作用确认约束。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-06 | 10 | 150 | 45863 | 3147 | GitHub Today live snapshot |
| 2026-11-08 | 1 | 190 | 46808 | 3208 | GitHub Today live snapshot |
| 2026-11-09 | 5 | 815 | 47559 | 3257 | GitHub Today live snapshot |
| 2026-11-10 | 7 | 916 | 48443 | 3299 | GitHub Today live snapshot |
| 2026-11-11 | 8 | 780 | 49189 | 3448 | GitHub Today live snapshot |

## 相关主题
- [[Topics/Browser-Automation|Browser Automation]]
- [[Topics/AI-Agent|AI Agent]]
- [[Topics/Testing|Testing]]

## 相关日报
- [[Daily/2026/11/2026-11-06|2026-11-06]]
- [[Daily/2026/11/2026-11-08|2026-11-08]]

- [[Daily/2026/11/2026-11-09|2026-11-09]]

- [[Daily/2026/11/2026-11-10|2026-11-10]]

- [[Daily/2026/11/2026-11-11|2026-11-11]]

## GitHub 原始链接
https://github.com/vercel-labs/agent-browser

## 官方资料复核（2026-11-06）
- README：https://github.com/vercel-labs/agent-browser/blob/HEAD/README.md
- README blob SHA：`53f71fd42a568994479edfa5063c58ca0b5dad8d`
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-08）
- README：https://github.com/vercel-labs/agent-browser/blob/HEAD/README.md
- README blob SHA：`53f71fd42a568994479edfa5063c58ca0b5dad8d`
- 本次仅合并当天榜单事实与资料复核记录；既有能力、案例、分类、风险和历史内容均保留。

## 官方资料复核（2026-11-09）
- README：https://github.com/vercel-labs/agent-browser/blob/HEAD/README.md
- README blob SHA：`53f71fd42a568994479edfa5063c58ca0b5dad8d`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

## 官方资料复核（2026-11-10）
- README：https://github.com/vercel-labs/agent-browser/blob/HEAD/README.md
- README blob SHA：`53f71fd42a568994479edfa5063c58ca0b5dad8d`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

## 官方资料复核（2026-11-11）
- README：https://github.com/vercel-labs/agent-browser/blob/HEAD/README.md
- README blob SHA：`53f71fd42a568994479edfa5063c58ca0b5dad8d`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。


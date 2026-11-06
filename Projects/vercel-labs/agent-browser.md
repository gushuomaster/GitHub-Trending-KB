---
type: github-project
repo: "vercel-labs/agent-browser"
url: "https://github.com/vercel-labs/agent-browser"
first_seen: "2026-11-06"
last_seen: "2026-11-06"
trending_count: 1
language: "Rust"
total_stars: 45863
forks: 3147
stars_today: 150
github_rank: 10
fetched_at: "2026-11-06T08:10:55+08:00"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
category: ["Developer Tools"]
topics: ["GitHub Trending"]
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

## 相关主题
- [[Topics/GitHub-Trending|GitHub Trending]]

## 相关日报
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/vercel-labs/agent-browser

## 官方资料复核（2026-11-06）
- README：https://github.com/vercel-labs/agent-browser/blob/HEAD/README.md
- README blob SHA：`53f71fd42a568994479edfa5063c58ca0b5dad8d`
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

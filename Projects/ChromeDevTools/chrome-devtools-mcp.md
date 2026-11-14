---
type: github-project
repo: "ChromeDevTools/chrome-devtools-mcp"
url: "https://github.com/ChromeDevTools/chrome-devtools-mcp"
first_seen: "2026-11-14"
last_seen: "2026-11-14"
trending_count: 1
language: "TypeScript"
total_stars: 55444
forks: 4602
stars_today: 67
github_rank: 12
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Browser Automation","MCP","Developer Tools"]
topics: ["Chrome-DevTools","MCP","Performance"]
---
# ChromeDevTools/chrome-devtools-mcp

## 一句话说明
Chrome DevTools MCP 让 Coding Agent 通过 MCP 或 CLI 控制并检查真实 Chrome，执行可靠自动化、网络与控制台调试以及性能分析。

## 它能做什么
- 借助 Puppeteer 导航、交互、截图并等待页面操作结果。
- 读取网络请求、控制台和 source map 堆栈，录制性能 trace 并提取优化建议。
- 同时提供 MCP、终端 CLI 和针对无障碍、Cookie、LCP、内存泄漏等任务的技能。

## 怎么利用
在 MCP 客户端配置 `npx -y chrome-devtools-mcp@latest`，要求“Check the performance of https://developers.chrome.com”；工具启动 Chrome、录制 trace，输出可操作的性能洞察。

## 实际例子
**官方首个 Prompt →** 在 MCP 客户端配置 `npx -y chrome-devtools-mcp@latest`，要求“Check the performance of https://developers.chrome.com”；工具启动 Chrome、录制 trace，输出可操作的性能洞察。

## 关键命令
```bash
npx -y chrome-devtools-mcp@latest
```

## 适合谁
需要让 Coding Agent 直接观察真实 Chrome、定位前端故障或分析页面性能的 Web 开发与测试团队。

## 局限 / 注意点
MCP 客户端可读取、调试并修改浏览器中的任何数据，不能在含敏感账号的配置中盲目使用；官方只保证 Chrome/Chrome for Testing。使用统计默认开启，性能工具还可能查询 CrUX，可用相应参数关闭。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-14 | 12 | 67 | 55444 | 4602 | GitHub Today live snapshot |

## 相关主题
[[Topics/Chrome-DevTools|Chrome-DevTools]] · [[Topics/MCP|MCP]] · [[Topics/Performance|Performance]]

## 相关日报
- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/ChromeDevTools/chrome-devtools-mcp

## 官方资料复核（2026-11-14）
- README：https://github.com/ChromeDevTools/chrome-devtools-mcp/blob/HEAD/README.md
- README blob SHA：`2dca1a052a314a7c2635fb9da68c96221441e380`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

---
type: github-project
repo: "GoogleChrome/modern-web-guidance-src"
url: "https://github.com/GoogleChrome/modern-web-guidance-src"
first_seen: "2026-11-12"
last_seen: "2026-11-14"
trending_count: 3
language: "TypeScript"
total_stars: 4816
forks: 269
stars_today: 1925
github_rank: 2
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Web Platform","Agent Skills","Frontend"]
topics: ["Web-Platform","Frontend","AI-Agent"]
---
# GoogleChrome/modern-web-guidance-src

## 一句话说明
Modern Web Guidance 把现代 Web 平台能力、最佳实践和浏览器兼容数据整理成可供 Coding Agent 检索的技能，减少模型继续生成陈旧或冗余的前端方案。

## 它能做什么
- 把现代 Web API、性能、可访问性和浏览器兼容知识封装成 token-efficient Agent 技能。
- 提供搜索、按 ID 取回和遗留模式扫描三类 CLI 能力。
- 覆盖 250 项 CSS、HTML/DOM、JavaScript/API 特性，并给出安全采用和回退建议。

## 怎么利用
在前端仓库安装技能或直接用 CLI 扫描。输入是代码目录或自然语言问题；工具定位遗留模式、取回对应指南，把现代 API、兼容性与回退策略送入 Coding Agent 上下文，输出可执行的改造依据。

## 实际例子
**官方 CLI 场景 →** 对代码库执行 `legacy-scan .`，再对命中的问题运行 `search` 或 `retrieve`；得到需要替换的旧模式及对应现代 Web 指南。

## 关键命令
```bash
npx modern-web-guidance@latest legacy-scan .
npx modern-web-guidance@latest search "animate a dialog modal backdrop"
```

## 适合谁
希望让 Coding Agent 使用现代浏览器能力，并系统清理旧式前端实现的 Web 工程师、平台团队和 Agent 工具作者。

## 局限 / 注意点
指南用于增强 Agent 上下文，不会自动证明改造后的兼容性或性能；采用前沿浏览器特性时仍要按目标浏览器做检测、回退和真实设备测试。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-12 | 3 | 159 | 1727 | 139 | GitHub Today live snapshot |
| 2026-11-13 | 1 | 739 | 2875 | 194 | GitHub Today live snapshot |
| 2026-11-14 | 2 | 1925 | 4816 | 269 | GitHub Today live snapshot |

## 相关主题
[[Topics/Web-Platform|Web-Platform]] · [[Topics/Frontend|Frontend]] · [[Topics/AI-Agent|AI-Agent]]

## 相关日报
- [[Daily/2026/11/2026-11-12|2026-11-12]]

- [[Daily/2026/11/2026-11-13|2026-11-13]]

- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/GoogleChrome/modern-web-guidance-src

## 官方资料复核（2026-11-12）
- README：https://github.com/GoogleChrome/modern-web-guidance-src/blob/HEAD/README.md
- README blob SHA：`d130c0043c81edb4dc74c8bb279c625a591fc6ac`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-13）
- README：https://github.com/GoogleChrome/modern-web-guidance-src/blob/HEAD/README.md
- README blob SHA：`d130c0043c81edb4dc74c8bb279c625a591fc6ac`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

## 官方资料复核（2026-11-14）
- README：https://github.com/GoogleChrome/modern-web-guidance-src/blob/HEAD/README.md
- README blob SHA：`0ccd772b5e62eea09b54b454f0bd75a33b511503`
- 本次按当前官方资料复核并合并当天榜单事实；既有说明、案例、主题、风险与较早历史均保留。

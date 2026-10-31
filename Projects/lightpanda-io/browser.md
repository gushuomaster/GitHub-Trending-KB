---
type: "github-project"
repo: "lightpanda-io/browser"
url: "https://github.com/lightpanda-io/browser"
first_seen: "2026-10-31"
last_seen: "2026-10-31"
trending_count: 1
github_rank: 15
stars_today: 626
total_stars: 38346
forks: 1871
language: "Zig"
fetched_at: "2026-10-31T08:05:14+08:00"
documentation_checked_at: "2026-10-31"
stats_as_of: "2026-10-31"
snapshot_status: "live"
category: ["Headless Browser", "Web Automation", "Agent Infrastructure"]
topics: ["Browser Automation", "CDP", "MCP", "Zig"]
status: active
---

# lightpanda-io/browser

## 一句话说明
Lightpanda 是为 AI Agent、爬取和浏览器自动化从头构建的无界面浏览器，用较少内存运行 JavaScript 网页，并通过 CDP、WebDriver BiDi、MCP 和原生 Agent 模式接入自动化工具。

## 它能做什么
- 执行现代网页所需的 JavaScript、DOM、Fetch/XHR、Cookie、表单、点击和网络拦截，并可导出 HTML 或 Markdown。
- 提供 CDP 与 WebDriver BiDi 服务，可让 Puppeteer、Playwright 等客户端连接同一个轻量浏览器进程。
- 原生 Agent 模式能把自然语言操作录制成可重复、无需运行时模型的 PandaScript。
- 内置 MCP 服务并支持隔离浏览会话，多个 Agent 可独立使用 Cookie、页面和内存，也能显式共享会话。

## 怎么利用
输入是待访问网页、需要抽取或操作的目标以及自动化客户端。先安装 nightly 二进制或运行官方 Docker 镜像，再以 `serve` 启动只监听本机的 CDP 服务；Puppeteer 或其他 CDP 客户端连接后执行导航、点击与结构化提取，输出网页数据、HTML/Markdown 或可重放脚本。

## 实际例子
**官方 CDP 示例 → 场景：** 从演示页面提取所有链接。**输入：** 演示页 URL。**操作：** 以 `--obey-robots` 启动本机 CDP 服务，再让 Puppeteer 连接 `ws://127.0.0.1:9222`，访问页面并在 DOM 中收集 `a[href]`。**输出：** 页面全部链接的数组；也可在 Agent 模式完成同类流程后用 `/save` 导出 PandaScript 并在生产环境重放。

```bash
./lightpanda serve --obey-robots --host 127.0.0.1 --port 9222
```

## 适合谁
需要高并发网页抓取、Agent 浏览器工具、CDP/MCP 服务或可复现网页操作脚本的 AI 平台工程师、自动化测试工程师和数据采集团队。

## 局限 / 注意点
- 项目仍在补齐 Web Platform 能力，没有图形渲染引擎；需要完整 Chrome 兼容性、视觉截图或尚未实现的 API 时应保留 Chromium 回退。
- 发布物主要是 nightly；Linux 二进制依赖 glibc，Alpine 等 musl 系统需换基础镜像或源码构建，Windows 没有原生二进制而需 WSL2。
- 默认会发送使用遥测，可用 `LIGHTPANDA_DISABLE_TELEMETRY=true` 关闭；对外开放 CDP/MCP 前还需配置网络边界、会话隔离并遵守 robots.txt 与目标站条款。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-31 | 15 | 626 | 38346 | 1871 | GitHub Today live snapshot |

## 相关主题
[[Topics/Browser-Automation|Browser-Automation]] · [[Topics/AI-Agent|AI-Agent]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-31|2026-10-31]]

## GitHub 原始链接
https://github.com/lightpanda-io/browser

## 官方资料复核（2026-10-31）
- README：https://github.com/lightpanda-io/browser/blob/main/README.md
- README blob SHA：`a3d2c26d590ae5cbe552bc85811b50b9b56b0c4f`
- Quick Start、CDP、Agent、MCP、平台支持、遥测与状态说明均来自该 README。

---
type: github-project
repo: "ag-ui-protocol/ag-ui"
url: "https://github.com/ag-ui-protocol/ag-ui"
first_seen: "2026-11-15"
last_seen: "2026-11-16"
trending_count: 2
language: "TypeScript"
total_stars: 17840
forks: 1818
stars_today: 355
github_rank: 2
fetched_at: "2026-11-16T08:10:30+08:00"
documentation_checked_at: "2026-11-16"
stats_as_of: "2026-11-16"
snapshot_status: "live"
category: ["Agent Protocol","Frontend","Interoperability"]
topics: ["AG-UI","Agent","Protocol"]
---
# ag-ui-protocol/ag-ui

## 一句话说明
AG-UI 是开放、轻量的事件协议，用统一事件与输入把 Agent 后端、实时用户上下文和前端界面连接起来。

## 它能做什么
- 定义约 16 类标准运行事件和少量兼容输入，统一 Agent 执行过程的前端表达。
- 不绑定传输层，可运行在 SSE、WebSocket、Webhook 等通道上，并允许宽松事件格式匹配。
- 提供中间件层、参考 HTTP 实现和默认连接器，便于接入现有 Agent 框架。
- 与 MCP、A2A 分工：MCP 提供工具，A2A 连接 Agent，AG-UI 负责面向用户的交互。

## 怎么利用
运行 `npx create-ag-ui-app my-agent-app` 创建示例应用；Agent 后端接受 AG-UI 输入并持续发送运行事件，前端据此显示消息、工具调用和状态更新。

## 实际例子
**官方 Quickstart →** 运行 `npx create-ag-ui-app my-agent-app` 创建示例应用；Agent 后端接受 AG-UI 输入并持续发送运行事件，前端据此显示消息、工具调用和状态更新。

## 关键命令
```bash
npx create-ag-ui-app my-agent-app
```

## 适合谁
需要把不同 Agent 后端接入 Web 或桌面界面，并保留实时状态、用户介入和跨框架兼容性的应用开发者。

## 局限 / 注意点
AG-UI 只规定交互事件与连接方式，不负责模型能力、业务权限、身份认证或最终 UX；应用仍需自行保护事件通道、校验工具操作并处理断线和重放。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-15 | 8 | 9 | 17354 | 1666 | GitHub Today live snapshot |
| 2026-11-16 | 2 | 355 | 17840 | 1818 | GitHub Today live snapshot |

## 相关主题
[[Topics/AG-UI|AG-UI]] · [[Topics/Agent|Agent]] · [[Topics/Protocol|Protocol]]

## 相关日报
- [[Daily/2026/11/2026-11-15|2026-11-15]]
- [[Daily/2026/11/2026-11-16|2026-11-16]]

## GitHub 原始链接
https://github.com/ag-ui-protocol/ag-ui

## 官方资料复核（2026-11-15）
- README：https://github.com/ag-ui-protocol/ag-ui/blob/HEAD/README.md
- README blob SHA：`df7ba5f63308abf31d81d45288dac37d22e4efe7`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-16）
- README：https://github.com/ag-ui-protocol/ag-ui/blob/HEAD/README.md
- 本次按当前官方 README 复核并合并当天榜单事实；既有说明、案例、分类、主题、风险与历史内容均保留。

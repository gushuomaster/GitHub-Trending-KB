---
type: "github-project"
repo: "spotify/portal-ai-plugins"
url: "https://github.com/spotify/portal-ai-plugins"
first_seen: "2026-11-04"
last_seen: "2026-11-04"
trending_count: 1
github_rank: 7
stars_today: 91
total_stars: 3031
forks: 235
language: "TypeScript"
fetched_at: "2026-11-04T08:08:38+08:00"
documentation_checked_at: "2026-11-04"
stats_as_of: "2026-11-04"
snapshot_status: "live"
category: ["Developer Portal","Agent Plugin"]
tags: ["portal","catalog","fleetshift","actions"]
topics: ["Developer-Portal","Agent-Tools","Platform-Engineering"]
status: active
---
# spotify/portal-ai-plugins

## 一句话说明
把 Spotify Portal 的软件目录、服务运维信息和动作系统接入 Claude Code、Codex、Cursor 与 pi，让 Agent 能查服务、做诊断并安全调用平台动作。

## 它能做什么
- 为当前 Coding Agent 配置 Portal CLI 身份验证并检查就绪状态。
- 用自然语言搜索软件目录和技术文档，生成含所有者、健康、事故与文档的服务简报。
- 发现 Portal actions，并通过帮助、dry-run 与确认门禁安全调用。
- 管理 Fleetshift shift：创建、运行、查看状态、排障、停止并为完成目标开 PR。

## 怎么利用
先按 Coding Agent 的插件入口安装 Spotify Portal，再运行 setup 完成 Portal CLI 身份验证；输入服务名、目录/文档问题或 Fleetshift 目标，插件调用 Portal CLI 搜索、汇总或预览动作，输出服务简报、诊断结果、shift 状态或经确认的 PR。

## 实际例子
**官方 Codex 安装流程 → 场景：** 在 Codex 中查询某个服务的所有者、健康与事故信息。**输入：** Spotify Portal 访问权限和服务名。**操作：** 添加 marketplace，在 `/plugins` 安装 Spotify Portal，启动新任务并请求设置；认证后使用 service 工作流。**输出：** 含可用所有者、健康、事故与文档信息的简洁服务简报。

```bash
codex plugin marketplace add spotify/portal-ai-plugins
codex
```

## 适合谁
已使用 Spotify Portal 管理软件目录、服务运维或 Fleetshift 变更，并希望从 Claude Code、Codex、Cursor 或 pi 调用这些能力的平台工程师与服务负责人。

## 局限 / 注意点
需要可用的 Spotify Portal 与 CLI 身份认证；可执行 actions 和 Fleetshift 变更，必须保留 dry-run/确认流程。README 说明 shunt 当前仅支持 Claude Code。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-04 | 7 | 91 | 3031 | 235 | GitHub Today live snapshot |

## 相关主题
- [[Topics/Developer-Portal]]
- [[Topics/Agent-Tools]]
- [[Topics/Platform-Engineering]]

## 相关日报
- [[Daily/2026/11/2026-11-04|2026-11-04]]

## GitHub 原始链接
https://github.com/spotify/portal-ai-plugins

## 官方资料复核（2026-11-04）
- README：https://github.com/spotify/portal-ai-plugins/blob/HEAD/README.md
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。


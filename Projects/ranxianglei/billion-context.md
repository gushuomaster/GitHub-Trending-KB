---
type: github-project
repo: "ranxianglei/billion-context"
url: "https://github.com/ranxianglei/billion-context"
first_seen: "2026-11-08"
last_seen: "2026-11-08"
trending_count: 1
language: "TypeScript"
total_stars: 4595
forks: 369
stars_today: 191
github_rank: 14
fetched_at: "2026-11-08T08:02:37+08:00"
documentation_checked_at: "2026-11-08"
stats_as_of: "2026-11-08"
snapshot_status: "live"
category: ["AI Agent","Context Compression","Proxy"]
topics: ["Context-Management","Coding-Agent","Token"]
---
# ranxianglei/billion-context

## 一句话说明
billion-context 是位于 Coding Agent 与模型 API 之间的上下文压缩代理，把已消费对话折叠成分层摘要，以延长单一会话并减少重复输入 token。

## 它能做什么
- 兼容 Anthropic、OpenAI 及多种 Coding Agent，通过代理改写请求和流式响应。
- 注入 compress、decompress、search_context、acp_status 工具，让模型按需压缩、恢复和检索历史。
- 采用增量、可逆且尽量保持前缀缓存的压缩方式，并提供多宿主启动器或插件。

## 怎么利用
安装后用 `bili codex` 启动代理化会话；长任务中模型把已完成阶段压缩为摘要，必要时搜索或解压原始范围，输出仍是同一持续会话中的代码与解释。

## 实际例子
**官方 Codex 场景 →** 安装后用 `bili codex` 启动代理化会话；长任务中模型把已完成阶段压缩为摘要，必要时搜索或解压原始范围，输出仍是同一持续会话中的代码与解释。

## 关键命令
```bash
npm install -g billion-context
bili codex
```

## 适合谁
运行长时 Coding Agent 会话、关心上下文窗口和输入 token 成本的开发者。

## 局限 / 注意点
代理会接触模型请求和响应，部署前必须审查本地端口、证书/MITM 模式和密钥路径。`bili plugin install codex` 只写入 MCP 工具配置，不会自行启动代理，也不能把代理环境注入父进程；如需压缩 Codex 模型流量，应先启动 bili 并自行配置 `HTTPS_PROXY`，或使用 `bili codex` 的完整零配置启动路径。压缩摘要可能遗漏细节，官方性能与成本结论来自项目自报实验，关键证据仍需解压核验。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-08 | 14 | 191 | 4595 | 369 | GitHub Today live snapshot |

## 相关主题
[[Topics/Context-Management|Context-Management]] · [[Topics/Coding-Agent|Coding-Agent]] · [[Topics/Token|Token]]

## 相关日报
- [[Daily/2026/11/2026-11-08|2026-11-08]]

## GitHub 原始链接
https://github.com/ranxianglei/billion-context

## 官方资料复核（2026-11-08）
- README：https://github.com/ranxianglei/billion-context/blob/HEAD/README.md
- README blob SHA：`33913fda5a034ab9e59f5ad2f2cd051aa2094c3b`
- 当天下午再次读取当前官方 README，并补入 Codex 启动器与仅安装 MCP 工具两条路径的实际差异；榜单统计仍来自早晨同一次 GitHub Trending Any / Any / Today 页面采集。


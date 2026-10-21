---
type: github-project
repo: "headroomlabs-ai/headroom"
url: "https://github.com/headroomlabs-ai/headroom"
first_seen: "2026-10-20"
last_seen: "2026-10-21"
trending_count: 2
github_rank: 10
stars_today: 549
total_stars: 76742
forks: 5957
language: "Python"
fetched_at: "2026-10-21T08:02:49+08:00"
documentation_checked_at: "2026-10-21"
stats_as_of: "2026-10-21"
snapshot_status: live
topics: ["Context Engineering", "Agent", "MCP", "Developer Tools"]
status: active
---
# headroomlabs-ai/headroom

## 一句话说明
在工具输出、日志、文件和 RAG 片段进入大模型前做本地、可逆压缩，减少 Agent 上下文和 Token 消耗。

> 使用方式依据仓库当前 README 核对于 2026-10-21。

## 它能做什么
- 提供 Python/TypeScript 库、本地代理、Agent wrapper 和 MCP Server
- 按 JSON、代码和文本选择不同压缩器，并缓存原文供按需取回
- 在 Claude、Codex 等 Agent 间共享记忆并统计节省量
- 可选压缩模型输出和学习失败会话中的修正

## 怎么利用
官方快速流程：安装后执行 `headroom wrap codex`，再用 `headroom doctor` 检查路由。输入是 Codex 读取的搜索结果、日志和文件；Headroom 在本机压缩并保留原文缓存；输出是更短的模型输入，必要时可通过检索工具拿回完整片段。

## 实际例子
**官方实测场景 →** SRE 事故调试。**输入 →** 55,957 token 的日志与工具输出。**操作 →** Headroom 按内容类型压缩，同时把原文保存在 CCR 本地缓存。**输出 →** 24,340 token 的模型输入，并保留关键 `FATAL` 行；README 说明该基准可离线复现。

## 关键命令
```bash
uv tool install --python 3.13 "headroom-ai[all]"
headroom wrap codex
headroom doctor
```

## 适合谁
需要压缩 Coding Agent 工具输出、长日志或 RAG 上下文，并希望在本机保留可逆原文的 Agent 工程师与平台团队。

## 局限 / 注意点
短对话、普通 prose 和已高度压缩内容收益很小；需要本地进程并会改写 Agent 路由配置。第三方 OpenAI 兼容服务必须明确设置 upstream，否则密钥会被发往错误端点并失败。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-20 | 7 | 310 | 76231 | 5923 | GitHub Today live snapshot |
| 2026-10-21 | 10 | 549 | 76742 | 5957 | GitHub Today live snapshot |

## 相关主题
[[Topics/Context Engineering|Context Engineering]] · [[Topics/Agent|Agent]] · [[Topics/MCP|MCP]] · [[Topics/Developer Tools|Developer Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-20|2026-10-20]]
- [[Daily/2026/10/2026-10-21|2026-10-21]]

## GitHub 原始链接
https://github.com/headroomlabs-ai/headroom

## 官方资料复核（2026-10-21）
- README：https://github.com/headroomlabs-ai/headroom/blob/main/README.md
- README blob SHA：`adacc2f21f5667a0ff5a11435b81110be3a6dfee`



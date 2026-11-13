---
type: github-project
repo: "QwenLM/qwen-code"
url: "https://github.com/QwenLM/qwen-code"
first_seen: "2026-11-13"
last_seen: "2026-11-13"
trending_count: 1
language: "TypeScript"
total_stars: 29792
forks: 3392
stars_today: 151
github_rank: 6
fetched_at: "2026-11-13T08:07:57+08:00"
documentation_checked_at: "2026-11-13"
stats_as_of: "2026-11-13"
snapshot_status: "live"
category: ["AI Agent","Coding Agent","Developer Tools"]
topics: ["AI-Agent","Coding-Agent","MCP"]
---
# QwenLM/qwen-code

## 一句话说明
Qwen Code 是开源 Coding Agent，可在终端、编辑器、桌面、浏览器和聊天渠道中理解代码库、修改文件、调用工具并持续运行任务。

## 它能做什么
- 在终端和多种客户端中理解代码库、编辑文件、执行命令并调用工具。
- 内置记忆、Skills、子 Agent、Agent Teams 和 MCP。
- 兼容多种云端 API 与 Ollama/vLLM 本地模型，可在运行时切换。
- 提供 headless、SDK、Web UI 和 HTTP+SSE daemon，支持自动化与共享会话。

## 怎么利用
在目标项目目录启动 `qwen`，通过 `/auth` 登录订阅或配置 Provider。输入代码仓库与开发任务，Agent 读取文件、调用工具并生成说明或代码变更；也可用 headless/SDK/daemon 接入 CI、Web 或编辑器。

## 实际例子
**官方 Quick Start →** 进入项目运行 `qwen`，完成认证后输入“Explain this repository and show me where to start.”，输出仓库结构、入口文件和建议的下一步。

## 关键命令
```bash
npm install -g @qwen-code/qwen-code@latest
cd /path/to/your-project
qwen
```

## 适合谁
需要开源、多模型 Coding Agent，或希望从终端扩展到编辑器、自动化、Web 与聊天渠道的软件开发者和平台团队。

## 局限 / 注意点
主版本要求 Node.js 22+；Web UI 与 daemon 标为实验性。daemon 默认监听 loopback 且没有 bearer 认证，任何能访问端口的本地进程都可调用完整 API，远程暴露前必须增加认证和网络隔离。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-13 | 6 | 151 | 29792 | 3392 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Agent|AI-Agent]] · [[Topics/Coding-Agent|Coding-Agent]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/11/2026-11-13|2026-11-13]]

## GitHub 原始链接
https://github.com/QwenLM/qwen-code

## 官方资料复核（2026-11-13）
- README：https://github.com/QwenLM/qwen-code/blob/HEAD/README.md
- README blob SHA：`83b7e8673c2b2c4a5c12bd4bd408a0f95ee685e2`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

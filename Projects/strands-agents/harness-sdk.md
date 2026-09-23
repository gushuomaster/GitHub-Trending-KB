---
repo: "strands-agents/harness-sdk"
url: "https://github.com/strands-agents/harness-sdk"
first_seen: 2026-09-24
last_seen: 2026-09-24
trending_count: 1
github_rank: 9
stars_today: 96
total_stars: 7791
forks: 1196
language: Python
category: ["AI","Agent","Developer Tools"]
tags: ["agent","harness","sdk","python","typescript"]
topics: ["Agent","Developer-Tools"]
status: active
---
# strands-agents/harness-sdk

## 一句话说明
生产级 Agent Harness SDK，在自己的进程里提供 Agent loop、工具、记忆、会话、MCP、Guardrails、Tracing 和 Evals，而不依赖托管控制面。

## 它能做什么
- Python/TypeScript 构建 Agent harness。
- 控制 turn/token 预算、取消与停止原因。
- 支持 MCP、结构化输出、多 Agent、memory/session、guardrails 与 tracing。
- 可切换 Bedrock、Anthropic、OpenAI、Gemini 等模型提供方。

## 怎么利用
先用 batteries-included 的 `create_harness()` 获得可运行 Agent，需要更细控制时再下沉到 SDK 自定义 tools、provider、memory 和 hooks。

## 实际例子
**场景 →** 找出仓库最慢测试。 **操作 →** `pip install strands-harness`，创建 `agent = create_harness()`，调用 `agent("Find the slowest test in this repo and explain why it's slow")`。 **结果 →** Agent 在受控 harness 中分析仓库并返回原因。

## 适合谁
构建生产 Agent、希望掌握 Agent loop 和可观测性的 Python/TypeScript 团队。

## 局限 / 注意点
功能面较广，生产配置仍需自行选择模型、工具权限、记忆后端和安全策略。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-24 | 9 | +96 | 7791 |
## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Developer-Tools|Developer-Tools]]
## 相关日报
- [[Daily/2026/09/2026-09-24|2026-09-24]]
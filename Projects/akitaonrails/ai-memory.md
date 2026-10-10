---
type: github-project
repo: "akitaonrails/ai-memory"
url: "https://github.com/akitaonrails/ai-memory"
first_seen: 2026-09-22
last_seen: 2026-09-22
trending_count: 1
github_rank: 4
stars_today: 217
total_stars: 7611
language: "Rust"
category: ["AI", "Agent", "Memory"]
tags: ["agent", "memory", "handoff", "coding-agent", "rust"]
topics: ["Agent", "Context Engineering", "Developer Tools"]
status: active
documentation_checked_at: 2026-10-10
---
# akitaonrails/ai-memory

## 一句话说明
为 Coding Agent 提供跨会话、跨工具和跨机器的长期记忆，把决策、约束、进度与未完成工作沉淀成可迁移的项目知识。

## 它能做什么
- 通过 20 多种 Agent harness 的生命周期 hook 捕获会话信息，并在写入前做敏感内容清理。
- 以 Git 支持的 Markdown wiki 作为事实源，派生索引损坏后可以重新构建。
- 组合全文、实体、链接和可选向量检索，向新会话注入有界的项目摘要。
- 用 typed claim-once handoff 让不同 Agent 领取任务，降低并发重复工作。
- 通过访问强化、衰减、压缩、去重和矛盾标记治理长期记忆。

## 怎么利用
先部署 ai-memory 服务，再为 Claude Code、Codex 或其他受支持客户端安装 MCP 与 hook。Agent 在会话结束时把已确认的决策、修改位置、约束和剩余任务写入记忆；下一次会话按项目检索相关条目，读取摘要并领取尚未完成的工作，最终输出带来源的连续上下文。

## 实际例子
**官方能力对应场景 → 输入 → 操作 → 输出：** Claude Code 完成一次跨模块重构的第一阶段，输入包括架构决策、已修改文件和测试失败项；hook 将清理后的内容保存到 Git-backed wiki，Codex 在另一台机器的新会话中通过 MCP 检索并 claim 剩余任务；输出是可追溯的接续计划，而不是重新粘贴整段聊天历史。

## 关键命令
项目提供 Docker/服务端安装和各 Agent 的 MCP、hook 安装流程；具体命令随目标 harness 不同，应使用 README 中对应平台的安装段落。

## 适合谁
需要在 Claude Code、Codex 等多个 Coding Agent 之间保持项目连续性的个人开发者，以及需要跨机器、跨成员交接任务的工程团队。

## 局限 / 注意点
- 捕获内容可能包含提示词、源代码和工具输出，必须保护服务端、认证、存储、备份与审计记录。
- 不同 Agent 的 hook 生命周期和兼容性不同；Windows 原生支持仍标记为实验性。
- 记忆可能过期或相互冲突，衰减和矛盾标记不能替代人工确认关键架构事实。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-22 | 4 | 217 | 7611 | 原日报保存的当日快照；Forks 未保存 |

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Context Engineering|Context Engineering]] · [[Topics/Developer Tools|Developer Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-22|2026-09-22]]

## GitHub 原始链接
https://github.com/akitaonrails/ai-memory

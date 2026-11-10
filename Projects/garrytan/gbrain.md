---
type: github-project
repo: "garrytan/gbrain"
url: "https://github.com/garrytan/gbrain"
first_seen: "2026-11-10"
last_seen: "2026-11-10"
trending_count: 1
language: "TypeScript"
total_stars: 32122
forks: 4764
stars_today: 216
github_rank: 6
fetched_at: "2026-11-10T08:05:10+08:00"
documentation_checked_at: "2026-11-10"
stats_as_of: "2026-11-10"
snapshot_status: "live"
category: ["Agent Memory","Knowledge Base","MCP"]
topics: ["Agent-Memory","Knowledge-Graph","MCP"]
---
# garrytan/gbrain

## 一句话说明
GBrain 是可自托管的 Agent 记忆层，把带来源的事实、修正和撤回保存在用户控制的知识库中，并让多个 AI Agent 共享检索与综合结果。

## 它能做什么
- 以页面和来源保存显式事实，支持纠错、撤回与跨 Agent 共享。
- 提供关键词、语义、混合检索以及带引用和知识缺口说明的答案综合。
- 用类型化知识图谱连接人物、公司、交易与想法，并支持关系遍历。
- 通过 MCP、CLI、Tailscale 或托管服务接入 Claude Code、Codex、ChatGPT 等宿主。

## 怎么利用
安装稳定版 CLI 后初始化无嵌入的本地 PGlite brain，导入 Markdown 笔记，再用 `gbrain search` 检索；输入是受控笔记和查询，输出为命中页面或带来源的综合答案。

## 实际例子
**官方独立 CLI 流程 →** 将 `~/notes/` 导入本地 brain，搜索某段已知短语，得到相关页面的 JSON 结果；需要综合回答时再配置聊天能力并使用 `gbrain think`。

## 关键命令
```bash
bun install -g github:garrytan/gbrain#stable
gbrain init --pglite --no-embedding
gbrain import ~/notes/ --no-embed
gbrain search "a phrase from a note" --json
```

## 适合谁
希望为 Coding Agent 或团队 Agent 增加可追溯、可迁移长期记忆的开发者与知识管理团队。

## 局限 / 注意点
要求 Bun 1.4.4+；关键词模式可无模型密钥，但语义检索、重排、抽取和综合可能把文本发送给所配置的云服务并产生费用。共享数据库凭据与本地文件不自动获得远程来源隔离；Markdown 导出也不是完整数据库备份。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-10 | 6 | 216 | 32122 | 4764 | GitHub Today live snapshot |

## 相关主题
[[Topics/Agent-Memory|Agent-Memory]] · [[Topics/Knowledge-Graph|Knowledge-Graph]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/11/2026-11-10|2026-11-10]]

## GitHub 原始链接
https://github.com/garrytan/gbrain

## 官方资料复核（2026-11-10）
- README：https://github.com/garrytan/gbrain/blob/HEAD/README.md
- README blob SHA：`76077dd6668ee6f5dead0b1ace33071eba26a965`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

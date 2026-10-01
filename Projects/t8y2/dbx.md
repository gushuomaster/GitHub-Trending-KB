---
repo: "t8y2/dbx"
url: "https://github.com/t8y2/dbx"
first_seen: 2026-09-30
last_seen: 2026-10-01
trending_count: 2
github_rank: 15
stars_today: 232
total_stars: 21968
forks: 2086
language: Rust
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["Database", "Developer Tools", "AI"]
tags: ["database-client", "sql", "mcp", "docker", "rust"]
topics: ["Developer-Tools", "AI"]
status: active
---
# t8y2/dbx

## 一句话说明
用约 25 MB 的跨平台客户端统一连接 100 多种数据库、搜索引擎、消息队列和中间件，并给人和 Agent 提供 SQL、MCP 与 CLI 操作入口。

## 它能做什么
- 在一个桌面/Web 界面管理 MySQL、PostgreSQL、SQLite、Redis、MongoDB、DuckDB 等连接。
- 提供查询编辑、数据网格、Schema 浏览、ER 图、执行计划、导入导出和数据迁移。
- 用 Claude、OpenAI、本地 Ollama 或兼容端点生成、解释、优化和修复 SQL。
- 通过独立 MCP server 与 CLI，让 Agent 在连接白名单和分级权限下查询数据库。

## 怎么利用
先在 DBX 中配置现有数据库连接并测试；如果接入 Agent，只把必要连接加入 allowlist，并从 Read only 模式开始。Agent 通过 MCP 浏览 Schema、执行只读 SQL，人类在 DBX 界面查看结果和查询记录，需要写入时再显式提升到 Data read/write。

## 实际例子
**官方 MCP 工作流 →** 让 Codex 分析本地 PostgreSQL 的订单数据。 **输入 →** DBX 中已保存的只读 PostgreSQL 连接和“按月统计退款率”的任务。 **操作 →** 启动 DBX MCP server，在设置中只允许该连接且保持 Read only；Agent 读取表结构并执行聚合 SQL。 **输出 →** 月度退款率结果与可复核 SQL，不把数据库密码写进提示词。

    npx @dbx-app/mcp-server
    dbx connections list --json

## 适合谁
需要同时管理多种数据库的数据工程师、开发者、DBA，以及希望让 Coding Agent 安全查询现有数据的团队。

## 局限 / 注意点
安装桌面端不会自动安装 MCP 可执行文件；100 多种数据源的能力和驱动成熟度不完全一致。MCP 的 Full access 可执行高风险写入，生产库应使用独立只读账号、连接白名单和备份；Docker/Web 部署还要妥善保护登录密码与持久化密钥。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-30 | 5 | +232 | 21968 |

| 2026-10-01 | 15 | +1138 | 23161 |

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]] · [[Topics/AI|AI]]

## 相关日报
- [[Daily/2026/09/2026-09-30|2026-09-30]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]


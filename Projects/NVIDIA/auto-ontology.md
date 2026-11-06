---
type: github-project
repo: "NVIDIA/auto-ontology"
url: "https://github.com/NVIDIA/auto-ontology"
first_seen: "2026-11-05"
last_seen: "2026-11-06"
trending_count: 2
language: "Python"
total_stars: 7274
forks: 576
stars_today: 2679
github_rank: 1
fetched_at: "2026-11-06T08:10:55+08:00"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
category: ["AI", "Data", "Knowledge Graph"]
topics: ["Ontology", "Text-to-SQL", "MCP"]
---
# NVIDIA/auto-ontology

## 一句话说明
为企业数据建立语义本体和图推理层，让 LLM/Agent 能生成可解释、可追溯的 SQL。

## 它能做什么
- 从 PostgreSQL、MySQL、Databricks、Snowflake、ClickHouse、Trino、DuckDB 等来源导入元数据。
- 把业务术语、SQL 属性、关系、查询认证与 pgvector 检索组织成语义层。
- 通过 Web、CLI、API 或 MCP 进行自然语言查询，并返回 SQL、结果与推理步骤。
- 导入/导出 Apache Ossie 格式，便于迁移或交换本体。

## 怎么利用
用 Docker Compose 启动服务和 PostgreSQL/pgvector，配置 NVIDIA API Key，导入数据库元数据并生成/完善本体；随后从 Web 或 MCP 输入业务问题，得到数据结果、SQL 与来源路径。

## 实际例子
官方 Wide World Importers 演示询问宾夕法尼亚州 2015 年 6 月“sushi flash drive”的收入，系统返回 `$588.80`，同时展示确定性 SQL 和推理依据。

## 适合谁
需要让数据分析 Agent 理解企业术语、关系和已认证查询的数据平台、BI 与 AI 工程团队。

## 局限 / 注意点
需要 Python 3.12、PostgreSQL/pgvector、Docker 或 Kubernetes及 NVIDIA API/NIM。README 明确指出部分入口依赖反向代理传入用户标识、数据导入端点未内置鉴权，部署方必须限制端口、补足身份认证；当前项目也暂不接受外部贡献。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-05 | 1 | 2050 | 5626 | 445 | GitHub Today live snapshot |
| 2026-11-06 | 1 | 2679 | 7274 | 576 | GitHub Today live snapshot |

## 相关主题
[[Topics/Ontology|Ontology]] · [[Topics/Text-to-SQL|Text-to-SQL]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/11/2026-11-05|2026-11-05]]
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/NVIDIA/auto-ontology

## 官方资料复核（2026-11-05）
- README：https://github.com/NVIDIA/auto-ontology/blob/HEAD/README.md
- README blob SHA：`464a6484b4dc36cd2120578bc6b6e7dcfe236b23`
- 当前资料只代表核对日版本；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-06）
- README：https://github.com/NVIDIA/auto-ontology/blob/HEAD/README.md
- README blob SHA：`464a6484b4dc36cd2120578bc6b6e7dcfe236b23`
- 本次只合并当天榜单事实与资料复核记录，原有详细说明、案例、分类、标签、风险和历史均保留。

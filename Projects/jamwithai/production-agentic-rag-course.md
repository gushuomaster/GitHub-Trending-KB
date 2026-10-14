---
type: github-project
repo: jamwithai/production-agentic-rag-course
first_seen: '2026-10-04'
last_seen: '2026-10-04'
url: https://github.com/jamwithai/production-agentic-rag-course
trending_count: 1
github_rank: 17
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# jamwithai/production-agentic-rag-course

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
以 arXiv 论文研究助手为主线的工程课程，从 BM25 搜索逐步做到混合检索、RAG、监控和 Agentic RAG。

## 它能做什么
- 用 Docker、FastAPI、PostgreSQL、OpenSearch、Airflow 搭建基础设施与论文采集流水线。
- 先学习 BM25 和过滤，再引入分块与向量混合检索。
- 接入本地 LLM、流式回答、Gradio、Langfuse、Redis，后续使用 LangGraph 和 Telegram。
- Agent 工作流包含文档相关性判断、查询改写和域外问题检测。

## 怎么利用
按每周代码版本跟学；配置 `.env`，用 `uv sync` 安装依赖，再运行 `docker compose up --build -d`，以 `http://localhost:8000/api/v1/health` 检查服务。先验证论文入库与关键词搜索，再接 LLM。

## 实际例子
**可推导用法 → 场景：** 研究论文中的 RAG 检索方法。**输入：** 已采集的 arXiv 论文及检索问题。**操作：** 对比 Week 3 的 BM25 和 Week 4 的混合检索结果，再通过 Week 5 的生成管线回答。**输出：** 可检查的检索论文、上下文和研究回答；Week 7 可扩展到 Telegram 访问。

## 适合谁
希望学习完整 RAG 工程流程，而不只运行向量搜索示例的 AI 应用工程师。

## 局限 / 注意点
README 要求 Python 3.12+、Docker、uv、8GB+ RAM 和20GB+磁盘，并需按课程配置部分嵌入及追踪凭据；课程演进代码不等于开箱即用的通用生产平台。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-04 | 17 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/jamwithai/production-agentic-rag-course

## 官方资料复核（2026-10-13）
- README：https://github.com/jamwithai/production-agentic-rag-course/blob/main/README.md
- README blob SHA：`eb92e0fb2153a78f2b235d0597ff9128e9c43229`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

## 相关主题
[[Topics/AI|AI]] · [[Topics/RAG|RAG]] · [[Topics/Course|Course]]

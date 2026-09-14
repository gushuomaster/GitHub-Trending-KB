---
repo: "alibaba/open-code-review"
first_seen: 2026-09-14
last_seen: 2026-09-14
recommend_score: 9.5
trending_count: 1
stars_today: 438
category: ["AI", "Agent", "Developer Tools"]
tags: ["github/code-review", "github/agent", "github/go", "github/developer-tools", "github/llm", "github/quality"]
---

# alibaba/open-code-review

## 项目定位
面向本地、CI 与 Agent 工作流的 AI 代码审查工具，把变更选择、分组、LLM Review、会话留痕和结果比较工程化。

## 核心功能 / 实现特点
- Go 为核心，含 `cmd/opencodereview`、`internal/`、VS Code 扩展、Agent/Claude 插件与 Skills。
- 近期把大变更 grouping 从完整路径改为整数索引，避免 completion token 截断；同时补齐 session compare、路径安全和 preview/真实 review selection parity。

## 主要优点
- selection、coverage、预算、分组、审计会话与失败降级链路完整
- 边界测试、安全检查和行为一致性验证较扎实
- 适合 Coding Agent、PR/CI 和大仓库代码审查治理

## 局限 / 注意点
- AI Review 仍可能误报/漏报，不能替代静态分析、测试和人工高风险审查
- 大仓库仍需结合模型窗口、预算、Provider 成本调参

## 最近变化
- 首次上榜；今日 +438 stars。近期集中解决大 changeset token 溢出、selection 一致性、session 比较和路径安全，工程信号强。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-14 | +438 | 9.5 |

## 相关主题
- [[Agent]]
- [[Skills]]
- [[Developer-Tools]]

## 相关日报
- [[2026-09-14]]

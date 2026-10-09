---
type: github-project
repo: "alibaba/open-code-review"
url: "https://github.com/alibaba/open-code-review"
first_seen: 2026-09-14
last_seen: 2026-09-19
trending_count: 5
category: ["Code Review","AI Agent","Developer Tools"]
topics: ["Code Review","AI Agent","Developer Tools"]
---
# alibaba/open-code-review

## 一句话说明
将确定性规则管线与可调用工具的 LLM Agent 组合成行级 AI 代码审查 CLI。

## 它能做什么
- 读取 Git diff 或扫描完整文件，并按行生成结构化审查意见
- 让 Agent 搜索代码库、读取上下文和关联变更
- 内置空指针、线程安全、XSS、SQL 注入等多语言规则
- 保存审查会话并支持 Claude Code、Codex、Cursor 等宿主

## 怎么利用
官方流程：配置 OpenAI/Anthropic 兼容模型端点，在仓库运行 `ocr review` 审查当前 diff；工具先保证变更覆盖，再让 Agent 读取相关文件，输出可定位到行的 findings。

## 实际例子
**资料中的工作流：** 官方流程：配置 OpenAI/Anthropic 兼容模型端点，在仓库运行 `ocr review` 审查当前 diff；工具先保证变更覆盖，再让 Agent 读取相关文件，输出可定位到行的 findings。

## 适合谁
希望在本地、PR 或 CI 中增加行级 AI Review 的研发团队。

## 局限 / 注意点
- 官方基准明确以更高 precision 换取较低 recall，仍会漏报；大 changeset 的分组、token 预算、模型费用和误报必须通过 CI 规则、测试与人工评审共同控制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-14 | 14 | 438 | 未保存 | 日期匹配来源 |
| 2026-09-15 | 未保存 | 264 | 未保存 | 仓库快照 |
| 2026-09-16 | 未保存 | 2751 | 未保存 | 仓库快照 |
| 2026-09-17 | 未保存 | 2756 | 未保存 | 仓库快照 |
| 2026-09-19 | 1 | 2724 | 未保存 | 仓库快照 |

## 相关主题
[[Topics/Code Review|Code Review]] · [[Topics/AI Agent|AI Agent]] · [[Topics/Developer Tools|Developer Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-14|2026-09-14]]
- [[Daily/2026/09/2026-09-15|2026-09-15]]
- [[Daily/2026/09/2026-09-16|2026-09-16]]
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-19|2026-09-19]]

## GitHub 原始链接
https://github.com/alibaba/open-code-review

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

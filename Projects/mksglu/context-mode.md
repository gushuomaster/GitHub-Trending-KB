---
repo: "mksglu/context-mode"
first_seen: 2026-09-09
last_seen: 2026-09-09
recommend_score: 9.3
trending_count: 1
stars_today: 651
category:
  - "AI"
  - "Agent"
  - "Infrastructure"
tags:
  - "github/agent"
  - "github/context"
  - "github/token"
  - "github/mcp"
  - "github/hooks"
---

# mksglu/context-mode

## 项目定位
通过 Hooks/MCP/沙箱减少 Agent 工具输出占用的上下文与 Token

## 优点
- 降低上下文膨胀
- 适合长任务 Agent
- 支持多个 Coding Agent

## 局限 / 注意点
- 节省比例依工作流与工具链而异

## Trending 历史

| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-09 | +651 | 9.3 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Context-Engineering]]

## 相关日报
- [[2026-09-09]]

## 怎么利用
把大体积工具输出放入沙箱或外部存储，只把摘要和按需片段返回 Agent 上下文；在长任务中监控 token 与召回质量。

## 实际例子
**可推导用法：** 场景 → Agent分析 100MB 测试日志。输入 → 日志文件和错误模式。操作 → 工具在沙箱检索，仅返回命中上下文。输出 → 更小的上下文占用和定位结果。

---
repo: "TauricResearch/TradingAgents"
first_seen: 2026-09-10
last_seen: 2026-09-10
recommend_score: 9.2
trending_count: 1
stars_today: 367
category:
  - "AI"
  - "Agent"
  - "Quant"
tags:
  - "github/quant"
  - "github/trading"
  - "github/agent"
  - "github/langgraph"
  - "github/risk"
---

# TauricResearch/TradingAgents

## 项目定位
模拟真实交易公司的多 Agent 金融研究/交易框架，包含分析师、研究员、交易员、风险与投资组合经理。

## 核心功能 / 实现特点
- Python + LangGraph，多角色图工作流、checkpoint resume、decision log；支持 Docker 与多 provider registry。

## 主要优点
- 职责拆分清晰，适合作为多 Agent 量化研究架构参考
- v0.4.0 已专门修复 look-ahead / point-in-time 数据问题
- 支持多市场、多 LLM provider、Ollama/vLLM/LM Studio 等本地或兼容端点

## 局限 / 注意点
- 研究框架不等于稳定 Alpha，LLM 决策非确定性较强
- 依赖多种外部数据源，实时性、费用和数据质量会直接影响结果
- 近期仍有模型 prompt 兼容与 Reddit RSS 限流等 Issue

## 最近变化
- 首次进入本知识库日报。
- 今日 +367 stars，总体已是 10 万星级成熟热门项目；近期 Issue 仍活跃，v0.4.0 强化回测正确性与数据时点约束。

## Trending 历史

| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-10 | +367 | 9.2 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Quant]]

## 相关日报
- [[2026-09-10]]

## 怎么利用
把研究、基本面、技术面、交易与风险角色组成图工作流，用历史截面数据运行研究或回测；所有建议在人工审批后才能进入模拟或实盘。

## 实际例子
**可推导用法：** 场景 → 研究 AAPL 某交易日。输入 → 当日以前的新闻、价格和财务数据。操作 → 依次运行分析师、辩论、交易员和风险经理。输出 → 带论据、风险意见和决策日志的交易提案。

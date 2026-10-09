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
type: github-project
url: "https://github.com/TauricResearch/TradingAgents"
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

## 规范化资料补充（2026-10-09）

### 一句话说明
用专业分工的 LLM Agent 模拟交易公司的分析、辩论、交易与风险审批流程。

### 怎么利用与实例
**可推导用法：** 输入 AAPL 和历史分析日期，并限制数据只使用该日期以前的资料；并行运行基本面、新闻、情绪和技术分析，再进入多空辩论、交易提案及风险审批，输出带决策日志的模拟交易建议。

### 适合谁
研究多 Agent 编排、金融研究自动化或 point-in-time 回测正确性的量化研究人员与工程师。

### 局限补充
框架结果不等于稳定 Alpha；LLM 输出非确定，外部数据的时间完整性、费用和质量会直接影响结论，不应直接用于实盘交易。

### GitHub 原始链接
https://github.com/TauricResearch/TradingAgents

### 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/TauricResearch/TradingAgents/blob/main/README.md

## 2026-09-10 历史核验
- GitHub Trending 原始排名：#7
- Stars Today：367（原日报保存的当日值）
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/186fd83e5bf5c5918ad47061fb0276a99cf23ab6/archive/repository/2026/2026-09-10/(null).json)
- 相关日报：[[Daily/2026/09/2026-09-10|2026-09-10]]

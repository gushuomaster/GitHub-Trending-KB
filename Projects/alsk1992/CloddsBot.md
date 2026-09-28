---
repo: "alsk1992/CloddsBot"
first_seen: 2026-09-11
last_seen: 2026-09-13
recommend_score: 8.8
trending_count: 3
stars_today: 377
category: ["AI", "Agent", "Quant"]
tags: ["github/quant", "github/trading", "github/agent", "github/risk", "github/execution", "github/mcp"]
---

# alsk1992/CloddsBot

## 项目定位
覆盖预测市场、CEX/DEX、期货与 DeFi 的自托管 AI Trading Agent/终端，贯通研究、策略、执行、风控与审计。

## 核心功能 / 实现特点
- TypeScript/Node 为主，包含多 Agent、策略/技能、Risk Engine、VaR/CVaR、Kelly、circuit breaker、kill switch、trade ledger、MCP，多市场连接。

## 主要优点
- 少数真正走到执行与风控层的开源 Trading Agent
- 多市场/链覆盖广，适合拆解 Agent Trading 产品架构
- MIT、自托管，便于审计和二次开发

## 局限 / 注意点
- 最新 Issue 指出 MARKET notional cap 可被调用者价格绕过，部分交易入口仍绕过 breaker，Jupiter dry-run 无效，stop monitor 也存在未成交误判/取消后触发等风险
- 交易密钥和执行面风险高，必须独立验证风控与权限隔离；策略数量不能视为已验证 Alpha

## 最近变化
- 热度从 +299 → +277 → 今日 +377，重新回升。9 月 12 日继续修 CLI 发布和嵌套测试发现，但 #125/#126/#127 暴露的是核心执行安全缺口，因此推荐分由 9.0 下调到 8.8。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-11 | +299 | 9.0 |
| 2026-09-12 | +277 | 9.0 |
| 2026-09-13 | +377 | 8.8 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Quant]]

## 相关日报
- [[2026-09-11]]
- [[2026-09-12]]
- [[2026-09-13]]

## 怎么利用
先连接只读市场数据和模拟账户，配置 notional、breaker、kill switch 与审计账本；验证所有交易入口都受风控后再决定是否扩大权限。

## 实际例子
**可推导用法：** 场景 → 模拟预测市场策略。输入 → 市场数据、最大仓位和策略规则。操作 → Agent 研究并生成订单，Risk Engine 拦截超限交易。输出 → 模拟成交、风险指标和完整 ledger。

---
repo: "vxcontrol/pentagi"
first_seen: 2026-09-13
last_seen: 2026-09-13
recommend_score: 8.7
trending_count: 1
stars_today: 193
category: ["AI", "Agent", "Security"]
tags: ["github/agent", "github/security", "github/pentest", "github/go", "github/automation", "github/llm"]
---

# vxcontrol/pentagi

## 项目定位
面向明确授权环境的多 Agent 自动化安全测试系统，用 Agent 规划、执行和汇总复杂渗透测试任务。

## 核心功能 / 实现特点
- Go 为主，结合 LangChainGo、多模型 Provider、任务编排和安全工具链。
- 提供 Provider 配置、Agent 测试报告与任务执行体系。

## 主要优点
- 安全测试是 Agent 工具调用、规划与长任务编排的高复杂度样本
- Go 服务端工程化程度较高
- 多模型 Provider 配置和测试报告对 Agent 系统评估有参考价值

## 局限 / 注意点
- 仅适用于有明确授权的测试环境，必须有强权限边界、隔离和审计
- 最近代码提交主要停留在 8 月初，维护活跃度低于今日 Trending 热度

## 最近变化
- 首次上榜；今日 +193 stars。最近主要更新是 OpenCode Provider 配置/测试报告与依赖升级，当前 Trending 回升尚未伴随同等强度的代码更新。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-13 | +193 | 8.7 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Developer-Tools]]

## 相关日报
- [[2026-09-13]]

## 怎么利用
只在书面授权的靶场或资产范围内配置目标和工具，让多 Agent规划、执行并汇总测试；所有网络边界和凭据严格隔离。

## 实际例子
**可推导用法：** 场景 → 测试自有 Web 靶场。输入 → 授权范围、测试账号和目标 URL。操作 → Agent枚举、验证漏洞并保存证据。输出 → 可复核的 finding 与修复建议。

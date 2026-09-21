---
repo: "cloudflare/security-audit-skill"
first_seen: 2026-09-17
last_seen: 2026-09-21
recommend_score: 9.7
trending_count: 4
stars_today: 3162
category: ["AI","Agent","Skills","Security"]
tags: ["github/agent","github/skills","github/security","github/cloudflare"]
---
# cloudflare/security-audit-skill
## 项目定位
面向 Coding Agent 的多阶段安全审计 Skill，重点是结构化发现、覆盖账本和独立验证。
## 核心功能 / 实现特点
JavaScript；findings 分 confirmed/needs_validation/rejected；coverage ledger；独立 verifier；安全沙箱执行约束；validator 测试。
## 最近变化
- 9 月 10 日核心重构引入 coverage ledger、十类安全域 companion、沙箱约束与 65 项 validator 测试；9 月 14 日补充 audit mode 指引。
- 2026-09-21：最近可验证日榜仍处约 +3162/day 高位，但最新核心提交仍为 9/14，热度没有转化为同等强度的代码更新。
- 评分维持 9.7：设计参考价值极高，但需要关注维护节奏。
## 局限 / 注意点
不能替代 SAST/DAST 和人工安全评审；长期使用应关注 validator/规则与新攻击面的同步更新。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-17 | +1434 | 9.6 |
| 2026-09-19 | +3019 | 9.7 |
| 2026-09-20 | +3162 | 9.7 |
| 2026-09-21 | +3162* | 9.7 |

\* 运行时采用最近可验证 Trending 快照。
## 相关主题
[[Agent]] · [[Skills]] · [[Developer-Tools]] · [[Security]]
## 相关日报
- [[2026-09-19]]
- [[2026-09-20]]
- [[2026-09-21]]
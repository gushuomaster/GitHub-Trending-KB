---
repo: "DietrichGebert/ponytail"
first_seen: 2026-09-15
last_seen: 2026-09-15
recommend_score: 9.6
trending_count: 1
stars_today: 1539
category: ["AI", "Agent", "Skills", "Developer Tools"]
tags: ["github/agent", "github/skills", "github/yagni", "github/coding", "github/developer-tools"]
---
# DietrichGebert/ponytail

## 项目定位
用七级 YAGNI ladder 抑制 Coding Agent 过度工程化的 Skill/Plugin。

## 最近变化
- 9 月 14 日发布 v4.10.0。
- 新增 Cursor 原生 hooks；安装/卸载保持已有 hooks、拒绝 malformed JSON，并明确 subagent 未覆盖，不夸大兼容性。

## 主要优点
- 规则目标清晰，优先复用和最小实现，同时保留安全/验证/错误处理。
- 跨 Claude Code、Codex、Cursor 等多宿主。
- 有 benchmark 与真实客户端验证。

## 局限 / 注意点
- LOC/token 下降不能直接等价为质量提升。
- 过强 YAGNI 可能压制合理的扩展性设计。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-15 | +1539 | 9.6 |

## 相关主题
[[Agent]] · [[Skills]] · [[Developer-Tools]] · [[Context-Engineering]]

## 相关日报
- [[2026-09-15]]

## 怎么利用
把该 Skill 安装到 Coding Agent，在实现前按 YAGNI ladder 先检查能否复用、删减或用更小改动解决，再保留必要的安全、验证和错误处理。

## 实际例子
**可推导用法：** 场景 → Agent 为一个布尔配置新增完整抽象层。输入 → 需求与当前 diff。操作 → 让 ponytail 按七级 ladder 复核设计。输出 → 可能收敛为一个配置字段和两处判断的最小实现。

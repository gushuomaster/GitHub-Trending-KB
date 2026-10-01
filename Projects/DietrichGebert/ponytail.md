---
repo: "DietrichGebert/ponytail"
url: "https://github.com/DietrichGebert/ponytail"
first_seen: 2026-09-15
last_seen: 2026-10-01
trending_count: 2
github_rank: 5
stars_today: 743
total_stars: 149154
forks: 8018
language: JavaScript
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Agent", "Skills", "Developer Tools"]
tags: ["coding-agent", "yagni", "review", "hooks", "skills"]
topics: ["Agent", "Skills", "Developer-Tools"]
status: active
---
# DietrichGebert/ponytail

## 一句话说明
给 Coding Agent 加一套“先复用、再删减、最后才新增抽象”的工程约束，减少过度设计和无必要代码。

## 它能做什么
- 用 lite/full/ultra 等级控制 YAGNI 与代码审查强度。
- 通过 Skills 和生命周期 hooks 在 Claude Code、Codex、Copilot CLI、OpenCode 等宿主持续生效。
- 提供专门的实现与 review 命令，检查是否能用更小改动解决问题。

## 怎么利用
安装插件并信任两个生命周期 hooks；在开始实现和审查 diff 时启用 ponytail，让 Agent 先搜索现有能力、删除冗余方案，再保留满足需求与安全性的最小改动。

## 实际例子
**可推导用法：** 场景 → Agent 准备用新框架实现一个布尔配置。 **输入 →** 需求、现有代码和候选 diff。 **操作 →** 启用 `/ponytail:ponytail-review`，逐项检查复用点和不必要抽象。 **输出 →** 收敛为一个配置字段、必要判断和对应测试的最小补丁。

    codex plugin marketplace add DietrichGebert/ponytail
    codex plugin add ponytail@ponytail

## 适合谁
希望 Coding Agent 少写样板、少造抽象，同时保留测试和错误处理的个人与工程团队。

## 局限 / 注意点
它是行为约束而非静态证明，不能保证所有简化都正确；严格等级可能压制确有价值的扩展性设计，仍需人类结合长期需求审查。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-15 | 未保存 | +1539 | 未保存 |
| 2026-10-01 | 5 | +743 | 149154 |

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-15|2026-09-15]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]


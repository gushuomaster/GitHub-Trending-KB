---
type: github-project
repo: "openai/skills"
url: "https://github.com/openai/skills"
first_seen: 2026-09-09
last_seen: 2026-09-09
trending_count: 1
language: "Python"
category: ["AI", "Skills", "Developer-Tools"]
tags: ["ai", "skills", "developer-tools"]
topics: ["AI", "Skills", "Developer-Tools"]
---
# openai/skills

## 一句话说明
OpenAI 维护的 Codex Skills 目录，集中提供系统内置、精选和实验性技能的发现与安装入口。

**当前官方描述：** Skills Catalog for Codex

## 它能做什么
- 按 `.system`、`.curated` 和 `.experimental` 区分系统、精选与实验技能。
- 支持通过 `$skill-installer` 按名称或 GitHub 目录安装技能。
- 为每个技能保留独立目录、说明和许可信息，便于审查后引入。

## 怎么利用
先在目录中选择技能并阅读其 `SKILL.md` 与依赖，再用 `$skill-installer` 安装；重启 Codex 后在目标任务中验证是否按预期触发。

## 实际例子
**官方安装示例 →** 输入 `$skill-installer gh-address-comments` 安装精选技能；重启 Codex 后，将其用于处理 GitHub PR 的 review comments。

## 关键命令
```text
$skill-installer gh-address-comments
```

## 适合谁
希望为 Codex 增加文档、开发或工作流能力，并需要官方技能目录作为来源的用户。

## 局限 / 注意点
实验技能的稳定性和支持程度可能低于精选技能；安装前仍需逐项检查权限、依赖和适用范围。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 3 | 未保存 | 未保存 | 归档顺序；统计来自原有快照或未保存 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]

## GitHub 原始链接
https://github.com/openai/skills

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/openai/skills/blob/main/README.md
- README blob SHA：c205d307226b98189c28cbcce6ff792cbb7b2d05
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。

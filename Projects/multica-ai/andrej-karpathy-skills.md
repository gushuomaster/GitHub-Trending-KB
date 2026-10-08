---
type: github-project
repo: "multica-ai/andrej-karpathy-skills"
url: "https://github.com/multica-ai/andrej-karpathy-skills"
first_seen: 2026-09-09
last_seen: 2026-09-09
trending_count: 1
language: "未声明"
category: ["AI", "Skills", "Developer-Tools"]
tags: ["ai", "skills", "developer-tools"]
topics: ["AI", "Skills", "Developer-Tools"]
---
# multica-ai/andrej-karpathy-skills

## 一句话说明
把“先澄清、保持简单、只做必要改动、用可验证目标推进”四条原则写成可复用的 Coding Agent 指令。

**当前官方描述：** A single CLAUDE.md file to improve Claude Code behavior, derived from Andrej Karpathy's observations on LLM coding pitfalls.

## 它能做什么
- 要求 Agent 明示假设、歧义与取舍，避免带着错误理解继续实现。
- 限制过度抽象和超出需求的功能，优先最小实现。
- 要求每项改动能追溯到任务，并用测试或明确成功条件闭环。

## 怎么利用
把仓库中的规则安装为插件或加入项目 `CLAUDE.md`，再为任务给出明确成功条件；Agent 应先说明假设，只修改必要代码并循环验证。

## 实际例子
**官方示例 →** 将“修复 bug”改写为“先写能复现问题的失败测试，再让测试通过”；输出包括复现测试、最小修复和通过证据。

## 关键命令
```text
curl -o CLAUDE.md https://raw.githubusercontent.com/forrestchang/andrej-karpathy-skills/main/CLAUDE.md
```

## 适合谁
希望减少 Coding Agent 误解需求、过度设计和顺手重构的开发者。

## 局限 / 注意点
它是一套行为准则，不能保证模型判断正确；对显然的一行修复也机械执行完整流程可能降低效率。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 8 | 未保存 | 未保存 | 归档顺序；统计来自原有快照或未保存 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]

## GitHub 原始链接
https://github.com/multica-ai/andrej-karpathy-skills

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/multica-ai/andrej-karpathy-skills/blob/main/README.md
- README blob SHA：7cf07a786532bebe01c65179c8e2c3a98cc0a09b
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。

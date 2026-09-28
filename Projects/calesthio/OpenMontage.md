---
repo: "calesthio/OpenMontage"
first_seen: 2026-09-14
last_seen: 2026-09-14
recommend_score: 8.9
trending_count: 1
stars_today: 383
category: ["AI", "Agent", "Skills", "Video"]
tags: ["github/agent", "github/skills", "github/video", "github/remotion", "github/python", "github/automation"]
---

# calesthio/OpenMontage

## 项目定位
Agent-first 开源视频制作/自动化工作台，用 Skills、playbooks、Remotion 与多阶段 pipeline 生成可编辑视频。

## 核心功能 / 实现特点
- Python 主流程 + Remotion/TypeScript 渲染，含 `.agents/skills`、`.claude`、`.codex/prompts`、`.cursor`、`pipeline_defs`、`remotion-composer`、`schemas`、`tests`。
- 近期实现更新包含 CJK 字幕、TalkingHead 资源解析与主题可读性修复；9 月 6 日以后主要是展示/文档更新。

## 主要优点
- Agent/Skills 与真实视频 pipeline 结合完整
- Remotion 让文本、图表、字幕等程序化元素更可控、可复现
- 适合作为 Video-AI Skill 和“脚本→素材→场景→渲染→检查”流程参考

## 局限 / 注意点
- 实现层近期提交不如 Trending 热度活跃
- 新 Issue 暴露 BarChart 非整数标签错误，而 final_review 未发现数据正确性问题，说明验证门禁仍有缺口

## 最近变化
- 首次上榜；今日 +383 stars。结构与 Agent 视频工作流高度契合，但代码活跃度和质量门禁问题限制评分。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-14 | +383 | 8.9 |

## 相关主题
- [[Agent]]
- [[Skills]]
- [[Video-AI]]

## 相关日报
- [[2026-09-14]]

## 怎么利用
把素材、脚本和品牌规则交给 Agent，按 playbook 分阶段生成 Remotion 工程并渲染；保留可编辑时间线和人工审片。

## 实际例子
**可推导用法：** 场景 → 制作 30 秒产品更新视频。输入 → 5 段录屏、旁白和品牌色。操作 → Agent 选片、排版、加字幕并渲染。输出 → 可继续编辑的工程和 final.mp4。

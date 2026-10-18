---
type: github-project
repo: "android/skills"
url: "https://github.com/android/skills"
first_seen: 2026-10-17
last_seen: '2026-10-18'
trending_count: 2
github_rank: 7
stars_today: 355
total_stars: 8419
forks: 555
language: "Kotlin"
fetched_at: '2026-10-18T08:11:03+08:00'
documentation_checked_at: '2026-10-18'
stats_as_of: '2026-10-18'
snapshot_status: live
topics: ["Android", "Skills", "Developer-Tools"]
status: active
---
# android/skills

## 一句话说明
Android 官方维护的 Agent Skills 集合，把容易让通用编码 Agent 出错的 Android 开发任务封装成可复用、可自动触发的操作指南。

> 使用方式依据仓库当前 README 核对于 2026-10-18。

## 它能做什么
- 通过开放的 Agent Skills 目录结构，把 Android 专项知识装入兼容的编码 Agent
- 按项目只安装所需 Skill，或一次安装仓库中的全部 Skills
- 在 Claude Code、Codex 等支持的宿主中根据任务语义自动激活相应 Skill
- 提供 R8 分析、edge-to-edge UI 等针对具体 Android 工作流的指导

## 怎么利用
在 Android 项目目录安装一个具体 Skill 或整个插件；随后把真实的 Gradle 项目和明确任务交给 Agent。Agent 会读取匹配的 Skill、检查项目并给出或实施代码修改，最终输出可审查的 Android 源码与配置变更。

## 实际例子
**官方示例：** 场景 → 把现有应用界面改为 edge-to-edge。输入 → Android 项目及提示词“Make my app UI edge-to-edge.”。操作 → 先安装 android-skills 插件，再让 Agent 在项目内执行任务。输出 → Agent 按该 Skill 的检查清单修改窗口、Insets 与界面代码，开发者再构建并在设备上验证。

## 关键命令
```bash
android skills add r8-analyzer --project=.
codex plugin marketplace add android/skills
codex plugin add android-skills@android-skills
```

## 适合谁
使用 Claude Code、Codex 等编码 Agent 维护 Android 应用，尤其需要处理 R8、现代 UI 适配等专项任务的 Android 开发者。

## 局限 / 注意点
Skill 只是给 Agent 的操作知识，README 明确提醒 AI 仍可能犯错；生成的代码必须经过构建、测试和人工审查。不同宿主的插件命令与兼容性不同，仓库目前也不接受公众直接贡献。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-17 | 7 | 36 | 8060 | 535 | GitHub Today live snapshot |
| 2026-10-18 | 7 | 355 | 8419 | 555 | GitHub Today live snapshot |

## 相关主题
[[Topics/Android|Android]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-17|2026-10-17]]

- [[Daily/2026/10/2026-10-18|2026-10-18]]

## GitHub 原始链接
https://github.com/android/skills

## 官方资料复核（2026-10-18）
- README：https://github.com/android/skills/blob/main/README.md
- README blob SHA：`dae981c8ef2dbb9f7ed75d0fb649ec4561b780a3`


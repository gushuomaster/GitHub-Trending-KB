---
type: github-project
repo: "vercel-labs/skills"
url: "https://github.com/vercel-labs/skills"
first_seen: 2026-09-11
last_seen: 2026-09-11
trending_count: 1
category: ["AI","Skills","Developer-Tools"]
topics: ["AI","Skills","Developer-Tools"]
---
# vercel-labs/skills

## 一句话说明
开放 Agent Skills 生态的命令行工具，用统一命令从 Git、目录或 URL 查找、安装和临时使用技能。

## 它能做什么
- 从 GitHub、GitLab、Azure Repos、任意 Git URL 或本地目录解析 Skill
- 把指定 Skill 安装到 Codex、Claude Code、OpenCode、Cursor 等多种 Agent
- 用 `skills use` 临时生成 prompt，不必永久安装
- 支持列出仓库 Skills、全局安装、CI 非交互模式和私有仓库凭据

## 怎么利用
官方示例：运行 `npx skills add vercel-labs/agent-skills --skill web-design-guidelines -g -a codex -y`，把指定 Skill 安装到 Codex 的全局目录。

## 实际例子
**官方材料中的工作流：** 官方示例：运行 `npx skills add vercel-labs/agent-skills --skill web-design-guidelines -g -a codex -y`，把指定 Skill 安装到 Codex 的全局目录。

## 关键命令
```bash
npx skills add vercel-labs/agent-skills --skill web-design-guidelines -g -a codex -y
```

## 适合谁
需要跨多个 Coding Agent 发现、安装或临时运行 Skills 的开发者和工具链维护者。

## 局限 / 注意点
- CLI 负责获取和放置文件，不代表 Skill 已经过安全或质量审核；安装第三方仓库前仍需检查版本、脚本、权限和供应链来源。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-11 | 15 | 未保存 | 未保存 | 语言不限归档；统计见说明 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-11|2026-09-11]]

## GitHub 原始链接
https://github.com/vercel-labs/skills

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/vercel-labs/skills/blob/main/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与 2026-09-11 的历史版本完全相同。

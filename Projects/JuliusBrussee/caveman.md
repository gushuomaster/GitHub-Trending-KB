---
type: github-project
repo: JuliusBrussee/caveman
url: https://github.com/JuliusBrussee/caveman
first_seen: '2026-10-03'
last_seen: '2026-10-04'
trending_count: 2
github_rank: 5
language: null
total_stars: null
forks: null
stars_today: null
category:
- AI
- Developer-Tools
- Context-Engineering
tags:
- coding-agent
- token-optimization
- proxy
- skills
topics:
- AI
- Developer-Tools
- Context-Engineering
documentation_checked_at: '2026-10-13'
stats_as_of: null
---

# JuliusBrussee/caveman

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
通过本地代理压缩部分工具输入，并用输出 Skill 精简 Agent 回复，保留代码、命令、路径、数字和否定语义。

## 它能做什么
- 本地 proxy 压缩部分日志、CSV、JSON 等工具输入；具体格式的压缩效果不同。
- 提供 caveman、ultracave、megacave 三种精简表达强度。
- 对代码、命令、错误、路径、数字与不可逆操作警告保持完整。
- 支持 Claude Code、Codex、Gemini、Aider、OpenCode、Pi 等多种 Agent。

## 怎么利用
安装 CLI 并执行 setup，让本地代理接管选定 Agent 的请求；通过 `caveman codex` 启动 Codex。输入仍是原始工程任务，代理压缩上下文，Skill 约束回答风格，输出是更短但保留技术载荷的回复和代码。

## 实际例子
**官方对比示例 →** 询问 React 组件为何因内联对象 prop 重渲染。**输入 →** 相关组件和问题。**操作 →** Caveman 保留 `useMemo`、代码与因果关系，删除寒暄和重复解释。**输出 →** 简短指出新对象引用触发浅比较，并给出 `useMemo` 修复。

## 适合谁
长时间使用 Coding Agent、上下文或费用压力明显，并愿意在本机运行代理的开发者。

## 局限 / 注意点
需要 Node.js 22.13+；README 基准中 HTML 未获得输入压缩收益，不能把总节省比例当作每种文件的保证。代理与表达压缩会改变模型看到的上下文，复杂任务仍需检查证据和必要说明。

## 关键命令
```bash
npm install -g @caveman-ai/cli
caveman setup --install
caveman codex
```

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-03 | 2 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/2c94a658b36f43039d6e2d707f4bc9f4746da107/archive/repository/2026/2026-10-03/(null).json) |
| 2026-10-04 | 5 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Context-Engineering|Context-Engineering]]

## 相关日报
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/JuliusBrussee/caveman

## 官方资料复核（2026-10-13）
- README：https://github.com/JuliusBrussee/caveman/blob/main/README.md
- README blob SHA：`ca076fdedc503792dc2b990293837f822b72baf6`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

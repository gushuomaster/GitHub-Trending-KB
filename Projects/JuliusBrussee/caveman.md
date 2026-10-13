---
type: github-project
repo: "JuliusBrussee/caveman"
url: "https://github.com/JuliusBrussee/caveman"
first_seen: "2026-10-03"
last_seen: "2026-10-04"
trending_count: 2
github_rank: 5
language: null
total_stars: null
forks: null
stars_today: null
category: ["AI", "Developer-Tools", "Context-Engineering"]
tags: ["coding-agent", "token-optimization", "proxy", "skills"]
topics: ["AI", "Developer-Tools", "Context-Engineering"]
---
# JuliusBrussee/caveman

## 一句话说明
通过本地代理和输出 Skill 压缩 Coding Agent 的输入、网页与回复，同时保持代码、命令、路径、数字及否定语义不变。

## 它能做什么
- 用本地 proxy 减少送入模型的上下文和网页内容。
- 提供 caveman、ultracave、megacave 三种精简表达强度。
- 对代码、命令、错误、路径、数字与不可逆操作警告保持完整。
- 支持 Claude Code、Codex、Gemini、Aider、OpenCode、Pi 等多种 Agent。

## 怎么利用
安装 CLI 并执行 setup，让本地代理接管选定 Agent 的请求；通过 `caveman codex` 启动 Codex。输入仍是原始工程任务，代理压缩上下文，Skill 约束回答风格，输出是更短但保留技术载荷的回复和代码。

## 实际例子
**官方对比示例 →** 询问 React 组件为何因内联对象 prop 重渲染。**输入 →** 相关组件和问题。**操作 →** Caveman 保留 `useMemo`、代码与因果关系，删除寒暄和重复解释。**输出 →** 简短指出新对象引用触发浅比较，并给出 `useMemo` 修复。

## 关键命令
```bash
npm install -g @caveman-ai/cli
caveman setup --install
caveman codex
```

## 适合谁
长时间使用 Coding Agent、上下文或费用压力明显，并愿意在本机运行代理的开发者。

## 局限 / 注意点
需要 Node.js 22.13+；本地代理会接触提示、工具输出和模型凭据，必须审查源码、监听地址和密钥存储。仓库基准不能保证每个任务都等质，安全、法律和复杂教学内容不应为追求短句而省略关键说明。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-03 | 2 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-10-04 | 5 | 未保存 | 未保存 | 仓库已存日期匹配快照 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Context-Engineering|Context-Engineering]]

## 相关日报
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/JuliusBrussee/caveman

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/JuliusBrussee/caveman/blob/main/README.md
- README blob SHA：ca076fdedc503792dc2b990293837f822b72baf6
- 说明：本卡反映核对日资料，不声称等同于历史上榜日版本。

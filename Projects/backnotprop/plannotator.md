---
type: github-project
repo: "backnotprop/plannotator"
url: "https://github.com/backnotprop/plannotator"
first_seen: "2026-11-14"
last_seen: "2026-11-14"
trending_count: 1
language: "TypeScript"
total_stars: 10443
forks: 784
stars_today: 108
github_rank: 6
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Agent Review","Code Review","Developer Tools"]
topics: ["AI-Agent","Code-Review","Annotation"]
---
# backnotprop/plannotator

## 一句话说明
Plannotator 是本地浏览器式 Agent 审阅面板，用于批注计划、文档、HTML 和代码差异，并把结构化反馈直接送回原 Coding Agent 会话。

## 它能做什么
- 批注 Markdown、目录、网页和渲染后的 HTML，并向 Agent 发送逐处反馈。
- 审阅本地变更、GitHub/GitLab 请求及 GitButler、Jujutsu、Perforce 差异。
- Inbox 汇集多个 Agent 的问题、文件和异步审阅，不要求会话一直阻塞等待。
- 通过插件、hook、命令或 MCP 接入 Claude Code、Codex、Gemini CLI、OpenCode 等宿主。

## 怎么利用
安装后让 Codex 生成计划，Plannotator 经 Stop hook 打开审阅面板；在具体段落标注修改并发送，输出会作为下一轮反馈回到该会话。

## 实际例子
**官方 Codex 场景 →** 安装后让 Codex 生成计划，Plannotator 经 Stop hook 打开审阅面板；在具体段落标注修改并发送，输出会作为下一轮反馈回到该会话。

## 关键命令
```bash
curl -fsSL https://plannotator.ai/install.sh | bash
plannotator review
```

## 适合谁
同时使用一个或多个 Coding Agent、希望在修改执行前审阅计划和差异并留下可追溯反馈的开发者与团队。

## 局限 / 注意点
本地数据默认不外发，但 URL 抓取、远程 PR/MR、Ask AI 和分享功能会产生网络传输；远程模式监听 `0.0.0.0` 且无登录，不能暴露给不受信网络。普通安装脚本的供应链验证默认不是强制开启。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-14 | 6 | 108 | 10443 | 784 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Agent|AI-Agent]] · [[Topics/Code-Review|Code-Review]] · [[Topics/Annotation|Annotation]]

## 相关日报
- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/backnotprop/plannotator

## 官方资料复核（2026-11-14）
- README：https://github.com/backnotprop/plannotator/blob/HEAD/README.md
- README blob SHA：`4667f4c611c15e1af87b0885cdc11b5fbb604cf6`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

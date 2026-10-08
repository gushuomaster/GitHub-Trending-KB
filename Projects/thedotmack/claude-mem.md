---
type: github-project
repo: "thedotmack/claude-mem"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "TypeScript"
total_stars: 97782
forks: 8607
stars_today: 578
github_rank: 8
trending_count: 5
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/thedotmack/claude-mem"
---
# thedotmack/claude-mem

## 一句话说明
记录 Agent 会话中的工具观察并生成持久摘要，让后续会话能够找回项目决策和已完成的工作。

**官方描述：** Persistent Context Across Sessions for Every Agent – Captures everything your agent does during sessions, compresses it with AI, and injects relevant context back into future sessions. Works with Claude Code, OpenClaw, Codex, Gemini, Hermes, Copilot, OpenCode + More

## 它能做什么
- 自动捕获工具使用观察，并压缩为语义摘要。
- 向新会话提供相关历史上下文，减少重复解释。
- 支持多种宿主安装和可选择的记忆处理 Provider。

此前能力说明：自动捕获 Agent 会话中的工具使用和观察，压缩成持久记忆，并在未来会话重新注入相关上下文。

## 怎么利用
输入持续维护的仓库与会话活动，按宿主安装并选择 Provider；工具观察被记录和摘要，重启后在新会话检索相关内容，输出可用于继续任务的历史上下文。

此前工作流说明：自动捕获 Agent 会话中的工具使用和观察，压缩成持久记忆，并在未来会话重新注入相关上下文。

## 实际例子
**官方 Quick Start → 场景：** 在 Claude Code 中跨会话保留项目上下文。**输入：** 当前开发项目。**操作：** 执行安装命令，选择记忆 Provider，重启 Claude Code 后开启新会话。**输出：** 先前会话的相关上下文自动出现；安装可能进入账号登录流程，也可按 README 显式选择 Provider 跳过。

```sh
npx claude-mem install
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：长期维护同一代码库 → 安装 claude-mem → 开发过程中自动记录决策、修复和上下文 → 下次打开 Claude Code/Codex 等 Agent 时检索并注入相关历史，减少重复解释。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
长期维护同一代码库、经常中断并重开 Agent 会话的工程师。

## 局限 / 注意点
会引入持久化记忆和模型/托管提供方选择，需要关注隐私、成本和错误记忆传播。

## Trending 历史
- 2026-10-04：#8 · Stars Today：未保存
- 2026-10-05：#13 · Stars Today：未保存
- 2026-10-06：#2 · Stars Today：未保存
- 2026-10-07：#6 · Stars Today：未保存
- 2026-10-08：#8 · Stars Today：578 · Total Stars：97782 · Forks：8607

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/thedotmack/claude-mem

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/thedotmack/claude-mem/blob/main/README.md
- README blob SHA：a059f1e710047d84a661634b9a1dea3475347ede
